# frozen_string_literal: true

require_relative 'spec_helper'

describe AWS::SDK::Core do
  describe '.shared_config' do
    it 'loads SharedConfig and memoized it' do
      expect(AWS::SDK::Core::SharedConfig).to receive(:load).once
      AWS::SDK::Core.shared_config
      # call again to ensure we don't load again
      AWS::SDK::Core.shared_config
    end
  end

  feature_checks = [
    [:crt_loaded?, :@use_crt, 'aws-crt'],
  ].freeze

  feature_checks.each do |feature_check|
    describe feature_check[0] do
      before { AWS::SDK::Core.instance_variable_set(feature_check[1], nil) }

      it "is true when #{feature_check[2]} is available" do
        expect(AWS::SDK::Core).to receive(:require)
          .with(feature_check[2]).and_return(true)
        expect(AWS::SDK::Core.send(feature_check[0])).to be_truthy
      end

      it "is false when #{feature_check[2]} is not available" do
        expect(AWS::SDK::Core).to receive(:require)
          .with(feature_check[2]).and_raise(LoadError)
        expect(AWS::SDK::Core.send(feature_check[0])).to be_falsey
      end

      it 'memoizes its status' do
        expect(AWS::SDK::Core).to receive(:require)
          .once.with(feature_check[2]).and_raise(LoadError)
        AWS::SDK::Core.send(feature_check[0])
        # second call should not call require again
        AWS::SDK::Core.send(feature_check[0])
      end
    end
  end
end
