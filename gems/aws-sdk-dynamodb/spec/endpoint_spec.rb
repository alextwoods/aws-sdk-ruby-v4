# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'spec_helper'

module AWS::SDK::DynamoDB
  module Endpoint
    describe Resolver do
      subject { Resolver.new }

      context "For region af-south-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://dynamodb.af-south-1.amazonaws.com',
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
            url: 'https://dynamodb.ap-east-1.amazonaws.com',
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
            url: 'https://dynamodb.ap-northeast-1.amazonaws.com',
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
            url: 'https://dynamodb.ap-northeast-2.amazonaws.com',
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
            url: 'https://dynamodb.ap-northeast-3.amazonaws.com',
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
            url: 'https://dynamodb.ap-south-1.amazonaws.com',
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
            url: 'https://dynamodb.ap-southeast-1.amazonaws.com',
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
            url: 'https://dynamodb.ap-southeast-2.amazonaws.com',
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
            url: 'https://dynamodb.ap-southeast-3.amazonaws.com',
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

      context "For region ca-central-1 with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://dynamodb.ca-central-1.amazonaws.com',
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

      context "For region ca-central-1 with FIPS enabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'https://dynamodb-fips.ca-central-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ca-central-1", use_fips: true, use_dual_stack: false)
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
            url: 'https://dynamodb.eu-central-1.amazonaws.com',
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
            url: 'https://dynamodb.eu-north-1.amazonaws.com',
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
            url: 'https://dynamodb.eu-south-1.amazonaws.com',
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
            url: 'https://dynamodb.eu-west-1.amazonaws.com',
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
            url: 'https://dynamodb.eu-west-2.amazonaws.com',
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
            url: 'https://dynamodb.eu-west-3.amazonaws.com',
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

      context "For region local with FIPS disabled and DualStack disabled" do
        let(:expected) do
          {
            url: 'http://localhost:8000',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "local", use_fips: false, use_dual_stack: false)
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
            url: 'https://dynamodb.me-south-1.amazonaws.com',
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
            url: 'https://dynamodb.sa-east-1.amazonaws.com',
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
            url: 'https://dynamodb.us-east-1.amazonaws.com',
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
            url: 'https://dynamodb-fips.us-east-1.amazonaws.com',
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
            url: 'https://dynamodb.us-east-2.amazonaws.com',
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
            url: 'https://dynamodb-fips.us-east-2.amazonaws.com',
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
            url: 'https://dynamodb.us-west-1.amazonaws.com',
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
            url: 'https://dynamodb-fips.us-west-1.amazonaws.com',
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
            url: 'https://dynamodb.us-west-2.amazonaws.com',
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
            url: 'https://dynamodb-fips.us-west-2.amazonaws.com',
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
            url: 'https://dynamodb-fips.us-east-1.api.aws',
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
            url: 'https://dynamodb.us-east-1.api.aws',
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
            url: 'https://dynamodb.cn-north-1.amazonaws.com.cn',
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
            url: 'https://dynamodb.cn-northwest-1.amazonaws.com.cn',
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
            url: 'https://dynamodb-fips.cn-north-1.api.amazonwebservices.com.cn',
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
            url: 'https://dynamodb-fips.cn-north-1.amazonaws.com.cn',
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
            url: 'https://dynamodb.cn-north-1.api.amazonwebservices.com.cn',
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
            url: 'https://dynamodb.us-gov-east-1.amazonaws.com',
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
            url: 'https://dynamodb.us-gov-east-1.amazonaws.com',
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
            url: 'https://dynamodb.us-gov-west-1.amazonaws.com',
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
            url: 'https://dynamodb.us-gov-west-1.amazonaws.com',
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
            url: 'https://dynamodb-fips.us-gov-east-1.api.aws',
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
            url: 'https://dynamodb.us-gov-east-1.api.aws',
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
            url: 'https://dynamodb.us-iso-east-1.c2s.ic.gov',
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
            url: 'https://dynamodb.us-iso-west-1.c2s.ic.gov',
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
            url: 'https://dynamodb-fips.us-iso-east-1.c2s.ic.gov',
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
            url: 'https://dynamodb.us-isob-east-1.sc2s.sgov.gov',
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
            url: 'https://dynamodb-fips.us-isob-east-1.sc2s.sgov.gov',
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
    end
  end
end
