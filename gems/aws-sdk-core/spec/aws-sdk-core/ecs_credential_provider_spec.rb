# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe ECSCredentialProvider do
    describe 'ECSCredentialProvider::ENVIRONMENT' do
      context 'environment has container credentials relative uri' do
        let_env(
          'AWS_CONTAINER_CREDENTIALS_RELATIVE_URI' => '/v2/credentials/123'
        )

        it 'returns an instance of ECSCredentialProvider' do
          provider = ECSCredentialProvider::ENVIRONMENT.call({})
          expect(provider).to be_an_instance_of(ECSCredentialProvider)
        end
      end

      context 'environment does not have container credentials relative uri' do
        it 'returns nil' do
          provider = ECSCredentialProvider::ENVIRONMENT.call({})
          expect(provider).to be_nil
        end
      end
    end

    let(:endpoint) { 'http://169.254.170.2' }
    let(:path) { '/v2/credentials/123' }
    let(:credentials_endpoint) { endpoint + path }

    let(:expiration) { Time.parse('2022-07-04').utc }
    let(:credential_json) do
      {
        'AccessKeyId' => 'ACCESS_KEY_1',
        'SecretAccessKey' => 'SECRET_KEY_1',
        'Token' => 'TOKEN_1',
        'Expiration' => expiration.iso8601
      }
    end

    before do
      stub_request(
        :get, credentials_endpoint
      ).to_return(
        status: 200, body: credential_json.to_json
      )
    end

    subject { ECSCredentialProvider.new }

    describe '#initialize' do
      it 'raises ArgumentError when credential_path is missing' do
        expect { ECSCredentialProvider.new }
          .to raise_error(ArgumentError, /credential path/)
      end
    end

    describe '#credentials' do
      let_env(
        'AWS_CONTAINER_CREDENTIALS_RELATIVE_URI' => '/v2/credentials/123'
      )

      it 'will read valid credentials from ECS metadata' do
        creds = subject.credentials
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to eq(expiration)
      end

      context '404 response' do
        before do
          stub_request(
            :get, credentials_endpoint
          ).to_return(
            status: 404, body: "404 page not found\n"
          )
        end

        it 'raises Non200Response' do
          expect { subject.credentials }
            .to raise_error(
              ECSCredentialProvider::Non200Response,
              /404 page not found/
            )
        end
      end

      context 'other error response' do
        before do
          stub_request(
            :get, credentials_endpoint
          ).to_return(
            status: 403, body: { message: 'Error!' }.to_json
          )
        end

        it 'raises the json message' do
          expect { subject.credentials }
            .to raise_error(
              ECSCredentialProvider::Non200Response,
              /Error!/
            )
        end
      end

      context 'when retryable' do
        before do
          stub_request(:get, credentials_endpoint)
            .to_raise(Errno::ECONNREFUSED).then
            .to_raise(Errno::ECONNREFUSED).then
            .to_raise(Errno::ECONNREFUSED)
        end

        it 'retries with a proc' do
          provider = ECSCredentialProvider.new(
            backoff: ->(n) { Kernel.sleep(2**n) }
          )
          expect(Kernel).to receive(:sleep).with(1)
          expect(Kernel).to receive(:sleep).with(2)
          expect(Kernel).to receive(:sleep).with(4)
          expect { provider.credentials }
            .to raise_error(Errno::ECONNREFUSED)
        end

        it 'retries with a number of seconds to sleep' do
          provider = ECSCredentialProvider.new(backoff: 3)
          expect(Kernel).to receive(:sleep).with(3).exactly(3).times
          expect { provider.credentials }
            .to raise_error(Errno::ECONNREFUSED)
        end

        it 'defaults to exponential backoff' do
          provider = ECSCredentialProvider.new
          expect(Kernel).to receive(:sleep).with(1.0)
          expect(Kernel).to receive(:sleep).with(1.2)
          expect(Kernel).to receive(:sleep).with(1.44)
          expect { provider.credentials }
            .to raise_error(Errno::ECONNREFUSED)
        end
      end
    end
  end
end
