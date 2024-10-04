# frozen_string_literal: true

require_relative 'spec_helper'

module AWS::SDK::SSO
  describe RoleCredentialsProvider do
    describe '.from_profile' do
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

        it 'returns nil and logs a warning' do
          logger = double('Logger')
          cfg = { profile: 'legacy_sso_profile', logger: logger }
          expect(logger).to receive(:warn)
          provider = RoleCredentialsProvider.from_profile(cfg)
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
          provider = RoleCredentialsProvider.from_profile(cfg)
          expect(provider).to be_an_instance_of(RoleCredentialsProvider)
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
          provider = RoleCredentialsProvider.from_profile(cfg)
          expect(provider).to be_nil
        end
      end
    end

    subject do
      RoleCredentialsProvider.new(**provider_options.merge(client: client))
    end

    let(:client) { Client.new(stub_responses: true) }

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

    let(:token) { Hearth::Identities::HTTPBearer.new(token: 'token') }

    before do
      token_provider = double('TokenProvider', identity: token)
      stub_const('AWS::SDK::SSOOIDC::TokenProvider', Class.new)
      allow(AWS::SDK::SSOOIDC::TokenProvider)
        .to receive(:new).and_return(token_provider)
    end

    include_examples 'refreshing_credentials_provider'

    describe '#initialize' do
      it 'constructs a client if not provided' do
        options = provider_options
        expect(Client).to receive(:new)
          .with(region: sso_region).and_return(client)
        provider = RoleCredentialsProvider.new(**options)
        expect(provider.client).to be(client)
      end

      it 'uses a provided client' do
        options = provider_options.merge(client: client)
        expect(Client).not_to receive(:new)
        provider = RoleCredentialsProvider.new(**options)
        expect(provider.client).to be(client)
      end
    end

    describe '#identity' do
      let(:expiration) { Time.now.round }

      before do
        client.stub_responses(
          :get_role_credentials,
          data: {
            role_credentials: {
              access_key_id: 'ACCESS_KEY_1',
              secret_access_key: 'SECRET_KEY_1',
              session_token: 'TOKEN_1',
              expiration: expiration.to_i * 1000
            }
          }
        )
      end

      it 'will read valid credentials from get_role_credentials' do
        creds = subject.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to be_within(0.001).of(expiration)
      end
    end
  end
end
