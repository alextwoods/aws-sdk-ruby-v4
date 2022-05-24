# frozen_string_literal: true

module AWS::SDK::Core
  class ECSCredentialsProvider
    include CredentialProvider

    ENVIRONMENT = proc do |_cfg|
      new if ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI']
    end

    # @api private
    class Non200Response < RuntimeError; end

    # @param [Hash] options
    # @option options [Integer] :retries (3) Number of times to retry
    #   when retrieving credentials.
    # @option options [String] :endpoint ('http://169.254.170.2')
    # @option options [String] :credential_path By default, the value of the
    #   AWS_CONTAINER_CREDENTIALS_RELATIVE_URI environment variable.
    # @option options [Float] :http_open_timeout (2)
    # @option options [Float] :http_read_timeout (5)
    # @option options [IO] :http_debug_output (nil) HTTP wire
    #   traces are sent to this object.  You can specify something
    #   like $stdout.
    # @option options [Numeric, Proc] :backoff By default, failures are retried
    #   with exponential back-off, i.e. `sleep(1.2 ** num_failures)`. You can
    #   pass a number of seconds to sleep between failed attempts, or
    #   a Proc that accepts the number of failures.
    def initialize(options = {})
      @retries = options[:retries] || 3
      @endpoint = options[:endpoint] || 'http://169.254.170.2'
      @credential_path = options[:credential_path] ||
                         ENV['AWS_CONTAINER_CREDENTIALS_RELATIVE_URI']
      unless @credential_path
        raise ArgumentError, 'Missing required credential path.'
      end

      @http_open_timeout = options[:http_open_timeout] || 2
      @http_read_timeout = options[:http_read_timeout] || 5
      @http_debug_output = options[:http_debug_output]
      @backoff = backoff(options[:backoff])
    end

    def credentials
      retry_errors do
        open_connection do |conn|
          c = http_get(conn, path)
          @credentials = Credentials.new(
            access_key_id: c['AccessKeyId'],
            secret_access_key: c['SecretAccessKey'],
            session_token: c['Token']
          )
          @expiration = c['Expiration'] ? Time.iso8601(c['Expiration']) : nil
        end
      end
    end

    private

    def http_get(connection, path)
      request = Net::HTTP::Get.new(path)
      response = connection.request(request)
      case response.code.to_i
      when 200
        response.body
      when 404
        # Should be "404 page not found", not a JSON payload
        raise Non200Response, response.body
      else
        # Should have "code", "message", and "HTTPErrorCode"
        json = JSON.parse(response.body)
        raise Non200Response, json['message']
      end
    end

    def open_connection
      uri = URI.parse(@endpoint)
      http = Net::HTTP.new(uri.hostname, uri.port)
      http.open_timeout = @http_open_timeout
      http.read_timeout = @http_read_timeout
      http.set_debug_output(@http_debug_output) if @http_debug_output
      http.start
      yield(http).tap { http.finish }
    end

    def retry_errors(&_block)
      retries = 0
      begin
        yield
      # Do not retry the error we raised earlier.
      rescue Non200Response
        raise
      # StandardError is not ideal but it covers Net::HTTP errors.
      # https://gist.github.com/tenderlove/245188
      rescue StandardError
        raise unless retries < @retries

        @backoff.call(retries)
        retries += 1
        retry
      end
    end

    def backoff(backoff)
      case backoff
      when Proc then backoff
      when Numeric then ->(_) { Kernel.sleep(backoff) }
      else ->(num_failures) { Kernel.sleep(1.2**num_failures) }
      end
    end
  end
end
