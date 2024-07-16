# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kinesis
  module Endpoint
    Params = ::Struct.new(
      :region,
      :use_dual_stack,
      :use_fips,
      :endpoint,
      :stream_arn,
      :operation_type,
      :consumer_arn,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.use_dual_stack = false if self.use_dual_stack.nil?
        self.use_fips = false if self.use_fips.nil?
      end
    end

    class Resolver
      def resolve(params)
        region = params.region
        use_dual_stack = params.use_dual_stack
        use_fips = params.use_fips
        endpoint = params.endpoint
        stream_arn = params.stream_arn
        operation_type = params.operation_type
        consumer_arn = params.consumer_arn
        resource_arn = params.resource_arn

        if stream_arn != nil && endpoint.nil? && region != nil && (partition_result = AWS::SDK::Core::EndpointRules.partition(region)) && partition_result['name'] != "aws-iso" && partition_result['name'] != "aws-iso-b"
          if (arn = AWS::SDK::Core::EndpointRules.parse_arn(stream_arn))
            if Hearth::EndpointRules::valid_host_label?(arn['accountId'], false)
              if Hearth::EndpointRules::valid_host_label?(arn['region'], false)
                if arn['service'] == "kinesis"
                  if (arn_type = arn['resourceId'][0]) && arn_type != ""
                    if arn_type == "stream"
                      if partition_result['name'] == arn['partition']
                        if operation_type != nil
                          if use_fips == true && use_dual_stack == true
                            if partition_result['supportsFIPS'] == true
                              if partition_result['supportsDualStack'] == true
                                return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}")
                              end
                              raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                            end
                            raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                          end
                          if use_fips == true
                            if partition_result['supportsFIPS'] == true
                              return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dnsSuffix']}")
                            end
                            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                          end
                          if use_dual_stack == true
                            if partition_result['supportsDualStack'] == true
                              return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}")
                            end
                            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                          end
                          return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dnsSuffix']}")
                        end
                        raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                      end
                      raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                    end
                    raise ArgumentError, "Invalid ARN: Kinesis ARNs don't support `#{arn_type}` arn types."
                  end
                  raise ArgumentError, "Invalid ARN: No ARN type specified"
                end
                raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
              end
              raise ArgumentError, "Invalid ARN: Invalid region."
            end
            raise ArgumentError, "Invalid ARN: Invalid account id."
          end
          raise ArgumentError, "Invalid ARN: Failed to parse ARN."
        end
        if consumer_arn != nil && endpoint.nil? && region != nil && (partition_result = AWS::SDK::Core::EndpointRules.partition(region)) && partition_result['name'] != "aws-iso" && partition_result['name'] != "aws-iso-b"
          if (arn = AWS::SDK::Core::EndpointRules.parse_arn(consumer_arn))
            if Hearth::EndpointRules::valid_host_label?(arn['accountId'], false)
              if Hearth::EndpointRules::valid_host_label?(arn['region'], false)
                if arn['service'] == "kinesis"
                  if (arn_type = arn['resourceId'][0]) && arn_type != ""
                    if arn_type == "stream"
                      if partition_result['name'] == arn['partition']
                        if operation_type != nil
                          if use_fips == true && use_dual_stack == true
                            if partition_result['supportsFIPS'] == true
                              if partition_result['supportsDualStack'] == true
                                return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}")
                              end
                              raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                            end
                            raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                          end
                          if use_fips == true
                            if partition_result['supportsFIPS'] == true
                              return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dnsSuffix']}")
                            end
                            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                          end
                          if use_dual_stack == true
                            if partition_result['supportsDualStack'] == true
                              return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}")
                            end
                            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                          end
                          return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dnsSuffix']}")
                        end
                        raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                      end
                      raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                    end
                    raise ArgumentError, "Invalid ARN: Kinesis ARNs don't support `#{arn_type}` arn types."
                  end
                  raise ArgumentError, "Invalid ARN: No ARN type specified"
                end
                raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
              end
              raise ArgumentError, "Invalid ARN: Invalid region."
            end
            raise ArgumentError, "Invalid ARN: Invalid account id."
          end
          raise ArgumentError, "Invalid ARN: Failed to parse ARN."
        end
        if resource_arn != nil && endpoint.nil? && region != nil && (partition_result = AWS::SDK::Core::EndpointRules.partition(region)) && partition_result['name'] != "aws-iso" && partition_result['name'] != "aws-iso-b"
          if (arn = AWS::SDK::Core::EndpointRules.parse_arn(resource_arn))
            if Hearth::EndpointRules::valid_host_label?(arn['accountId'], false)
              if Hearth::EndpointRules::valid_host_label?(arn['region'], false)
                if arn['service'] == "kinesis"
                  if (arn_type = arn['resourceId'][0]) && arn_type != ""
                    if arn_type == "stream"
                      if partition_result['name'] == arn['partition']
                        if operation_type != nil
                          if use_fips == true && use_dual_stack == true
                            if partition_result['supportsFIPS'] == true
                              if partition_result['supportsDualStack'] == true
                                return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}")
                              end
                              raise ArgumentError, "DualStack is enabled, but this partition does not support DualStack."
                            end
                            raise ArgumentError, "FIPS is enabled, but this partition does not support FIPS."
                          end
                          if use_fips == true
                            if partition_result['supportsFIPS'] == true
                              return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis-fips.#{region}.#{partition_result['dnsSuffix']}")
                            end
                            raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
                          end
                          if use_dual_stack == true
                            if partition_result['supportsDualStack'] == true
                              return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}")
                            end
                            raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
                          end
                          return Hearth::EndpointRules::Endpoint.new(uri: "https://#{arn['accountId']}.#{operation_type}-kinesis.#{region}.#{partition_result['dnsSuffix']}")
                        end
                        raise ArgumentError, "Operation Type is not set. Please contact service team for resolution."
                      end
                      raise ArgumentError, "Partition: #{arn['partition']} from ARN doesn't match with partition name: #{partition_result['name']}."
                    end
                    raise ArgumentError, "Invalid ARN: Kinesis ARNs don't support `#{arn_type}` arn types."
                  end
                  raise ArgumentError, "Invalid ARN: No ARN type specified"
                end
                raise ArgumentError, "Invalid ARN: The ARN was not for the Kinesis service, found: #{arn['service']}."
              end
              raise ArgumentError, "Invalid ARN: Invalid region."
            end
            raise ArgumentError, "Invalid ARN: Invalid account id."
          end
          raise ArgumentError, "Invalid ARN: Failed to parse ARN."
        end
        if endpoint != nil
          if use_fips == true
            raise ArgumentError, "Invalid Configuration: FIPS and custom endpoint are not supported"
          end
          if use_dual_stack == true
            raise ArgumentError, "Invalid Configuration: Dualstack and custom endpoint are not supported"
          end
          return Hearth::EndpointRules::Endpoint.new(uri: endpoint)
        end
        if region != nil
          if (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
            if use_fips == true && use_dual_stack == true
              if true == partition_result['supportsFIPS'] && true == partition_result['supportsDualStack']
                return Hearth::EndpointRules::Endpoint.new(uri: "https://kinesis-fips.#{region}.#{partition_result['dualStackDnsSuffix']}")
              end
              raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
            end
            if use_fips == true
              if partition_result['supportsFIPS'] == true
                if partition_result['name'] == "aws-us-gov"
                  return Hearth::EndpointRules::Endpoint.new(uri: "https://kinesis.#{region}.amazonaws.com")
                end
                return Hearth::EndpointRules::Endpoint.new(uri: "https://kinesis-fips.#{region}.#{partition_result['dnsSuffix']}")
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if use_dual_stack == true
              if true == partition_result['supportsDualStack']
                return Hearth::EndpointRules::Endpoint.new(uri: "https://kinesis.#{region}.#{partition_result['dualStackDnsSuffix']}")
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Hearth::EndpointRules::Endpoint.new(uri: "https://kinesis.#{region}.#{partition_result['dnsSuffix']}")
          end
        end
        raise ArgumentError, "Invalid Configuration: Missing Region"

      end
    end

    module Parameters

      class AddTagsToStream
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class CreateStream
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DecreaseStreamRetentionPeriod
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class DeleteResourcePolicy
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.operation_type = 'control'
          params.resource_arn = input.resource_arn unless input.resource_arn.nil?
          params
        end
      end

      class DeleteStream
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class DeregisterStreamConsumer
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params.consumer_arn = input.consumer_arn unless input.consumer_arn.nil?
          params
        end
      end

      class DescribeLimits
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DescribeStream
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class DescribeStreamConsumer
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params.consumer_arn = input.consumer_arn unless input.consumer_arn.nil?
          params
        end
      end

      class DescribeStreamSummary
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class DisableEnhancedMonitoring
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class EnableEnhancedMonitoring
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class GetRecords
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'data'
          params
        end
      end

      class GetResourcePolicy
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.operation_type = 'control'
          params.resource_arn = input.resource_arn unless input.resource_arn.nil?
          params
        end
      end

      class GetShardIterator
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'data'
          params
        end
      end

      class IncreaseStreamRetentionPeriod
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class ListShards
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class ListStreamConsumers
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class ListStreams
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListTagsForStream
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class MergeShards
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class PutRecord
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'data'
          params
        end
      end

      class PutRecords
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'data'
          params
        end
      end

      class PutResourcePolicy
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.operation_type = 'control'
          params.resource_arn = input.resource_arn unless input.resource_arn.nil?
          params
        end
      end

      class RegisterStreamConsumer
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class RemoveTagsFromStream
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class SplitShard
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class StartStreamEncryption
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class StopStreamEncryption
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class SubscribeToShard
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.operation_type = 'data'
          params.consumer_arn = input.consumer_arn unless input.consumer_arn.nil?
          params
        end
      end

      class UpdateShardCount
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end

      class UpdateStreamMode
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params.stream_arn = input.stream_arn unless input.stream_arn.nil?
          params.operation_type = 'control'
          params
        end
      end
    end

  end
end
