# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe StaticCredentialsProvider do
    describe '.from_code' do
      context 'code has credentials' do
        it 'returns an instance of StaticCredentialsProvider' do
          cfg = {
            access_key_id: 'ACCESS_KEY_1',
            secret_access_key: 'SECRET_KEY_1',
            session_token: 'TOKEN_1'
          }
          provider = StaticCredentialsProvider.from_code(cfg)
          expect(provider).to be_an_instance_of(StaticCredentialsProvider)
          credentials = provider.identity
          expect(credentials.access_key_id).to eq('ACCESS_KEY_1')
          expect(credentials.secret_access_key).to eq('SECRET_KEY_1')
          expect(credentials.session_token).to eq('TOKEN_1')
        end
      end

      context 'code does not have credentials' do
        it 'returns nil' do
          cfg = {}
          provider = StaticCredentialsProvider.from_code(cfg)
          expect(provider).to be_nil
        end
      end
    end

    describe '.from_profile' do
      before do
        mock_shared_config(shared_config)
      end

      context 'profile has credentials' do
        let(:shared_config) do
          <<~CONFIG
            [profile static_credentials]
            aws_access_key_id = ACCESS_KEY_1
            aws_secret_access_key = SECRET_KEY_1
            aws_session_token = TOKEN_1
          CONFIG
        end

        it 'returns an instance of StaticCredentialProvider' do
          cfg = { profile: 'static_credentials' }
          provider = StaticCredentialsProvider.from_profile(cfg)
          expect(provider).to be_an_instance_of(StaticCredentialsProvider)
          credentials = provider.identity
          expect(credentials.access_key_id).to eq('ACCESS_KEY_1')
          expect(credentials.secret_access_key).to eq('SECRET_KEY_1')
          expect(credentials.session_token).to eq('TOKEN_1')
        end
      end

      context 'profile does not have credentials' do
        let(:shared_config) do
          <<~CONFIG
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = StaticCredentialsProvider.from_profile(cfg)
          expect(provider).to be_nil
        end
      end
    end

    describe '.from_env' do
      context 'environment has credentials' do
        let_env(
          'AWS_ACCESS_KEY_ID' => 'ACCESS_KEY_1',
          'AWS_SECRET_ACCESS_KEY' => 'SECRET_KEY_1',
          'AWS_SESSION_TOKEN' => 'SESSION_TOKEN_1'
        )

        it 'returns an instance of StaticCredentialProvider' do
          provider = StaticCredentialsProvider.from_env({})
          expect(provider).to be_an_instance_of(StaticCredentialsProvider)
          credentials = provider.identity
          expect(credentials.access_key_id).to eq('ACCESS_KEY_1')
          expect(credentials.secret_access_key).to eq('SECRET_KEY_1')
          expect(credentials.session_token).to eq('SESSION_TOKEN_1')
        end
      end

      context 'environment does not have credentials' do
        it 'returns nil' do
          provider = StaticCredentialsProvider.from_env({})
          expect(provider).to be_nil
        end
      end
    end

    let(:credentials_hash) do
      {
        access_key_id: 'ACCESS_KEY_1',
        secret_access_key: 'SECRET_KEY_1',
        session_token: 'TOKEN_1'
      }
    end

    subject { StaticCredentialsProvider.new(**credentials_hash) }

    include_examples 'credentials_provider'

    describe '#identity' do
      it 'returns the credentials' do
        creds = subject.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
      end
    end
  end
end
