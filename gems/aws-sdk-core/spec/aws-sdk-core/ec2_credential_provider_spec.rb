# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe EC2CredentialProvider do
    describe 'EC2CredentialProvider::ENVIRONMENT' do
      context 'environment has ec2 metadata disabled' do
        let_env(
          'AWS_EC2_METADATA_DISABLED' => 'true'
        )

        it 'returns nil' do
          provider = EC2CredentialProvider::ENVIRONMENT.call({})
          expect(provider).to be_nil
        end
      end

      context 'environment does not have ec2 metadata disabled' do
        before do
          allow(AWS::SDK::Core).to receive(:shared_config)
            .and_return(shared_config)
        end

        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile default]
            some_key = some_value

            [profile ec2_metadata_service]
            ec2_metadata_service_endpoint_mode = IPv4
            ec2_metadata_service_endpoint = http://169.254.169.254
          CONFIG
        end

        let(:cfg) { { profile: 'ec2_metadata_service' } }

        it 'returns an instance of EC2CredentialProvider' do
          provider = EC2CredentialProvider::ENVIRONMENT.call(cfg)
          expect(provider).to be_an_instance_of(EC2CredentialProvider)
        end

        it 'constructs an EC2Metadata client with shared config values' do
          expect(EC2Metadata).to receive(:new).with(
            endpoint_mode: 'IPv4',
            endpoint: 'http://169.254.169.254'
          ).and_return(client)
          provider = EC2CredentialProvider::ENVIRONMENT.call(cfg)
          expect(provider.client).to be(client)
        end

        context 'ec2 metadata service environment' do
          let_env(
            'AWS_EC2_METADATA_SERVICE_ENDPOINT' => 'http://[fd00:ec2::254]',
            'AWS_EC2_METADATA_SERVICE_ENDPOINT_MODE' => 'IPv6'
          )

          it 'constructs an EC2Metadata client using ENV with precedence' do
            expect(EC2Metadata).to receive(:new).with(
              endpoint_mode: 'IPv6',
              endpoint: 'http://[fd00:ec2::254]'
            ).and_return(client)
            provider = EC2CredentialProvider::ENVIRONMENT.call(cfg)
            expect(provider.client).to be(client)
          end
        end
      end
    end

    let(:client) { double('EC2Metadata', get: nil) }
    let(:metadata_resp) { 'ec2-metadata-profile' }
    let(:expiration) { Time.parse('2022-07-04').utc }
    let(:credential_json) do
      {
        'AccessKeyId' => 'ACCESS_KEY_1',
        'SecretAccessKey' => 'SECRET_KEY_1',
        'Token' => 'TOKEN_1',
        'Expiration' => expiration.iso8601
      }.to_json
    end

    subject { EC2CredentialProvider.new(client: client) }

    include_examples 'credential_provider'
    include_examples 'refreshing_credential_provider'

    describe '#initialize' do
      it 'constructs an EC2Metadata client if not provided' do
        expect(EC2Metadata).to receive(:new).and_return(client)
        provider = EC2CredentialProvider.new
        expect(provider.client).to be(client)
      end
    end

    describe '#credentials' do
      it 'will read valid credentials from EC2 Metadata' do
        allow(client).to receive(:get)
          .with(EC2CredentialProvider::METADATA_PATH_BASE)
          .and_return(metadata_resp)
        allow(client).to receive(:get)
          .with(EC2CredentialProvider::METADATA_PATH_BASE + metadata_resp)
          .and_return(credential_json)

        creds = subject.credentials
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to eq(expiration)
      end

      describe 'static stability' do
        let(:expired) { Time.now.utc - 3600 }
        let(:near_expiration) { Time.now.utc + 10 }

        let(:expired_resp) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid",
          "SecretAccessKey" : "secret",
          "Token" : "session-token",
          "Expiration" : "#{expired.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
        JSON

        let(:near_expiration_resp) { <<-JSON.strip }
        {
          "Code" : "Success",
          "LastUpdated" : "2013-11-22T20:03:48Z",
          "Type" : "AWS-HMAC",
          "AccessKeyId" : "akid-2",
          "SecretAccessKey" : "secret-2",
          "Token" : "session-token-2",
          "Expiration" : "#{near_expiration.strftime('%Y-%m-%dT%H:%M:%SZ')}"
        }
        JSON

        before(:each) do
          allow(client).to receive(:get)
            .with(EC2CredentialProvider::METADATA_PATH_BASE)
            .and_return(metadata_resp)
        end

        it 'provides credentials when the first call is expired credentials' do
          expect_any_instance_of(EC2CredentialProvider)
            .to receive(:warn).at_least(:once)

          expect(client).to receive(:get)
            .with(EC2CredentialProvider::METADATA_PATH_BASE + metadata_resp)
            .once
            .and_return(expired_resp)

          creds = subject.credentials
          expect(creds.access_key_id).to eq('akid')

          # successive requests/credential gets don't result in more calls
          subject.credentials
          subject.credentials
          subject.credentials
        end

        it 'provides credentials after a read timeout during a refresh' do
          # seed with valid credentials that will trigger a refresh on next call
          expect(client).to receive(:get)
            .with(EC2CredentialProvider::METADATA_PATH_BASE + metadata_resp)
            .and_return(near_expiration_resp)
          subject.credentials

          # failed response
          expect(client).to receive(:get)
            .with(EC2CredentialProvider::METADATA_PATH_BASE + metadata_resp)
            .and_raise(Timeout::Error)
          expect(subject).to receive(:warn)
          creds = subject.credentials
          expect(creds.access_key_id).to eq('akid-2')
        end

        it 'uses expired credentials during a refresh and warns' do
          # seed with valid credentials that will trigger a refresh on next call
          expect(client).to receive(:get)
            .with(EC2CredentialProvider::METADATA_PATH_BASE + metadata_resp)
            .and_return(near_expiration_resp)
          subject.credentials

          # expired response
          expect(client).to receive(:get)
            .with(EC2CredentialProvider::METADATA_PATH_BASE + metadata_resp)
            .and_return(expired_resp)
          expect(subject).to receive(:warn)

          creds = subject.credentials
          expect(creds.access_key_id).to eq('akid')
        end
      end
    end
  end
end
