# frozen_string_literal: true

require_relative '../spec_helper'

require 'tempfile'
require 'base64'

module AWS
  module SigV4
    class TestCredentialProvider
      def initialize(credentials)
        @credentials = credentials
      end

      attr_reader :credentials
    end

    describe Signer do
      let(:service) { 'peccy-service' }
      let(:region) { 'us-peccy-1' }

      let(:credentials) do
        Credentials.new(
          access_key_id: 'akid',
          secret_access_key: 'secret',
          session_token: 'token'
        )
      end

      let(:credential_provider) do
        TestCredentialProvider.new(credentials)
      end

      # non defaults
      let(:unsigned_headers) { ['x-foo-unsigned'] }
      let(:uri_escape_path) { false }
      let(:apply_checksum_header) { false }
      let(:signing_algorithm) { :sigv4a }
      let(:omit_session_token) { true }
      let(:normalize_path) { false }

      let(:required_options) do
        {
          service: service,
          region: region,
          credential_provider: credential_provider
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
          expect(signer.uri_escape_path).to be true
          expect(signer.apply_checksum_header).to be true
          expect(signer.signing_algorithm).to eq(:sigv4)
          expect(signer.normalize_path).to be true
          expect(signer.omit_session_token).to be false
        end

        it 'can configure all non-default values' do
          signer = Signer.new(
            unsigned_headers: unsigned_headers,
            uri_escape_path: uri_escape_path,
            apply_checksum_header: apply_checksum_header,
            signing_algorithm: signing_algorithm,
            omit_session_token: omit_session_token,
            normalize_path: normalize_path
          )
          expect(signer.unsigned_headers)
            .to eq(default_unsigned_headers + unsigned_headers)
          expect(signer.uri_escape_path).to be false
          expect(signer.apply_checksum_header).to be false
          expect(signer.signing_algorithm).to eq(:sigv4a)
          expect(signer.normalize_path).to be false
          expect(signer.omit_session_token).to be true
        end
      end

      # Use mock expectations to test all options are passed through.
      # CRT doesn't provide much output for us to do testing.
      context 'aws-crt' do
        before do
          allow(AWS::SigV4::Signer).to receive(:use_crt?).and_return(true)
        end

        # TODO
        describe '#sign_request' do

        end

        describe '#presign_url' do

        end
      end

      # Behavior testing to test all options are passed through.
      # The Ruby implementation has access to internal data.
      context 'pure ruby' do
        before do
          allow(AWS::SigV4::Signer).to receive(:use_crt?).and_return(false)
        end

        describe '#sign_request' do
          context 'service' do
            it 'allows for service override' do
              signature = subject.sign_request(
                request: request, service: 'new-service'
              )
              expect(signature.metadata[:string_to_sign])
                .to include('new-service')
            end

            it 'raises with no service' do
              expect { Signer.new.sign_request(request: request) }
                .to raise_error(ArgumentError, /:service/)
            end
          end

          context 'region' do
            it 'allows for region override' do
              signature = subject.sign_request(
                request: request, region: 'new-region'
              )
              expect(signature.metadata[:string_to_sign])
                .to include('new-region')
            end

            it 'raises with no region' do
              # Extraction is order dependent
              options = { service: service }
              expect { Signer.new(options).sign_request(request: request) }
                .to raise_error(ArgumentError, /:region/)
            end
          end

          context 'credentials' do
            it 'allows for credential provider override' do
              new_provider = TestCredentialProvider.new(
                Credentials.new(
                  access_key_id: 'new-akid',
                  secret_access_key: 'new-secret',
                  session_token: 'new-token'
                )
              )
              signature = subject.sign_request(
                request: request, credential_provider: new_provider
              )
              expect(signature.headers['authorization']).to include('new-akid')
            end

            it 'uses credential provider with precedence' do
              credentials = Credentials.new(
                access_key_id: 'new-akid',
                secret_access_key: 'new-secret',
                session_token: 'new-token'
              )
              # subject uses credential provider
              signature = subject.sign_request(
                request: request, credentials: credentials
              )
              # do not check new-akid
              expect(signature.headers['authorization']).to include('=akid')
            end

            it 'raises with no credentials object' do
              # Extraction is order dependent
              options = { service: service, region: region }
              expect { Signer.new(options).sign_request(request: request) }
                .to raise_error(ArgumentError, /:credentials/)
            end

            it 'raises when credentials are not set' do
              options = {
                service: service,
                region: region,
                credentials: Credentials.new(
                  access_key_id: nil,
                  secret_access_key: nil
                )
              }
              expect { Signer.new(options).sign_request(request: request) }
                .to raise_error(ArgumentError, /credentials set/)
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
                )
              )
              expect(signature.headers['authorization'])
                .to_not include(
                  'expect', 'x-amzn-trace-id', 'user-agent', 'authorization'
                )
            end

            it 'allows for unsigned headers override' do
              signature = subject.sign_request(
                request: request.merge(headers: { 'x-foo-unsigned' => 'foo' }),
                unsigned_headers: unsigned_headers
              )
              expect(signature.headers['authorization'])
                .to_not include('x-foo-unsigned')
            end
          end

          context 'uri escape path' do
            it 'escapes path for the canonical request by default' do
              signature = subject.sign_request(
                request: request.merge(url: 'https://domain.com/foo%bar')
              )
              expect(signature.metadata[:canonical_request])
                .to include("/foo%25bar\n")
            end

            it 'allows for uri escape path override' do
              signature = subject.sign_request(
                request: request.merge(url: 'https://domain.com/foo%bar'),
                uri_escape_path: uri_escape_path
              )
              expect(signature.metadata[:canonical_request])
                .to include("/foo%bar\n")
            end
          end

          context 'apply checksum header' do
            it 'adds the X-Amz-Content-Sha256 header by default' do
              signature = subject.sign_request(
                request: request.merge(body: 'abc')
              )
              expect(signature.headers['x-amz-content-sha256'])
                .to eq(Digest::SHA256.hexdigest('abc'))
            end

            it 'allows for apply checksum header override' do
              signature = subject.sign_request(
                request: request, apply_checksum_header: apply_checksum_header
              )
              expect(signature.headers['x-amz-content-sha256']).to be(nil)
            end
          end

          # signature = subject.sign_request(
          #   request: request, signing_algorithm: signing_algorithm
          # )
          # expect(signature.headers['authorization'])
          #   .to include('AWS4-ECDSA-P256-SHA256')
          context 'signing algorithm' do
            it 'allows for signing algorithm override' do
              # non-default SigV4A isn't supported here
              expect do
                subject.sign_request(
                  request: request, signing_algorithm: signing_algorithm
                )
              end.to raise_error(ArgumentError, /aws-crt/)
            end

            it 'raises when not sigv4 or sigv4a' do
              expect do
                subject.sign_request(
                  request: request, signing_algorithm: :not_sigv4
                )
              end.to raise_error(ArgumentError, /`:sigv4` or `:sigv4a`/)
            end
          end

          context 'normalize path' do
            it 'normalizes by default' do
              signature = subject.sign_request(
                request: request.merge(url: "#{request[:url]}/foo/..")
              )
              expect(signature.metadata[:canonical_request])
                .to include("GET\n/\n")
            end

            it 'allows for normalize path override' do
              signature = subject.sign_request(
                request: request.merge(url: "#{request[:url]}/foo/.."),
                normalize_path: normalize_path
              )
              expect(signature.metadata[:canonical_request])
                .to include("/foo/..\n")
            end
          end

          context 'omit session token' do
            it 'omits the session token by default' do
              signature = subject.sign_request(request: request)
              expect(signature.metadata[:canonical_request])
                .to include("token")
              expect(signature.headers['x-amz-security-token']).to eq('token')
            end

            it 'allows for omit session token override' do
              signature = subject.sign_request(
                request: request, omit_session_token: omit_session_token
              )
              expect(signature.metadata[:canonical_request])
                .to_not include("token")
              expect(signature.headers['x-amz-security-token']).to eq('token')
            end
          end

          context 'request' do
            it 'raises with no http_method' do
              expect { subject.sign_request(request: {}) }
                .to raise_error(ArgumentError, /:http_method/)
            end

            it 'raises with no url' do
              # Extraction is order dependent
              expect { subject.sign_request(request: { http_method: 'GET' }) }
                .to raise_error(ArgumentError, /:url/)
            end

            it 'uses a provided Host header' do
              signature = subject.sign_request(
                request: request.merge(headers: { 'host' => 'otherdomain.com' })
              )
              expect(signature.headers['host']).to eql('otherdomain.com')
            end

            it 'uses a provided X-Amz-Date header' do
              now = Time.now.utc.strftime('%Y%m%dT%H%M%SZ')
              signature = subject.sign_request(
                request: request.merge(headers: { 'X-Amz-Date' => now })
              )
              expect(signature.headers['x-amz-date']).to eq(now)
            end

            it 'omits port in Host when default and uri port are the same' do
              signature = subject.sign_request(
                request: {
                  http_method: 'GET',
                  url: 'https://domain.com:443'
                }
              )
              expect(signature.headers['host']).to eq('domain.com')
            end

            it 'includes port in Host when default and uri port differ' do
              signature = subject.sign_request(
                request: {
                  http_method: 'GET',
                  url: 'https://domain.com:123'
                }
              )
              expect(signature.headers['host']).to eq('domain.com:123')
            end

            it 'omits port in Host when uri port not provided' do
              signature = subject.sign_request(
                request: {
                  http_method: 'GET',
                  url: 'abcd://domain.com'
                }
              )
              expect(signature.headers['host']).to eq('domain.com')
            end

            it 'includes port in Host when uri port provided' do
              signature = subject.sign_request(
                request: {
                  http_method: 'GET',
                  url: 'abcd://domain.com:123'
                }
              )
              expect(signature.headers['host']).to eq('domain.com:123')
            end

            it 'does not read the body if X-Amz-Content-Sha256 if '\
               'already present' do
              body = double('http-payload')
              expect(body).to_not receive(:read)
              expect(body).to_not receive(:rewind)
              signature = subject.sign_request(
                request: {
                  http_method: 'PUT',
                  url: 'http://domain.com',
                  headers: {
                    'X-Amz-Content-Sha256' => 'hexdigest'
                  },
                  body: body
                }
              )
              expect(signature.headers['x-amz-content-sha256'])
                .to eq('hexdigest')
            end

            it 'computes the checksum of files without loading them into memory' do
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
                }
              )
              expect(signature.headers['x-amz-content-sha256'])
                .to eq(Digest::SHA256.hexdigest('abc'))
            end

            it 'reads non-file IO objects into memory to compute checksums' do
              signature = subject.sign_request(
                request: {
                  http_method: 'PUT',
                  url: 'http://domain.com',
                  body: StringIO.new('abc')
                }
              )
              expect(signature.metadata[:content_sha256])
                .to eq(Digest::SHA256.hexdigest('abc'))
            end
          end

          # Suite doesn't cover anything
          context 'gap cases' do
            # TODO - cover the case where keys and values are the same
          end
        end
      end

      describe '#sign_event' do
        # TODO
      end

      describe '#presign_url' do
        # TODO
      end
    end



