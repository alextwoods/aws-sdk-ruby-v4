# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe ProcessCredentialsProvider do
    describe ProcessCredentialsProvider::PROFILE do
      include_context 'shared_config'

      context 'profile has credential_process' do
        it 'returns an instance of ProcessCredentialsProvider' do
          cfg = { profile: 'process_credentials' }
          provider = ProcessCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_an_instance_of(ProcessCredentialsProvider)
        end
      end

      context 'profile does not have credential_process' do
        it 'returns nil' do
          cfg = { profile: 'default' }
          provider = ProcessCredentialsProvider::PROFILE.call(cfg)
          expect(provider).to be_nil
        end
      end
    end

    let(:credential_hash) do
      {
        Version: 1,
        AccessKeyId: 'PROC_AKID',
        SecretAccessKey: 'PROC_SECRET_AK',
        SessionToken: 'PROC_SESSION_TOKEN'
      }
    end

    let(:process) do
      "echo '#{credential_hash.to_json}'"
    end

    subject { ProcessCredentialsProvider.new(process) }

    describe '#credentials' do
      it 'will read valid credentials from a process' do
        creds = subject.credentials
        expect(creds.access_key_id).to eq('PROC_AKID')
        expect(creds.secret_access_key).to eq('PROC_SECRET_AK')
        expect(creds.session_token).to eq('PROC_SESSION_TOKEN')
      end

      context 'missing credential fields' do
        let(:credential_hash) do
          {
            Version: 1,
            SessionToken: ''
          }
        end

        it 'raises an error when credential values are missing' do
          expect { subject.credentials }
            .to raise_error(/Invalid JSON payload/)
        end
      end

      context 'invalid JSON' do
        let(:process) do
          "echo 'not valid json'"
        end

        it 'raises an error when the payload is malformed' do
          expect { subject.credentials }
            .to raise_error(/Malformed JSON payload/)
        end
      end

      context 'invalid payload version' do
        let(:process) do
          'echo \'{"Version": 3}\''
        end

        it 'raises an error when payload version is not version 1' do
          expect { subject.credentials }
            .to raise_error(/Invalid version \(3\)/)
        end
      end

      context 'process has nonzero exit status' do
        let(:process) do
          '>&2 echo "Credential Provider Error"; false'
        end

        it 'raises an error and expose stderr output' do
          expect { subject.credentials }
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
          expect { subject.credentials }
            .to raise_error(ArgumentError, /Could not find process/)
        end
      end
    end
  end
end
