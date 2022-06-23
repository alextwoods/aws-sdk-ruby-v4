# frozen_string_literal: true

require_relative '../spec_helper'

describe AWS::SDK::Core do
  describe '.shared_config' do
    let(:credential_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'shared_config', 'credentials'
        )
      )
    end

    let(:config_file) do
      File.expand_path(
        File.join(
          File.dirname(__FILE__),
          '..', 'fixtures', 'shared_config', 'config'
        )
      )
    end

    # This shared config instance is shared across all RSpec tests.
    # It is used to test credential provider procs.
    let(:shared_config) do
      AWS::SDK::Core::SharedConfig.load(
        credentials_path: credential_file,
        config_path: config_file
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

  describe '#sts_loaded?' do
    context 'sts loaded' do
      before do
        expect(AWS::SDK::Core)
          .to receive(:require).with('aws-sdk-sts').and_return(true)
      end

      it 'returns true' do
        expect(AWS::SDK::Core.sts_loaded?).to eq(true)
      end
    end

    context 'sts not loaded' do
      before do
        expect(AWS::SDK::Core)
          .to receive(:require).with('aws-sdk-sts').and_raise(LoadError)
      end

      it 'returns false' do
        expect(AWS::SDK::Core.sts_loaded?).to eq(false)
      end
    end
  end

  describe '#sso_loaded?' do
    context 'sso loaded' do
      before do
        expect(AWS::SDK::Core)
          .to receive(:require).with('aws-sdk-sso').and_return(true)
      end

      it 'returns true' do
        expect(AWS::SDK::Core.sso_loaded?).to eq(true)
      end
    end

    context 'sso not loaded' do
      before do
        expect(AWS::SDK::Core)
          .to receive(:require).with('aws-sdk-sso').and_raise(LoadError)
      end

      it 'returns false' do
        expect(AWS::SDK::Core.sso_loaded?).to eq(false)
      end
    end
  end
end
