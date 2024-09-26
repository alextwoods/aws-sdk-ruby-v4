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
          access_key_id: values['aws_access_key_id'],
          secret_access_key: values['aws_secret_access_key'],
          session_token: values['aws_session_token']
        )
      end

      def mock_input(test_case, config)
        test_case['input'].each do |input, values|
          case input
          when 'code'
            config[:access_key_id] = values['aws_access_key_id']
            config[:secret_access_key] = values['aws_secret_access_key']
            config[:session_token] = values['aws_session_token']
          when 'jvmSystemProperties'
            # ignore
          when 'env'
            mock_env(values)
          when 'configFiles'
            mock_shared_config(values['aws'])
          when 'stsResponse'
            # assume_role_provider = double(
            #   'AssumeRoleCredentialsProvider',
            #   identity: credentials(values)
            # )
            # assume_role_provider_class = class_double(
            #   'AssumeRoleCredentialsProvider',
            #   from_profile: assume_role_provider
            # )
            # assume_role_web_identity_provider = double(
            #   'AssumeRoleWebIdentityCredentialsProvider',
            #   identity: credentials(values)
            # )
            # assume_role_web_identity_provider_class = class_double(
            #   'AssumeRoleWebIdentityCredentialsProvider',
            #   from_profile: assume_role_web_identity_provider,
            #   from_env: assume_role_web_identity_provider
            # )
            # stub_const(
            #   'AWS::SDK::STS::AssumeRoleCredentialsProvider',
            #   assume_role_provider_class
            # )
            # stub_const(
            #   'AWS::SDK::STS::AssumeRoleWebIdentityCredentialsProvider',
            #   assume_role_web_identity_provider_class
            # )
            assume_role_provider = double(
              'AssumeRoleCredentialsProvider',
              identity: credentials(values)
            )
            assume_role_web_identity_provider = double(
              'AssumeRoleWebIdentityCredentialsProvider',
              identity: credentials(values)
            )
            # stub_const(
            #   'AWS::SDK::STS::AssumeRoleCredentialsProvider',
            #   assume_role_provider_class
            # )
            # stub_const(
            #   'AWS::SDK::STS::AssumeRoleWebIdentityCredentialsProvider',
            #   assume_role_web_identity_provider_class
            # )
            sts = AWS::SDK::STS
            allow_any_instance_of(sts::AssumeRoleCredentialsProvider)
              .to receive(:new).and_return(assume_role_provider)
            allow_any_instance_of(sts::AssumeRoleWebIdentityCredentialsProvider)
              .to receive(:new).and_return(assume_role_web_identity_provider)
          when 'ssoResponse'
            role_provider = double(
              'RoleCredentialsProvider',
              identity: credentials(values)
            )
            stub_const('AWS::SDK::SSO::RoleCredentialsProvider', Class.new)
            sso = AWS::SDK::SSO
            allow_any_instance_of(sso::RoleCredentialsProvider)
              .to receive(:new).and_return(role_provider)
          when 'processResponse'
            process_provider = double(
              'ProcessCredentialsProvider',
              identity: credentials(values)
            )
            allow_any_instance_of(ProcessCredentialsProvider)
              .to receive(:new).and_return(process_provider)
          when 'containerResponse'
            container_provider = double(
              'ContainerCredentialsProvider',
              identity: credentials(values)
            )
            allow_any_instance_of(ContainerCredentialsProvider)
              .to receive(:new).and_return(container_provider)
          when 'instanceResponse'
            instance_provider = double(
              'InstanceCredentialsProvider',
              identity: credentials(values)
            )
            allow_any_instance_of(InstanceCredentialsProvider)
              .to receive(:new).and_return(instance_provider)
          else
            raise 'Unknown input type'
          end
        end
      end

      test_cases.each do |test_case|
        skippable = [
          'JVM system properties: credentials',
          'Boto 2 config file',
          'Windows AWS SDK store'
        ]

        it "passes: #{test_case['documentation']}" do
          skip if skippable.include?(test_case['documentation'])

          config = {}
          mock_input(test_case, config)

          expected = credentials(test_case['expected'])
          actual = subject.call(config).identity

          expect(actual.access_key_id).to eq(expected.access_key_id)
          expect(actual.secret_access_key).to eq(expected.secret_access_key)
          expect(actual.session_token).to eq(expected.session_token)
        end
      end
    end
  end
end
