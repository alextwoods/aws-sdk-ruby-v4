# frozen_string_literal: true

require_relative '../spec_helper'
require_relative '../mock_shared_config'

describe AWS::SDK::Core do
  describe '.shared_config' do
    include_context 'mock_shared_config'

    it 'loads SharedConfig and memoized it' do
      AWS::SDK::Core.instance_variable_set(:@shared_config, nil)

      expect(AWS::SDK::Core::SharedConfig)
        .to receive(:load).once.and_return(shared_config)
      expect(AWS::SDK::Core.shared_config).to eq(shared_config)

      # call again to ensure we don't load again
      AWS::SDK::Core.shared_config
    end
  end
end

class TestProvider
  attr_reader :n_calls

  def initialize(delay = 1)
    @n_calls = 0
    @bg = Thread.new do
      loop do
        sleep(delay)
        @n_calls += 1
        puts "Updated to: #{@n_calls}"
      end
    end
  end
end
