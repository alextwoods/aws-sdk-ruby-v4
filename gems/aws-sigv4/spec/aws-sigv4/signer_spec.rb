# frozen_string_literal: true

require_relative '../spec_helper'

require 'tempfile'
require 'base64'

module AWS::SigV4
  describe Signer do
    let(:service) { 'peccy-service' }
    let(:region) { 'us-peccy-1' }
    let(:expiration) { nil }

    let(:credentials) do
      Credentials.new(
        access_key_id: 'akid',
        secret_access_key: 'secret',
        session_token: 'token',
        expiration: expiration
      )
    end

    # non defaults
    let(:unsigned_headers) { ['x-foo-unsigned'] }
    let(:use_double_uri_encode) { false }
    let(:apply_checksum_header) { false }
    let(:signing_algorithm) { :sigv4a }
    let(:omit_session_token) { true }
    let(:should_normalize_uri_path) { false }
    let(:time) { Time.now }
    let(:expires_in) { 10 }

    let(:required_options) do
      {
        service: service,
        region: region
      }
    end

    let(:request) do
      {
        http_method: 'GET',
        url: 'https://domain.com/'
      }
    end

    subject { Signer.new(required_options) }

    describe '#initialize' do
      let(:default_unsigned_headers) do
        Set.new(
          %w[expect x-amzn-trace-id user-agent authorization]
        )
      end

      it 'does not validate provided options at initialization time' do
        expect { Signer.new }.to_not raise_error
      end

      it 'sets defaults' do
        signer = Signer.new
        expect(signer.unsigned_headers).to eq(default_unsigned_headers)
        expect(signer.use_double_uri_encode).to be true
        expect(signer.apply_checksum_header).to be true
        expect(signer.signing_algorithm).to eq(:sigv4)
        expect(signer.should_normalize_uri_path).to be true
        expect(signer.omit_session_token).to be false
      end

      it 'can configure all non-default values' do
        signer = Signer.new(
          unsigned_headers: unsigned_headers,
          use_double_uri_encode: use_double_uri_encode,
          apply_checksum_header: apply_checksum_header,
          signing_algorithm: signing_algorithm,
          omit_session_token: omit_session_token,
          should_normalize_uri_path: should_normalize_uri_path
        )
        expect(signer.unsigned_headers)
          .to eq(default_unsigned_headers + unsigned_headers)
        expect(signer.use_double_uri_encode).to be false
        expect(signer.apply_checksum_header).to be false
        expect(signer.signing_algorithm).to eq(:sigv4a)
        expect(signer.should_normalize_uri_path).to be false
        expect(signer.omit_session_token).to be true
      end
    end

    # Use mock expectations to test all options are passed through.
    # CRT doesn't provide much output for us to do testing.
    # This is done with and without crt in the environment to ensure coverage.
    context 'aws-crt' do
      before do
        allow(AWS::SigV4::Signer).to receive(:use_crt?).and_return(true)

        allow(::Aws::Crt::Auth::StaticCredentialsProvider)
          .to receive(:new).with(
            credentials.access_key_id,
            credentials.secret_access_key,
            credentials.session_token
          ).and_return(crt_credential_provider)

        allow(::Aws::Crt::Http::Message).to receive(:new)
          .and_return(message)
        allow(::Aws::Crt::Auth::Signable).to receive(:new)
          .and_return(signable)
      end

      let(:crt_credential_provider) do
        double('StaticCredentialsProvider', credentials: credentials)
      end
      let(:signing_config) { double('SigningConfig') }
      let(:message) { double('Message') }
      let(:signable) { double('Signable') }
      let(:signer) { double('Signer') }

      describe '#sign_request' do
        # Attempt kitchen sink - make sure objects are created and used
        # with all provided options
        it 'passes through all options' do
          request.merge(headers: { 'x-amz-content-sha256' => 'digest' })
          digest = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855' # rubocop:disable Layout/LineLength

          expect(::Aws::Crt::Auth::SigningConfig).to receive(:new)
            .with(
              algorithm: signing_algorithm,
              signature_type: :http_request_headers,
              region: region,
              service: service,
              date: time,
              signed_body_value: digest,
              signed_body_header_type: :sbht_none,
              credentials: crt_credential_provider,
              unsigned_headers: unsigned_headers,
              use_double_uri_encode: use_double_uri_encode,
              should_normalize_uri_path: should_normalize_uri_path,
              omit_session_token: omit_session_token
            ).and_return(signing_config)

          signing_result = double(
            'SigningResult',
            :[] => { headers: {} }
          )

          expect(::Aws::Crt::Auth::Signer).to receive(:sign_request)
            .with(signing_config, signable)
            .and_return(signing_result)

          Signer.new.sign_request(
            request: request,
            credentials: credentials,
            service: service,
            region: region,
            unsigned_headers: unsigned_headers,
            use_double_uri_encode: use_double_uri_encode,
            apply_checksum_header: apply_checksum_header,
            signing_algorithm: signing_algorithm,
            omit_session_token: omit_session_token,
            should_normalize_uri_path: should_normalize_uri_path,
            time: time
          )
        end

        context 'request' do
          before do
            allow(::Aws::Crt::Auth::SigningConfig).to receive(:new)
              .and_return(signing_config)
          end

          it 'uses a provided X-Amz-Date header' do
            now = Time.now.utc.strftime('%Y%m%dT%H%M%SZ')

            signing_result = double(
              'SigningResult',
              :[] => { 'X-Amz-Date' => now }
            )

            expect(::Aws::Crt::Auth::Signer).to receive(:sign_request)
              .with(signing_config, signable)
              .and_return(signing_result)

            signature = subject.sign_request(
              request: request.merge(headers: { 'X-Amz-Date' => now }),
              credentials: credentials
            )
            expect(signature.headers['x-amz-date']).to eq(now)
          end

          it 'appends to a user agent' do
            stub_const('AWS::SigV4::VERSION', '2')

            signing_result = double(
              'SigningResult',
              :[] => { 'User-Agent' => 'ua crt-signer/sigv4/2' }
            )

            expect(::Aws::Crt::Auth::Signer).to receive(:sign_request)
              .with(signing_config, signable)
              .and_return(signing_result)

            signature = subject.sign_request(
              request: request.merge(headers: { 'user-agent' => 'ua' }),
              credentials: credentials
            )
            expect(signature.headers['user-agent'])
              .to eq('ua crt-signer/sigv4/2')
          end

          it 'raises if sigv4-express and the crt version is too low' do
            stub_const('Aws::Crt::GEM_VERSION', '0.1.9')

            expect do
              subject.sign_request(
                request: request,
                credentials: credentials,
                signing_algorithm: :'sigv4-s3express'
              )
            end.to raise_error(
              ArgumentError,
              /This version of aws-crt does not support S3 Express/
            )
          end
        end
      end

      describe '#presign_url' do
        it 'passes through all options' do
          request.merge(headers: { 'x-amz-content-sha256' => 'digest' })
          digest = 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855' # rubocop:disable Layout/LineLength

          expect(::Aws::Crt::Auth::SigningConfig).to receive(:new)
            .with(
              algorithm: signing_algorithm,
              signature_type: :http_request_query_params,
              region: region,
              service: service,
              date: time,
              signed_body_value: digest,
              signed_body_header_type: :sbht_none,
              credentials: crt_credential_provider,
              unsigned_headers: unsigned_headers,
              use_double_uri_encode: use_double_uri_encode,
              should_normalize_uri_path: should_normalize_uri_path,
              omit_session_token: omit_session_token,
              expiration_in_seconds: expires_in
            ).and_return(signing_config)

          signing_result = double('SigningResult')
          allow(signing_result).to receive(:[]).with(:headers).and_return(
            { 'host' => 'https://domain.com' }
          )
          allow(signing_result).to receive(:[]).with(:path).and_return(
            'https://domain.com'
          )

          expect(::Aws::Crt::Auth::Signer).to receive(:sign_request)
            .with(
              signing_config,
              signable,
              request[:http_method],
              request[:url].to_s
            )
            .and_return(signing_result)

          Signer.new.presign_url(
            request: request,
            credentials: credentials,
            service: service,
            region: region,
            unsigned_headers: unsigned_headers,
            use_double_uri_encode: use_double_uri_encode,
            apply_checksum_header: apply_checksum_header,
            signing_algorithm: signing_algorithm,
            omit_session_token: omit_session_token,
            should_normalize_uri_path: should_normalize_uri_path,
            time: time,
            expires_in: expires_in
          )
        end

        context 'request' do
          before do
            allow(::Aws::Crt::Auth::SigningConfig).to receive(:new)
              .and_return(signing_config)
          end

          # Doesn't really test functionality but satisfies coverage
          it 'uses a provided X-Amz-Date header' do
            now = Time.now.utc.strftime('%Y%m%dT%H%M%SZ')

            signing_result = double('SigningResult')
            allow(signing_result).to receive(:[]).with(:headers).and_return(
              { 'X-Amz-Date' => now }
            )
            allow(signing_result).to receive(:[]).with(:path).and_return(
              "https://domain.com?X-Amz-Date=#{now}"
            )

            expect(::Aws::Crt::Auth::Signer).to receive(:sign_request)
              .with(
                signing_config,
                signable,
                request[:http_method],
                request[:url].to_s
              )
              .and_return(signing_result)

            signature = subject.presign_url(
              request: request.merge(headers: { 'X-Amz-Date' => now }),
              credentials: credentials
            )
            expect(signature.url.to_s).to include("X-Amz-Date=#{now}")
          end

          it 'raises if sigv4-express and the crt version is too low' do
            stub_const('Aws::Crt::GEM_VERSION', '0.1.9')

            expect do
              subject.presign_url(
                request: request,
                credentials: credentials,
                signing_algorithm: :'sigv4-s3express'
              )
            end.to raise_error(
              ArgumentError,
              /This version of aws-crt does not support S3 Express/
            )
          end
        end
      end
    end

    # Behavior testing to test all options are passed through.
    # The Ruby implementation has access to internal data.
    # This is done with and without crt in the environment to ensure coverage.
    context 'pure ruby' do
      before do
        allow(AWS::SigV4::Signer).to receive(:use_crt?).and_return(false)
      end

      describe '#sign_request' do
        context 'request object' do
          let(:request) do
            double(
              http_method: 'GET',
              uri: URI('https://domain.com/'),
              headers: {},
              body: nil
            )
          end

          it 'uses a request object' do
            signature = subject.sign_request(
              request: request,
              credentials: credentials
            )
            expect(signature.metadata[:canonical_request]).to include('GET')
            expect(signature.metadata[:canonical_request])
              .to include('domain.com')
          end
        end

        context 'service' do
          it 'allows for service override' do
            signature = subject.sign_request(
              request: request,
              credentials: credentials,
              service: 'new-service'
            )
            expect(signature.metadata[:string_to_sign])
              .to include('new-service')
          end

          it 'raises with no service' do
            expect do
              Signer.new.sign_request(
                request: request, credentials: credentials
              )
            end.to raise_error(ArgumentError, /:service/)
          end
        end

        context 'region' do
          it 'allows for region override' do
            signature = subject.sign_request(
              request: request, credentials: credentials, region: 'new-region'
            )
            expect(signature.metadata[:string_to_sign])
              .to include('new-region')
          end

          it 'raises with no region' do
            # Extraction is order dependent
            options = { service: service }
            expect do
              Signer.new(options).sign_request(
                request: request, credentials: credentials
              )
            end.to raise_error(ArgumentError, /:region/)
          end
        end

        context 'unsigned headers' do
          it 'does not sign default unsigned headers' do
            signature = subject.sign_request(
              request: request.merge(
                headers: {
                  'expect' => 'foo',
                  'x-amzn-trace-id' => 'foo',
                  'user-agent' => 'foo',
                  'authorization' => 'foo'
                }
              ),
              credentials: credentials
            )
            expect(signature.headers['authorization'])
              .to_not include(
                'expect', 'x-amzn-trace-id', 'user-agent', 'authorization'
              )
          end

          it 'allows for unsigned headers override' do
            signature = subject.sign_request(
              request: request.merge(headers: { 'x-foo-unsigned' => 'foo' }),
              credentials: credentials,
              unsigned_headers: unsigned_headers
            )
            expect(signature.headers['authorization'])
              .to_not include('x-foo-unsigned')
          end
        end

        context 'uri escape path' do
          it 'escapes path for the canonical request by default' do
            signature = subject.sign_request(
              request: request.merge(url: 'https://domain.com/foo%bar'),
              credentials: credentials
            )
            expect(signature.metadata[:canonical_request])
              .to include("/foo%25bar\n")
          end

          it 'allows for uri escape path override' do
            signature = subject.sign_request(
              request: request.merge(url: 'https://domain.com/foo%bar'),
              credentials: credentials,
              use_double_uri_encode: use_double_uri_encode
            )
            expect(signature.metadata[:canonical_request])
              .to include("/foo%bar\n")
          end
        end

        context 'apply checksum header' do
          it 'adds the X-Amz-Content-Sha256 header by default' do
            signature = subject.sign_request(
              request: request.merge(body: 'abc'),
              credentials: credentials
            )
            expect(signature.headers['x-amz-content-sha256'])
              .to eq(Digest::SHA256.hexdigest('abc'))
          end

          it 'allows for apply checksum header override' do
            signature = subject.sign_request(
              request: request,
              credentials: credentials,
              apply_checksum_header: apply_checksum_header
            )
            expect(signature.headers['x-amz-content-sha256']).to be(nil)
          end
        end

        context 'signing algorithm' do
          it 'allows for signing algorithm override' do
            # non-default SigV4A isn't supported here
            expect do
              subject.sign_request(
                request: request,
                credentials: credentials,
                signing_algorithm: signing_algorithm
              )
            end.to raise_error(ArgumentError, /aws-crt/)
          end

          it 'raises when not sigv4, sigv4a, or sigv4-s3express' do
            expect do
              subject.sign_request(
                request: request,
                credentials: credentials,
                signing_algorithm: :not_sigv4
              )
            end.to raise_error(
              ArgumentError,
              /`:sigv4`, `:sigv4a`, or `:'sigv4-s3express'`/
            )
          end

          it 'uses a s3 session token' do
            signature = subject.sign_request(
              request: request,
              credentials: credentials,
              signing_algorithm: :'sigv4-s3express'
            )

            expect(signature.headers['x-amz-security-token']).to be_nil
            expect(signature.headers['x-amz-s3session-token']).to eq('token')
          end
        end

        context 'normalize path' do
          it 'normalizes by default' do
            signature = subject.sign_request(
              request: request.merge(url: "#{request[:url]}/foo/.."),
              credentials: credentials
            )
            expect(signature.metadata[:canonical_request])
              .to include("GET\n/\n")
          end

          it 'allows for normalize path override' do
            signature = subject.sign_request(
              request: request.merge(url: "#{request[:url]}/foo/.."),
              credentials: credentials,
              should_normalize_uri_path: should_normalize_uri_path
            )
            expect(signature.metadata[:canonical_request])
              .to include("/foo/..\n")
          end
        end

        context 'omit session token' do
          it 'omits the session token by default' do
            signature = subject.sign_request(
              request: request, credentials: credentials
            )
            expect(signature.metadata[:canonical_request])
              .to include('token')
            expect(signature.headers['x-amz-security-token']).to eq('token')
          end

          it 'allows for omit session token override' do
            signature = subject.sign_request(
              request: request,
              credentials: credentials,
              omit_session_token: omit_session_token
            )
            expect(signature.metadata[:canonical_request])
              .to_not include('token')
            expect(signature.headers['x-amz-security-token']).to eq('token')
          end
        end

        # :time is tested in the suite
      end

      describe '#sign_event' do
        # TODO
      end

      describe '#presign_url' do
        context 'request object' do
          let(:request) do
            double(
              http_method: 'GET',
              uri: URI('https://domain.com/'),
              headers: {},
              body: nil
            )
          end

          it 'uses a request object' do
            presigned_url = subject.presign_url(
              request: request,
              credentials: credentials
            )
            expect(presigned_url.metadata[:canonical_request]).to include('GET')
            expect(presigned_url.metadata[:canonical_request])
              .to include('domain.com')
          end
        end

        context 'service' do
          it 'allows for service override' do
            presigned_url = subject.presign_url(
              request: request, credentials: credentials,
              service: 'new-service'
            )
            expect(presigned_url.metadata[:string_to_sign])
              .to include('new-service')
          end

          it 'raises with no service' do
            expect do
              Signer.new.presign_url(
                request: request, credentials: credentials
              )
            end.to raise_error(ArgumentError, /:service/)
          end
        end

        context 'region' do
          it 'allows for region override' do
            presigned_url = subject.presign_url(
              request: request,
              credentials: credentials,
              region: 'new-region'
            )
            expect(presigned_url.metadata[:string_to_sign])
              .to include('new-region')
          end

          it 'raises with no region' do
            # Extraction is order dependent
            options = { service: service }
            expect do
              Signer.new(options).presign_url(
                request: request, credentials: credentials
              )
            end.to raise_error(ArgumentError, /:region/)
          end
        end

        context 'unsigned headers' do
          it 'does not sign default unsigned headers' do
            presigned_url = subject.presign_url(
              request: request.merge(
                headers: {
                  'expect' => 'foo',
                  'x-amzn-trace-id' => 'foo',
                  'user-agent' => 'foo',
                  'authorization' => 'foo'
                }
              ),
              credentials: credentials
            )
            expect(presigned_url.url.to_s)
              .to_not include(
                'expect', 'x-amzn-trace-id', 'user-agent', 'authorization'
              )
          end

          it 'allows for unsigned headers override' do
            presigned_url = subject.presign_url(
              request: request.merge(headers: { 'x-foo-unsigned' => 'foo' }),
              credentials: credentials,
              unsigned_headers: unsigned_headers
            )
            expect(presigned_url.url.to_s).to_not include('x-foo-unsigned')
          end
        end

        context 'uri escape path' do
          it 'escapes path for the canonical request by default' do
            presigned_url = subject.presign_url(
              request: request.merge(url: 'https://domain.com/foo%bar'),
              credentials: credentials
            )
            expect(presigned_url.metadata[:canonical_request])
              .to include("/foo%25bar\n")
          end

          it 'allows for uri escape path override' do
            presigned_url = subject.presign_url(
              request: request.merge(url: 'https://domain.com/foo%bar'),
              credentials: credentials,
              use_double_uri_encode: use_double_uri_encode
            )
            expect(presigned_url.metadata[:canonical_request])
              .to include("/foo%bar\n")
          end
        end

        context 'signing algorithm' do
          it 'allows for signing algorithm override' do
            # non-default SigV4A isn't supported here
            expect do
              subject.presign_url(
                request: request,
                credentials: credentials,
                signing_algorithm: signing_algorithm
              )
            end.to raise_error(ArgumentError, /aws-crt/)
          end

          it 'raises when not sigv4, sigv4a, or sigv4-s3express' do
            expect do
              subject.presign_url(
                request: request,
                credentials: credentials,
                signing_algorithm: :not_sigv4
              )
            end.to raise_error(
              ArgumentError,
              /`:sigv4`, `:sigv4a`, or `:'sigv4-s3express'`/
            )
          end

          it 'uses a s3 session token' do
            presigned_url = subject.presign_url(
              request: request,
              credentials: credentials,
              signing_algorithm: :'sigv4-s3express'
            )

            expect(presigned_url.url.to_s)
              .to_not include('X-Amz-Security-Token')
            expect(presigned_url.url.to_s)
              .to include('X-Amz-S3session-Token=token')
          end
        end

        context 'normalize path' do
          it 'normalizes by default' do
            presigned_url = subject.presign_url(
              request: request.merge(url: "#{request[:url]}/foo/.."),
              credentials: credentials
            )
            expect(presigned_url.metadata[:canonical_request])
              .to include("GET\n/\n")
          end

          it 'allows for normalize path override' do
            presigned_url = subject.presign_url(
              request: request.merge(url: "#{request[:url]}/foo/.."),
              credentials: credentials,
              should_normalize_uri_path: should_normalize_uri_path
            )
            expect(presigned_url.metadata[:canonical_request])
              .to include("/foo/..\n")
          end
        end

        context 'omit session token' do
          it 'omits the session token by default' do
            presigned_url = subject.presign_url(
              request: request, credentials: credentials
            )
            expect(presigned_url.metadata[:canonical_request])
              .to include('token')
            expect(presigned_url.url.to_s)
              .to include('X-Amz-Security-Token=token')
          end

          it 'allows for omit session token override' do
            presigned_url = subject.presign_url(
              request: request,
              credentials: credentials,
              omit_session_token: omit_session_token
            )
            expect(presigned_url.metadata[:canonical_request])
              .to_not include('token')
            expect(presigned_url.url.to_s)
              .to include('X-Amz-Security-Token=token')
          end
        end

        context 'expires in' do
          it 'defaults to 15 minutes' do
            presigned_url = subject.presign_url(
              request: request, credentials: credentials
            )
            expect(presigned_url.url.to_s).to include('X-Amz-Expires=900')
          end

          it 'allows for expires in override' do
            presigned_url = subject.presign_url(
              request: request, credentials: credentials, expires_in: 1
            )
            expect(presigned_url.url.to_s).to include('X-Amz-Expires=1')
          end

          it 'raises when expires in is not an integer' do
            expect do
              subject.presign_url(
                request: request, credentials: credentials, expires_in: 'foo'
              )
            end.to raise_error(ArgumentError, /number of seconds/)
          end

          context 'credentials expiration' do
            let(:expiration) { time + 180 }

            it 'picks the min from expires_in and credential expiration' do
              presigned_url = subject.presign_url(
                request: request,
                credentials: credentials,
                expires_in: 3600
              )
              expect(presigned_url.url.to_s).to include('X-Amz-Expires=180')
            end
          end
        end

        # :time is tested in suite spec
      end
    end

    # Uses crt or not depending on whats loaded when running the test.
    # Otherwise this becomes a lot of duplication.
    context 'shared' do
      describe '#sign_request' do
        it 'raises with no http_method' do
          expect { subject.sign_request(request: {}, credentials: credentials) }
            .to raise_error(ArgumentError, /:http_method/)
        end

        it 'raises with no url' do
          # Extraction is order dependent
          expect do
            subject.sign_request(
              request: { http_method: 'GET' },
              credentials: credentials
            )
          end.to raise_error(ArgumentError, /:url/)
        end

        it 'uses a provided X-Amz-Date header' do
          now = Time.now.utc.strftime('%Y%m%dT%H%M%SZ')
          signature = subject.sign_request(
            request: request.merge(headers: { 'X-Amz-Date' => now }),
            credentials: credentials
          )
          expect(signature.headers['x-amz-date']).to eq(now)
        end

        it 'omits port in Host when default and uri port are the same' do
          signature = subject.sign_request(
            request: {
              http_method: 'GET',
              url: 'https://domain.com:443'
            },
            credentials: credentials
          )
          expect(signature.headers['host']).to eq('domain.com')
        end

        it 'includes port in Host when default and uri port differ' do
          signature = subject.sign_request(
            request: {
              http_method: 'GET',
              url: 'https://domain.com:123'
            },
            credentials: credentials
          )
          expect(signature.headers['host']).to eq('domain.com:123')
        end

        it 'omits port in Host when uri port not provided' do
          signature = subject.sign_request(
            request: {
              http_method: 'GET',
              url: 'abcd://domain.com'
            },
            credentials: credentials
          )
          expect(signature.headers['host']).to eq('domain.com')
        end

        it 'includes port in Host when uri port provided' do
          signature = subject.sign_request(
            request: {
              http_method: 'GET',
              url: 'abcd://domain.com:123'
            },
            credentials: credentials
          )
          expect(signature.headers['host']).to eq('domain.com:123')
        end

        it 'does not read the body if X-Amz-Content-Sha256 is present' do
          body = double('http-payload')
          expect(body).to_not receive(:read)
          expect(body).to_not receive(:rewind)
          signature = subject.sign_request(
            request: {
              http_method: 'PUT',
              url: 'https://domain.com',
              headers: {
                'X-Amz-Content-Sha256' => 'hexdigest'
              },
              body: body
            },
            credentials: credentials
          )
          expect(signature.headers['x-amz-content-sha256'])
            .to eq('hexdigest')
        end

        it 'does not load files into memory to compute checksums' do
          body = Tempfile.new('tempfile')
          body.write('abc')
          body.flush
          expect(body).not_to receive(:read)
          expect(body).not_to receive(:rewind)
          signature = subject.sign_request(
            request: {
              http_method: 'POST',
              url: 'https://domain.com',
              body: body
            },
            credentials: credentials
          )
          expect(signature.headers['x-amz-content-sha256'])
            .to eq(Digest::SHA256.hexdigest('abc'))
        end

        it 'reads non-file IO objects into memory to compute checksums' do
          signature = subject.sign_request(
            request: {
              http_method: 'PUT',
              url: 'https://domain.com',
              body: StringIO.new('abc')
            },
            credentials: credentials
          )
          expect(signature.metadata[:content_sha256])
            .to eq(Digest::SHA256.hexdigest('abc'))
        end
      end

      describe '#presign_url' do
        it 'raises with no http_method' do
          expect { subject.presign_url(request: {}, credentials: credentials) }
            .to raise_error(ArgumentError, /:http_method/)
        end

        it 'raises with no url' do
          # Extraction is order dependent
          expect do
            subject.presign_url(
              request: { http_method: 'GET' },
              credentials: credentials
            )
          end.to raise_error(ArgumentError, /:url/)
        end

        it 'uses a provided Host header' do
          presigned_url = subject.presign_url(
            request: request.merge(headers: { 'host' => 'otherdomain.com' }),
            credentials: credentials
          )
          expect(presigned_url.headers['host']).to eq('otherdomain.com')
        end

        it 'uses a provided X-Amz-Date header' do
          now = Time.now.utc.strftime('%Y%m%dT%H%M%SZ')
          presigned_url = subject.presign_url(
            request: request.merge(headers: { 'X-Amz-Date' => now }),
            credentials: credentials
          )
          expect(presigned_url.url.to_s)
            .to include("X-Amz-Date=#{now}")
        end

        it 'omits port in Host when default and uri port are the same' do
          presigned_url = subject.presign_url(
            request: {
              http_method: 'GET',
              url: 'https://domain.com:443'
            },
            credentials: credentials
          )
          expect(presigned_url.headers['host']).to eq('domain.com')
        end

        it 'includes port in Host when default and uri port differ' do
          presigned_url = subject.presign_url(
            request: {
              http_method: 'GET',
              url: 'https://domain.com:123'
            },
            credentials: credentials
          )
          expect(presigned_url.headers['host']).to eq('domain.com:123')
        end

        it 'omits port in Host when uri port not provided' do
          presigned_url = subject.presign_url(
            request: {
              http_method: 'GET',
              url: 'abcd://domain.com'
            },
            credentials: credentials
          )
          expect(presigned_url.headers['host']).to eq('domain.com')
        end

        it 'includes port in Host when uri port provided' do
          presigned_url = subject.presign_url(
            request: {
              http_method: 'GET',
              url: 'abcd://domain.com:123'
            },
            credentials: credentials
          )
          expect(presigned_url.headers['host']).to eq('domain.com:123')
        end

        it 'does not read the body if X-Amz-Content-Sha256 is present' do
          body = double('http-payload')
          expect(body).to_not receive(:read)
          expect(body).to_not receive(:rewind)
          presigned_url = subject.presign_url(
            request: {
              http_method: 'PUT',
              url: 'https://domain.com',
              headers: {
                'X-Amz-Content-Sha256' => 'hexdigest'
              },
              body: body
            },
            credentials: credentials
          )
          expect(presigned_url.metadata[:content_sha256])
            .to include('hexdigest')
        end

        it 'does not read the body if body digest is present' do
          body = double('http-payload')
          expect(body).to_not receive(:read)
          expect(body).to_not receive(:rewind)
          presigned_url = subject.presign_url(
            request: {
              http_method: 'PUT',
              url: 'https://domain.com',
              body: body
            },
            credentials: credentials,
            body_digest: 'hexdigest'
          )
          expect(presigned_url.metadata[:content_sha256])
            .to include('hexdigest')
        end

        it 'does not load files into memory to compute checksums' do
          body = Tempfile.new('tempfile')
          body.write('abc')
          body.flush
          expect(body).not_to receive(:read)
          expect(body).not_to receive(:rewind)
          presigned_url = subject.presign_url(
            request: {
              http_method: 'POST',
              url: 'https://domain.com',
              body: body
            },
            credentials: credentials
          )
          expect(presigned_url.metadata[:content_sha256])
            .to eq(Digest::SHA256.hexdigest('abc'))
        end

        it 'reads non-file IO objects into memory to compute checksums' do
          presigned_url = subject.presign_url(
            request: {
              http_method: 'PUT',
              url: 'https://domain.com',
              body: StringIO.new('abc')
            },
            credentials: credentials
          )
          expect(presigned_url.metadata[:content_sha256])
            .to eq(Digest::SHA256.hexdigest('abc'))
        end
      end

      # SigV4 suite doesn't cover these
      context 'gap cases' do
        it 'sorts query params by name and value' do
          signature = subject.sign_request(
            request: {
              http_method: 'PUT',
              url: 'https://domain.com?q.options=abc&q=xyz&q=xyz&q=mno',
              headers: {
                'X-Amz-Date' => '20160101T112233Z'
              }
            },
            credentials: credentials
          )
          # CRT doesn't populate canonical request
          if Signer.use_crt?
            expect(signature.metadata[:signature])
              .to eq('8849cec9682a335540d3c488fdc48561fa923b5c6a5fe62eff87768a9284f775') # rubocop:disable Layout/LineLength
          else
            expect(signature.metadata[:canonical_request])
              .to include('q=mno&q=xyz&q=xyz&q.options=abc')
          end
        end
      end
    end
  end
end
