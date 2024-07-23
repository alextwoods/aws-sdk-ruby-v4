# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'spec_helper'

module AWS::SDK::STS
  module Endpoint
    describe Resolver do
      subject { Resolver.new }

      context "For region af-south-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.af-south-1.amazonaws.com',
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

      context "For region ap-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.ap-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-east-1", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts.ap-northeast-1.amazonaws.com',
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
            url: 'https://sts.ap-northeast-2.amazonaws.com',
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

      context "For region ap-northeast-3 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.ap-northeast-3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-3", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region ap-south-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.ap-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-south-1", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts.ap-southeast-1.amazonaws.com',
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
            url: 'https://sts.ap-southeast-2.amazonaws.com',
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

      context "For region ap-southeast-3 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.ap-southeast-3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-southeast-3", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region aws-global with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts.ca-central-1.amazonaws.com',
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
            url: 'https://sts.eu-central-1.amazonaws.com',
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

      context "For region eu-north-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.eu-north-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-north-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region eu-south-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.eu-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-south-1", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts.eu-west-1.amazonaws.com',
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
            url: 'https://sts.eu-west-2.amazonaws.com',
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

      context "For region eu-west-3 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.eu-west-3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-west-3", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region me-south-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.me-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "me-south-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region sa-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.sa-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "sa-east-1", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts.us-east-1.amazonaws.com',
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

      context "For region us-east-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts-fips.us-east-1.amazonaws.com',
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

      context "For region us-east-2 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-east-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-east-2 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts-fips.us-east-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-west-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-west-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-west-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts-fips.us-west-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-1", use_fips: true, use_dual_stack: false)
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
            url: 'https://sts.us-west-2.amazonaws.com',
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

      context "For region us-west-2 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts-fips.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: true, use_dual_stack: false)
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
            url: 'https://sts-fips.us-east-1.api.aws',
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

      context "For region us-east-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://sts.us-east-1.api.aws',
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

      context "For region cn-north-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.cn-north-1.amazonaws.com.cn',
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

      context "For region cn-northwest-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.cn-northwest-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-northwest-1", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts-fips.cn-north-1.api.amazonwebservices.com.cn',
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
            url: 'https://sts-fips.cn-north-1.amazonaws.com.cn',
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
            url: 'https://sts.cn-north-1.api.amazonwebservices.com.cn',
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

      context "For region us-gov-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-gov-east-1.amazonaws.com',
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

      context "For region us-gov-east-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-gov-east-1.amazonaws.com',
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

      context "For region us-gov-west-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-gov-west-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-west-1", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end

      context "For region us-gov-west-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-gov-west-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-west-1", use_fips: true, use_dual_stack: false)
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
            url: 'https://sts-fips.us-gov-east-1.api.aws',
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

      context "For region us-gov-east-1 with FIPS disabled and DualStack enabled" do
        let(:expected) do
          {
            url: 'https://sts.us-gov-east-1.api.aws',
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

      context "For region us-iso-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-iso-east-1.c2s.ic.gov',
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

      context "For region us-iso-west-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-iso-west-1.c2s.ic.gov',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-iso-west-1", use_fips: false, use_dual_stack: false)
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
            url: 'https://sts-fips.us-iso-east-1.c2s.ic.gov',
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

      context "For region us-isob-east-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://sts.us-isob-east-1.sc2s.sgov.gov',
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
            url: 'https://sts-fips.us-isob-east-1.sc2s.sgov.gov',
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

      context "UseGlobalEndpoint with legacy region `ap-northeast-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ap-northeast-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `ap-south-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-south-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ap-south-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `ap-southeast-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-southeast-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ap-southeast-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `ap-southeast-2`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-southeast-2", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ap-southeast-2"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `aws-global`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `ca-central-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ca-central-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ca-central-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `eu-central-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-central-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "eu-central-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `eu-north-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-north-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "eu-north-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `eu-west-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-west-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "eu-west-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `eu-west-2`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-west-2", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "eu-west-2"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `eu-west-3`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "eu-west-3", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "eu-west-3"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `sa-east-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "sa-east-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "sa-east-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `us-east-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `us-east-2`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-2"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `us-west-1`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region `us-west-2`" do
        let(:expected) do
          {
            url: 'https://sts.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with Non-legacy region `us-east-3`" do
        let(:expected) do
          {
            url: 'https://sts.us-east-3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-3", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-3"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with legacy region and custom endpoint" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-1", use_fips: false, use_dual_stack: false, use_global_endpoint: true, endpoint: "https://example.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end

        it 'produces the correct output from the client when calling get_caller_identity' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-1"
          allow_any_instance_of(Params).to receive(:use_global_endpoint).and_return(true)
          config[:endpoint] = "https://example.com"

          client = Client.new(config)
          proc = proc do |context|
            expected_uri = URI.parse(expected[:url])
            request_uri = context.request.uri
            expect(request_uri.hostname).to end_with(expected_uri.hostname)
            expect(request_uri.scheme).to eq(expected_uri.scheme)
            expect(request_uri.path).to start_with(expected_uri.path)
            expected[:headers].each do |k,v|
              expect(context.request.headers[k]).to eq(Hearth::HTTP::Field.new(k, v).value)
            end
          end
          interceptor = Hearth::Interceptor.new(read_before_transmit: proc)
          client.get_caller_identity({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoint with unset region and custom endpoint" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(use_fips: false, use_dual_stack: false, use_global_endpoint: false, endpoint: "https://example.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes.map(&:scheme_id)).to eq(expected[:auth_schemes].map(&:scheme_id))
          expect(endpoint.auth_schemes.map(&:properties)).to eq(expected[:auth_schemes].map(&:properties))
        end
      end
    end
  end
end
