# frozen_string_literal: true

require_relative '../../spec_helper'
require 'hearth'

module AWS::SDK::Core
  module Middleware
    Input = ::Struct.new(
      :request_algorithm,
      :request_validation
    ) do
      include Hearth::Structure
    end

    describe Checksum do
      let(:output) { Hearth::Output.new }
      let(:app) { double('app', call: output) }

      let(:request_algorithm_member) { :request_algorithm }
      let(:request_checksum_required) { false }
      let(:streaming) { false }
      let(:signed_streaming) { false }
      let(:require_decoded_content_length) { false }
      let(:request_validation_mode_member) { :request_validation }
      let(:response_algorithms) { ['SHA256'] }

      subject do
        Checksum.new(
          app,
          request_algorithm_member: request_algorithm_member,
          request_checksum_required: request_checksum_required,
          streaming: streaming,
          signed_streaming: signed_streaming,
          require_decoded_content_length: require_decoded_content_length,
          request_validation_mode_member: request_validation_mode_member,
          response_algorithms: response_algorithms
        )
      end

      describe '#call' do
        let(:input) { Input.new }
        let(:request_body) { StringIO.new('Hello World') }
        let(:response_body) { StringIO.new }

        let(:request) do
          Hearth::HTTP::Request.new(body: request_body)
        end

        let(:response) do
          Hearth::HTTP::Response.new(
            body: response_body
          )
        end

        let(:context) do
          Hearth::Context.new(
            request: request,
            response: response
          )
        end

        context 'request checksum not set' do
          let(:input) { Input.new }

          it 'does not compute a checksum' do
            subject.call(input, context)
            expect(request.headers.to_h.keys
                          .none? { |h| h.include?('x-amz-checksum') })
              .to be true
          end

          context 'request checksum required' do
            let(:request_checksum_required) { true }

            it 'computes the Content-MD5 checksum' do
              subject.call(input, context)
              expect(request.headers['Content-MD5'])
                .to eq('sQqNsWTgdUEFt6mb5y4/5Q==')
            end
          end
        end

        context 'request checksum is sha256' do
          let(:input) { Input.new(request_algorithm: 'sha256') }

          it 'computes the checksum' do
            subject.call(input, context)

            expect(request.headers['X-Amz-Checksum-Sha256'])
              .to eq('pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4=')
          end

          context 'the request body is not readable' do
            let(:request_body) { 'Hello World' }

            it 'computes the checksum' do
              subject.call(input, context)

              expect(request.headers['X-Amz-Checksum-Sha256'])
                .to eq('pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4=')
            end
          end
        end

        context 'validation enabled' do
          let(:input) { Input.new(request_validation: 'ENABLED') }
          let(:response_data) { 'response' }

          # behave like send, set response headers and write body
          let(:app) do
            proc do |_input, _context|
              response_headers.each do |k, v|
                response.headers[k] = v
              end
              response.body.write(response_data)
              response.body.rewind
              output
            end
          end

          context 'checksum is correct' do
            let(:response_headers) do
              {
                'X-Amz-Checksum-Sha256' =>
                  'qfSz0ipSP9raQchcF1QlvNFbMrTND1TZQzrM1S1xlaE='
              }
            end

            it 'sets the validated metadata' do
              resp = subject.call(input, context)
              expect(resp.metadata[:http_checksum_validated])
                .to eq('SHA256')
            end

            it 'wraps the body in an IO like interface' do
              subject.call(input, context)
              resp_body = context.response.body
              first_read = resp_body.read
              resp_body.rewind
              expect(resp_body.read).to eq(first_read)
              expect(resp_body.size).to eq(first_read.size)
            end
          end

          context 'checksum is incorrect' do
            let(:response_headers) do
              {
                'X-Amz-Checksum-Sha256' => 'INVALID'
              }
            end

            it 'raises an error' do
              expect do
                subject.call(input, context)
              end.to raise_error(Checksum::ChecksumError)
            end
          end
        end

        context 'unsigned streaming request with checksum' do
          let(:input) { Input.new(request_algorithm: 'sha256') }
          let(:streaming) { true }
          let(:signed_streaming) { false }
          let(:require_decoded_content_length) { false }
          let(:sent_data) { StringIO.new }

          let(:app) do
            proc do |_input, context|
              # IO.copy_stream is the same method used by Net::Http to
              # write our body to the socket
              IO.copy_stream(context.request.body, sent_data)
              output
            end
          end

          it 'computes the checksum' do
            subject.call(input, context)

            headers = context.request.headers
            expect(headers['x-amz-content-sha256'])
              .to eq('STREAMING-UNSIGNED-PAYLOAD-TRAILER')
            expect(headers['x-amz-trailer']).to eq('x-amz-checksum-sha256')
            expect(headers['content-encoding']).to eq('aws-chunked')

            sent_data.rewind
            expect(sent_data.read).to eq(
              "b\r\nHello World\r\n0\r\nx-amz-checksum-sha256:" \
              "pZGm1Av0IEBKARczz7exkNYsZb8LzaMrV7J32a2fFG4=\r\n\r\n"
            )
          end

          it 'wraps the body in an IO like interface' do
            subject.call(input, context)
            req_body = context.request.body
            first_read = req_body.read
            req_body.rewind
            expect(req_body.read).to eq(first_read)
          end

          context 'require_decoded_content_length: true' do
            let(:require_decoded_content_length) { true }

            context 'request body does not have size' do
              let(:request_body) { double }

              it 'raises an error' do
                expect do
                  subject.call(input, context)
                end.to raise_error(ArgumentError)
              end
            end

            it 'adds the decoded content length header' do
              subject.call(input, context)

              headers = context.request.headers
              expect(headers['X-Amz-Decoded-Content-Length']).to eq('11')
              expect(headers['transfer-encoding']).to be_nil
            end

            it 'is able to compute the entire size' do
              subject.call(input, context)
              expect(context.request.body.size).to eq(69)
            end
          end
        end
      end
    end
  end
end
