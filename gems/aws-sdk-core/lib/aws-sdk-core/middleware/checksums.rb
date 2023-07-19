# frozen_string_literal: true

module AWS::SDK::Core
  module Middleware
    # Middleware for computing and verifying checksums for the
    # aws.protocols#httpChecksum trait
    # @api private
    class Checksum
      # This error indicates a checksum failed.
      class ChecksumError < RuntimeError; end

      CHUNK_SIZE = 1 * 1024 * 1024 # one MB

      # determine the set of supported client side checksum algorithms
      # CRC32c requires aws-crt (optional sdk dependency) for support
      CLIENT_ALGORITHMS = begin
        supported = %w[SHA256 SHA1 CRC32]
        supported << 'CRC32C' if AWS::SDK::Core.crt_loaded?
        supported
      end.freeze

      # priority order of checksum algorithms to validate responses against
      # Remove any algorithms not supported by client
      # (ie, depending on CRT availability)
      CHECKSUM_ALGORITHM_PRIORITIES =
        %w[CRC32C SHA1 CRC32 SHA256] & CLIENT_ALGORITHMS

      def initialize(app, request_algorithm_member: nil,
                     request_checksum_required: false,
                     streaming: false,
                     signed_streaming: false,
                     require_decoded_content_length: false,
                     request_validation_mode_member: nil,
                     response_algorithms: nil)
        @app = app
        @request_algorithm_member = request_algorithm_member
        @request_checksum_required = request_checksum_required
        @request_validation_mode_member = request_validation_mode_member
        @response_algorithms = response_algorithms

        # Streaming configuration - these could all be a hash instead?
        @streaming = streaming
        @signed_streaming = signed_streaming
        @require_decoded_content_length = require_decoded_content_length
      end

      def call(input, context)
        context.metadata[:http_checksum] ||= {}

        request_checksum(input, context)

        # Handle response checksum
        if @request_validation_mode_member &&
           input[@request_validation_mode_member] == 'ENABLED'
          response_checksum(context)
        end

        output = @app.call(input, context)
        @response_validation_body&.validate!
        output.metadata[:http_checksum_validated] =
          context.metadata[:http_checksum][:validated]

        output
      end

      private

      def request_checksum(input, context)
        field_name, digest = request_checksum_digest(input)

        return unless digest

        if @streaming
          compute_streaming_checksum(context, digest, field_name)

        else
          context.request.headers[field_name] ||=
            compute_checksum(digest, context.request.body)
        end
      end

      def request_checksum_digest(input)
        if @request_algorithm_member
          checksum_algorithm = input[@request_algorithm_member]
        end

        if checksum_algorithm
          [
            checksum_field_name(checksum_algorithm),
            AWS::SDK::Core::Checksums.algorithm_for(checksum_algorithm)
          ]
        elsif @request_checksum_required
          ['Content-MD5',
           AWS::SDK::Core::Checksums.algorithm_for('MD5')]
        end
      end

      def response_checksum(context)
        # Compute an ordered list as the union between priority supported and
        # the operation's modeled response algorithms.
        validation_list = CHECKSUM_ALGORITHM_PRIORITIES & @response_algorithms

        @response_validation_body = context.response.body =
          ChecksumValidationIO.new(
            context.response.body,
            validation_list,
            context
          )
      end

      def compute_streaming_checksum(context, digest, field_name)
        headers = context.request.headers

        streaming_content_headers(headers, field_name)

        # some operations require the decoded content length set
        # this requires that the original body has size
        if @require_decoded_content_length
          compute_streaming_checksum_with_size(context, digest, field_name)
        else
          # skip setting Content-Length
          headers['transfer-encoding'] = 'chunked'
          context.request.body = AwsChunkedTrailerDigestIO.new(
            context.request.body, digest, field_name, @signed_streaming
          )
        end
      end

      def streaming_content_headers(headers, field_name)
        headers['Content-Encoding'] = 'aws-chunked'
        headers['X-Amz-Trailer'] = field_name

        if @signed_streaming
          headers['x-amz-content-sha256'] =
            'STREAMING-AWS4-HMAC-SHA256-PAYLOAD-TRAILER'
        else
          headers['x-amz-content-sha256'] =
            'STREAMING-UNSIGNED-PAYLOAD-TRAILER'
        end
      end

      def compute_streaming_checksum_with_size(context, digest, field_name)
        unless context.request.body.respond_to?(:size)
          raise ArgumentError, 'Could not determine length of the body'
        end

        request = context.request

        request.headers['X-Amz-Decoded-Content-Length'] = request.body.size
        request.body = AwsChunkedTrailerDigestSizeIO.new(
          request.body, digest, field_name, @signed_streaming
        )
      end

      def checksum_field_name(checksum_algorithm)
        "x-amz-checksum-#{checksum_algorithm.downcase}"
      end

      def compute_checksum(digest, body)
        if body.respond_to?(:read)
          update_in_chunks(digest, body)
        else
          digest.update(body)
        end
        digest.base64digest
      end

      def update_in_chunks(digest, io)
        loop do
          chunk = io.read(CHUNK_SIZE)
          break unless chunk

          digest.update(chunk)
        end
        io.rewind
      end

      # Wrapper class for a response body
      # Computes checksum incrementally as chunks are written
      class ChecksumValidationIO
        def initialize(io, validation_list, context)
          @io = io
          @validation_list = validation_list
          @context = context
          @first_chunk = true
          @digest = nil # determined after headers are available
        end

        def write(chunk)
          if @first_chunk
            # TODO: This is a bit of a hack
            # Assume that by the time the first chunk is written to the body
            # that the headers will have been read and set on the response
            @header_name, @algorithm = response_header_to_verify(
              @context.response.headers, @validation_list
            )
            if @header_name &&
               !(@context.metadata[:http_checksum][:skip_on_suffix] &&
                      /-\d+$/.match(expected))
              @expected = @context.response.headers[@header_name]
              @digest = AWS::SDK::Core::Checksums.algorithm_for(@algorithm)
            end
            @first_chunk = false
          end

          @digest&.update(chunk)

          @io.write(chunk)
        end

        def read(*args)
          @io.read(*args)
        end

        def rewind
          @io.rewind
        end

        def truncate(len)
          @io.truncate(len) if @io.respond_to?(:truncate)
        end

        def size
          @io.size
        end

        def validate!
          return unless @digest && @expected

          computed = @digest.base64digest
          if computed != @expected
            raise ChecksumError,
                  "Checksum validation failed on #{@digest} " \
                  "computed: #{computed}, expected: #{@expected}"
          end

          @context.metadata[:http_checksum][:validated] = @algorithm
        end

        # returns nil if no headers to verify
        def response_header_to_verify(headers, validation_list)
          validation_list.each do |algorithm|
            header_name = "x-amz-checksum-#{algorithm.downcase}"
            return [header_name, algorithm] if headers[header_name]
          end
          nil
        end
      end

      # Wrapper for request body that implements application-layer
      # chunking with Digest computed on chunks + added as a trailer
      class AwsChunkedTrailerDigestIO
        CHUNK_SIZE = 16_384

        def initialize(io, digest, field_name, signed)
          @io = io
          @digest = digest
          @field_name = field_name
          @signed = signed
          @trailer_io = nil

          # TODO: Implement
          return unless @signed

          raise NotImplementedError,
                'Signed streaming is not currently supported'
        end

        def rewind
          @io.rewind
        end

        def truncate(len)
          @io.truncate(len) if @io.respond_to?(:truncate)
        end

        def read(length = CHUNK_SIZE, buf = nil)
          # account for possible leftover bytes at the end,
          # if we have trailer bytes, send them
          return @trailer_io.read(length, buf) if @trailer_io

          chunk = @io.read(length)
          if chunk
            @digest.update(chunk)
            application_chunked = "#{chunk.bytesize.to_s(16)}\r\n#{chunk}\r\n"
            return StringIO.new(application_chunked)
                           .read(application_chunked.size, buf)
          else
            chunk = write_trailers(length, buf)
          end
          chunk
        end

        def write_trailers(length, buf)
          trailers = {}
          trailers[@field_name] = @digest.base64digest
          trailers = trailers.map { |k, v| "#{k}:#{v}" }.join("\r\n")
          @trailer_io = StringIO.new("0\r\n#{trailers}\r\n\r\n")
          @trailer_io.read(length, buf)
        end
      end

      # ChunkedIO that supports size
      class AwsChunkedTrailerDigestSizeIO < AwsChunkedTrailerDigestIO
        # the size of the application layer aws-chunked + trailer body
        def size
          # compute the number of chunks
          # a full chunk has 4 + 4 bytes overhead,
          # a partial chunk is len.to_s(16).size + 4
          orig_body_size = @io.size
          n_full_chunks = orig_body_size / CHUNK_SIZE
          partial_bytes = orig_body_size % CHUNK_SIZE
          chunked_body_size = n_full_chunks * (CHUNK_SIZE + 8)
          unless partial_bytes.zero?
            chunked_body_size += partial_bytes.to_s(16).size +
                                 partial_bytes + 4
          end
          trailer_size = trailer_length
          chunked_body_size + trailer_size
        end

        # The trailer size (in bytes) is the overhead + the trailer name +
        # the length of the base64 encoded checksum
        def trailer_length
          @digest.digest_length + @field_name.size
        end
      end
    end
  end
end
