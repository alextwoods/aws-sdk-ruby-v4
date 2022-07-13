# frozen_string_literal: true

require_relative '../spec_helper'

require 'json'
require 'time'

module AWS::SigV4
  describe Signer do
    let(:signer) do
      Signer.new(
        service: context['service'],
        region: context['region'],
        signing_algorithm: signing_algorithm,
        credentials: Credentials.new(
          access_key_id: context['credentials']['access_key_id'],
          secret_access_key: context['credentials']['secret_access_key'],
          session_token: context['credentials']['token']
        ),
        uri_escape_path: false,
        normalize_path: context['normalize'],
        apply_checksum_header: context['sign_body'],
        # most tests don't have this
        omit_session_token: context.fetch('omit_session_token', false)
      )
    end

    context 'sigv4 spec suite' do
      let(:signing_algorithm) { :sigv4 }

      Dir.glob(File.expand_path('v4/**', __dir__)).each do |path|
        # necessary basic test information
        next unless File.exist?(File.join(path, 'request.txt'))
        next unless File.exist?(File.join(path, 'context.json'))

        # Some tests don't have appropriate files. Skip (and notify).
        def skip_if_test_missing(path, file_name)
          return if File.exist?(File.join(path, file_name))

          skip "File #{file_name} is missing; skipping test."
        end

        describe File.basename(path) do
          # The Signer params (as a context JSON)
          let(:context) do
            JSON.parse(File.read(File.join(path, 'context.json')))
          end

          # The request to sign
          let(:request) do
            raw_request = File.read(
              File.join(path, 'request.txt'),
              encoding: 'utf-8'
            )
            SpecHelper2.debug("GIVEN REQUEST: |#{raw_request}|")
            request = SpecHelper2.parse_request(raw_request)
            SpecHelper2.debug("PARSED REQUEST: #{request.inspect}")
            request
          end

          let(:request_time) do
            Time.parse(context['timestamp']) if context['timestamp']
          end

          context 'header' do
            # CRT does not provide canonical request
            unless Signer.use_crt?
              it 'verifies canonical request' do
                skip_if_test_missing(path, 'header-canonical-request.txt')

                signature = signer.sign_request(
                  request: request,
                  time: request_time
                )

                computed = signature.metadata[:canonical_request]
                SpecHelper2.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
                expected = File.read(
                  File.join(path, 'header-canonical-request.txt'),
                  encoding: 'utf-8'
                )
                SpecHelper2.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")

                expect(computed).to eq(expected)
              end
            end

            # CRT does not provide signature (it may be parsable)
            unless Signer.use_crt?
              it 'verifies signature' do
                skip_if_test_missing(path, 'header-signature.txt')

                signature = signer.sign_request(
                  request: request,
                  time: request_time
                )

                computed = signature.metadata[:signature]
                SpecHelper2.debug("COMPUTED SIGNATURE: |#{computed}|")
                expected = File.read(
                  File.join(path, 'header-signature.txt'),
                  encoding: 'utf-8'
                )
                SpecHelper2.debug("EXPECTED SIGNATURE: |#{expected}|")

                expect(computed).to eq(expected)
              end
            end

            it 'verifies signed request' do
              skip_if_test_missing(path, 'header-signed-request.txt')

              signature = signer.sign_request(
                request: request,
                time: request_time
              )

              # For this test, we only care to check headers
              # since Signer does not modify a request object.
              computed = signature.headers
              # Merge in test request headers (downcased) because computed
              # headers will only include sigv4 headers.
              computed = computed.merge(
                SpecHelper2.downcase_headers(request[:headers])
              )
              SpecHelper2.debug("COMPUTED HEADERS: |#{computed}|")
              expected_request = File.read(
                File.join(path, 'header-signed-request.txt'),
                encoding: 'utf-8'
              )
              expected = SpecHelper2.parse_request(expected_request)[:headers]
              expected = SpecHelper2.downcase_headers(expected)
              SpecHelper2.debug("EXPECTED HEADERS: |#{expected}|")

              expect(computed).to eq(expected)
            end

            # CRT does not provide string to sign
            unless Signer.use_crt?
              it 'verifies string to sign' do
                skip_if_test_missing(path, 'header-string-to-sign.txt')

                signature = signer.sign_request(
                  request: request,
                  time: request_time
                )

                computed = signature.metadata[:string_to_sign]
                SpecHelper2.debug("COMPUTED STRING TO SIGN: |#{computed}|")
                expected = File.read(
                  File.join(path, 'header-string-to-sign.txt'),
                  encoding: 'utf-8'
                )
                SpecHelper2.debug("EXPECTED STRING TO SIGN: |#{expected}|")

                expect(computed).to eq(expected)
              end
            end
          end

          context 'query' do
            # CRT does not provide canonical request
            unless Signer.use_crt?
              it 'verifies canonical request' do
                skip_if_test_missing(path, 'query-canonical-request.txt')

                presigned_url = signer.presign_url(
                  request: request,
                  time: request_time,
                  expires_in: context['expiration_in_seconds']
                )

                computed = presigned_url.metadata[:canonical_request]
                SpecHelper2.debug("COMPUTED CANONICAL_REQUEST: |#{computed}|")
                expected = File.read(
                  File.join(path, 'query-canonical-request.txt'),
                  encoding: 'utf-8'
                )
                SpecHelper2.debug("EXPECTED CANONICAL_REQUEST: |#{expected}|")

                expect(computed).to eq(expected)
              end
            end

            # CRT does not provide signature (it may be parsable)
            unless Signer.use_crt?
              it 'verifies signature' do
                skip_if_test_missing(path, 'query-signature.txt')

                presigned_url = signer.presign_url(
                  request: request,
                  time: request_time,
                  expires_in: context['expiration_in_seconds']
                )

                computed = presigned_url.metadata[:signature]
                SpecHelper2.debug("COMPUTED SIGNATURE: |#{computed}|")
                expected = File.read(
                  File.join(path, 'query-signature.txt'),
                  encoding: 'utf-8'
                )
                SpecHelper2.debug("EXPECTED SIGNATURE: |#{expected}|")

                expect(computed).to eq(expected)
              end
            end

            it 'verifies signed request' do
              skip_if_test_missing(path, 'query-signed-request.txt')

              presigned_url = signer.presign_url(
                request: request,
                time: request_time,
                expires_in: context['expiration_in_seconds']
              )

              # Validate the pre-signed url by splitting into parts
              # because query ordering is non-deterministic.
              computed_query = presigned_url.url.query
              computed = SpecHelper2.split_query_to_params(computed_query)
              SpecHelper2.debug("COMPUTED URL: |#{presigned_url.url}|")
              expected_request = File.read(
                File.join(path, 'query-signed-request.txt'),
                encoding: 'utf-8'
              )
              expected_url = SpecHelper2.parse_request(
                expected_request, uri_escape: false
              )[:url]
              SpecHelper2.debug("EXPECTED URL: |#{expected_url}|")
              expected_query = URI(expected_url).query
              expected = SpecHelper2.split_query_to_params(expected_query)

              expect(computed).to eq(expected)
            end

            # CRT does not provide string to sign
            unless Signer.use_crt?
              it 'verifies string to sign' do
                skip_if_test_missing(path, 'query-string-to-sign.txt')

                presigned_url = signer.presign_url(
                  request: request,
                  time: request_time,
                  expires_in: context['expiration_in_seconds']
                )

                computed = presigned_url.metadata[:string_to_sign]
                SpecHelper2.debug("COMPUTED STRING TO SIGN: |#{computed}|")
                expected = File.read(
                  File.join(path, 'query-string-to-sign.txt'),
                  encoding: 'utf-8'
                )
                SpecHelper2.debug("EXPECTED STRING TO SIGN: |#{expected}|")

                expect(computed).to eq(expected)
              end
            end
          end
        end
      end
    end

    # Skip this test suite unless CRT is used - SigV4a is CRT only
    if Signer.use_crt?
      context 'sigv4a spec suite' do
        let(:signing_algorithm) { :sigv4a }

        Dir.glob(File.expand_path('v4a/**', __dir__)).each do |path|
          # necessary basic test information
          next unless File.exist?(File.join(path, 'request.txt'))
          next unless File.exist?(File.join(path, 'context.json'))

          # Some tests don't have appropriate files. Skip (and notify).
          def skip_if_test_missing(path, file_name)
            return if File.exist?(File.join(path, file_name))

            skip "File #{file_name} is missing; skipping test."
          end

          describe(File.basename(path)) do
            # The Signer params (as a context JSON)
            let(:context) do
              JSON.parse(File.read(File.join(path, 'context.json')))
            end

            # The request to sign
            let(:request) do
              raw_request = File.read(
                File.join(path, 'request.txt'),
                encoding: 'utf-8'
              )
              SpecHelper2.debug("GIVEN REQUEST: |#{raw_request}|")
              request = SpecHelper2.parse_request(raw_request)
              SpecHelper2.debug("PARSED REQUEST: #{request.inspect}")
              request
            end

            let(:request_time) do
              Time.parse(context['timestamp']) if context['timestamp']
            end

            context 'header' do
              # CRT does not provide canonical request

              # CRT does not provide signature

              it 'verifies signed request' do
                skip_if_test_missing(path, 'header-signed-request.txt')

                signature = signer.sign_request(
                  request: request,
                  time: request_time
                )

                # For this test, we only care to check headers
                # since Signer does not modify a request object.
                computed = signature.headers
                # Merge in test request headers (downcased) because computed
                # headers will only include sigv4 headers.
                computed = computed.merge(
                  SpecHelper2.downcase_headers(request[:headers])
                )
                SpecHelper2.debug("COMPUTED HEADERS: |#{computed}|")
                expected_request = File.read(
                  File.join(path, 'header-signed-request.txt'),
                  encoding: 'utf-8'
                )
                expected = SpecHelper2.parse_request(expected_request)[:headers]
                expected = SpecHelper2.downcase_headers(expected)
                SpecHelper2.debug("EXPECTED HEADERS: |#{expected}|")

                expect(computed).to eq(expected)
              end

              # CRT does not provide string to sign
            end

            context 'query' do
              # CRT does not provide canonical request

              # CRT does not provide signature

              it 'verifies signed request' do
                skip_if_test_missing(path, 'query-signed-request.txt')

                presigned_url = signer.presign_url(
                  request: request,
                  time: request_time,
                  expires_in: context['expiration_in_seconds']
                )

                # Validate the pre-signed url by splitting into parts
                # because query ordering is non-deterministic.
                computed_query = presigned_url.url.query
                computed = SpecHelper2.split_query_to_params(computed_query)
                SpecHelper2.debug("COMPUTED URL: |#{presigned_url.url}|")
                expected_request = File.read(
                  File.join(path, 'query-signed-request.txt'),
                  encoding: 'utf-8'
                )
                expected_url = SpecHelper2.parse_request(
                  expected_request, uri_escape: false
                )[:url]
                SpecHelper2.debug("EXPECTED URL: |#{expected_url}|")
                expected_query = URI(expected_url).query
                expected = SpecHelper2.split_query_to_params(expected_query)

                expect(computed).to eq(expected)
              end

              # CRT does not provide string to sign
            end
            #
            # it 'computes the authorization header' do
            #   signature = signer.sign_request(request: request)
            #   creq = File.read(
            #     File.join(path, 'header-canonical-request.txt'), encoding: 'utf-8'
            #   )
            #   expected_pk = JSON.parse(File.read(File.join(path, 'public-key.json')))
            #
            #   expected_req = SpecHelper2.parse_request(File.read(
            #     File.join(path, 'header-signed-request.txt'), encoding: 'utf-8')
            #   )
            #   expected_req[:headers].each do |k,v|
            #     if k == 'Authorization'
            #       expected_parts = v.split(' ')
            #       actual_parts = signature.headers['authorization'].split(' ')
            #       expected_parts.zip(actual_parts).each do |e, a|
            #         if e.start_with?('Signature')
            #           # Both signatures should verify but wont match
            #           # since ECCDA relies on a random k value
            #           # config = signature.extra[:config]
            #           # signable = signature.extra[:signable]
            #           # Aws::Crt::Native.verify_sigv4a_signing(
            #           #   signable.native,
            #           #   config.native,
            #           #   creq,
            #           #   e.split('=')[1],
            #           #   expected_pk['X'],
            #           #   expected_pk['Y']
            #           # )
            #           #
            #           # Aws::Crt::Native.verify_sigv4a_signing(
            #           #   signable.native,
            #           #   config.native,
            #           #   creq,
            #           #   a.split('=')[1],
            #           #   expected_pk['X'],
            #           #   expected_pk['Y']
            #           # )
            #         else
            #           expect(a).to eq(e)
            #         end
            #       end
            #     else
            #       expect(signature.headers[k.downcase] || request[:headers][k]).to eq(v)
            #     end
            #   end
            # end
            #
            # if File.exist?(File.join(path, 'query-signed-request.txt')) &&
            #   !path.include?('utf8') && !path.include?('space')
            #
            #   it 'creates a presigned url' do
            #     raw_expected = File.read(
            #       File.join(path, 'query-signed-request.txt'), encoding: 'utf-8'
            #     )
            #     expected = URI.parse(raw_expected.lines.first.split[1]).query
            #     creq = File.read(
            #       File.join(path, 'query-canonical-request.txt'), encoding: 'utf-8'
            #     )
            #     expected_pk = JSON.parse(File.read(File.join(path, 'public-key.json')))
            #
            #     request[:headers].delete('x-amz-date')
            #     options = {}
            #     options[:time] = request_time
            #     if context['expiration_in_seconds']
            #       options[:expires_in] = context['expiration_in_seconds']
            #     end
            #
            #     extra = {}
            #     allow(::Aws::Crt::Auth::Signer)
            #       .to receive(:sign_request)
            #       .and_wrap_original do |original, config, signable, method, path|
            #       extra[:config] = config
            #       extra[:signable] = signable
            #       original.call(config, signable, method, path)
            #     end
            #
            #     presigned = signer.presign_url(request: request, **options)
            #
            #
            #     # validate the presigned url against expected
            #     # because signature is non-deterministic we need to break down
            #     # and compare parameters directly
            #     expected_params = SpecHelper2.split_query_to_params(expected)
            #     params = SpecHelper2.split_query_to_params(presigned.url.query)
            #     expected_params.each do |k, v|
            #       expect(params).to include(k)
            #       if k == 'X-Amz-Signature'
            #         config = extra[:config]
            #         signable = extra[:signable]
            #         # Aws::Crt::Native.verify_sigv4a_signing(
            #         #   signable.native,
            #         #   config.native,
            #         #   creq,
            #         #   v,
            #         #   expected_pk['X'],
            #         #   expected_pk['Y']
            #         # )
            #         #
            #         # Aws::Crt::Native.verify_sigv4a_signing(
            #         #   signable.native,
            #         #   config.native,
            #         #   creq,
            #         #   params[k],
            #         #   expected_pk['X'],
            #         #   expected_pk['Y']
            #         # )
            #       else
            #         expect(params[k]).to eq v
            #       end
            #     end
            #   end
            # end
          end
        end
      end
    end
  end
end
