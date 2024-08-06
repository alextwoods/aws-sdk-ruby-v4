# frozen_string_literal: true

require_relative '../../spec_helper'

module AWS::SDK::Core
  describe ProfileFile do
    subject { described_class }

    context '#profiles' do
      file = File.join(File.dirname(__FILE__),'config-file-parser-tests.json')
      test_cases = JSON.load_file(file)['tests']

      def parse(input)
        test_config_file = input['configFile']
        test_credentials_file = input['credentialsFile']
        if test_config_file
          config_file = ProfileFileStandardizer.new(
            ProfileFileParser.new(test_config_file).parse,
            :config
          ).standardize
        end
        if test_credentials_file
          credentials_file = ProfileFileStandardizer.new(
            ProfileFileParser.new(test_credentials_file).parse,
            :credentials
          ).standardize
        end
        subject.new(config_file || {}, credentials_file || {}).profiles
      end

      test_cases.each do |test_case|
        it "passes: #{test_case['name']}" do
          expected = test_case['output']

          if expected.key?('profiles')
            actual = parse(test_case['input'])
            expect(actual).to eq(expected['profiles'])
          elsif expected.key?('errorContaining')
            expect { parse(test_case['input']) }
              .to raise_error(
                ArgumentError, include(expected['errorContaining'])
              )
          end
        end
      end
    end
  end
end