#
#       context 'canonical request' do
#         before do
#           if Signer.use_crt?
#             skip("CRT Signer does not expose canonical request")
#           end
#         end
#
#         it 'lower-cases and sort all header keys except authorization' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com',
#               headers: {
#                 'Xyz' => '1',
#                 'Abc' => '2',
#                 'Mno' => '3',
#                 'Authorization' => '4',
#                 'authorization' => '5',
#                 'X-Amz-Date' => '20161024T184027Z',
#               }
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
#
# abc:2
# host:domain.com
# mno:3
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20161024T184027Z
# xyz:1
#
# abc;host;mno;x-amz-content-sha256;x-amz-date;xyz
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'can ignore configured headers' do
#           # case insenstive
#           options[:unsigned_headers] = ['cache-control', 'User-Agent']
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com',
#               headers: {
#                 'Abc' => '2',
#                 'Cache-Control' => '4',
#                 'User-Agent' => '5',
#                 'X-Amz-Date' => '20161024T184027Z',
#               }
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
#
# abc:2
# host:domain.com
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20161024T184027Z
#
# abc;host;x-amz-content-sha256;x-amz-date
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'lower-cases and sorts header by key except authorization' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com',
#               headers: {
#                 'Abc' => '1',
#                 'Mno' => '2',
#                 'Xyz' => '3',
#                 'Authorization' => '4',
#                 'authorization' => '5',
#                 'X-Amz-Date' => '20160101T112233Z',
#               },
#               body: ''
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
#
# abc:1
# host:domain.com
# mno:2
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20160101T112233Z
# xyz:3
#
# abc;host;mno;x-amz-content-sha256;x-amz-date;xyz
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'prunes expanded whitespace in header values' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com',
#               headers: {
#                 'Abc' => 'a  b  c', # double spaces between letters
#                 'X-Amz-Date' => '20160101T112233Z',
#               },
#               # defaults body to the empty string
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
#
# abc:a b c
# host:domain.com
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20160101T112233Z
#
# abc;host;x-amz-content-sha256;x-amz-date
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'leaves whitespace in quoted values in-tact' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com',
#               headers: {
#                 'Abc' => '"a  b  c"', # quoted header values preserve spaces
#                 'X-Amz-Date' => '20160101T112233Z',
#               }
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
#
# abc:"a  b  c"
# host:domain.com
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20160101T112233Z
#
# abc;host;x-amz-content-sha256;x-amz-date
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'normalizes valueless-querystring keys with a trailing =' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com?other=&test&x-amz-header=foo',
#               headers: {
#                 'X-Amz-Date' => '20160101T112233Z',
#               }
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
# other=&test=&x-amz-header=foo
# host:domain.com
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20160101T112233Z
#
# host;x-amz-content-sha256;x-amz-date
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'sorts the query parameters' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com?foo=&bar=&baz=',
#               headers: {
#                 'X-Amz-Date' => '20160101T112233Z',
#               }
#             }
#           )
#           expect(signature.metadata[:canonical_request]).to eq(<<-EOF.strip)
# PUT
# /
# bar=&baz=&foo=
# host:domain.com
# x-amz-content-sha256:e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
# x-amz-date:20160101T112233Z
#
# host;x-amz-content-sha256;x-amz-date
# e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
#           EOF
#         end
#
#         it 'sorts by name, params with same name are ordered by value' do
#           signature = Signer.new(options).sign_request(
#             request: {
#               http_method: 'PUT',
#               url: 'http://domain.com?q.options=abc&q=xyz&q=mno',
#               headers: {
#                 'X-Amz-Date' => '20160101T112233Z',
#               }
#             }
#           )
#           expect(signature.metadata[:canonical_request])
#             .to include('q=mno&q=xyz&q.options=abc')
#         end
#

  end
end
