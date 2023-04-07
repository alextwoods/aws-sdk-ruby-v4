# frozen_string_literal: true

require_relative '../../spec_helper'

module AWS::SDK::Core
  module Middleware
    Input = ::Struct.new(
    :request_algorithm,
    :request_validation
    ) do
      include Hearth::Structure
    end

    describe Checksum do
      let(:output) { double('output') }
      let(:app) { double('app', call: output) }

      let(:request_algorithm_member) { :request_algorithm }
      let(:request_checksum_required) { true }
      let(:streaming) { false }
      let(:signed_streaming) { false }
      let(:require_decoded_content_length) { false }
      let(:request_validation_mode_member) { :request_validation }
      let(:response_algorithms) { ['SHA256'] }

      subject do
        Checksum.new(
          app,
          request_algorithm_member: request_algorithm_member,
          streaming: streaming,
          signed_streaming: signed_streaming,
          require_decoded_content_length: require_decoded_content_length,
          request_validation_mode_member: request_validation_mode_member,
          response_algorithms: response_algorithms)
      end

      describe '#call' do
        let(:input) { Input.new }
        let(:output) { double('output') }
        let(:request_body) { StringIO.new('request') }
        let(:response_body) { StringIO.new }

        let(:request) do
          Hearth::HTTP::Request.new(
            body: request_body
          )
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
                          .none? { |h| h.include?('x-amz-checksum')})
              .to be_truthy
          end
        end

        context 'request checksum is sha256' do
          let(:input) { Input.new(request_algorithm: 'sha256') }

          it 'computes the checksum' do
            subject.call(input, context)

            expect(request.headers['X-Amz-Checksum-Sha256'])
              .to eq('H1i5FFsk0QjXrDiIcziz6jIpgzucHkGCUDQ/kHv9EEc=')
          end
        end

        context 'validation enabled' do
          let(:input) { Input.new(request_validation: 'ENABLED') }
          let(:response_data) { 'response' }

          # behave like send, set response headers and write body
          let(:app) do
            proc do |input, context|
              response_headers.each do |k,v|
                response.headers[k] = v
              end
              response.body.write(response_data)
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
              subject.call(input, context)
              expect(context.metadata[:http_checksum][:validated]).to eq('SHA256')
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
      end
    end
  end
end
