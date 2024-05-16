# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSOOIDC
  module Endpoint
    Params = ::Struct.new(
      :region,
      :use_dual_stack,
      :use_fips,
      :endpoint,
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
                return Hearth::EndpointRules::Endpoint.new(uri: "https://oidc-fips.#{region}.#{partition_result['dualStackDnsSuffix']}")
              end
              raise ArgumentError, "FIPS and DualStack are enabled, but this partition does not support one or both"
            end
            if use_fips == true
              if partition_result['supportsFIPS'] == true
                if partition_result['name'] == "aws-us-gov"
                  return Hearth::EndpointRules::Endpoint.new(uri: "https://oidc.#{region}.amazonaws.com")
                end
                return Hearth::EndpointRules::Endpoint.new(uri: "https://oidc-fips.#{region}.#{partition_result['dnsSuffix']}")
              end
              raise ArgumentError, "FIPS is enabled but this partition does not support FIPS"
            end
            if use_dual_stack == true
              if true == partition_result['supportsDualStack']
                return Hearth::EndpointRules::Endpoint.new(uri: "https://oidc.#{region}.#{partition_result['dualStackDnsSuffix']}")
              end
              raise ArgumentError, "DualStack is enabled but this partition does not support DualStack"
            end
            return Hearth::EndpointRules::Endpoint.new(uri: "https://oidc.#{region}.#{partition_result['dnsSuffix']}")
          end
        end
        raise ArgumentError, "Invalid Configuration: Missing Region"

      end
    end

    module Parameters

      class CreateToken
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class CreateTokenWithIAM
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class RegisterClient
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class StartDeviceAuthorization
        def self.build(config, input, context)
          params = Params.new
          params.region = config[:region] unless config[:region].nil?
          params.use_dual_stack = config[:use_dualstack_endpoint] unless config[:use_dualstack_endpoint].nil?
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end
    end

  end
end
