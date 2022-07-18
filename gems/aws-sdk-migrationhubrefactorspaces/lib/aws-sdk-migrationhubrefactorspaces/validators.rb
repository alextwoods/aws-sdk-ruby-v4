# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::MigrationHubRefactorSpaces
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AdditionalDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ApiGatewayProxyConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiGatewayProxyConfig, context: context)
        Hearth::Validator.validate!(input[:proxy_url], ::String, context: "#{context}[:proxy_url]")
        Hearth::Validator.validate!(input[:api_gateway_id], ::String, context: "#{context}[:api_gateway_id]")
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        Hearth::Validator.validate!(input[:nlb_arn], ::String, context: "#{context}[:nlb_arn]")
        Hearth::Validator.validate!(input[:nlb_name], ::String, context: "#{context}[:nlb_name]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class ApiGatewayProxyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiGatewayProxyInput, context: context)
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class ApiGatewayProxySummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiGatewayProxySummary, context: context)
        Hearth::Validator.validate!(input[:proxy_url], ::String, context: "#{context}[:proxy_url]")
        Hearth::Validator.validate!(input[:api_gateway_id], ::String, context: "#{context}[:api_gateway_id]")
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        Hearth::Validator.validate!(input[:nlb_arn], ::String, context: "#{context}[:nlb_arn]")
        Hearth::Validator.validate!(input[:nlb_name], ::String, context: "#{context}[:nlb_name]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class ApplicationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApplicationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApplicationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApplicationSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:proxy_type], ::String, context: "#{context}[:proxy_type]")
        ApiGatewayProxySummary.validate!(input[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless input[:api_gateway_proxy].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class CidrBlocks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:proxy_type], ::String, context: "#{context}[:proxy_type]")
        ApiGatewayProxyInput.validate!(input[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless input[:api_gateway_proxy].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:proxy_type], ::String, context: "#{context}[:proxy_type]")
        ApiGatewayProxyInput.validate!(input[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless input[:api_gateway_proxy].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class CreateEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:network_fabric_type], ::String, context: "#{context}[:network_fabric_type]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:network_fabric_type], ::String, context: "#{context}[:network_fabric_type]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class CreateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:service_identifier], ::String, context: "#{context}[:service_identifier]")
        Hearth::Validator.validate!(input[:route_type], ::String, context: "#{context}[:route_type]")
        UriPathRouteInput.validate!(input[:uri_path_route], context: "#{context}[:uri_path_route]") unless input[:uri_path_route].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteOutput, context: context)
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:route_type], ::String, context: "#{context}[:route_type]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        UriPathRouteInput.validate!(input[:uri_path_route], context: "#{context}[:uri_path_route]") unless input[:uri_path_route].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class CreateServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        UrlEndpointInput.validate!(input[:url_endpoint], context: "#{context}[:url_endpoint]") unless input[:url_endpoint].nil?
        LambdaEndpointInput.validate!(input[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless input[:lambda_endpoint].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateServiceOutput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        UrlEndpointInput.validate!(input[:url_endpoint], context: "#{context}[:url_endpoint]") unless input[:url_endpoint].nil?
        LambdaEndpointInput.validate!(input[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless input[:lambda_endpoint].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class DeleteApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
      end
    end

    class DeleteApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DeleteEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
      end
    end

    class DeleteEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DeleteResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DeleteResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourcePolicyOutput, context: context)
      end
    end

    class DeleteRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:route_identifier], ::String, context: "#{context}[:route_identifier]")
      end
    end

    class DeleteRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteOutput, context: context)
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class DeleteServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:service_identifier], ::String, context: "#{context}[:service_identifier]")
      end
    end

    class DeleteServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteServiceOutput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class EnvironmentSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EnvironmentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:network_fabric_type], ::String, context: "#{context}[:network_fabric_type]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class EnvironmentVpc
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnvironmentVpc, context: context)
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        CidrBlocks.validate!(input[:cidr_blocks], context: "#{context}[:cidr_blocks]") unless input[:cidr_blocks].nil?
        Hearth::Validator.validate!(input[:vpc_name], ::String, context: "#{context}[:vpc_name]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class EnvironmentVpcs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EnvironmentVpc.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ErrorResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorResponse, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        AdditionalDetails.validate!(input[:additional_details], context: "#{context}[:additional_details]") unless input[:additional_details].nil?
      end
    end

    class GetApplicationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
      end
    end

    class GetApplicationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApplicationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:proxy_type], ::String, context: "#{context}[:proxy_type]")
        ApiGatewayProxyConfig.validate!(input[:api_gateway_proxy], context: "#{context}[:api_gateway_proxy]") unless input[:api_gateway_proxy].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class GetEnvironmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
      end
    end

    class GetEnvironmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEnvironmentOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:network_fabric_type], ::String, context: "#{context}[:network_fabric_type]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:transit_gateway_id], ::String, context: "#{context}[:transit_gateway_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class GetResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class GetResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcePolicyOutput, context: context)
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class GetRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:route_identifier], ::String, context: "#{context}[:route_identifier]")
      end
    end

    class GetRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteOutput, context: context)
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:route_type], ::String, context: "#{context}[:route_type]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
        HttpMethods.validate!(input[:member_methods], context: "#{context}[:member_methods]") unless input[:member_methods].nil?
        Hearth::Validator.validate!(input[:include_child_paths], ::TrueClass, ::FalseClass, context: "#{context}[:include_child_paths]")
        PathResourceToId.validate!(input[:path_resource_to_id], context: "#{context}[:path_resource_to_id]") unless input[:path_resource_to_id].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class GetServiceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:service_identifier], ::String, context: "#{context}[:service_identifier]")
      end
    end

    class GetServiceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetServiceOutput, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        UrlEndpointConfig.validate!(input[:url_endpoint], context: "#{context}[:url_endpoint]") unless input[:url_endpoint].nil?
        LambdaEndpointConfig.validate!(input[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless input[:lambda_endpoint].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class HttpMethods
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourcePolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourcePolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaEndpointConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaEndpointConfig, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class LambdaEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaEndpointInput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class LambdaEndpointSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaEndpointSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ListApplicationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApplicationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApplicationsOutput, context: context)
        ApplicationSummaries.validate!(input[:application_summary_list], context: "#{context}[:application_summary_list]") unless input[:application_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentVpcsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentVpcsInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnvironmentVpcsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentVpcsOutput, context: context)
        EnvironmentVpcs.validate!(input[:environment_vpc_list], context: "#{context}[:environment_vpc_list]") unless input[:environment_vpc_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEnvironmentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEnvironmentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEnvironmentsOutput, context: context)
        EnvironmentSummaries.validate!(input[:environment_summary_list], context: "#{context}[:environment_summary_list]") unless input[:environment_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutesInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRoutesOutput, context: context)
        RouteSummaries.validate!(input[:route_summary_list], context: "#{context}[:route_summary_list]") unless input[:route_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListServicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesInput, context: context)
        Hearth::Validator.validate!(input[:environment_identifier], ::String, context: "#{context}[:environment_identifier]")
        Hearth::Validator.validate!(input[:application_identifier], ::String, context: "#{context}[:application_identifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListServicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListServicesOutput, context: context)
        ServiceSummaries.validate!(input[:service_summary_list], context: "#{context}[:service_summary_list]") unless input[:service_summary_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PathResourceToId
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PutResourcePolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
      end
    end

    class PutResourcePolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutResourcePolicyOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RouteSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RouteSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RouteSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteSummary, context: context)
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:route_type], ::String, context: "#{context}[:route_type]")
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
        HttpMethods.validate!(input[:member_methods], context: "#{context}[:member_methods]") unless input[:member_methods].nil?
        Hearth::Validator.validate!(input[:include_child_paths], ::TrueClass, ::FalseClass, context: "#{context}[:include_child_paths]")
        PathResourceToId.validate!(input[:path_resource_to_id], context: "#{context}[:path_resource_to_id]") unless input[:path_resource_to_id].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class ServiceSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServiceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceSummary, context: context)
        Hearth::Validator.validate!(input[:service_id], ::String, context: "#{context}[:service_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:owner_account_id], ::String, context: "#{context}[:owner_account_id]")
        Hearth::Validator.validate!(input[:created_by_account_id], ::String, context: "#{context}[:created_by_account_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment_id], ::String, context: "#{context}[:environment_id]")
        Hearth::Validator.validate!(input[:application_id], ::String, context: "#{context}[:application_id]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        UrlEndpointSummary.validate!(input[:url_endpoint], context: "#{context}[:url_endpoint]") unless input[:url_endpoint].nil?
        LambdaEndpointSummary.validate!(input[:lambda_endpoint], context: "#{context}[:lambda_endpoint]") unless input[:lambda_endpoint].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ErrorResponse.validate!(input[:error], context: "#{context}[:error]") unless input[:error].nil?
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class TagKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
        Hearth::Validator.validate!(input[:retry_after_seconds], ::Integer, context: "#{context}[:retry_after_seconds]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeys.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UriPathRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UriPathRouteInput, context: context)
        Hearth::Validator.validate!(input[:source_path], ::String, context: "#{context}[:source_path]")
        Hearth::Validator.validate!(input[:activation_state], ::String, context: "#{context}[:activation_state]")
        HttpMethods.validate!(input[:member_methods], context: "#{context}[:member_methods]") unless input[:member_methods].nil?
        Hearth::Validator.validate!(input[:include_child_paths], ::TrueClass, ::FalseClass, context: "#{context}[:include_child_paths]")
      end
    end

    class UrlEndpointConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UrlEndpointConfig, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:health_url], ::String, context: "#{context}[:health_url]")
      end
    end

    class UrlEndpointInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UrlEndpointInput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:health_url], ::String, context: "#{context}[:health_url]")
      end
    end

    class UrlEndpointSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UrlEndpointSummary, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:health_url], ::String, context: "#{context}[:health_url]")
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
