# frozen_string_literal: true

require_relative 'spec_helper'

module AWS::SDK::STS
  describe AssumeRoleWebIdentityCredentialsProvider do
    describe '.from_profile' do
      before do
        mock_shared_config(shared_config)
      end

      context 'profile has assume role web identity' do
        let(:shared_config) do
          <<~CONFIG
            [profile assume_role_web_identity_credentials]
            web_identity_token_file = my-token.jwt
            role_arn = arn:aws:iam::123456789012:role/foo
            role_session_name = my-session
          CONFIG
        end

        let(:cfg) { { profile: 'assume_role_web_identity_credentials' } }

        it 'returns an instance of AssumeRoleWebIdentityCredentialProvider' do
          provider = AssumeRoleWebIdentityCredentialsProvider.from_profile(cfg)
          expect(provider)
            .to be_an_instance_of(AssumeRoleWebIdentityCredentialsProvider)
        end

        it 'forwards profile to the STS client' do
          expect(Client).to receive(:new)
            .with(
              profile: 'assume_role_web_identity_credentials',
              credentials_provider: nil
            )
            .and_return(client)
          provider = AssumeRoleWebIdentityCredentialsProvider.from_profile(cfg)
          expect(provider.client).to be(client)
        end
      end

      context 'profile does not have assume role web identity' do
        let(:shared_config) do
          <<~CONFIG
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = AssumeRoleWebIdentityCredentialsProvider.from_profile(cfg)
          expect(provider).to be_nil
        end
      end
    end

    describe '.from_env' do
      context 'environment has assume role web identity' do
        let_env(
          'AWS_ROLE_ARN' => 'arn:aws:iam::123456789012:role/foo',
          'AWS_WEB_IDENTITY_TOKEN_FILE' => 'my-token.jwt',
          'AWS_ROLE_SESSION_NAME' => 'my-session'
        )

        it 'returns an instance of AssumeRoleWebIdentityCredentialProvider' do
          provider = AssumeRoleWebIdentityCredentialsProvider.from_env({})
          expect(provider)
            .to be_an_instance_of(AssumeRoleWebIdentityCredentialsProvider)
        end
      end

      context 'environment does not have assume role web identity' do
        it 'returns nil' do
          provider = AssumeRoleWebIdentityCredentialsProvider.from_env({})
          expect(provider).to be_nil
        end
      end
    end

    subject do
       AssumeRoleWebIdentityCredentialsProvider.new(
         **provider_options.merge(client: client)
       )
     end

    let(:client) { Client.new(stub_responses: true) }

    let(:web_identity_token_file) { 'my-token.jwt' }
    let(:provider_options) do
      {
        web_identity_token_file: web_identity_token_file,
        role_arn: 'arn:aws:iam::123456789012:role/foo',
        role_session_name: 'my-session'
      }
    end

    def mock_token_file(token_file)
      allow(File).to receive(:exist?).with(token_file).and_return(true)
      allow(File).to receive(:read)
        .with(token_file).and_return('web-identity-token')
    end

    include_examples 'refreshing_credentials_provider'

    describe '#initialize' do
      it 'constructs a client if not provided' do
        options = provider_options
        expect(Client).to receive(:new).and_return(client)
        provider = AssumeRoleWebIdentityCredentialsProvider.new(**options)
        expect(provider.client).to be(client)
      end

      it 'uses a provided client' do
        options = provider_options.merge(client: client)
        expect(Client).not_to receive(:new)
        provider = AssumeRoleWebIdentityCredentialsProvider.new(**options)
        expect(provider.client).to be(client)
      end
    end

    describe '#identity' do
      let(:expiration) { Time.now }

      before do
        client.stub_responses(
          :assume_role_with_web_identity,
          data: {
            credentials: {
              access_key_id: 'ACCESS_KEY_1',
              secret_access_key: 'SECRET_KEY_1',
              session_token: 'TOKEN_1',
              expiration: expiration
            }
          }
        )
      end

      it 'will read valid credentials from assume_role_with_web_identity' do
        mock_token_file(web_identity_token_file)
        creds = subject.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to be_within(0.001).of(expiration)
      end

      it 'raises a MissingWebIdentityTokenFile when token file is missing' do
        allow(File).to receive(:exist?)
          .with(web_identity_token_file).and_return(false)

        expect { subject.identity }
          .to raise_error(
            AssumeRoleWebIdentityCredentialsProvider::
                MissingWebIdentityTokenFile,
            /#{web_identity_token_file} does not exist/
          )
      end
    end
  end
end
