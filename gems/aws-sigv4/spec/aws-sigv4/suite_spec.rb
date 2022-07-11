# frozen_string_literal: true

require_relative '../spec_helper'

module AWS
  module SigV4
    describe Signer do
      describe 'suite' do
        Dir.glob(File.expand_path('suite/**', __dir__)).each do |path|
          filename = File.basename(path)
          prefix = File.join(path, filename)
          next unless File.exist?("#{prefix}.req")

          # next unless filename == 'get-vanilla-query-order-encoded'

          describe(File.basename(prefix)) do
            let(:credentials_options) do
              {
                access_key_id: 'AKIDEXAMPLE',
                secret_access_key: 'wJalrXUtnFEMI/K7MDENG+bPxRfiCYEXAMPLEKEY'
              }
            end

            let(:signer) do
              # specific test requires session token to be set
              # all other tests will fail if this is present
              if filename == 'get-vanilla-with-session-token'
                credentials_options.merge!(
                  session_token: '6e86291e8372ff2a2260956d9b8aae1d763fbf315fa00fa31553b73ebf194267' # rubocop:disable Metrics/LineLength
                )
              end

              # content-length must be an unsigned header for this to pass
              if filename == 'post-x-www-form-urlencoded'
                unsigned_headers = ['content-length']
              end

              Signer.new(
                {
                  service: 'service',
                  region: 'us-east-1',
                  credentials: Credentials.new(**credentials_options),
                  # necessary to pass the test suite
                  uri_escape_path: false,
                  apply_checksum_header: false
                }
              )
            end

            let(:request) do
              raw_request = File.read("#{prefix}.req", encoding: 'utf-8')
              request = SpecHelper.parse_request(raw_request)
              SpecHelper.debug("GIVEN REQUEST: |#{raw_request}|")
              SpecHelper.debug("PARSED REQUEST: |#{request.inspect}|")
              request
            end

            it 'computes the canonical request' do # creq
              if Signer.use_crt?
                skip('CRT Signer does not provide canonical request')
              end

              signature = signer.sign_request(request: request)
              computed = signature.metadata[:canonical_request]
              expected = File.read("#{prefix}.creq", encoding: 'utf-8')
              SpecHelper.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")
              SpecHelper.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
              expect(computed).to eq(expected)
            end

            it 'computes the string to sign' do # sts
              if Signer.use_crt?
                skip('CRT Signer does not provide string to sign')
              end

              signature = signer.sign_request(request: request)
              computed = signature.metadata[:string_to_sign]
              expected = File.read("#{prefix}.sts", encoding: 'utf-8')
              SpecHelper.debug("EXPECTED STRING_TO_SIGN: |#{expected}|")
              SpecHelper.debug("COMPUTED STRING_TO_SIGN: |#{computed}|")
              expect(computed).to eq(expected)
            end

            it 'computes the authorization header' do # authz
              signature = signer.sign_request(request: request)
              computed = signature.headers['authorization']
              expected = File.read("#{prefix}.authz", encoding: 'utf-8')
              SpecHelper.debug("EXPECTED AUTHORIZATION: |#{expected}|")
              SpecHelper.debug("COMPUTED AUTHORIZATION: |#{computed}|")
              expect(computed).to eq(expected)
            end
          end
        end
      end
    end
  end
end
