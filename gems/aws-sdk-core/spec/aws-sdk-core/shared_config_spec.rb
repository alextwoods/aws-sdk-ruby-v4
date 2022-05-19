# frozen_string_literal: true

require_relative '../spec_helper'

module AWS::SDK::Core
  describe SharedConfig do
    before(:each) do
      ENV.clear
      allow(Dir).to receive(:home).and_raise(ArgumentError)
    end

    let(:mock_credential_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'shared_config', 'mock_shared_credentials'
        )
      )
    end

    let(:mock_config_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'shared_config', 'mock_shared_config'
        )
      )
    end

    describe '.load' do
      before(:each) do
        allow(Dir).to receive(:home).and_return('HOME')
      end

      it 'defaults paths to Dir.home/.aws/' do
        expect(File).to receive(:exist?)
          .with(File.join('HOME', '.aws', 'credentials'))
          .and_return(false)
        expect(File).to receive(:exist?)
          .with(File.join('HOME', '.aws', 'config'))
          .and_return(false)
        SharedConfig.load
      end

      it 'uses the ENV variable AWS_SHARED_CREDENTIALS_FILE if set' do
        expected_credentials_path = '/tmp/aws-test-credentials.ini'
        ENV['AWS_SHARED_CREDENTIALS_FILE'] = expected_credentials_path
        allow(File).to receive(:exist?).and_return(false)
        expect(File).to receive(:exist?).with(expected_credentials_path)
        SharedConfig.load
      end

      it 'uses the ENV variable AWS_CONFIG_FILE if set' do
        expected_config_path = '/tmp/aws-test-config.ini'
        ENV['AWS_CONFIG_FILE'] = expected_config_path
        allow(File).to receive(:exist?).and_return(false)
        expect(File).to receive(:exist?).with(expected_config_path)
        SharedConfig.load
      end

      it 'loads values from the credentials file' do
        config = SharedConfig.load(config_path: mock_config_file)
        expect(config['default']['region']).to eq('us-east-1')
      end

      it 'merges values from config and credentials and prefers credentials' do
        config = SharedConfig.load(
          config_path: mock_config_file,
          credentials_path: mock_credential_file
        )
        # defined only in config
        expect(config['default']['region']).to eq('us-east-1')

        # defined in both, ACCESS_KEY_0 is in credentials
        expect(config['default']['aws_access_key_id']).to eq('ACCESS_KEY_0')
      end
    end
  end
end
