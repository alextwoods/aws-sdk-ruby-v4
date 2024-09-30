# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe CredentialsProviderChain do
    subject { described_class }

    context '.call' do
      file = File.join(File.dirname(__FILE__),
                       'credentials-provider-chain-tests.json')
      test_cases = JSON.load_file(file)

      def credentials(values)
        Identities::Credentials.new(
          access_key_id: values['accessKeyId'],
          secret_access_key: values['secretAccessKey'],
          session_token: values['sessionToken']
        )
      end

      def mock_input(test_case, config)
        test_case['input'].each do |input, values|
          case input
          when 'code'
            config[:access_key_id] = values['accessKeyId']
            config[:secret_access_key] = values['secretAccessKey']
            config[:session_token] = values['sessionToken']
          when 'jvmSystemProperties'
            # ignore
          when 'env'
            mock_env(values)
          when 'configFiles'
            mock_shared_config(values['aws']) if values['aws']
          when 'stsResponse'
            assume_role_provider = double(
              'AssumeRoleCredentialsProvider',
              identity: credentials(values)
            )
            assume_role_web_identity_provider = double(
              'AssumeRoleWebIdentityCredentialsProvider',
              identity: credentials(values)
            )
            allow(AWS::SDK::STS::Client).to receive(:new).and_return(double)
            allow(AWS::SDK::STS::AssumeRoleCredentialsProvider)
              .to receive(:new).and_return(assume_role_provider)
            allow(AWS::SDK::STS::AssumeRoleWebIdentityCredentialsProvider)
              .to receive(:new).and_return(assume_role_web_identity_provider)
          when 'ssoResponse'
            role_provider = double(
              'RoleCredentialsProvider',
              identity: credentials(values)
            )
            allow(AWS::SDK::SSO::RoleCredentialsProvider)
              .to receive(:new).and_return(role_provider)
          when 'processResponse'
            process_provider = double(
              'ProcessCredentialsProvider',
              identity: credentials(values)
            )
            allow(ProcessCredentialsProvider)
              .to receive(:new).and_return(process_provider)
          when 'httpResponse'
            container_provider = double(
              'ContainerCredentialsProvider',
              identity: credentials(values)
            )
            allow(ContainerCredentialsProvider)
              .to receive(:new).and_return(container_provider)
          when 'imdsResponse'
            instance_provider = double(
              'InstanceCredentialsProvider',
              identity: credentials(values)
            )
            allow(InstanceCredentialsProvider)
              .to receive(:new).and_return(instance_provider)
          else
            raise 'Unknown input type'
          end
        end
      end

      test_cases.each do |test_case|
        skippable = {
          '2' => 'JVM is not used',
          '10' => 'Legacy SSO is not supported',
          '12' => 'Boto 2 config file is not supported',
          '13' => 'Windows AWS SDK store is not supported'
        }

        it "passes: #{test_case['documentation']}" do
          skip(skippable[test_case['id']]) if skippable.key?(test_case['id'])

          config = { profile: 'default', logger: Logger.new(IO::NULL) }
          mock_input(test_case, config)

          expected = credentials(test_case['expected'] || {})
          actual = subject.call(config).identity

          expect(actual.access_key_id).to eq(expected.access_key_id)
          expect(actual.secret_access_key).to eq(expected.secret_access_key)
          expect(actual.session_token).to eq(expected.session_token)
        end
      end
    end
  end
end
