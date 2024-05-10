# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'spec_helper'

module AWS::SDK::CodeCatalyst
  module Endpoint
    describe Resolver do
      subject { Resolver.new }

      context "Override endpoint" do
        let(:expected) do
          {
            url: 'https://test.codecatalyst.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(endpoint: "https://test.codecatalyst.global.api.aws")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default endpoint (region not set)" do
        let(:expected) do
          {
            url: 'https://codecatalyst.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new()
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default FIPS endpoint (region not set)" do
        let(:expected) do
          {
            url: 'https://codecatalyst-fips.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default endpoint (region: aws-global)" do
        let(:expected) do
          {
            url: 'https://codecatalyst.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default FIPS endpoint (region: aws-global)" do
        let(:expected) do
          {
            url: 'https://codecatalyst-fips.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default endpoint for a valid home region (region: us-west-2)" do
        let(:expected) do
          {
            url: 'https://codecatalyst.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default FIPS endpoint for a valid home region (region: us-west-2)" do
        let(:expected) do
          {
            url: 'https://codecatalyst-fips.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default endpoint for an unavailable home region (region: us-east-1)" do
        let(:expected) do
          {
            url: 'https://codecatalyst.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Default FIPS endpoint for an unavailable home region (region: us-east-1)" do
        let(:expected) do
          {
            url: 'https://codecatalyst-fips.global.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end
    end
  end
end
