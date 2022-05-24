# frozen_string_literal: true

require_relative '../spec_helper'

describe AWS::SDK::Core do
  describe '.shared_config' do
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

    let(:shared_config) do
      AWS::SDK::Core::SharedConfig.load(
        credentials_path: mock_credential_file,
        config_path: mock_config_file
      )
    end

    it 'loads SharedConfig and memoized it' do
      expect(AWS::SDK::Core::SharedConfig)
        .to receive(:load).once.and_return(shared_config)
      expect(AWS::SDK::Core.shared_config).to eq(shared_config)

      # call again to ensure we don't load again
      AWS::SDK::Core.shared_config
    end
  end
end
