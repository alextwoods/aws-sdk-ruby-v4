# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::MigrationHubRefactorSpaces
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AdditionalDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ApiGatewayProxyConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiGatewayProxyConfig, context: context)
        type = Types::ApiGatewayProxyConfig.new
        type.proxy_url = params[:proxy_url]
        type.api_gateway_id = params[:api_gateway_id]
        type.vpc_link_id = params[:vpc_link_id]
        type.nlb_arn = params[:nlb_arn]
        type.nlb_name = params[:nlb_name]
        type.endpoint_type = params[:endpoint_type]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module ApiGatewayProxyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiGatewayProxyInput, context: context)
        type = Types::ApiGatewayProxyInput.new
        type.endpoint_type = params[:endpoint_type]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module ApiGatewayProxySummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiGatewayProxySummary, context: context)
        type = Types::ApiGatewayProxySummary.new
        type.proxy_url = params[:proxy_url]
        type.api_gateway_id = params[:api_gateway_id]
        type.vpc_link_id = params[:vpc_link_id]
        type.nlb_arn = params[:nlb_arn]
        type.nlb_name = params[:nlb_name]
        type.endpoint_type = params[:endpoint_type]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module ApplicationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApplicationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApplicationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApplicationSummary, context: context)
        type = Types::ApplicationSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.vpc_id = params[:vpc_id]
        type.proxy_type = params[:proxy_type]
        type.api_gateway_proxy = ApiGatewayProxySummary.build(params[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless params[:api_gateway_proxy].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module CidrBlocks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationInput, context: context)
        type = Types::CreateApplicationInput.new
        type.name = params[:name]
        type.environment_identifier = params[:environment_identifier]
        type.vpc_id = params[:vpc_id]
        type.proxy_type = params[:proxy_type]
        type.api_gateway_proxy = ApiGatewayProxyInput.build(params[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless params[:api_gateway_proxy].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApplicationOutput, context: context)
        type = Types::CreateApplicationOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.vpc_id = params[:vpc_id]
        type.proxy_type = params[:proxy_type]
        type.api_gateway_proxy = ApiGatewayProxyInput.build(params[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless params[:api_gateway_proxy].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module CreateEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentInput, context: context)
        type = Types::CreateEnvironmentInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.network_fabric_type = params[:network_fabric_type]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEnvironmentOutput, context: context)
        type = Types::CreateEnvironmentOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.environment_id = params[:environment_id]
        type.network_fabric_type = params[:network_fabric_type]
        type.owner_account_id = params[:owner_account_id]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module CreateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteInput, context: context)
        type = Types::CreateRouteInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.service_identifier = params[:service_identifier]
        type.route_type = params[:route_type]
        type.uri_path_route = UriPathRouteInput.build(params[:uri_path_route], context: "#{context}[:uri_path_route]") unless params[:uri_path_route].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteOutput, context: context)
        type = Types::CreateRouteOutput.new
        type.route_id = params[:route_id]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.route_type = params[:route_type]
        type.service_id = params[:service_id]
        type.application_id = params[:application_id]
        type.uri_path_route = UriPathRouteInput.build(params[:uri_path_route], context: "#{context}[:uri_path_route]") unless params[:uri_path_route].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module CreateServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceInput, context: context)
        type = Types::CreateServiceInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.vpc_id = params[:vpc_id]
        type.endpoint_type = params[:endpoint_type]
        type.url_endpoint = UrlEndpointInput.build(params[:url_endpoint], context: "#{context}[:url_endpoint]") unless params[:url_endpoint].nil?
        type.lambda_endpoint = LambdaEndpointInput.build(params[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless params[:lambda_endpoint].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || SecureRandom.uuid
        type
      end
    end

    module CreateServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateServiceOutput, context: context)
        type = Types::CreateServiceOutput.new
        type.service_id = params[:service_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.description = params[:description]
        type.environment_id = params[:environment_id]
        type.application_id = params[:application_id]
        type.vpc_id = params[:vpc_id]
        type.endpoint_type = params[:endpoint_type]
        type.url_endpoint = UrlEndpointInput.build(params[:url_endpoint], context: "#{context}[:url_endpoint]") unless params[:url_endpoint].nil?
        type.lambda_endpoint = LambdaEndpointInput.build(params[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless params[:lambda_endpoint].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module DeleteApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationInput, context: context)
        type = Types::DeleteApplicationInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type
      end
    end

    module DeleteApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApplicationOutput, context: context)
        type = Types::DeleteApplicationOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.state = params[:state]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DeleteEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentInput, context: context)
        type = Types::DeleteEnvironmentInput.new
        type.environment_identifier = params[:environment_identifier]
        type
      end
    end

    module DeleteEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEnvironmentOutput, context: context)
        type = Types::DeleteEnvironmentOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.environment_id = params[:environment_id]
        type.state = params[:state]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DeleteResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyInput, context: context)
        type = Types::DeleteResourcePolicyInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module DeleteResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourcePolicyOutput, context: context)
        type = Types::DeleteResourcePolicyOutput.new
        type
      end
    end

    module DeleteRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteInput, context: context)
        type = Types::DeleteRouteInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.route_identifier = params[:route_identifier]
        type
      end
    end

    module DeleteRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteOutput, context: context)
        type = Types::DeleteRouteOutput.new
        type.route_id = params[:route_id]
        type.arn = params[:arn]
        type.service_id = params[:service_id]
        type.application_id = params[:application_id]
        type.state = params[:state]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module DeleteServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceInput, context: context)
        type = Types::DeleteServiceInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.service_identifier = params[:service_identifier]
        type
      end
    end

    module DeleteServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteServiceOutput, context: context)
        type = Types::DeleteServiceOutput.new
        type.service_id = params[:service_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.environment_id = params[:environment_id]
        type.application_id = params[:application_id]
        type.state = params[:state]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module EnvironmentSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EnvironmentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentSummary, context: context)
        type = Types::EnvironmentSummary.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.environment_id = params[:environment_id]
        type.network_fabric_type = params[:network_fabric_type]
        type.owner_account_id = params[:owner_account_id]
        type.transit_gateway_id = params[:transit_gateway_id]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module EnvironmentVpc
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnvironmentVpc, context: context)
        type = Types::EnvironmentVpc.new
        type.environment_id = params[:environment_id]
        type.vpc_id = params[:vpc_id]
        type.account_id = params[:account_id]
        type.cidr_blocks = CidrBlocks.build(params[:cidr_blocks], context: "#{context}[:cidr_blocks]") unless params[:cidr_blocks].nil?
        type.vpc_name = params[:vpc_name]
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module EnvironmentVpcs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EnvironmentVpc.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ErrorResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorResponse, context: context)
        type = Types::ErrorResponse.new
        type.code = params[:code]
        type.message = params[:message]
        type.account_id = params[:account_id]
        type.resource_identifier = params[:resource_identifier]
        type.resource_type = params[:resource_type]
        type.additional_details = AdditionalDetails.build(params[:additional_details], context: "#{context}[:additional_details]") unless params[:additional_details].nil?
        type
      end
    end

    module GetApplicationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationInput, context: context)
        type = Types::GetApplicationInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type
      end
    end

    module GetApplicationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApplicationOutput, context: context)
        type = Types::GetApplicationOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.vpc_id = params[:vpc_id]
        type.proxy_type = params[:proxy_type]
        type.api_gateway_proxy = ApiGatewayProxyConfig.build(params[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless params[:api_gateway_proxy].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module GetEnvironmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentInput, context: context)
        type = Types::GetEnvironmentInput.new
        type.environment_identifier = params[:environment_identifier]
        type
      end
    end

    module GetEnvironmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEnvironmentOutput, context: context)
        type = Types::GetEnvironmentOutput.new
        type.name = params[:name]
        type.arn = params[:arn]
        type.description = params[:description]
        type.environment_id = params[:environment_id]
        type.network_fabric_type = params[:network_fabric_type]
        type.owner_account_id = params[:owner_account_id]
        type.transit_gateway_id = params[:transit_gateway_id]
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module GetResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyInput, context: context)
        type = Types::GetResourcePolicyInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module GetResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcePolicyOutput, context: context)
        type = Types::GetResourcePolicyOutput.new
        type.policy = params[:policy]
        type
      end
    end

    module GetRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteInput, context: context)
        type = Types::GetRouteInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.route_identifier = params[:route_identifier]
        type
      end
    end

    module GetRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteOutput, context: context)
        type = Types::GetRouteOutput.new
        type.route_id = params[:route_id]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.route_type = params[:route_type]
        type.service_id = params[:service_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.source_path = params[:source_path]
        type.member_methods = HttpMethods.build(params[:member_methods], context: "#{context}[:member_methods]") unless params[:member_methods].nil?
        type.include_child_paths = params[:include_child_paths]
        type.path_resource_to_id = PathResourceToId.build(params[:path_resource_to_id], context: "#{context}[:path_resource_to_id]") unless params[:path_resource_to_id].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module GetServiceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceInput, context: context)
        type = Types::GetServiceInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.service_identifier = params[:service_identifier]
        type
      end
    end

    module GetServiceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetServiceOutput, context: context)
        type = Types::GetServiceOutput.new
        type.service_id = params[:service_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.description = params[:description]
        type.environment_id = params[:environment_id]
        type.application_id = params[:application_id]
        type.vpc_id = params[:vpc_id]
        type.endpoint_type = params[:endpoint_type]
        type.url_endpoint = UrlEndpointConfig.build(params[:url_endpoint], context: "#{context}[:url_endpoint]") unless params[:url_endpoint].nil?
        type.lambda_endpoint = LambdaEndpointConfig.build(params[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless params[:lambda_endpoint].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module HttpMethods
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourcePolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourcePolicyException, context: context)
        type = Types::InvalidResourcePolicyException.new
        type.message = params[:message]
        type
      end
    end

    module LambdaEndpointConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaEndpointConfig, context: context)
        type = Types::LambdaEndpointConfig.new
        type.arn = params[:arn]
        type
      end
    end

    module LambdaEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaEndpointInput, context: context)
        type = Types::LambdaEndpointInput.new
        type.arn = params[:arn]
        type
      end
    end

    module LambdaEndpointSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaEndpointSummary, context: context)
        type = Types::LambdaEndpointSummary.new
        type.arn = params[:arn]
        type
      end
    end

    module ListApplicationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsInput, context: context)
        type = Types::ListApplicationsInput.new
        type.environment_identifier = params[:environment_identifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApplicationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApplicationsOutput, context: context)
        type = Types::ListApplicationsOutput.new
        type.application_summary_list = ApplicationSummaries.build(params[:application_summary_list], context: "#{context}[:application_summary_list]") unless params[:application_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentVpcsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentVpcsInput, context: context)
        type = Types::ListEnvironmentVpcsInput.new
        type.environment_identifier = params[:environment_identifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentVpcsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentVpcsOutput, context: context)
        type = Types::ListEnvironmentVpcsOutput.new
        type.environment_vpc_list = EnvironmentVpcs.build(params[:environment_vpc_list], context: "#{context}[:environment_vpc_list]") unless params[:environment_vpc_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEnvironmentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsInput, context: context)
        type = Types::ListEnvironmentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEnvironmentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEnvironmentsOutput, context: context)
        type = Types::ListEnvironmentsOutput.new
        type.environment_summary_list = EnvironmentSummaries.build(params[:environment_summary_list], context: "#{context}[:environment_summary_list]") unless params[:environment_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutesInput, context: context)
        type = Types::ListRoutesInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRoutesOutput, context: context)
        type = Types::ListRoutesOutput.new
        type.route_summary_list = RouteSummaries.build(params[:route_summary_list], context: "#{context}[:route_summary_list]") unless params[:route_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListServicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesInput, context: context)
        type = Types::ListServicesInput.new
        type.environment_identifier = params[:environment_identifier]
        type.application_identifier = params[:application_identifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListServicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListServicesOutput, context: context)
        type = Types::ListServicesOutput.new
        type.service_summary_list = ServiceSummaries.build(params[:service_summary_list], context: "#{context}[:service_summary_list]") unless params[:service_summary_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PathResourceToId
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PutResourcePolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyInput, context: context)
        type = Types::PutResourcePolicyInput.new
        type.resource_arn = params[:resource_arn]
        type.policy = params[:policy]
        type
      end
    end

    module PutResourcePolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutResourcePolicyOutput, context: context)
        type = Types::PutResourcePolicyOutput.new
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RouteSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RouteSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RouteSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteSummary, context: context)
        type = Types::RouteSummary.new
        type.route_id = params[:route_id]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.route_type = params[:route_type]
        type.service_id = params[:service_id]
        type.application_id = params[:application_id]
        type.environment_id = params[:environment_id]
        type.source_path = params[:source_path]
        type.member_methods = HttpMethods.build(params[:member_methods], context: "#{context}[:member_methods]") unless params[:member_methods].nil?
        type.include_child_paths = params[:include_child_paths]
        type.path_resource_to_id = PathResourceToId.build(params[:path_resource_to_id], context: "#{context}[:path_resource_to_id]") unless params[:path_resource_to_id].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module ServiceSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServiceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceSummary, context: context)
        type = Types::ServiceSummary.new
        type.service_id = params[:service_id]
        type.name = params[:name]
        type.arn = params[:arn]
        type.owner_account_id = params[:owner_account_id]
        type.created_by_account_id = params[:created_by_account_id]
        type.description = params[:description]
        type.environment_id = params[:environment_id]
        type.application_id = params[:application_id]
        type.vpc_id = params[:vpc_id]
        type.endpoint_type = params[:endpoint_type]
        type.url_endpoint = UrlEndpointSummary.build(params[:url_endpoint], context: "#{context}[:url_endpoint]") unless params[:url_endpoint].nil?
        type.lambda_endpoint = LambdaEndpointSummary.build(params[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless params[:lambda_endpoint].nil?
        type.state = params[:state]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.error = ErrorResponse.build(params[:error], context: "#{context}[:error]") unless params[:error].nil?
        type.last_updated_time = params[:last_updated_time]
        type.created_time = params[:created_time]
        type
      end
    end

    module TagKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type.retry_after_seconds = params[:retry_after_seconds]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeys.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UriPathRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UriPathRouteInput, context: context)
        type = Types::UriPathRouteInput.new
        type.source_path = params[:source_path]
        type.activation_state = params[:activation_state]
        type.member_methods = HttpMethods.build(params[:member_methods], context: "#{context}[:member_methods]") unless params[:member_methods].nil?
        type.include_child_paths = params[:include_child_paths]
        type
      end
    end

    module UrlEndpointConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UrlEndpointConfig, context: context)
        type = Types::UrlEndpointConfig.new
        type.url = params[:url]
        type.health_url = params[:health_url]
        type
      end
    end

    module UrlEndpointInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UrlEndpointInput, context: context)
        type = Types::UrlEndpointInput.new
        type.url = params[:url]
        type.health_url = params[:health_url]
        type
      end
    end

    module UrlEndpointSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UrlEndpointSummary, context: context)
        type = Types::UrlEndpointSummary.new
        type.url = params[:url]
        type.health_url = params[:health_url]
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
