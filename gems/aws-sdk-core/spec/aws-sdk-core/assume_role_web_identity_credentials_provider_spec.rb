# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe AssumeRoleWebIdentityCredentialsProvider do
    before do
      allow(AWS::SDK::Core).to receive(:sts_loaded?).and_return(true)
    end

    describe 'AssumeRoleWebIdentityCredentialProvider::PROFILE' do
      before do
        allow(AWS::SDK::Core).to receive(:shared_config)
          .and_return(shared_config)
      end

      context 'profile has assume role web identity' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile assume_role_web_identity_credentials]
            web_identity_token_file = my-token.jwt
            role_arn = arn:aws:iam::123456789012:role/foo
            role_session_name = my-session
          CONFIG
        end

        let(:cfg) { { profile: 'assume_role_web_identity_credentials' } }

        it 'returns an instance of AssumeRoleWebIdentityCredentialProvider' do
          provider = AssumeRoleWebIdentityCredentialsProvider::PROFILE.call(cfg)
          expect(provider)
            .to be_an_instance_of(AssumeRoleWebIdentityCredentialsProvider)
        end

        it 'forwards profile to the STS client' do
          expect(AWS::SDK::STS::Client).to receive(:new)
            .with(
              profile: 'assume_role_web_identity_credentials',
              credentials_provider: nil
            )
            .and_return(client)
          provider = AssumeRoleWebIdentityCredentialsProvider::PROFILE.call(cfg)
          expect(provider.client).to be(client)
        end
      end

      context 'profile does not have assume role web identity' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = AssumeRoleWebIdentityCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    describe 'AssumeRoleWebIdentityCredentialProvider::ENVIRONMENT' do
      context 'environment has assume role web identity' do
        let_env(
          'AWS_ROLE_ARN' => 'arn:aws:iam::123456789012:role/foo',
          'AWS_WEB_IDENTITY_TOKEN_FILE' => 'my-token.jwt',
          'AWS_ROLE_SESSION_NAME' => 'my-session'
        )

        it 'returns an instance of AssumeRoleWebIdentityCredentialProvider' do
          provider = AssumeRoleWebIdentityCredentialsProvider::
              ENVIRONMENT.call({})
          expect(provider)
            .to be_an_instance_of(AssumeRoleWebIdentityCredentialsProvider)
        end
      end

      context 'environment does not have assume role web identity' do
        it 'returns nil' do
          provider = AssumeRoleWebIdentityCredentialsProvider::
              ENVIRONMENT.call({})
          expect(provider).to be_nil
        end
      end
    end

    let(:web_identity_token_file) { 'my-token.jwt' }
    let(:provider_options) do
      {
        web_identity_token_file: web_identity_token_file,
        role_arn: 'arn:aws:iam::123456789012:role/foo',
        role_session_name: 'my-session'
      }
    end

    subject do
      AssumeRoleWebIdentityCredentialsProvider.new(
        **provider_options.merge(client: client)
      )
    end

    let(:config) { double('AWS::SDK::STS::Config') }
    let(:client) do
      double(
        'AWS::SDK::STS::Client',
        assume_role_with_web_identity: assume_role_with_web_identity_resp
      )
    end
    let(:assume_role_with_web_identity_resp) do
      double(
        'Hearth::Output',
        data: double(
          'AWS::SDK::SSO::Types::AssumeRoleWithWebIdentityResponse',
          credentials: double(**credentials_hash)
        )
      )
    end
    let(:expiration) { Time.now }
    let(:credentials_hash) do
      {
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        session_token: 'TOKEN_1',
        expiration: expiration
      }
    end

    def mock_token_file(token_file)
      allow(File).to receive(:exist?).with(token_file).and_return(true)
      allow(File).to receive(:read)
        .with(token_file).and_return('web-identity-token')
    end

    include_examples 'refreshing_credentials_provider'

    describe '#initialize' do
      it 'constructs an client if not provided' do
        expect(AWS::SDK::STS::Client).to receive(:new)
          .and_return(client)

        provider = AssumeRoleWebIdentityCredentialsProvider.new(
          **provider_options
        )
        expect(provider.client).to be(client)
      end

      it 'raises when aws-sdk-sts is not available' do
        expect(AWS::SDK::Core).to receive(:sts_loaded?).and_return(false)
        expect do
          AssumeRoleWebIdentityCredentialsProvider.new(**provider_options)
        end.to raise_error(RuntimeError, /aws-sdk-sts is required/)
      end

      it 'uses a provided client' do
        expect(AWS::SDK::SSO::Client).not_to receive(:new)

        provider = AssumeRoleWebIdentityCredentialsProvider.new(
          **provider_options.merge(client: client)
        )
        expect(provider.client).to be(client)
      end
    end

    describe '#identity' do
      it 'will read valid credentials from assume_role_with_web_identity' do
        mock_token_file(web_identity_token_file)
        creds = subject.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to eq(expiration)
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