# frozen_string_literal: true

require 'spec_helper'

module AWS
  module SDK
    module Core
      describe SharedConfig do
        before(:each) do
          stub_const('ENV', {})
          allow(Dir).to receive(:home).and_raise(ArgumentError)
        end

        let(:mock_credential_file) do
          File.expand_path(
            File.join(
              File.dirname(__FILE__),
              '..', 'fixtures', 'credentials', 'mock_shared_credentials'
            )
          )
        end

        let(:mock_config_file) do
          File.expand_path(
            File.join(
              File.dirname(__FILE__),
              '..', 'fixtures', 'credentials', 'mock_shared_config'
            )
          )
        end

        describe '#initialize' do
          before(:each) do
            allow(Dir).to receive(:home).and_return('HOME')
          end

          it 'defaults credentials_path to Dir.home/.aws/credentials' do
            config = SharedConfig.new
            expect(config.credentials_path).to eq(
              File.join('HOME', '.aws', 'credentials')
            )
          end

          it 'defaults config_path to Dir.home/.aws/config' do
            config = SharedConfig.new(config_enabled: true)
            expect(config.config_path).to eq(
              File.join('HOME', '.aws', 'config')
            )
          end

          it 'will use the ENV variable AWS_SHARED_CREDENTIALS_FILE if set' do
            expected_credentials_path = '/tmp/aws-test-credentials.ini'
            stub_const('ENV', 'AWS_SHARED_CREDENTIALS_FILE' => expected_credentials_path)
            config = SharedConfig.new
            expect(config.credentials_path).to eq(expected_credentials_path)
          end

          it 'will use the ENV variable AWS_CONFIG_FILE if set' do
            expected_config_path = '/tmp/aws-test-config.ini'
            stub_const('ENV', 'AWS_CONFIG_FILE' => expected_config_path)
            config = SharedConfig.new(config_enabled: true)
            expect(config.config_path).to eq(expected_config_path)
          end

          it 'will not load the shared config file if no ENV variable set' do
            config = SharedConfig.new
            expect(config.config_path).to be_nil
          end

          it 'creates the class' do
            config = SharedConfig.new
          end
        end
      end
    end
  end
end
