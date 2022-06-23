# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe StaticCredentialProvider do
    describe 'StaticCredentialProvider::PROFILE' do
      before do
        allow(AWS::SDK::Core).to receive(:shared_config)
          .and_return(shared_config)
      end

      context 'profile has credentials' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile static_credentials]
            aws_access_key_id = ACCESS_KEY_1
            aws_secret_access_key = SECRET_KEY_1
            aws_session_token = TOKEN_1
          CONFIG
        end

        it 'returns an instance of StaticCredentialProvider' do
          cfg = { profile: 'static_credentials' }
          provider = StaticCredentialProvider::PROFILE.call(cfg)
          expect(provider).to be_an_instance_of(StaticCredentialProvider)
        end
      end

      context 'profile does not have credentials' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = StaticCredentialProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    describe 'StaticCredentialProvider::ENVIRONMENT' do
      context 'environment has credentials' do
        let_env(
          'AWS_ACCESS_KEY_ID' => 'ACCESS_KEY_1',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_KEY_1',
          'AWS_SESSION_TOKEN' => 'SESSION_TOKEN_1'
        )

        it 'returns an instance of StaticCredentialProvider' do
          provider = StaticCredentialProvider::ENVIRONMENT.call({})
          expect(provider).to be_an_instance_of(StaticCredentialProvider)
          credentials = provider.credentials
          expect(credentials.access_key_id).to eq('ACCESS_KEY_1')
          expect(credentials.secret_access_key).to eq('SECRET_KEY_1')
          expect(credentials.session_token).to eq('SESSION_TOKEN_1')
        end
      end

      context 'environment does not have credentials' do
        it 'returns nil' do
          provider = StaticCredentialProvider::ENVIRONMENT.call({})
          expect(provider).to be_nil
        end
      end
    end

    let(:credential_hash) do
      {
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        session_token: 'TOKEN_1'
      }
    end

    subject { StaticCredentialProvider.new(credential_hash) }

    include_examples 'credential_provider'

    describe '#credentials' do
      it 'returns the credentials' do
        creds = subject.credentials
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
      end
    end
  end
end
