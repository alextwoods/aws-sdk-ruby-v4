# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCatalyst
  module Endpoint
    class Params
      def initialize(use_fips: nil, region: nil, endpoint: nil)
        @use_fips = use_fips.nil? ? false : use_fips
        @region = region
        @endpoint = endpoint
      end

      attr_accessor :use_fips, :region, :endpoint
    end

    class Resolver
      def resolve(params)
        use_fips = params.use_fips
        region = params.region
        endpoint = params.endpoint

        if endpoint != nil
          return Hearth::EndpointRules::Endpoint.new(uri: endpoint)
        end
        if region.nil? && (partition_result = AWS::SDK::Core::EndpointRules.partition("us-west-2"))
          if use_fips == true
            if partition_result['supportsFIPS'] == false
              raise ArgumentError, "Partition does not support FIPS."
            end
            return Hearth::EndpointRules::Endpoint.new(uri: "https://codecatalyst-fips.global.#{partition_result['dualStackDnsSuffix']}")
          end
          return Hearth::EndpointRules::Endpoint.new(uri: "https://codecatalyst.global.#{partition_result['dualStackDnsSuffix']}")
        end
        if region != nil && (partition_result = AWS::SDK::Core::EndpointRules.partition(region))
          if use_fips == true
            if partition_result['supportsFIPS'] == false
              raise ArgumentError, "Partition does not support FIPS."
            end
            return Hearth::EndpointRules::Endpoint.new(uri: "https://codecatalyst-fips.global.#{partition_result['dualStackDnsSuffix']}")
          end
          return Hearth::EndpointRules::Endpoint.new(uri: "https://codecatalyst.global.#{partition_result['dualStackDnsSuffix']}")
        end

        raise ArgumentError, 'No endpoint could be resolved'
      end
    end

    module Parameters

      class CreateAccessToken
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class CreateDevEnvironment
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class CreateProject
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class CreateSourceRepository
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class CreateSourceRepositoryBranch
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DeleteAccessToken
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DeleteDevEnvironment
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DeleteProject
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DeleteSourceRepository
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class DeleteSpace
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetDevEnvironment
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetProject
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetSourceRepository
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetSourceRepositoryCloneUrls
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetSpace
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetSubscription
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetUserDetails
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetWorkflow
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class GetWorkflowRun
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListAccessTokens
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListDevEnvironments
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListDevEnvironmentSessions
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListEventLogs
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListProjects
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListSourceRepositories
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListSourceRepositoryBranches
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListSpaces
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListWorkflowRuns
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class ListWorkflows
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class StartDevEnvironment
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class StartDevEnvironmentSession
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class StartWorkflowRun
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class StopDevEnvironment
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class StopDevEnvironmentSession
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class UpdateDevEnvironment
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class UpdateProject
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class UpdateSpace
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end

      class VerifySession
        def self.build(config, input, context)
          params = Params.new
          params.use_fips = config[:use_fips_endpoint] unless config[:use_fips_endpoint].nil?
          params.region = config[:region] unless config[:region].nil?
          params.endpoint = config[:endpoint] unless config[:endpoint].nil?
          params
        end
      end
    end

  end
end
