# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe ProcessCredentialsProvider do
    describe 'ProcessCredentialProvider::PROFILE' do
      before do
        allow(AWS::SDK::Core).to receive(:shared_config)
          .and_return(shared_config)
      end

      context 'profile has credential_process' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile process_credentials]
            credential_process = echo '{ "Version": 1, "AccessKeyId": "ACCESS_KEY_1", "SecretAccessKey": "SECRET_KEY_1", "SessionToken": "TOKEN_1" }'
          CONFIG
        end

        it 'returns an instance of ProcessCredentialProvider' do
          cfg = { profile: 'process_credentials' }
          provider = ProcessCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_an_instance_of(ProcessCredentialsProvider)
        end
      end

      context 'profile does not have credential_process' do
        let(:shared_config) do
          IniParser.ini_parse(<<~CONFIG)
            [profile default]
            some_key = some_value
          CONFIG
        end

        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = ProcessCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    let(:expiration) { Time.parse('2022-07-04').utc }
    let(:credentials_hash) do
      {
        Version: 1,
        AccessKeyId: 'ACCESS_KEY_1',
        SecretAccessKey: 'SECRET_KEY_1',
        SessionToken: 'TOKEN_1',
        Expiration: expiration.iso8601
      }
    end

    let(:process) do
      "echo '#{credentials_hash.to_json}'"
    end

    let(:provider_options) { { process: process } }

    subject { ProcessCredentialsProvider.new(process: process) }

    include_examples 'refreshing_credentials_provider'

    describe '#identity' do
      it 'will read valid credentials from a process' do
        creds = subject.identity
        expect(creds.access_key_id).to eq('ACCESS_KEY_1')
        expect(creds.secret_access_key).to eq('SECRET_KEY_1')
        expect(creds.session_token).to eq('TOKEN_1')
        expect(creds.expiration).to eq(expiration)
      end

      context 'missing credentials fields' do
        let(:credentials_hash) do
          {
            Version: 1,
            SessionToken: ''
          }
        end

        it 'raises an error when credential values are missing' do
          expect { subject.identity }
            .to raise_error(/Invalid JSON payload/)
        end
      end

      context 'invalid JSON' do
        let(:process) do
          "echo 'not valid json'"
        end

        it 'raises an error when the payload is malformed' do
          expect { subject.identity }
            .to raise_error(/Malformed JSON payload/)
        end
      end

      context 'invalid payload version' do
        let(:process) do
          'echo \'{"Version": 3}\''
        end

        it 'raises an error when payload version is not version 1' do
          expect { subject.identity }
            .to raise_error(/Invalid version \(3\)/)
        end
      end

      context 'process has nonzero exit status' do
        let(:process) do
          '>&2 echo "Credential Provider Error"; false'
        end

        it 'raises an error and expose stderr output' do
          expect { subject.identity }
            .to raise_error(/non zero exit status/)
            .and output("Credential Provider Error\n")
            .to_stderr_from_any_process
        end
      end

      context 'process cannot be found' do
        let(:process) do
          'not a proc'
        end

        it 'raises an error' do
          expect { subject.identity }
            .to raise_error(ArgumentError, /Could not find process/)
        end
      end
    end
  end
end
