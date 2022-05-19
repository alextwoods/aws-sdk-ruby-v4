# frozen_string_literal: true

require_relative '../spec_helper'

describe AWS::SDK::Core do
  describe '.shared_config' do
    let(:shared_config) { double }
    it 'loads SharedConfig and memorizes it' do
      expect(AWS::SDK::Core::SharedConfig)
        .to receive(:load).once.and_return(shared_config)
      expect(AWS::SDK::Core.shared_config).to eq(shared_config)

      # call again to ensure we don't load again
      AWS::SDK::Core.shared_config
    end
  end
end
