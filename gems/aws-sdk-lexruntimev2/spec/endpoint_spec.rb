# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'spec_helper'

module AWS::SDK::LexRuntimeV2
  module Endpoint
    describe Resolver do
      subject { Resolver.new }

      context "For region af-south-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "af-south-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region ap-northeast-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.ap-northeast-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region ap-northeast-2 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.ap-northeast-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-2", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region ap-southeast-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.ap-southeast-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-southeast-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region ap-southeast-2 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.ap-southeast-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-southeast-2", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region ca-central-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.ca-central-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ca-central-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region eu-central-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.eu-central-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-central-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region eu-west-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.eu-west-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-west-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region eu-west-2 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.eu-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-west-2", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-west-2 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-east-1 with FIPS enabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.us-east-1.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-east-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-east-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-east-1.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region cn-north-1 with FIPS enabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.cn-north-1.api.amazonwebservices.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: true, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region cn-north-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.cn-north-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region cn-north-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.cn-north-1.api.amazonwebservices.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: false, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region cn-north-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.cn-north-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-gov-east-1 with FIPS enabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.us-gov-east-1.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-east-1", use_fips: true, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-gov-east-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.us-gov-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-east-1", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-gov-east-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-gov-east-1.api.aws',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-east-1", use_fips: false, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-gov-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-gov-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-east-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-iso-east-1 with FIPS enabled and DualStack enabled" do
        let(:expected) do
          {error: "FIPS and DualStack are enabled, but this partition does not support one or both"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-iso-east-1", use_fips: true, use_dual_stack: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "For region us-iso-east-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.us-iso-east-1.c2s.ic.gov',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-iso-east-1", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-iso-east-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {error: "DualStack is enabled but this partition does not support DualStack"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-iso-east-1", use_fips: false, use_dual_stack: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "For region us-iso-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-iso-east-1.c2s.ic.gov',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-iso-east-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-isob-east-1 with FIPS enabled and DualStack enabled" do
        let(:expected) do
          {error: "FIPS and DualStack are enabled, but this partition does not support one or both"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-isob-east-1", use_fips: true, use_dual_stack: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "For region us-isob-east-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex-fips.us-isob-east-1.sc2s.sgov.gov',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-isob-east-1", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-isob-east-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {error: "DualStack is enabled but this partition does not support DualStack"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-isob-east-1", use_fips: false, use_dual_stack: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "For region us-isob-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://runtime-v2-lex.us-isob-east-1.sc2s.sgov.gov',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-isob-east-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For custom endpoint with region set and fips disabled and dualstack disabled" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, endpoint: "https://example.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For custom endpoint with region not set and fips disabled and dualstack disabled" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(use_fips: false, use_dual_stack: false, endpoint: "https://example.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For custom endpoint with fips enabled and dualstack disabled" do
        let(:expected) do
          {error: "Invalid Configuration: FIPS and custom endpoint are not supported"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: false, endpoint: "https://example.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "For custom endpoint with fips disabled and dualstack enabled" do
        let(:expected) do
          {error: "Invalid Configuration: Dualstack and custom endpoint are not supported"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: true, endpoint: "https://example.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "Missing region" do
        let(:expected) do
          {error: "Invalid Configuration: Missing Region"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new()
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end
    end
  end
end
