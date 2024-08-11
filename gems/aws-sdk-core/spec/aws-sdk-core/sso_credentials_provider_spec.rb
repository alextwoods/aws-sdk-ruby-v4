# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe SSOCredentialsProvider do
    before do
      allow(AWS::SDK::Core).to receive(:sso_loaded?).and_return(true)
      allow(AWS::SDK::Core).to receive(:sso_oidc_loaded?).and_return(true)
    end

    describe 'SSOCredentialProvider::PROFILE' do
      before do
        mock_shared_config(shared_config)
      end

      context 'legacy sso profile' do
        let(:shared_config) do
          <<~CONFIG
            [profile legacy_sso_profile]
            sso_account_id = SSO_ACCOUNT_ID
            sso_region = us-east-1
            sso_role_name = SSO_ROLE_NAME
            sso_start_url = START_URL
          CONFIG
        end

        let(:logger) { double }

        it 'returns nil and logs a warning' do
          cfg = { profile: 'legacy_sso_profile', logger: logger }
          expect(logger).to receive(:warn)
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end

      context 'profile has sso information' do
        let(:shared_config) do
          <<~CONFIG
            [profile sso_credentials]
            sso_account_id = SSO_ACCOUNT_ID
            sso_role_name = SSO_ROLE_NAME
            sso_session = sso-session

            [sso-session sso-session]
            sso_region = us-east-1
            sso_start_url = START_URL
          CONFIG
        end

        it 'returns an instance of SSOCredentialProvider' do
          cfg = { profile: 'sso_credentials' }
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_an_instance_of(SSOCredentialsProvider)
        end
      end

      context 'profile does not have sso information' do
        let(:shared_config) do
          <<~CONFIG
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = SSOCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    let(:in_one_hour) { Time.now + (60 * 60) }
    let(:one_hour_ago) { Time.now - (60 * 60) }
    let(:expiration) { in_one_hour }
    let(:token_expiration) { in_one_hour }

    let(:access_token) { 'token' }
    let(:token) do
      Hearth::Identities::HTTPBearer.new(
        token: access_token, expiration: token_expiration
      )
    end

    let(:sso_role_name) { 'role' }
    let(:sso_region) { 'us-west-2' }
    let(:sso_account_id) { '12345' }
    let(:sso_session) { 'sso-session' }

    let(:provider_options) do
      {
        sso_session: sso_session,
        sso_region: sso_region,
        sso_role_name: sso_role_name,
        sso_account_id: sso_account_id
      }
    end

    let(:client) do
      double(
        'AWS::SDK::SSO::Client',
        get_role_credentials: get_role_credentials_resp
      )
    end

    let(:token_provider) do
      double('AWS::SDK::Core::SSOBearerProvider', identity: token)
    end

    before do
      allow(AWS::SDK::Core::SSOBearerProvider)
        .to receive(:new).and_return(token_provider)
    end

    subject do
      SSOCredentialsProvider.new(**provider_options.merge(client: client))
    end

    let(:get_role_credentials_resp) do
      double(
        'Hearth::Output',
        data: double(
          'AWS::SDK::SSO::Types::GetRoleCredentialsOutput',
          role_credentials: double(**credential_hash)
        )
      )
    end
    let(:credential_hash) do
      {
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        session_token: 'TOKEN_1',
        expiration: expiration
      }
    end

    include_examples 'refreshing_credentials_provider'

    describe '#initialize' do
      it 'constructs an client with sso_region if not provided' do
        expect(AWS::SDK::SSO::Client).to receive(:new)
          .with(region: sso_region).and_return(client)

        provider = SSOCredentialsProvider.new(**provider_options)
        expect(provider.client).to be(client)
      end

      it 'raises when aws-sdk-sso is not available' do
        expect(AWS::SDK::Core).to receive(:sso_loaded?).and_return(false)
        expect do
          SSOCredentialsProvider.new(**provider_options)
        end.to raise_error(RuntimeError, /aws-sdk-sso is required/)
      end

      it 'uses a provided client' do
        expect(AWS::SDK::SSO::Client).not_to receive(:new)

        provider = SSOCredentialsProvider.new(
          **provider_options.merge(client: client)
        )
        expect(provider.client).to be(client)
      end
    end

    describe '#identity' do
      it 'will read valid credentials from get_role_credentials' do
        creds = subject.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to eq(expiration)
      end
    end
  end
end
