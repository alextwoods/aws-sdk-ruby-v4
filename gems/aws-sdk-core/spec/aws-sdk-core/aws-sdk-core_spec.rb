# frozen_string_literal: true

require_relative '../spec_helper'

describe AWS::SDK::Core do
  describe '.shared_config' do
    # it 'loads SharedConfig and memoized it' do
    #   # shared_config context will set this already, so reset it
    #   AWS::SDK::Core.instance_variable_set(:@shared_config, nil)
    #
    #   expect(AWS::SDK::Core::SharedConfig)
    #     .to receive(:load).once.and_return(shared_config)
    #   expect(AWS::SDK::Core.shared_config).to eq(shared_config)
    #
    #   # call again to ensure we don't load again
    #   AWS::SDK::Core.shared_config
    # end
  end
end
