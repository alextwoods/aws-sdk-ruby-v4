# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe SharedConfigFileSection do
    subject { described_class }

    before do
      allow(Kernel).to receive(:warn)
    end

    context '#profiles' do
      file = File.join(File.dirname(__FILE__), 'config-file-section-tests.json')
      test_cases = JSON.load_file(file)['testSuites']

      def assert_credential_type(credential_type, profile)
        case credential_type
        when 'role'
          expect(profile['role_arn']).to_not be_nil
        when 'session'
          expect(profile['aws_session_token']).to_not be_nil
        when 'basic'
          expect(profile['aws_access_key_id']).to_not be_nil
        else
          raise "unhandled credential type: #{credential_type}"
        end
      end

      test_cases.each_with_index do |test_case, i|
        context "testSuite: #{i}" do
          profiles = test_case['profiles']
          profiles = profiles.each_with_object({}) do |(profile, values), h|
            h[profile] = SharedConfigFileSection.new(profile, values)
          end

          if (region_tests = test_case['regionTests'])
            region_tests.each do |region_test|
              it "passes: #{region_test['name']}" do
                profile = region_test['profile']
                output = region_test['output']['region']
                expect(profiles[profile].properties['region']).to eq(output)
              end
            end
          elsif (credentials_tests = test_case['credentialsTests'])
            credentials_tests.each do |credentials_test|
              it "passes: #{credentials_test['name']}" do
                profile = credentials_test['profile']
                output = credentials_test['output']['credentialType']
                assert_credential_type(output, profiles[profile])
              end
            end
          end
        end
      end
    end
  end
end
