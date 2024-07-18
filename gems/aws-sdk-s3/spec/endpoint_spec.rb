# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'spec_helper'

module AWS::SDK::S3
  module Endpoint
    describe Resolver do
      subject { Resolver.new }

      context "region is not a valid DNS-suffix" do
        let(:expected) do
          {error: "Invalid region: region was not a valid DNS name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "a b", use_fips: false, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "Invalid access point ARN: Not S3" do
        let(:expected) do
          {error: "Invalid ARN: The ARN was not for the S3 service, found: not-s3"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:not-s3:us-west-2:123456789012:accesspoint:myendpoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:not-s3:us-west-2:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: The ARN was not for the S3 service, found: not-s3')
        end
      end

      context "Invalid access point ARN: invalid resource" do
        let(:expected) do
          {error: "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint:more-data")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint:more-data",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: The ARN may only contain a single resource component after `accesspoint`.')
        end
      end

      context "Invalid access point ARN: invalid no ap name" do
        let(:expected) do
          {error: "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided')
        end
      end

      context "Invalid access point ARN: AccountId is invalid" do
        let(:expected) do
          {error: "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123456_789012`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456_789012:accesspoint:apname")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west-2:123456_789012:accesspoint:apname",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123456_789012`')
        end
      end

      context "Invalid access point ARN: access point name is invalid" do
        let(:expected) do
          {error: "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `ap_name`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:ap_name")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:ap_name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `ap_name`')
        end
      end

      context "Access points (disable access points explicitly false)" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Access points: partition does not support FIPS" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: true, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3:cn-north-1:123456789012:accesspoint:myendpoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_fips_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:cn-north-1:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Partition does not support FIPS')
        end
      end

      context "Bucket region is invalid" do
        let(:expected) do
          {error: "Invalid region in ARN: `us-west -2` (invalid DNS name)"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west -2:123456789012:accesspoint:myendpoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west -2:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid region in ARN: `us-west -2` (invalid DNS name)')
        end
      end

      context "Access points when Access points explicitly disabled (used for CreateBucket)" do
        let(:expected) do
          {error: "Access points are not supported for this operation"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: true, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling create_bucket' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.create_bucket({
              bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint"
            })
          end.to raise_error(ArgumentError, 'Access points are not supported for this operation')
        end
      end

      context "missing arn type" do
        let(:expected) do
          {error: "Invalid ARN: `arn:aws:s3:us-west-2:123456789012:` was not a valid ARN"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, disable_access_points: true, bucket: "arn:aws:s3:us-west-2:123456789012:")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west-2:123456789012:",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: `arn:aws:s3:us-west-2:123456789012:` was not a valid ARN')
        end
      end

      context "SDK::Host + access point + Dualstack is an error" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "cn-north-1", use_dual_stack: true, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_dualstack_endpoint] = true
          config[:endpoint] = "https://beta.example.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Cannot set dual-stack in combination with a custom endpoint.')
        end
      end

      context "Access point ARN with FIPS & Dualstack" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: true, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Access point ARN with Dualstack" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: true, accelerate: false, disable_access_points: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla MRAP" do
        let(:expected) do
          {
            url: 'https://mfzwi23gnjvgw.mrap.accesspoint.s3-global.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "MRAP does not support FIPS" do
        let(:expected) do
          {error: "S3 MRAP does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: true, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3 MRAP does not support FIPS')
        end
      end

      context "MRAP does not support DualStack" do
        let(:expected) do
          {error: "S3 MRAP does not support dual-stack"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: false, use_dual_stack: true, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3 MRAP does not support dual-stack')
        end
      end

      context "MRAP does not support S3 Accelerate" do
        let(:expected) do
          {error: "S3 MRAP does not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: false, use_fips: false, use_dual_stack: false, accelerate: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3 MRAP does not support S3 Accelerate')
        end
      end

      context "MRAP explicitly disabled" do
        let(:expected) do
          {error: "Invalid configuration: Multi-Region Access Point ARNs are disabled."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-east-1", disable_multi_region_access_points: true, use_fips: false, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:disable_multiregion_access_points] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: Multi-Region Access Point ARNs are disabled.')
        end
      end

      context "Dual-stack endpoint with path-style forced" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-west-2.amazonaws.com/bucketname',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "bucketname", region: "us-west-2", force_path_style: true, use_fips: false, accelerate: false, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucketname",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Dual-stack endpoint + SDK::Host is error" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "bucketname", region: "us-west-2", force_path_style: true, use_fips: false, accelerate: false, use_dual_stack: true, endpoint: "https://abc.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:endpoint] = "https://abc.com"
          config[:force_path_style] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucketname",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Cannot set dual-stack in combination with a custom endpoint.')
        end
      end

      context "path style + ARN bucket" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with ARN buckets"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:force_path_style] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with ARN buckets')
        end
      end

      context "implicit path style bucket + dualstack" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-west-2.amazonaws.com/99_ab',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99_ab", region: "us-west-2", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "99_ab",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "implicit path style bucket + dualstack" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99_ab", region: "us-west-2", use_dual_stack: true, use_fips: false, endpoint: "http://abc.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:endpoint] = "http://abc.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "99_ab",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Cannot set dual-stack in combination with a custom endpoint.')
        end
      end

      context "don't allow URL injections in the bucket" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com/example.com%23',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "example.com#", region: "us-west-2", use_dual_stack: false, use_fips: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "example.com#",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "URI encode bucket names in the path" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com/bucket%20name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "bucket name", region: "us-west-2", use_dual_stack: false, use_fips: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "bucket name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "scheme is respected" do
        let(:expected) do
          {
            url: 'http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99_ab", endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "scheme is respected (virtual addressing)" do
        let(:expected) do
          {
            url: 'http://bucketname.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucketname", endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/foo", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "path style + implicit private link" do
        let(:expected) do
          {
            url: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/99_ab',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99_ab", endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

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
          client.get_object({
            bucket: "99_ab",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "invalid Endpoint override" do
        let(:expected) do
          {error: "Custom endpoint `abcde://nota#url` was not a valid URI"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucketname", endpoint: "abcde://nota#url", region: "af-south-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "using an IPv4 address forces path style" do
        let(:expected) do
          {
            url: 'https://123.123.0.1/bucketname',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucketname", endpoint: "https://123.123.0.1", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:endpoint] = "https://123.123.0.1"

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
          client.get_object({
            bucket: "bucketname",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla access point arn with region mismatch and UseArnRegion=false" do
        let(:expected) do
          {error: "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-east-1:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`')
        end
      end

      context "vanilla access point arn with region mismatch and UseArnRegion unset" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-east-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla access point arn with region mismatch and UseArnRegion=true" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, use_arn_region: true, region: "us-east-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_arn_region] = true

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "subdomains are not allowed in virtual buckets" do
        let(:expected) do
          {
            url: 'https://s3.us-east-1.amazonaws.com/bucket.name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "bucket.name", region: "us-east-1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "bucket.name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "bucket names with 3 characters are allowed in virtual buckets" do
        let(:expected) do
          {
            url: 'https://aaa.s3.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "aaa", region: "us-east-1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "aaa",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "bucket names with fewer than 3 characters are not allowed in virtual host" do
        let(:expected) do
          {
            url: 'https://s3.us-east-1.amazonaws.com/aa',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "aa", region: "us-east-1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "aa",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "bucket names with uppercase characters are not allowed in virtual host" do
        let(:expected) do
          {
            url: 'https://s3.us-east-1.amazonaws.com/BucketName',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "BucketName", region: "us-east-1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "BucketName",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "subdomains are allowed in virtual buckets on http endpoints" do
        let(:expected) do
          {
            url: 'http://bucket.name.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "bucket.name", region: "us-east-1", endpoint: "http://example.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:endpoint] = "http://example.com"

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
          client.get_object({
            bucket: "bucket.name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "no region set" do
        let(:expected) do
          {error: "A region must be set when sending requests to S3."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "bucket-name")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "UseGlobalEndpoints=true, region=us-east-1 uses the global endpoint" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-west-2 uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=cn-north-1 uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://s3.cn-north-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-east-1, fips=true uses the regional endpoint with fips" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, use_fips: true, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-east-1, dualstack=true uses the regional endpoint with dualstack" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-east-1, dualstack and fips uses the regional endpoint with fips/dualstack" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, use_fips: true, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-east-1 with custom endpoint, uses custom" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", endpoint: "https://example.com", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:endpoint] = "https://example.com"
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-west-2 with custom endpoint, uses custom" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", endpoint: "https://example.com", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://example.com"
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "UseGlobalEndpoints=true, region=us-east-1 with accelerate on non bucket case uses the global endpoint and ignores accelerate" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_accelerate_endpoint] = true
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "aws-global region uses the global endpoint" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"

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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "aws-global region with fips uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: true, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_fips_endpoint] = true

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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "aws-global region with dualstack uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_dualstack_endpoint] = true

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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "aws-global region with fips and dualstack uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: true, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "aws-global region with accelerate on non-bucket case, uses global endpoint and ignores accelerate" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_accelerate_endpoint] = true

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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "aws-global region with custom endpoint, uses custom" do
        let(:expected) do
          {
            url: 'https://example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", endpoint: "https://example.com", use_global_endpoint: false, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
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
          client.list_buckets({}, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region uses the global endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region with Prefix, and Key uses the global endpoint. Prefix and Key parameters should not be used in endpoint evaluation." do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false, prefix: "prefix", key: "key")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_objects' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"

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
          client.list_objects({
            bucket: "bucket-name",
            prefix: "prefix"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region with fips uses the regional fips endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", use_fips: true, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region with dualstack uses the regional dualstack endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region with fips/dualstack uses the regional fips/dualstack endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", use_fips: true, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region with accelerate uses the global accelerate endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-accelerate.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_accelerate_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, aws-global region with custom endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", endpoint: "https://example.com", bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, UseGlobalEndpoint and us-east-1 region uses the global endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, UseGlobalEndpoint and us-west-2 region uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, UseGlobalEndpoint and us-east-1 region and fips uses the regional fips endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: true, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, UseGlobalEndpoint and us-east-1 region and dualstack uses the regional dualstack endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, UseGlobalEndpoint and us-east-1 region and accelerate uses the global accelerate endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-accelerate.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_accelerate_endpoint] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing, UseGlobalEndpoint and us-east-1 region with custom endpoint" do
        let(:expected) do
          {
            url: 'https://bucket-name.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", endpoint: "https://example.com", use_global_endpoint: true, bucket: "bucket-name", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:endpoint] = "https://example.com"
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, aws-global region uses the global endpoint" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, aws-global region with fips is invalid" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", force_path_style: true, use_fips: true, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "ForcePathStyle, aws-global region with dualstack uses regional dualstack endpoint" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-east-1.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket-name", force_path_style: true, use_fips: false, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_dualstack_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, aws-global region custom endpoint uses the custom endpoint" do
        let(:expected) do
          {
            url: 'https://example.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", endpoint: "https://example.com", bucket: "bucket-name", force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:endpoint] = "https://example.com"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, UseGlobalEndpoint us-east-1 region uses the global endpoint" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket-name", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:force_path_style] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, UseGlobalEndpoint us-west-2 region uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "bucket-name", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:force_path_style] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, UseGlobalEndpoint us-east-1 region, dualstack uses the regional dualstack endpoint" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-east-1.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket-name", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true
          config[:force_path_style] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ForcePathStyle, UseGlobalEndpoint us-east-1 region custom endpoint uses the custom endpoint" do
        let(:expected) do
          {
            url: 'https://example.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket-name", endpoint: "https://example.com", use_global_endpoint: true, force_path_style: true, use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:endpoint] = "https://example.com"
          config[:force_path_style] = true
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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "ARN with aws-global region and  UseArnRegion uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://reports-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_arn_region: true, use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_arn_region] = true

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
          client.get_object({
            bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "cross partition MRAP ARN is an error" do
        let(:expected) do
          {error: "Client was configured for partition `aws` but bucket referred to partition `aws-cn`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(bucket: "arn:aws-cn:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap", region: "us-west-1")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws-cn:s3::123456789012:accesspoint:mfzwi23gnjvgw.mrap",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Client was configured for partition `aws` but bucket referred to partition `aws-cn`')
        end
      end

      context "Endpoint override, accesspoint with HTTP, port" do
        let(:expected) do
          {
            url: 'http://myendpoint-123456789012.beta.example.com:1234',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(endpoint: "http://beta.example.com:1234", region: "us-west-2", bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "http://beta.example.com:1234"

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Endpoint override, accesspoint with http, path, query, and port" do
        let(:expected) do
          {
            url: 'http://myendpoint-123456789012.beta.example.com:1234/path',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", endpoint: "http://beta.example.com:1234/path", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "non-bucket endpoint override with FIPS = error" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: true, use_dual_stack: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "FIPS + dualstack + custom endpoint" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: true, use_dual_stack: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "dualstack + custom endpoint" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: false, use_dual_stack: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "custom endpoint without FIPS/dualstack" do
        let(:expected) do
          {
            url: 'http://beta.example.com:1234/path',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", endpoint: "http://beta.example.com:1234/path", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "s3 object lambda with access points disabled" do
        let(:expected) do
          {error: "Access points are not supported for this operation"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:myendpoint", disable_access_points: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "non bucket + FIPS" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: true, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "standard non bucket endpoint" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "non bucket endpoint with FIPS + Dualstack" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: true, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "non bucket endpoint with dualstack" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "use global endpoint + IP address endpoint override" do
        let(:expected) do
          {
            url: 'http://127.0.0.1/bucket',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket", use_fips: false, use_dual_stack: false, endpoint: "http://127.0.0.1", use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "non-dns endpoint + global endpoint" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", use_fips: false, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "endpoint override + use global endpoint" do
        let(:expected) do
          {
            url: 'http://foo.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", use_fips: false, use_dual_stack: false, use_global_endpoint: true, endpoint: "http://foo.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "FIPS + dualstack + non-bucket endpoint" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "FIPS + dualstack + non-DNS endpoint" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", force_path_style: true, use_fips: true, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "endpoint override + FIPS + dualstack (BUG)" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", force_path_style: true, use_fips: true, use_dual_stack: false, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "endpoint override + non-dns bucket + FIPS (BUG)" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: false, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "FIPS + bucket endpoint + force path style" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", force_path_style: true, use_fips: true, use_dual_stack: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "bucket + FIPS + force path style" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket", force_path_style: true, use_fips: true, use_dual_stack: true, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "FIPS + dualstack + use global endpoint" do
        let(:expected) do
          {
            url: 'https://bucket.s3-fips.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket", use_fips: true, use_dual_stack: true, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "URI encoded bucket + use global endpoint" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: false, use_global_endpoint: true, endpoint: "https://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "FIPS + path based endpoint" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", use_fips: true, use_dual_stack: false, accelerate: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "accelerate + dualstack + global endpoint" do
        let(:expected) do
          {
            url: 'https://bucket.s3-accelerate.dualstack.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket", use_fips: false, use_dual_stack: true, accelerate: true, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "dualstack + global endpoint + non URI safe bucket" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", accelerate: false, use_dual_stack: true, use_fips: false, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "FIPS + uri encoded bucket" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", force_path_style: true, accelerate: false, use_dual_stack: false, use_fips: true, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "endpoint override + non-uri safe endpoint + force path style" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", force_path_style: true, accelerate: false, use_dual_stack: false, use_fips: true, endpoint: "http://foo.com", use_global_endpoint: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "FIPS + Dualstack + global endpoint + non-dns bucket" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "bucket!", accelerate: false, use_dual_stack: true, use_fips: true, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "endpoint override + FIPS + dualstack" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_dual_stack: true, use_fips: true, use_global_endpoint: true, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "non-bucket endpoint override + dualstack + global endpoint" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: true, use_global_endpoint: true, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "Endpoint override + UseGlobalEndpoint + us-east-1" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: false, use_global_endpoint: true, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "non-FIPS partition with FIPS set + custom endpoint" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: true, use_dual_stack: false, use_global_endpoint: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "aws-global signs as us-east-1" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", use_fips: true, accelerate: false, use_dual_stack: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "aws-global signs as us-east-1" do
        let(:expected) do
          {
            url: 'https://bucket.foo.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket", use_dual_stack: false, use_fips: false, accelerate: false, endpoint: "https://foo.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "aws-global + dualstack + path-only bucket" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", use_dual_stack: true, use_fips: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "aws-global + path-only bucket" do
        let(:expected) do
          {
            url: 'https://s3.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "aws-global + fips + custom endpoint" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", use_dual_stack: false, use_fips: true, accelerate: false, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "aws-global, endpoint override & path only-bucket" do
        let(:expected) do
          {
            url: 'http://foo.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", use_dual_stack: false, use_fips: false, accelerate: false, endpoint: "http://foo.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "aws-global + dualstack + custom endpoint" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_dual_stack: true, use_fips: false, accelerate: false, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "accelerate, dualstack + aws-global" do
        let(:expected) do
          {
            url: 'https://bucket.s3-accelerate.dualstack.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket", use_dual_stack: true, use_fips: false, accelerate: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "FIPS + aws-global + path only bucket. This is not supported by S3 but we allow garbage in garbage out" do
        let(:expected) do
          {
            url: 'https://s3-fips.dualstack.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", force_path_style: true, use_dual_stack: true, use_fips: true, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "aws-global + FIPS + endpoint override." do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: true, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "force path style, FIPS, aws-global & endpoint override" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", force_path_style: true, use_fips: true, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "ip address causes path style to be forced" do
        let(:expected) do
          {
            url: 'http://192.168.1.1/bucket',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket", endpoint: "http://192.168.1.1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "endpoint override with aws-global region" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: true, use_dual_stack: true, endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "FIPS + path-only (TODO: consider making this an error)" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-east-1.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", bucket: "bucket!", use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "empty arn type" do
        let(:expected) do
          {error: "Invalid ARN: No ARN type specified"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:not-s3:us-west-2:123456789012::myendpoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "path style can't be used with accelerate" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket!", accelerate: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid region" do
        let(:expected) do
          {error: "Invalid region: region was not a valid DNS name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2!", bucket: "bucket.subdomain", endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid region" do
        let(:expected) do
          {error: "Invalid region: region was not a valid DNS name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2!", bucket: "bucket", endpoint: "http://foo.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "empty arn type" do
        let(:expected) do
          {error: "Invalid Access Point Name"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3::123456789012:accesspoint:my_endpoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "empty arn type" do
        let(:expected) do
          {error: "Client was configured for partition `aws` but ARN (`arn:aws:s3:cn-north-1:123456789012:accesspoint:my-endpoint`) has `aws-cn`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3:cn-north-1:123456789012:accesspoint:my-endpoint", use_arn_region: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid arn region" do
        let(:expected) do
          {error: "Invalid region in ARN: `us-east_2` (invalid DNS name)"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-object-lambda:us-east_2:123456789012:accesspoint:my-endpoint", use_arn_region: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid ARN outpost" do
        let(:expected) do
          {error: "Invalid ARN: The outpost Id may only contain a-z, A-Z, 0-9 and `-`. Found: `op_01234567890123456`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op_01234567890123456/accesspoint/reports", use_arn_region: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid ARN" do
        let(:expected) do
          {error: "Invalid ARN: expected an access point name"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid ARN" do
        let(:expected) do
          {error: "Invalid ARN: Expected a 4-component resource"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid outpost type" do
        let(:expected) do
          {error: "Expected an outpost type `accesspoint`, found not-accesspoint"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/not-accesspoint/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid outpost type" do
        let(:expected) do
          {error: "Invalid region in ARN: `us-east_1` (invalid DNS name)"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east_1:123456789012:outpost/op-01234567890123456/not-accesspoint/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid outpost type" do
        let(:expected) do
          {error: "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `12345_789012`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:12345_789012:outpost/op-01234567890123456/not-accesspoint/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "invalid outpost type" do
        let(:expected) do
          {error: "Invalid ARN: The Outpost Id was not set"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "arn:aws:s3-outposts:us-east-1:12345789012:outpost")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "use global endpoint virtual addressing" do
        let(:expected) do
          {
            url: 'http://bucket.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket", endpoint: "http://example.com", use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "global endpoint + ip address" do
        let(:expected) do
          {
            url: 'http://192.168.0.1/bucket',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket", endpoint: "http://192.168.0.1", use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "invalid outpost type" do
        let(:expected) do
          {
            url: 'https://s3.us-east-2.amazonaws.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket!", use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "invalid outpost type" do
        let(:expected) do
          {
            url: 'https://bucket.s3-accelerate.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket", accelerate: true, use_global_endpoint: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "use global endpoint + custom endpoint" do
        let(:expected) do
          {
            url: 'http://foo.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket!", use_global_endpoint: true, endpoint: "http://foo.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "use global endpoint, not us-east-1, force path style" do
        let(:expected) do
          {
            url: 'http://foo.com/bucket%21',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-2", bucket: "bucket!", use_global_endpoint: true, force_path_style: true, endpoint: "http://foo.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "vanilla virtual addressing@us-west-2" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + dualstack@us-west-2" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate + dualstack@us-west-2" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-accelerate.dualstack.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:use_accelerate_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate (dualstack=false)@us-west-2" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-accelerate.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_accelerate_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + fips@us-west-2" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + dualstack + fips@us-west-2" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate + fips = error@us-west-2" do
        let(:expected) do
          {error: "Accelerate cannot be used with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_fips_endpoint] = true
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Accelerate cannot be used with FIPS')
        end
      end

      context "vanilla virtual addressing@cn-north-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.cn-north-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + dualstack@cn-north-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.dualstack.cn-north-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate (dualstack=false)@cn-north-1" do
        let(:expected) do
          {error: "S3 Accelerate cannot be used in this region"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "virtual addressing + fips@cn-north-1" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "vanilla virtual addressing@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + dualstack@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3.dualstack.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate + dualstack@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-accelerate.dualstack.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_dualstack_endpoint] = true
          config[:use_accelerate_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate (dualstack=false)@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-accelerate.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_accelerate_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + fips@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + dualstack + fips@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.s3-fips.dualstack.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "accelerate + fips = error@af-south-1" do
        let(:expected) do
          {error: "Accelerate cannot be used with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Accelerate cannot be used with FIPS')
        end
      end

      context "vanilla path style@us-west-2" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "fips@us-gov-west-2, bucket is not S3-dns-compatible (subdomains)" do
        let(:expected) do
          {
            url: 'https://s3-fips.us-gov-west-1.amazonaws.com/bucket.with.dots',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket.with.dots", region: "us-gov-west-1", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-gov-west-1"
          config[:use_fips_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket.with.dots",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + accelerate = error@us-west-2" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:force_path_style] = true
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with S3 Accelerate')
        end
      end

      context "path style + dualstack@us-west-2" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.us-west-2.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "us-west-2", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + arn is error@us-west-2" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with ARN buckets"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:force_path_style] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with ARN buckets')
        end
      end

      context "path style + invalid DNS name@us-west-2" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com/99a_b',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99a_b", force_path_style: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "99a_b",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "no path style + invalid DNS name@us-west-2" do
        let(:expected) do
          {
            url: 'https://s3.us-west-2.amazonaws.com/99a_b',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99a_b", region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "99a_b",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla path style@cn-north-1" do
        let(:expected) do
          {
            url: 'https://s3.cn-north-1.amazonaws.com.cn/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + fips@cn-north-1" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_fips_endpoint] = true
          config[:force_path_style] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Partition does not support FIPS')
        end
      end

      context "path style + accelerate = error@cn-north-1" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:force_path_style] = true
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with S3 Accelerate')
        end
      end

      context "path style + dualstack@cn-north-1" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.cn-north-1.amazonaws.com.cn/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "cn-north-1", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_dualstack_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + arn is error@cn-north-1" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with ARN buckets"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:force_path_style] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with ARN buckets')
        end
      end

      context "path style + invalid DNS name@cn-north-1" do
        let(:expected) do
          {
            url: 'https://s3.cn-north-1.amazonaws.com.cn/99a_b',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99a_b", force_path_style: true, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "99a_b",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "no path style + invalid DNS name@cn-north-1" do
        let(:expected) do
          {
            url: 'https://s3.cn-north-1.amazonaws.com.cn/99a_b',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99a_b", region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"

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
          client.get_object({
            bucket: "99a_b",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla path style@af-south-1" do
        let(:expected) do
          {
            url: 'https://s3.af-south-1.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + fips@af-south-1" do
        let(:expected) do
          {
            url: 'https://s3-fips.af-south-1.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + accelerate = error@af-south-1" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:force_path_style] = true
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with S3 Accelerate')
        end
      end

      context "path style + dualstack@af-south-1" do
        let(:expected) do
          {
            url: 'https://s3.dualstack.af-south-1.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, region: "af-south-1", use_dual_stack: true, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_dualstack_endpoint] = true
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + arn is error@af-south-1" do
        let(:expected) do
          {error: "Path-style addressing cannot be used with ARN buckets"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:force_path_style] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:PARTITION:s3-outposts:REGION:123456789012:outpost:op-01234567890123456:bucket:mybucket",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Path-style addressing cannot be used with ARN buckets')
        end
      end

      context "path style + invalid DNS name@af-south-1" do
        let(:expected) do
          {
            url: 'https://s3.af-south-1.amazonaws.com/99a_b',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99a_b", force_path_style: true, region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "99a_b",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "no path style + invalid DNS name@af-south-1" do
        let(:expected) do
          {
            url: 'https://s3.af-south-1.amazonaws.com/99a_b',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "99a_b", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"

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
          client.get_object({
            bucket: "99a_b",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + private link@us-west-2" do
        let(:expected) do
          {
            url: 'http://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + private link@us-west-2" do
        let(:expected) do
          {
            url: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "SDK::Host + FIPS@us-west-2" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_fips_endpoint] = true
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'A custom endpoint cannot be combined with FIPS')
        end
      end

      context "SDK::Host + DualStack@us-west-2" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: true, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Cannot set dual-stack in combination with a custom endpoint.')
        end
      end

      context "SDK::HOST + accelerate@us-west-2" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, endpoint: "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "http://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'A custom endpoint cannot be combined with S3 Accelerate')
        end
      end

      context "SDK::Host + access point ARN@us-west-2" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.beta.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://beta.example.com"

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + private link@cn-north-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + private link@cn-north-1" do
        let(:expected) do
          {
            url: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "FIPS@cn-north-1" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "SDK::Host + DualStack@cn-north-1" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: true, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_dualstack_endpoint] = true
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Cannot set dual-stack in combination with a custom endpoint.')
        end
      end

      context "SDK::HOST + accelerate@cn-north-1" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "cn-north-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "SDK::Host + access point ARN@cn-north-1" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.beta.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:endpoint] = "https://beta.example.com"

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
          client.get_object({
            bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "virtual addressing + private link@af-south-1" do
        let(:expected) do
          {
            url: 'https://bucket-name.control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "path style + private link@af-south-1" do
        let(:expected) do
          {
            url: 'https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com/bucket-name',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: true, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"
          config[:force_path_style] = true

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
          client.get_object({
            bucket: "bucket-name",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "SDK::Host + FIPS@af-south-1" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'A custom endpoint cannot be combined with FIPS')
        end
      end

      context "SDK::Host + DualStack@af-south-1" do
        let(:expected) do
          {error: "Cannot set dual-stack in combination with a custom endpoint."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: true, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_dualstack_endpoint] = true
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Cannot set dual-stack in combination with a custom endpoint.')
        end
      end

      context "SDK::HOST + accelerate@af-south-1" do
        let(:expected) do
          {error: "A custom endpoint cannot be combined with S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "bucket-name", force_path_style: false, endpoint: "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com", region: "af-south-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:endpoint] = "https://control.vpce-1a2b3c4d-5e6f.s3.us-west-2.vpce.amazonaws.com"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "bucket-name",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'A custom endpoint cannot be combined with S3 Accelerate')
        end
      end

      context "SDK::Host + access point ARN@af-south-1" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.beta.example.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, endpoint: "https://beta.example.com", region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:endpoint] = "https://beta.example.com"

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
          client.get_object({
            bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla access point arn@us-west-2" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "access point arn + FIPS@us-west-2" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint-fips.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "access point arn + accelerate = error@us-west-2" do
        let(:expected) do
          {error: "Access Points do not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Access Points do not support S3 Accelerate')
        end
      end

      context "access point arn + FIPS + DualStack@us-west-2" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint", force_path_style: false, region: "us-west-2", use_dual_stack: true, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "arn:aws:s3:us-west-2:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "vanilla access point arn@cn-north-1" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.cn-north-1.amazonaws.com.cn',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"

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
          client.get_object({
            bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "access point arn + FIPS@cn-north-1" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "access point arn + accelerate = error@cn-north-1" do
        let(:expected) do
          {error: "Access Points do not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "cn-north-1"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Access Points do not support S3 Accelerate')
        end
      end

      context "access point arn + FIPS + DualStack@cn-north-1" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws-cn:s3:cn-north-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "cn-north-1", use_dual_stack: true, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "vanilla access point arn@af-south-1" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"

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
          client.get_object({
            bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "access point arn + FIPS@af-south-1" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint-fips.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "access point arn + accelerate = error@af-south-1" do
        let(:expected) do
          {error: "Access Points do not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Access Points do not support S3 Accelerate')
        end
      end

      context "access point arn + FIPS + DualStack@af-south-1" do
        let(:expected) do
          {
            url: 'https://myendpoint-123456789012.s3-accesspoint-fips.dualstack.af-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint", force_path_style: false, region: "af-south-1", use_dual_stack: true, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "af-south-1"
          config[:use_fips_endpoint] = true
          config[:use_dualstack_endpoint] = true

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
          client.get_object({
            bucket: "arn:aws:s3:af-south-1:123456789012:accesspoint:myendpoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "S3 outposts vanilla test" do
        let(:expected) do
          {
            url: 'https://reports-123456789012.op-01234567890123456.s3-outposts.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "S3 outposts custom endpoint" do
        let(:expected) do
          {
            url: 'https://reports-123456789012.op-01234567890123456.example.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports", endpoint: "https://example.amazonaws.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://example.amazonaws.com"

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
          client.get_object({
            bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "outposts arn with region mismatch and UseArnRegion=false" do
        let(:expected) do
          {error: "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`')
        end
      end

      context "outposts arn with region mismatch, custom region and UseArnRegion=false" do
        let(:expected) do
          {error: "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", endpoint: "https://example.com", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://example.com"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`')
        end
      end

      context "outposts arn with region mismatch and UseArnRegion=true" do
        let(:expected) do
          {
            url: 'https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, use_arn_region: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = true

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
          client.get_object({
            bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "outposts arn with region mismatch and UseArnRegion unset" do
        let(:expected) do
          {
            url: 'https://myaccesspoint-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.get_object({
            bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "outposts arn with partition mismatch and UseArnRegion=true" do
        let(:expected) do
          {error: "Client was configured for partition `aws` but ARN (`arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint`) has `aws-cn`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint", force_path_style: false, use_arn_region: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Client was configured for partition `aws` but ARN (`arn:aws:s3-outposts:cn-north-1:123456789012:outpost:op-01234567890123456:accesspoint:myaccesspoint`) has `aws-cn`')
        end
      end

      context "ARN with UseGlobalEndpoint and use-east-1 region uses the regional endpoint" do
        let(:expected) do
          {
            url: 'https://reports-123456789012.op-01234567890123456.s3-outposts.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_global_endpoint: true, use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
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
          client.get_object({
            bucket: "arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-01234567890123456/accesspoint/reports",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "S3 outposts does not support dualstack" do
        let(:expected) do
          {error: "S3 Outposts does not support Dual-stack"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: true, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "S3 outposts does not support fips" do
        let(:expected) do
          {error: "S3 Outposts does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "S3 outposts does not support accelerate" do
        let(:expected) do
          {error: "S3 Outposts does not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: true, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost/op-01234567890123456/accesspoint/reports")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "validates against subresource" do
        let(:expected) do
          {error: "Invalid Arn: Outpost Access Point ARN contains sub resources"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, bucket: "arn:aws:s3-outposts:us-west-2:123456789012:outpost:op-01234567890123456:accesspoint:mybucket:object:foo")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda @us-east-1" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_arn_region] = false

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda @us-west-2" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = false

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda, colon resource deliminator @us-west-2" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = false

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda @us-east-1, client region us-west-2, useArnRegion=true" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = true

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda @us-east-1, client region s3-external-1, useArnRegion=true" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "s3-external-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "s3-external-1"
          config[:use_arn_region] = true

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda @us-east-1, client region s3-external-1, useArnRegion=false" do
        let(:expected) do
          {error: "Invalid configuration: region from ARN `us-east-1` does not match client region `s3-external-1` and UseArnRegion is `false`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "s3-external-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "s3-external-1"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: region from ARN `us-east-1` does not match client region `s3-external-1` and UseArnRegion is `false`')
        end
      end

      context "object lambda @us-east-1, client region aws-global, useArnRegion=true" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_arn_region] = true

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda @us-east-1, client region aws-global, useArnRegion=false" do
        let(:expected) do
          {error: "Invalid configuration: region from ARN `us-east-1` does not match client region `aws-global` and UseArnRegion is `false`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: region from ARN `us-east-1` does not match client region `aws-global` and UseArnRegion is `false`')
        end
      end

      context "object lambda @cn-north-1, client region us-west-2 (cross partition), useArnRegion=true" do
        let(:expected) do
          {error: "Client was configured for partition `aws` but ARN (`arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner`) has `aws-cn`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "aws-global", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "aws-global"
          config[:use_arn_region] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Client was configured for partition `aws` but ARN (`arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner`) has `aws-cn`')
        end
      end

      context "object lambda with dualstack" do
        let(:expected) do
          {error: "S3 Object Lambda does not support Dual-stack"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: true, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_dualstack_endpoint] = true
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3 Object Lambda does not support Dual-stack')
        end
      end

      context "object lambda @us-gov-east-1" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda.us-gov-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-east-1", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "object lambda @us-gov-east-1, with fips" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.s3-object-lambda-fips.us-gov-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-gov-east-1", use_fips: true, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws-us-gov:s3-object-lambda:us-gov-east-1:123456789012:accesspoint/mybanner")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "object lambda @cn-north-1, with fips" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "cn-north-1", use_fips: true, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws-cn:s3-object-lambda:cn-north-1:123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with accelerate" do
        let(:expected) do
          {error: "S3 Object Lambda does not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: true, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_accelerate_endpoint] = true
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3 Object Lambda does not support S3 Accelerate')
        end
      end

      context "object lambda with invalid arn - bad service and someresource" do
        let(:expected) do
          {error: "Invalid ARN: Unrecognized format: arn:aws:sqs:us-west-2:123456789012:someresource (type: someresource)"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:sqs:us-west-2:123456789012:someresource")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:sqs:us-west-2:123456789012:someresource",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: Unrecognized format: arn:aws:sqs:us-west-2:123456789012:someresource (type: someresource)')
        end
      end

      context "object lambda with invalid arn - invalid resource" do
        let(:expected) do
          {error: "Invalid ARN: Object Lambda ARNs only support `accesspoint` arn types, but found: `bucket_name`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:bucket_name:mybucket")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with invalid arn - missing region" do
        let(:expected) do
          {error: "Invalid ARN: bucket ARN is missing a region"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda::123456789012:accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with invalid arn - missing account-id" do
        let(:expected) do
          {error: "Invalid ARN: Missing account id"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2::accesspoint/mybanner")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with invalid arn - account id contains invalid characters" do
        let(:expected) do
          {error: "Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123.45678.9012`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123.45678.9012:accesspoint:mybucket")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-object-lambda:us-west-2:123.45678.9012:accesspoint:mybucket",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid ARN: The account id may only contain a-z, A-Z, 0-9 and `-`. Found: `123.45678.9012`')
        end
      end

      context "object lambda with invalid arn - missing access point name" do
        let(:expected) do
          {error: "Invalid ARN: Expected a resource of the format `accesspoint:<accesspoint name>` but no name was provided"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with invalid arn - access point name contains invalid character: *" do
        let(:expected) do
          {error: "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `*`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:*")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with invalid arn - access point name contains invalid character: ." do
        let(:expected) do
          {error: "Invalid ARN: The access point name may only contain a-z, A-Z, 0-9 and `-`. Found: `my.bucket`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:my.bucket")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with invalid arn - access point name contains sub resources" do
        let(:expected) do
          {error: "Invalid ARN: The ARN may only contain a single resource component after `accesspoint`."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: true, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint:mybucket:object:foo")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "object lambda with custom endpoint" do
        let(:expected) do
          {
            url: 'https://mybanner-123456789012.my-endpoint.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_arn_region: false, bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner", endpoint: "https://my-endpoint.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://my-endpoint.com"
          config[:use_arn_region] = false

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
          client.get_object({
            bucket: "arn:aws:s3-object-lambda:us-west-2:123456789012:accesspoint/mybanner",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "object lambda arn with region mismatch and UseArnRegion=false" do
        let(:expected) do
          {error: "Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner", force_path_style: false, use_arn_region: false, region: "us-west-2", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:use_arn_region] = false

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "arn:aws:s3-object-lambda:us-east-1:123456789012:accesspoint/mybanner",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Invalid configuration: region from ARN `us-east-1` does not match client region `us-west-2` and UseArnRegion is `false`')
        end
      end

      context "WriteGetObjectResponse @ us-west-2" do
        let(:expected) do
          {
            url: 'https://s3-object-lambda.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling write_get_object_response' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"

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
          client.write_get_object_response({
            request_route: "RequestRoute",
            request_token: "RequestToken"
          }, interceptors: [interceptor])
        end
      end

      context "WriteGetObjectResponse with custom endpoint" do
        let(:expected) do
          {
            url: 'https://my-endpoint.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, endpoint: "https://my-endpoint.com", region: "us-west-2", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling write_get_object_response' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://my-endpoint.com"

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
          client.write_get_object_response({
            request_route: "RequestRoute",
            request_token: "RequestToken"
          }, interceptors: [interceptor])
        end
      end

      context "WriteGetObjectResponse @ us-east-1" do
        let(:expected) do
          {
            url: 'https://s3-object-lambda.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling write_get_object_response' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.write_get_object_response({
            request_route: "RequestRoute",
            request_token: "RequestToken"
          }, interceptors: [interceptor])
        end
      end

      context "WriteGetObjectResponse with fips" do
        let(:expected) do
          {
            url: 'https://s3-object-lambda-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: false, use_fips: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling write_get_object_response' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true

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
          client.write_get_object_response({
            request_route: "RequestRoute",
            request_token: "RequestToken"
          }, interceptors: [interceptor])
        end
      end

      context "WriteGetObjectResponse with dualstack" do
        let(:expected) do
          {error: "S3 Object Lambda does not support Dual-stack"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: true, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling write_get_object_response' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true

          client = Client.new(config)
          expect do
            client.write_get_object_response({
              request_route: "RequestRoute",
              request_token: "RequestToken"
            })
          end.to raise_error(ArgumentError, 'S3 Object Lambda does not support Dual-stack')
        end
      end

      context "WriteGetObjectResponse with accelerate" do
        let(:expected) do
          {error: "S3 Object Lambda does not support S3 Accelerate"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: true, use_object_lambda_endpoint: true, region: "us-east-1", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "WriteGetObjectResponse with fips in CN" do
        let(:expected) do
          {error: "Partition does not support FIPS"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, region: "cn-north-1", use_object_lambda_endpoint: true, use_dual_stack: false, use_fips: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "WriteGetObjectResponse with invalid partition" do
        let(:expected) do
          {error: "Invalid region: region was not a valid DNS name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, region: "not a valid DNS name", use_dual_stack: false, use_fips: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "WriteGetObjectResponse with an unknown partition" do
        let(:expected) do
          {
            url: 'https://s3-object-lambda.us-east.special.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(accelerate: false, use_object_lambda_endpoint: true, region: "us-east.special", use_dual_stack: false, use_fips: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias Real Outpost Prod us-west-1" do
        let(:expected) do
          {
            url: 'https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.op-0b1d075431d83bebd.s3-outposts.us-west-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias Real Outpost Prod ap-east-1" do
        let(:expected) do
          {
            url: 'https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.op-0b1d075431d83bebd.s3-outposts.ap-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-east-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias Ec2 Outpost Prod us-east-1" do
        let(:expected) do
          {
            url: 'https://test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.ec2.s3-outposts.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias Ec2 Outpost Prod me-south-1" do
        let(:expected) do
          {
            url: 'https://test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3.ec2.s3-outposts.me-south-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "me-south-1", bucket: "test-accessp-e0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias Real Outpost Beta" do
        let(:expected) do
          {
            url: 'https://test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3.op-0b1d075431d83bebd.example.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3", endpoint: "https://example.amazonaws.com", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias Ec2 Outpost Beta" do
        let(:expected) do
          {
            url: 'https://161743052723-e00000136899934034jeahy1t8gpzpbwjj8kb7beta0--op-s3.ec2.example.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "161743052723-e00000136899934034jeahy1t8gpzpbwjj8kb7beta0--op-s3", endpoint: "https://example.amazonaws.com", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Outposts bucketAlias - No endpoint set for beta" do
        let(:expected) do
          {error: "Expected a endpoint to be specified but no endpoint was found"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "test-accessp-o0b1d075431d83bebde8xz5w8ijx1qzlbp3i3kbeta0--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "S3 Outposts bucketAlias Invalid hardware type" do
        let(:expected) do
          {error: "Unrecognized hardware type: \"Expected hardware type o or e but got h\""}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "test-accessp-h0000075431d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "S3 Outposts bucketAlias Special character in Outpost Arn" do
        let(:expected) do
          {error: "Invalid ARN: The outpost Id must only contain a-z, A-Z, 0-9 and `-`."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "test-accessp-o00000754%1d83bebde8xz5w8ijx1qzlbp3i3kuse10--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "S3 Outposts bucketAlias - No endpoint set for beta" do
        let(:expected) do
          {error: "Expected a endpoint to be specified but no endpoint was found"}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "test-accessp-e0b1d075431d83bebde8xz5w8ijx1qzlbp3i3ebeta0--op-s3", use_fips: false, use_dual_stack: false, accelerate: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end

      context "S3 Snow with bucket" do
        let(:expected) do
          {
            url: 'http://10.0.1.12:433/bucketName',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "snow", bucket: "bucketName", endpoint: "http://10.0.1.12:433", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Snow without bucket" do
        let(:expected) do
          {
            url: 'https://10.0.1.12:433',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "snow", endpoint: "https://10.0.1.12:433", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Snow no port" do
        let(:expected) do
          {
            url: 'http://10.0.1.12/bucketName',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "snow", bucket: "bucketName", endpoint: "http://10.0.1.12", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "S3 Snow dns endpoint" do
        let(:expected) do
          {
            url: 'https://amazonaws.com/bucketName',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "snow", bucket: "bucketName", endpoint: "https://amazonaws.com", use_fips: false, use_dual_stack: false, accelerate: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Data Plane with short AZ" do
        let(:expected) do
          {
            url: 'https://mybucket--use1-az1--x-s3.s3express-use1-az1.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--use1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.get_object({
            bucket: "mybucket--use1-az1--x-s3",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Data Plane with short AZ fips" do
        let(:expected) do
          {
            url: 'https://mybucket--use1-az1--x-s3.s3express-fips-use1-az1.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--use1-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "mybucket--use1-az1--x-s3",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Data Plane with long AZ" do
        let(:expected) do
          {
            url: 'https://mybucket--apne1-az1--x-s3.s3express-apne1-az1.ap-northeast-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-1", bucket: "mybucket--apne1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ap-northeast-1"

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
          client.get_object({
            bucket: "mybucket--apne1-az1--x-s3",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Data Plane with long AZ fips" do
        let(:expected) do
          {
            url: 'https://mybucket--apne1-az1--x-s3.s3express-fips-apne1-az1.ap-northeast-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-1", bucket: "mybucket--apne1-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "ap-northeast-1"
          config[:use_fips_endpoint] = true

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
          client.get_object({
            bucket: "mybucket--apne1-az1--x-s3",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Control plane with short AZ bucket" do
        let(:expected) do
          {
            url: 'https://s3express-control.us-east-1.amazonaws.com/mybucket--use1-az1--x-s3',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--use1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling create_bucket' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.create_bucket({
            bucket: "mybucket--use1-az1--x-s3"
          }, interceptors: [interceptor])
        end
      end

      context "Control plane with short AZ bucket and fips" do
        let(:expected) do
          {
            url: 'https://s3express-control-fips.us-east-1.amazonaws.com/mybucket--use1-az1--x-s3',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--use1-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling create_bucket' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true

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
          client.create_bucket({
            bucket: "mybucket--use1-az1--x-s3"
          }, interceptors: [interceptor])
        end
      end

      context "Control plane without bucket" do
        let(:expected) do
          {
            url: 'https://s3express-control.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_directory_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

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
          client.list_directory_buckets({}, interceptors: [interceptor])
        end
      end

      context "Control plane without bucket and fips" do
        let(:expected) do
          {
            url: 'https://s3express-control-fips.us-east-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: false)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling list_directory_buckets' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_fips_endpoint] = true

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
          client.list_directory_buckets({}, interceptors: [interceptor])
        end
      end

      context "Data Plane sigv4 auth with short AZ" do
        let(:expected) do
          {
            url: 'https://mybucket--usw2-az1--x-s3.s3express-usw2-az1.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Data Plane sigv4 auth with short AZ fips" do
        let(:expected) do
          {
            url: 'https://mybucket--usw2-az1--x-s3.s3express-fips-usw2-az1.us-west-2.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, disable_s3_express_session_auth: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Data Plane sigv4 auth with long AZ" do
        let(:expected) do
          {
            url: 'https://mybucket--apne1-az1--x-s3.s3express-apne1-az1.ap-northeast-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-1", bucket: "mybucket--apne1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Data Plane sigv4 auth with long AZ fips" do
        let(:expected) do
          {
            url: 'https://mybucket--apne1-az1--x-s3.s3express-fips-apne1-az1.ap-northeast-1.amazonaws.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "ap-northeast-1", bucket: "mybucket--apne1-az1--x-s3", use_fips: true, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true)
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Control Plane host override" do
        let(:expected) do
          {
            url: 'https://mybucket--usw2-az1--x-s3.custom.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://custom.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Control Plane host override no bucket" do
        let(:expected) do
          {
            url: 'https://custom.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://custom.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Data plane host override non virtual session auth" do
        let(:expected) do
          {
            url: 'https://10.0.0.1/mybucket--usw2-az1--x-s3',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://10.0.0.1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://10.0.0.1"

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
          client.get_object({
            bucket: "mybucket--usw2-az1--x-s3",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "Control Plane host override ip" do
        let(:expected) do
          {
            url: 'https://10.0.0.1/mybucket--usw2-az1--x-s3',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: true, disable_s3_express_session_auth: true, endpoint: "https://10.0.0.1")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end
      end

      context "Data plane host override" do
        let(:expected) do
          {
            url: 'https://mybucket--usw2-az1--x-s3.custom.com',
            headers: {},
            auth_schemes: []
          }
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "mybucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com")
          endpoint = subject.resolve(params)
          expect(endpoint.uri).to eq(expected[:url])
          expect(endpoint.headers).to eq(expected[:headers])
          expect(endpoint.auth_schemes).to eq(expected[:auth_schemes])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://custom.com"

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
          client.get_object({
            bucket: "mybucket--usw2-az1--x-s3",
            key: "key"
          }, interceptors: [interceptor])
        end
      end

      context "bad format error" do
        let(:expected) do
          {error: "Unrecognized S3Express bucket name format."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--usaz1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "mybucket--usaz1--x-s3",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Unrecognized S3Express bucket name format.')
        end
      end

      context "bad format error no session auth" do
        let(:expected) do
          {error: "Unrecognized S3Express bucket name format."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--usaz1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false, disable_s3_express_session_auth: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "mybucket--usaz1--x-s3",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'Unrecognized S3Express bucket name format.')
        end
      end

      context "dual-stack error" do
        let(:expected) do
          {error: "S3Express does not support Dual-stack."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--use1-az1--x-s3", use_fips: false, use_dual_stack: true, accelerate: false, use_s3_express_control_endpoint: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_dualstack_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "mybucket--use1-az1--x-s3",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3Express does not support Dual-stack.')
        end
      end

      context "accelerate error" do
        let(:expected) do
          {error: "S3Express does not support S3 Accelerate."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "mybucket--use1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: true, use_s3_express_control_endpoint: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"
          config[:use_accelerate_endpoint] = true

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "mybucket--use1-az1--x-s3",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3Express does not support S3 Accelerate.')
        end
      end

      context "Data plane bucket format error" do
        let(:expected) do
          {error: "S3Express bucket name is not a valid virtual hostable name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-east-1", bucket: "my.bucket--use1-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, use_s3_express_control_endpoint: false)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-east-1"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "my.bucket--use1-az1--x-s3",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3Express bucket name is not a valid virtual hostable name.')
        end
      end

      context "host override data plane bucket error session auth" do
        let(:expected) do
          {error: "S3Express bucket name is not a valid virtual hostable name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "my.bucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com")
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end

        it 'produces the correct output from the client when calling get_object' do
          config = {}
          config[:stub_responses] = true
          config[:endpoint] = nil
          config[:region] = "us-west-2"
          config[:endpoint] = "https://custom.com"

          client = Client.new(config)
          expect do
            client.get_object({
              bucket: "my.bucket--usw2-az1--x-s3",
              key: "key"
            })
          end.to raise_error(ArgumentError, 'S3Express bucket name is not a valid virtual hostable name.')
        end
      end

      context "host override data plane bucket error" do
        let(:expected) do
          {error: "S3Express bucket name is not a valid virtual hostable name."}
        end

        it 'produces the expected output from the EndpointResolver' do
          params = Params.new(region: "us-west-2", bucket: "my.bucket--usw2-az1--x-s3", use_fips: false, use_dual_stack: false, accelerate: false, endpoint: "https://custom.com", disable_s3_express_session_auth: true)
          expect do
            subject.resolve(params)
          end.to raise_error(ArgumentError, expected[:error])
        end
      end
    end
  end
end
