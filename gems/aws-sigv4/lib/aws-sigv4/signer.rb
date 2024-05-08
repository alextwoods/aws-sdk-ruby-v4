# frozen_string_literal: true

require 'openssl'
require 'tempfile'
require 'time'
require 'uri'
require 'set'
require 'cgi'
require 'pathname'

module AWS
  # Module for Signature V4 signing.
  module SigV4
    # Utility class for signing a request for AWS Signature V4. This
    # class provides three methods for generating signatures:
    #
    # * {#sign_request} - Signs a given request with the appropriate headers.
    #
    # * {#presign_url} - Computes a pre-signed request with an expiration.
    #   By default, the body of this request is not signed and the request
    #   expires in 15 minutes.
    #
    # * {#sign_event} - Signs an event and returns the signature headers and
    #   the prior signature used for the next event signing.
    #
    # To use the signer, you need to specify the service, region, and
    # credentials.
    #
    # The service name is normally the endpoint prefix to an AWS
    # service. For example:
    #
    #     ec2.us-west-1.amazonaws.com => ec2
    #
    # The region is normally the second portion of the endpoint, following
    # the service name.
    #
    #     ec2.us-west-1.amazonaws.com => us-west-1
    #
    # It is important to have the correct service and region name, or the
    # signature will be invalid.
    #
    # When calling {#sign_request}, {#presign_url} or {#sign_event} you must
    # provide AWS {Credentials}. If you are using the AWS SDK for Ruby and are
    # using any of the Credentials Providers then you must call the #identity
    # method each time you are signing a request to ensure that you are using
    # the latest, refreshed credentials.
    class Signer
      @use_crt =
        begin
          require 'aws-crt'
        rescue LoadError
          false
        end

      # @option options [String] :service The service signing name, e.g. 's3'.
      #
      # @option options [String] :region The region name, e.g. 'us-east-1'.
      #
      # @option options [Array<String>] :unsigned_headers ([]) A list of
      #   headers that should not be signed. This is useful when a proxy
      #   modifies headers, such as 'User-Agent', invalidating a signature.
      #
      # @option options [Boolean] :use_double_uri_encode (true) When `true`,
      #   the request URI path is uri-escaped as part of computing the canonical
      #   request string. This is required for every service, except Amazon S3,
      #   as of late 2016.
      #
      # @option options [Boolean] :apply_checksum_header (true) When `true`,
      #   the computed content checksum is applied to the request headers.
      #   This is required for AWS Glacier, and optional for every other AWS
      #   service as of late 2016.
      #
      # @option options [Symbol] :signing_algorithm (:sigv4) The
      #   algorithm to use for signing. :sigv4a is only supported when
      #   `aws-crt` is available.
      #
      # @option options [Boolean] :omit_session_token (false)
      #   If `true`, the security token is added to the final signing result,
      #   but is treated as "unsigned" and does not contribute
      #   to the authorization signature.
      #
      # @option options [Boolean] :should_normalize_uri_path (true)
      #   When `true`, the uri paths will be normalized
      #   when building the canonical request.
      def initialize(options = {})
        @service = options[:service]
        @region = options[:region]
        @credentials = options[:credentials]
        @credential_provider = options[:credential_provider]
        @unsigned_headers = Set.new(options.fetch(:unsigned_headers, []))
        # typical headers handled by proxies and load balancers
        @unsigned_headers << 'expect'
        @unsigned_headers << 'x-amzn-trace-id'
        @unsigned_headers << 'user-agent'
        # do not sign authorization
        @unsigned_headers << 'authorization'
        @use_double_uri_encode = options.fetch(:use_double_uri_encode, true)
        @apply_checksum_header = options.fetch(:apply_checksum_header, true)
        @signing_algorithm = options.fetch(:signing_algorithm, :sigv4)
        @should_normalize_uri_path = options.fetch(
          :should_normalize_uri_path,
          true
        )
        @omit_session_token = options.fetch(:omit_session_token, false)
      end

      # @return [String, nil]
      attr_reader :service

      # @return [String, nil]
      attr_reader :region

      # @return [Set<String>]
      attr_reader :unsigned_headers

      # @return [Boolean]
      attr_reader :use_double_uri_encode

      # @return [Boolean]
      attr_reader :apply_checksum_header

      # @return [Symbol]
      attr_reader :signing_algorithm

      # @return [Boolean]
      attr_reader :should_normalize_uri_path

      # @return [Boolean]
      attr_reader :omit_session_token

      # Returns the resultant {Signature} with a hash of headers to apply to
      # your HTTP request. The given request is not modified.
      #
      #     signature = signer.sign_request(
      #       request: request, # Hearth::HTTP::Request or similar
      #       # also allows for SigV4 instance overrides
      #       region: 'new-region',
      #       service: 's3-outposts',
      #       credentials: AWS::SigV4::Credentials.new(
      #         access_key_id: 'different akid',
      #         secret_access_token: 'different secret'
      #       )
      #     )
      #
      #     # Apply the following hash of headers to your HTTP request
      #     signature.headers['authorization']
      #     signature.headers['host']
      #     signature.headers['x-amz-date']
      #     signature.headers['x-amz-security-token']
      #     signature.headers['x-amz-content-sha256']
      #
      # In addition to computing the signature headers, the canonical request,
      # string to sign, content sha256 checksum, and other information are also
      # available as metadata. These values are useful for debugging signature
      # errors returned by AWS.
      #
      #     signature.metadata #= "{...}"
      #     signature.metadata[:canonical_request] #=> "..."
      #     signature.metadata[:string_to_sign] #=> "..."
      #     signature.metadata[:content_sha256] #=> "..."
      #
      # @param [required, Hearth::HTTP::Request, Hash] request A Request
      #   object such as Hearth::HTTP::Request or similar or a
      #   hash of request parts for signing.
      #   Parts must include :http_method and :url, and optionally include
      #   :headers and :body.
      #
      # @option request [required, String] :http_method One of
      #   'GET', 'HEAD', 'PUT', 'POST', 'PATCH', or 'DELETE'
      #
      # @option request [required, String, URI::HTTPS, URI::HTTP] :url
      #   The request URI. Must be a valid HTTP or HTTPS URI.
      #
      # @option request [Hash] :headers ({}) A hash of headers
      #   to sign. If the 'X-Amz-Content-Sha256' header is set, the `:body`
      #   is optional and will not be read.
      #
      # @option request [String, IO] :body ('') The HTTP request body.
      #   A sha256 checksum is computed of the body unless the
      #   'X-Amz-Content-Sha256' header is set.
      #
      # @param credentials [required, Credentials] A {Credentials} object, or
      #   any object that responds to the following methods:
      #
      #     * `#access_key_id` => String
      #     * `#secret_access_key` => String
      #     * `#session_token` => String, nil
      #     * `#expiration` => Time, nil
      #
      # @option kwargs [Time] :time (Time.now) Time of the signature.
      #   This value will be used as the starting time for the signed request.
      #
      # @param kwargs Accepts additional options provided to {#initialize}.
      #
      # @return [Signature] Return an instance of {Signature} that has
      #   a `#headers` method. The headers must be applied to your request.
      #
      def sign_request(request:, credentials:, **kwargs)
        validate_credentials!(credentials)
        options = extract_options(kwargs)
        request = extract_request(request)

        if Signer.use_crt?
          return crt_sign_request(
            request, credentials, options
          )
        end

        http_method = extract_http_method(request)
        url = extract_url(request)
        Signer.normalize_path(url) if options[:should_normalize_uri_path]
        headers = downcase_headers(request[:headers])

        datetime = headers['x-amz-date']
        datetime ||= options[:time].utc.strftime('%Y%m%dT%H%M%SZ')
        date = datetime[0, 8]

        content_sha256 = headers['x-amz-content-sha256']
        content_sha256 ||= sha256_hexdigest(request[:body] || '')

        sigv4_headers = {}
        sigv4_headers['host'] = headers['host'] || host(url)
        sigv4_headers['x-amz-date'] = datetime
        if credentials.session_token && !options[:omit_session_token]
          if options[:signing_algorithm] == :'sigv4-s3express'
            sigv4_headers['x-amz-s3session-token'] = credentials.session_token
          else
            sigv4_headers['x-amz-security-token'] = credentials.session_token
          end
        end
        if options[:apply_checksum_header]
          sigv4_headers['x-amz-content-sha256'] ||= content_sha256
        end

        # merge so we do not modify given headers hash
        headers = headers.merge(sigv4_headers)

        # compute signature parts
        creq = canonical_request(
          http_method, url, options[:use_double_uri_encode],
          headers, options[:unsigned_headers], content_sha256
        )

        sts = string_to_sign(
          datetime, options[:region], options[:service], creq
        )
        sig = signature(
          credentials.secret_access_key, date,
          options[:region], options[:service], sts
        )
        credential = credential(
          credentials, date, options[:region], options[:service]
        )
        signed_headers = signed_headers(headers, options[:unsigned_headers])

        # apply signature
        sigv4_headers['authorization'] = [
          "AWS4-HMAC-SHA256 Credential=#{credential}",
          "SignedHeaders=#{signed_headers}",
          "Signature=#{sig}"
        ].join(', ')

        if credentials.session_token && options[:omit_session_token]
          sigv4_headers['x-amz-security-token'] = credentials.session_token
        end

        # Returning the signature components.
        Signature.new(
          headers: sigv4_headers,
          metadata: {
            signature: sig,
            string_to_sign: sts,
            canonical_request: creq,
            content_sha256: content_sha256
          }
        )
      end

      # rubocop:disable Layout/LineLength
      # Signs a event and returns signature headers and prior signature
      # used for next event signing.
      #
      # Headers of a sigv4 signed event message only contains 2 headers
      #   * ':chunk-signature'
      #     * computed signature of the event, binary string, 'bytes' type
      #   * ':date'
      #     * millisecond since epoch, 'timestamp' type
      #
      # Payload of the sigv4 signed event message contains eventstream encoded message
      # which is serialized based on input and protocol
      #
      # To sign events
      #
      #     headers_0, signature_0 = signer.sign_event(
      #       prior_signature, # hex-encoded string
      #       payload_0, # binary string (eventstream encoded event 0)
      #       encoder, # AWS::EventStreamEncoder
      #     )
      #
      #     headers_1, signature_1 = signer.sign_event(
      #       signature_0,
      #       payload_1, # binary string (eventstream encoded event 1)
      #       encoder
      #     )
      #
      # The initial prior_signature should be using the signature computed at initial request
      #
      # Note:
      #
      #   Since ':chunk-signature' header value has bytes type, the signature value provided
      #   needs to be a binary string instead of a hex-encoded string (like original signature
      #   V4 algorithm). Thus, when returning signature value used for next event siging, the
      #   signature value (a binary string) used at ':chunk-signature' needs to converted to
      #   hex-encoded string using #unpack
      # def sign_event(prior_signature, payload, encoder, options = {})
      #   # Note: CRT does not currently provide event stream signing, so we always use the ruby implementation.
      #   creds = fetch_credentials(kwargs)
      #   time = Time.now
      #   headers = {}
      #
      #   datetime = time.utc.strftime("%Y%m%dT%H%M%SZ")
      #   date = datetime[0,8]
      #   headers[':date'] = AWS::EventStream::HeaderValue.new(value: time.to_i * 1000, type: 'timestamp')
      #
      #   region = extract_region(options)
      #   service = extract_service(options)
      #
      #   sts = event_string_to_sign(datetime, headers, payload, prior_signature, encoder)
      #   sig = event_signature(creds.secret_access_key, date, region, service, sts)
      #
      #   headers[':chunk-signature'] = AWS::EventStream::HeaderValue.new(value: sig, type: 'bytes')
      #
      #   # Returning signed headers and signature value in hex-encoded string
      #   [headers, sig.unpack('H*').first]
      # end
      # rubocop:enable Layout/LineLength

      # Signs a URL with query authentication. Using query parameters
      # to authenticate requests is useful when you want to express a
      # request entirely in a URL. This method is also referred as
      # pre-signing a URL.
      #
      # To generate a pre-signed URL, you must provide a request hash with an
      # HTTP URI and the http method.
      #
      #     url = signer.presign_url(
      #       request: {
      #         http_method: 'GET',
      #         url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
      #       },
      #       credentials: credentials
      #     )
      #
      # By default, signatures are valid for 15 minutes. You can specify
      # the number of seconds for the URL to expire in.
      #
      #     url = signer.presign_url(
      #       request: {
      #         http_method: 'GET',
      #         url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
      #       },
      #       credentials: credentials,
      #       expires_in: 3600 # one hour
      #     )
      #
      # You can provide a hash of headers that you plan to send with the
      # request. Every 'X-Amz-*' header you plan to send with the request
      # **must** be provided, or the signature is invalid. Other headers
      # are optional, but should be provided for security reasons.
      #
      #     url = signer.presign_url(
      #       request: {
      #         http_method: 'PUT',
      #         url: 'https://my-bucket.s3-us-east-1.amazonaws.com/key',
      #         headers: {
      #           'X-Amz-Meta-Custom' => 'metadata'
      #         }
      #       },
      #       credentials: credentials
      #     )
      #
      # @param [required, Hearth::HTTP::Request, Hash] request A Request
      #   object such as Hearth::HTTP::Request or similar
      #   or a hash of request parts for signing.
      #   Parts must include :http_method and :url, and optionally include
      #   :headers and :body.
      #
      # @option request [required, String] :http_method One of
      #   'GET', 'HEAD', 'PUT', 'POST', 'PATCH', or 'DELETE'
      #
      # @option request [required, String, URI::HTTPS, URI::HTTP] :url
      #   The request URI. Must be a valid HTTP or HTTPS URI.
      #
      # @option request [Hash] :headers ({}) A hash of headers that should be
      #   signed and senta long with the request. All x-amz-* headers must be
      #   present during signing. Other headers are optional.
      #
      #   If the 'X-Amz-Content-Sha256' header is set, the `:body` is optional
      #   and will not be read. If you wish to send the pre-signed request
      #   without signing a body, you can set it to 'UNSIGNED-PAYLOAD'.
      #
      # @option request [String, IO] :body ('') The HTTP request body.
      #   A sha256 checksum is computed of the body unless the
      #   'X-Amz-Content-Sha256' header is set.
      #
      # @param credentials [required, Credentials] A {Credentials} object, or
      #   any object that responds to the following methods:
      #
      #     * `#access_key_id` => String
      #     * `#secret_access_key` => String
      #     * `#session_token` => String, nil
      #     * `#expiration` => Time, nil
      #
      # @option kwargs [Integer] :expires_in (900) The number of seconds that
      #   the pre-signed URL should be valid for. Defaults to 15 minutes.
      #
      # @option kwargs [String] :body_digest The SHA256 hexdigest of the request
      #   body. If you wish to send the pre-signed request without signing the
      #   body, you can pass 'UNSIGNED-PAYLOAD' as the `:body_digest` in place
      #   of passing `:body`.
      #
      # @option kwargs [Time] :time (Time.now) Time of the signature.
      #   This value can be used as the starting time for when the pre-signed
      #   URL becomes valid.
      #
      # @param kwargs Accepts additional options provided to {#initialize},
      #   except for :apply_checksum_header.
      #
      # @return [PresignedUrl]
      #
      # @see http://docs.aws.amazon.com/AmazonS3/latest/API/sigv4-query-string-auth.html
      def presign_url(request:, credentials:, **kwargs)
        validate_credentials!(credentials)
        options = extract_options(kwargs)
        request = extract_request(request)

        return crt_presign_url(request, credentials, options) if Signer.use_crt?

        http_method = extract_http_method(request)
        url = extract_url(request)
        Signer.normalize_path(url) if options[:should_normalize_uri_path]

        headers = downcase_headers(request[:headers])
        headers['host'] ||= host(url)

        datetime = headers['x-amz-date']
        datetime ||= options[:time].utc.strftime('%Y%m%dT%H%M%SZ')
        date = datetime[0, 8]

        content_sha256 = headers['x-amz-content-sha256']
        content_sha256 ||= options[:body_digest]
        content_sha256 ||= sha256_hexdigest(request[:body] || '')

        params = {}
        params['X-Amz-Algorithm'] = 'AWS4-HMAC-SHA256'
        params['X-Amz-Credential'] = credential(
          credentials, date, options[:region], options[:service]
        )
        params['X-Amz-Date'] = datetime
        params['X-Amz-Expires'] = presigned_url_expiration(
          options, credentials.expiration,
          Time.strptime(datetime, '%Y%m%dT%H%M%S%Z')
        ).to_s
        if credentials.session_token && !options[:omit_session_token]
          if options[:signing_algorithm] == :'sigv4-s3express'
            params['X-Amz-S3session-Token'] = credentials.session_token
          else
            params['X-Amz-Security-Token'] = credentials.session_token
          end
        end
        params['X-Amz-SignedHeaders'] = signed_headers(
          headers, options[:unsigned_headers]
        )

        # Headers that should be used with the URL
        sigv4_headers = (headers.to_a - params.to_a).to_h

        params = params.map do |key, value|
          "#{Signer.uri_escape(key)}=#{Signer.uri_escape(value)}"
        end.join('&')

        if url.query
          url.query += "&#{params}"
        else
          url.query = params
        end

        creq = canonical_request(
          http_method, url, options[:use_double_uri_encode], headers,
          options[:unsigned_headers], content_sha256
        )
        sts = string_to_sign(
          datetime, options[:region], options[:service], creq
        )
        sig = signature(
          credentials.secret_access_key, date, options[:region],
          options[:service], sts
        )
        url.query += "&X-Amz-Signature=#{sig}"
        if credentials.session_token && options[:omit_session_token]
          escaped_token = CGI.escape(credentials.session_token)
          url.query += "&X-Amz-Security-Token=#{escaped_token}"
        end

        PresignedUrl.new(
          url: url,
          headers: sigv4_headers,
          metadata: {
            signature: sig,
            string_to_sign: sts,
            canonical_request: creq,
            content_sha256: content_sha256
          }
        )
      end

      private

      def canonical_request(http_method, url, use_double_uri_encode, headers,
                            unsigned_headers, content_sha256)
        [
          http_method,
          path(url, use_double_uri_encode),
          normalized_querystring(url.query || ''),
          "#{canonical_headers(headers, unsigned_headers)}\n",
          signed_headers(headers, unsigned_headers),
          content_sha256
        ].join("\n")
      end

      def string_to_sign(datetime, region, service, canonical_request)
        [
          'AWS4-HMAC-SHA256',
          datetime,
          credential_scope(datetime[0, 8], region, service),
          sha256_hexdigest(canonical_request)
        ].join("\n")
      end

      # Compared to original #string_to_sign at signature v4 algorithm
      # there is no canonical_request concept for an eventstream event,
      # instead, an event contains headers and payload two parts, and
      # they will be used for computing digest in #event_string_to_sign
      #
      # Note:
      #   While headers need to be encoded under eventstream format,
      #   payload used is already eventstream encoded (event without signature),
      #   thus no extra encoding is needed.
      # def event_string_to_sign(datetime, headers, payload, prior_signature,
      #                          encoder)
      #   encoded_headers = encoder.encode_headers(
      #     AWS::EventStream::Message.new(headers: headers, payload: payload)
      #   )
      #   [
      #     "AWS4-HMAC-SHA256-PAYLOAD",
      #     datetime,
      #     credential_scope(datetime[0,8], region, service),
      #     prior_signature,
      #     sha256_hexdigest(encoded_headers),
      #     sha256_hexdigest(payload)
      #   ].join("\n")
      # end

      def credential_scope(date, region, service)
        [
          date,
          region,
          service,
          'aws4_request'
        ].join('/')
      end

      def credential(creds, date, region, service)
        "#{creds.access_key_id}/#{credential_scope(date, region, service)}"
      end

      def signature(secret_access_key, date, region, service, string_to_sign)
        k_date = hmac("AWS4#{secret_access_key}", date)
        k_region = hmac(k_date, region)
        k_service = hmac(k_region, service)
        k_credentials = hmac(k_service, 'aws4_request')
        hexhmac(k_credentials, string_to_sign)
      end

      # Comparing to original signature v4 algorithm,
      # returned signature is a binary string instread of
      # hex-encoded string. (Since ':chunk-signature' requires
      # 'bytes' type)
      #
      # Note:
      #   converting signature from binary string to hex-encoded
      #   string is handled at #sign_event instead. (Will be used
      #   as next prior signature for event signing)
      # def event_signature(secret_access_key, date, region, service,
      #                     string_to_sign)
      #   k_date = hmac("AWS4" + secret_access_key, date)
      #   k_region = hmac(k_date, region)
      #   k_service = hmac(k_region, service)
      #   k_credentials = hmac(k_service, 'aws4_request')
      #   hmac(k_credentials, string_to_sign)
      # end

      def path(url, use_double_uri_encode)
        path = url.path
        path = '/' if path == ''
        if use_double_uri_encode
          Signer.uri_escape_path(path)
        else
          path
        end
      end

      def normalized_querystring(querystring)
        params = querystring.split('&')
        params = params.map { |p| p.match(/=/) ? p : "#{p}=" }
        # From: https://docs.aws.amazon.com/general/latest/gr/sigv4-create-canonical-request.html
        # Sort the parameter names by character code point in ascending order.
        # Parameters with duplicate names should be sorted by value.
        #
        # Default sort <=> in JRuby will swap members
        # occasionally when <=> is 0 (considered still sorted), but this
        # causes our normalized query string to not match the sent querystring.
        # When names match, we then sort by their values.  When values also
        # match then we sort by their original order
        params.each.with_index.sort do |a, b|
          a, a_offset = a
          b, b_offset = b
          a_name, a_value = a.split('=')
          b_name, b_value = b.split('=')
          if a_name == b_name
            if a_value == b_value
              a_offset <=> b_offset
            else
              a_value <=> b_value
            end
          else
            a_name <=> b_name
          end
        end.map(&:first).join('&')
      end

      def downcase_headers(headers)
        (headers || {}).transform_keys(&:downcase)
      end

      def signed_headers(headers, unsigned_headers)
        headers.inject([]) do |signed_headers, (header, _)|
          if unsigned_headers.include?(header)
            signed_headers
          else
            signed_headers << header
          end
        end.sort.join(';')
      end

      def canonical_headers(headers, unsigned_headers)
        headers = headers.inject([]) do |hdrs, (k, v)|
          if unsigned_headers.include?(k)
            hdrs
          else
            hdrs << [k, v]
          end
        end
        headers = headers.sort_by(&:first)
        headers.map do |k, v|
          "#{k}:#{canonical_header_value(v.to_s)}"
        end.join("\n")
      end

      def canonical_header_value(value)
        value.gsub(/\s+/, ' ').strip
      end

      def host(uri)
        # Handles known and unknown URI schemes; default_port nil when unknown.
        if uri.default_port == uri.port
          uri.host
        else
          "#{uri.host}:#{uri.port}"
        end
      end

      # @param [File, Tempfile, IO#read, String] value
      # @return [String<SHA256 Hexdigest>]
      def sha256_hexdigest(value)
        if (value.is_a?(File) || value.is_a?(Tempfile)) &&
           !value.path.nil? && File.exist?(value.path)
          OpenSSL::Digest::SHA256.file(value).hexdigest
        elsif value.respond_to?(:read)
          sha256 = OpenSSL::Digest.new('SHA256')
          loop do
            chunk = value.read(1024 * 1024) # 1MB
            break unless chunk

            sha256.update(chunk)
          end
          value.rewind
          sha256.hexdigest
        else
          OpenSSL::Digest::SHA256.hexdigest(value)
        end
      end

      def hmac(key, value)
        OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), key, value)
      end

      def hexhmac(key, value)
        OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), key, value)
      end

      # Signing methods take options as override. This returns a hash of
      # options to use after resolving instance variables and validation.
      def extract_options(kwargs)
        {
          # request options
          service: extract_service(kwargs),
          region: extract_region(kwargs),
          unsigned_headers: kwargs.fetch(
            :unsigned_headers, @unsigned_headers
          ).map(&:downcase),
          use_double_uri_encode: kwargs.fetch(
            :use_double_uri_encode,
            @use_double_uri_encode
          ),
          apply_checksum_header: kwargs.fetch(
            :apply_checksum_header, @apply_checksum_header
          ),
          signing_algorithm: extract_signing_algorithm(kwargs),
          should_normalize_uri_path: kwargs.fetch(
            :should_normalize_uri_path,
            @should_normalize_uri_path
          ),
          omit_session_token: kwargs.fetch(
            :omit_session_token, @omit_session_token
          ),
          # Not instance options, but convenient to define here
          # to pass through to CRT.
          time: kwargs.fetch(:time, Time.now),
          # presigned url
          expires_in: extract_expires_in(kwargs),
          body_digest: kwargs[:body_digest]
        }
      end

      # allows using either a Hash or Request object
      # Handles either url or uri
      def extract_request(request)
        if request.is_a?(Hash)
          request[:url] ||= request[:uri]
          return request
        end

        {
          http_method: request.http_method,
          url: request.uri,
          headers: request.headers.to_h,
          body: request.body
        }
      end

      def extract_service(kwargs)
        if kwargs[:service]
          kwargs[:service]
        elsif @service
          @service
        else
          raise ArgumentError, 'missing required option :service'
        end
      end

      def extract_region(kwargs)
        if kwargs[:region]
          kwargs[:region]
        elsif @region
          @region
        else
          raise ArgumentError, 'missing required option :region'
        end
      end

      def validate_credentials!(credentials)
        return if credentials&.set?

        raise ArgumentError,
              'Unable to sign the request without credentials set.'
      end

      def extract_signing_algorithm(kwargs)
        # defaults to sigv4 in initialize
        signing_algorithm = kwargs[:signing_algorithm] || @signing_algorithm

        unless %i[sigv4 sigv4a sigv4-s3express].include?(signing_algorithm)
          raise ArgumentError,
                'Signing algorithm must be `:sigv4`, `:sigv4a`, ' \
                "or `:'sigv4-s3express'`."
        end

        if signing_algorithm == :sigv4a && !Signer.use_crt?
          raise ArgumentError,
                'You are attempting to use a Signer for sigv4a which ' \
                'requires the `aws-crt` gem. Please install the gem or ' \
                'add it to your gemfile.'
        end

        if signing_algorithm == :'sigv4-s3express' &&
           Signer.use_crt? && Aws::Crt::GEM_VERSION <= '0.1.9'
          raise ArgumentError,
                'This version of aws-crt does not support S3 Express. Please
                 update this gem to at least version 0.2.0.'
        end

        signing_algorithm
      end

      def extract_http_method(request)
        unless request[:http_method]
          raise ArgumentError, 'missing required option :http_method'
        end

        request[:http_method].upcase
      end

      def extract_url(request)
        raise ArgumentError, 'missing required option :url' unless request[:url]

        URI(request[:url])
      end

      def extract_expires_in(kwargs)
        case kwargs[:expires_in]
        when nil then 900
        when Integer then kwargs[:expires_in]
        else
          raise ArgumentError, 'expected :expires_in to be a number of seconds'
        end
      end

      def presigned_url_expiration(options, expiration, datetime)
        expires_in = extract_expires_in(options)
        return expires_in unless expiration

        expiration_seconds = (expiration - datetime).to_i
        # In the static stability case, credentials may expire in the past
        # but still be valid.  For those cases, use the user configured
        # expires_in and ignore expiration.
        if expiration_seconds <= 0
          expires_in
        else
          [expires_in, expiration_seconds].min
        end
      end

      ### CRT Code

      # the credentials used by CRT must be a
      # CRT StaticCredentialsProvider object
      def crt_credentials(creds)
        Aws::Crt::Auth::StaticCredentialsProvider.new(
          creds.access_key_id,
          creds.secret_access_key,
          creds.session_token
        )
      end

      def crt_sign_request(request, credentials, options)
        crt_creds = crt_credentials(credentials)

        http_method = extract_http_method(request)
        url = extract_url(request)
        headers = downcase_headers(request[:headers])

        datetime =
          if headers.include?('x-amz-date')
            Time.parse(headers.delete('x-amz-date'))
          end
        datetime ||= options[:time]

        content_sha256 = headers.delete('x-amz-content-sha256')
        content_sha256 ||= sha256_hexdigest(request[:body] || '')

        sigv4_headers = {}
        sigv4_headers['host'] = headers['host'] || host(url)

        # Modify the user-agent to add usage of crt-signer
        if headers.include?('user-agent')
          ua = headers['user-agent']
          algorithm = options[:signing_algorithm]
          version = AWS::SigV4::VERSION
          sigv4_headers['user-agent'] =
            "#{ua} crt-signer/#{algorithm}/#{version}"
        end

        # merge so we do not modify given headers hash
        headers = headers.merge(sigv4_headers)

        sbht = if options[:apply_checksum_header]
                 :sbht_content_sha256
               else
                 :sbht_none
               end

        config = Aws::Crt::Auth::SigningConfig.new(
          algorithm: options[:signing_algorithm],
          signature_type: :http_request_headers,
          region: options[:region],
          service: options[:service],
          date: datetime,
          signed_body_value: content_sha256,
          signed_body_header_type: sbht,
          credentials: crt_creds,
          unsigned_headers: options[:unsigned_headers],
          use_double_uri_encode: options[:use_double_uri_encode],
          should_normalize_uri_path: options[:should_normalize_uri_path],
          omit_session_token: options[:omit_session_token]
        )
        http_request = Aws::Crt::Http::Message.new(
          http_method, url.to_s, headers
        )
        signable = Aws::Crt::Auth::Signable.new(http_request)

        signing_result = Aws::Crt::Auth::Signer.sign_request(config, signable)

        Signature.new(
          headers: sigv4_headers.merge(
            downcase_headers(signing_result[:headers])
          ),
          metadata: {
            signature: signing_result[:signature],
            string_to_sign: 'CRT_INTERNAL',
            canonical_request: 'CRT_INTERNAL',
            content_sha256: content_sha256
          }
        )
      end

      def crt_presign_url(request, credentials, options)
        crt_creds = crt_credentials(credentials)

        http_method = extract_http_method(request)
        url = extract_url(request)
        headers = downcase_headers(request[:headers])
        headers['host'] ||= host(url)

        datetime =
          if headers.include?('x-amz-date')
            Time.strptime(headers.delete('x-amz-date'), '%Y%m%dT%H%M%S%Z')
          end
        datetime ||= options[:time]

        content_sha256 = headers.delete('x-amz-content-sha256')
        content_sha256 ||= options[:body_digest]
        content_sha256 ||= sha256_hexdigest(request[:body] || '')

        config = Aws::Crt::Auth::SigningConfig.new(
          algorithm: options[:signing_algorithm],
          signature_type: :http_request_query_params,
          region: options[:region],
          service: options[:service],
          date: datetime,
          signed_body_value: content_sha256,
          signed_body_header_type: :sbht_none, # url does not use checksum
          credentials: crt_creds,
          unsigned_headers: options[:unsigned_headers],
          use_double_uri_encode: options[:use_double_uri_encode],
          should_normalize_uri_path: options[:should_normalize_uri_path],
          omit_session_token: options[:omit_session_token],
          expiration_in_seconds: presigned_url_expiration(
            options, credentials.expiration, datetime
          )
        )
        http_request = Aws::Crt::Http::Message.new(
          http_method, url.to_s, headers
        )
        signable = Aws::Crt::Auth::Signable.new(http_request)

        signing_result = Aws::Crt::Auth::Signer.sign_request(
          config, signable, http_method, url.to_s
        )
        url = URI.parse(signing_result[:path])

        # Headers that should be used with the URL
        sigv4_headers = (headers.to_a - signing_result[:headers].to_a).to_h

        PresignedUrl.new(
          url: url,
          headers: sigv4_headers,
          metadata: {
            signature: 'CRT_INTERNAL',
            string_to_sign: 'CRT_INTERNAL',
            canonical_request: 'CRT_INTERNAL',
            content_sha256: content_sha256
          }
        )
      end

      class << self
        # @api private
        def use_crt?
          @use_crt
        end

        # @api private
        def uri_escape_path(path)
          path.gsub(%r{[^/]+}) { |part| uri_escape(part) }
        end

        # @api private
        def uri_escape(string)
          if string.nil?
            nil
          else
            CGI.escape(string.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end
        end

        # @api private
        def normalize_path(uri)
          normalized_path = Pathname.new(uri.path).cleanpath.to_s
          # Pathname is probably not correct to use. Empty paths will
          # resolve to "." and should be disregarded
          normalized_path = '' if normalized_path == '.'
          # Ensure trailing slashes are correctly preserved
          if uri.path.end_with?('/') && !normalized_path.end_with?('/')
            normalized_path << '/'
          end
          uri.path = normalized_path
        end
      end
    end
  end
end
