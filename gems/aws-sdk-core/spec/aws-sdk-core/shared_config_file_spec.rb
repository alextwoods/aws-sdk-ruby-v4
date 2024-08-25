# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe SharedConfigFile do
    subject { described_class }

    before do
      allow(Kernel).to receive(:warn)
    end

    def parse(input)
      test_config_file = input['configFile']
      test_credentials_file = input['credentialsFile']
      if test_config_file
        config_profiles, sso_sessions = SharedConfigFileStandardizer.new(
          SharedConfigFileParser.new(test_config_file).parse,
          :config
        ).standardize
      end
      if test_credentials_file
        credentials_profiles = SharedConfigFileStandardizer.new(
          SharedConfigFileParser.new(test_credentials_file).parse,
          :credentials
        ).standardize
      end
      subject.new(
        config_profiles: config_profiles || {},
        credentials_profiles: credentials_profiles || {},
        sso_sessions: sso_sessions || {}
      )
    end

    def expect_error(input, error_message)
      expect { parse(input) }
        .to raise_error(InvalidSharedConfigError, error_message)
    end

    context '#profiles' do
      file = File.join(
        File.dirname(__FILE__),
        'config-file-profile-parser-tests.json'
      )
      test_cases = JSON.load_file(file)['tests']

      test_cases.each do |test_case|
        it "passes: #{test_case['name']}" do
          expected = test_case['output']

          if expected.key?('profiles')
            actual = parse(test_case['input']).profiles
            expect(actual).to eq(expected['profiles'])
          elsif expected.key?('errorContaining')
            expect_error(
              test_case['input'],
              include(expected['errorContaining'])
            )
          end
        end
      end
    end

    context '#sso_sessions' do
      file = File.join(
        File.dirname(__FILE__),
        'config-file-sso-session-parser-tests.json'
      )
      test_cases = JSON.load_file(file)['tests']

      test_cases.each do |test_case|
        it "passes: #{test_case['name']}" do
          expected = test_case['output']

          if expected.key?('ssoSessions')
            actual = parse(test_case['input']).sso_sessions
            expect(actual).to eq(expected['ssoSessions'])
          elsif expected.key?('errorContaining')
            expect_error(
              test_case['input'],
              include(expected['errorContaining'])
            )
          end
        end
      end
    end
  end
end
