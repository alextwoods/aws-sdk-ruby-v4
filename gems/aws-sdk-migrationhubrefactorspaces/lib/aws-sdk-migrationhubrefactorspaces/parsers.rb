# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::MigrationHubRefactorSpaces
  module Parsers

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.vpc_id = map['VpcId']
        data.proxy_type = map['ProxyType']
        data.api_gateway_proxy = (Parsers::ApiGatewayProxyInput.parse(map['ApiGatewayProxy']) unless map['ApiGatewayProxy'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ApiGatewayProxyInput
      def self.parse(map)
        data = Types::ApiGatewayProxyInput.new
        data.endpoint_type = map['EndpointType']
        data.stage_name = map['StageName']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        data.retry_after_seconds = http_resp.headers['Retry-After'].to_i unless http_resp.headers['Retry-After'].nil?
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Operation Parser for CreateEnvironment
    class CreateEnvironment
      def self.parse(http_resp)
        data = Types::CreateEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.environment_id = map['EnvironmentId']
        data.network_fabric_type = map['NetworkFabricType']
        data.owner_account_id = map['OwnerAccountId']
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    # Operation Parser for CreateRoute
    class CreateRoute
      def self.parse(http_resp)
        data = Types::CreateRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_id = map['RouteId']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.route_type = map['RouteType']
        data.service_id = map['ServiceId']
        data.application_id = map['ApplicationId']
        data.uri_path_route = (Parsers::UriPathRouteInput.parse(map['UriPathRoute']) unless map['UriPathRoute'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    class UriPathRouteInput
      def self.parse(map)
        data = Types::UriPathRouteInput.new
        data.source_path = map['SourcePath']
        data.activation_state = map['ActivationState']
        data.member_methods = (Parsers::HttpMethods.parse(map['Methods']) unless map['Methods'].nil?)
        data.include_child_paths = map['IncludeChildPaths']
        return data
      end
    end

    class HttpMethods
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateService
    class CreateService
      def self.parse(http_resp)
        data = Types::CreateServiceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_id = map['ServiceId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.description = map['Description']
        data.environment_id = map['EnvironmentId']
        data.application_id = map['ApplicationId']
        data.vpc_id = map['VpcId']
        data.endpoint_type = map['EndpointType']
        data.url_endpoint = (Parsers::UrlEndpointInput.parse(map['UrlEndpoint']) unless map['UrlEndpoint'].nil?)
        data.lambda_endpoint = (Parsers::LambdaEndpointInput.parse(map['LambdaEndpoint']) unless map['LambdaEndpoint'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    class LambdaEndpointInput
      def self.parse(map)
        data = Types::LambdaEndpointInput.new
        data.arn = map['Arn']
        return data
      end
    end

    class UrlEndpointInput
      def self.parse(map)
        data = Types::UrlEndpointInput.new
        data.url = map['Url']
        data.health_url = map['HealthUrl']
        return data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.state = map['State']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data
      end
    end

    # Operation Parser for DeleteEnvironment
    class DeleteEnvironment
      def self.parse(http_resp)
        data = Types::DeleteEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.environment_id = map['EnvironmentId']
        data.state = map['State']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data
      end
    end

    # Operation Parser for DeleteResourcePolicy
    class DeleteResourcePolicy
      def self.parse(http_resp)
        data = Types::DeleteResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRoute
    class DeleteRoute
      def self.parse(http_resp)
        data = Types::DeleteRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_id = map['RouteId']
        data.arn = map['Arn']
        data.service_id = map['ServiceId']
        data.application_id = map['ApplicationId']
        data.state = map['State']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data
      end
    end

    # Operation Parser for DeleteService
    class DeleteService
      def self.parse(http_resp)
        data = Types::DeleteServiceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_id = map['ServiceId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.environment_id = map['EnvironmentId']
        data.application_id = map['ApplicationId']
        data.state = map['State']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data
      end
    end

    # Operation Parser for GetApplication
    class GetApplication
      def self.parse(http_resp)
        data = Types::GetApplicationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.vpc_id = map['VpcId']
        data.proxy_type = map['ProxyType']
        data.api_gateway_proxy = (Parsers::ApiGatewayProxyConfig.parse(map['ApiGatewayProxy']) unless map['ApiGatewayProxy'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    class ErrorResponse
      def self.parse(map)
        data = Types::ErrorResponse.new
        data.code = map['Code']
        data.message = map['Message']
        data.account_id = map['AccountId']
        data.resource_identifier = map['ResourceIdentifier']
        data.resource_type = map['ResourceType']
        data.additional_details = (Parsers::AdditionalDetails.parse(map['AdditionalDetails']) unless map['AdditionalDetails'].nil?)
        return data
      end
    end

    class AdditionalDetails
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ApiGatewayProxyConfig
      def self.parse(map)
        data = Types::ApiGatewayProxyConfig.new
        data.proxy_url = map['ProxyUrl']
        data.api_gateway_id = map['ApiGatewayId']
        data.vpc_link_id = map['VpcLinkId']
        data.nlb_arn = map['NlbArn']
        data.nlb_name = map['NlbName']
        data.endpoint_type = map['EndpointType']
        data.stage_name = map['StageName']
        return data
      end
    end

    # Operation Parser for GetEnvironment
    class GetEnvironment
      def self.parse(http_resp)
        data = Types::GetEnvironmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.environment_id = map['EnvironmentId']
        data.network_fabric_type = map['NetworkFabricType']
        data.owner_account_id = map['OwnerAccountId']
        data.transit_gateway_id = map['TransitGatewayId']
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    # Operation Parser for GetResourcePolicy
    class GetResourcePolicy
      def self.parse(http_resp)
        data = Types::GetResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.policy = map['Policy']
        data
      end
    end

    # Operation Parser for GetRoute
    class GetRoute
      def self.parse(http_resp)
        data = Types::GetRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_id = map['RouteId']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.route_type = map['RouteType']
        data.service_id = map['ServiceId']
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.source_path = map['SourcePath']
        data.member_methods = (Parsers::HttpMethods.parse(map['Methods']) unless map['Methods'].nil?)
        data.include_child_paths = map['IncludeChildPaths']
        data.path_resource_to_id = (Parsers::PathResourceToId.parse(map['PathResourceToId']) unless map['PathResourceToId'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    class PathResourceToId
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetService
    class GetService
      def self.parse(http_resp)
        data = Types::GetServiceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_id = map['ServiceId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.description = map['Description']
        data.environment_id = map['EnvironmentId']
        data.application_id = map['ApplicationId']
        data.vpc_id = map['VpcId']
        data.endpoint_type = map['EndpointType']
        data.url_endpoint = (Parsers::UrlEndpointConfig.parse(map['UrlEndpoint']) unless map['UrlEndpoint'].nil?)
        data.lambda_endpoint = (Parsers::LambdaEndpointConfig.parse(map['LambdaEndpoint']) unless map['LambdaEndpoint'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data
      end
    end

    class LambdaEndpointConfig
      def self.parse(map)
        data = Types::LambdaEndpointConfig.new
        data.arn = map['Arn']
        return data
      end
    end

    class UrlEndpointConfig
      def self.parse(map)
        data = Types::UrlEndpointConfig.new
        data.url = map['Url']
        data.health_url = map['HealthUrl']
        return data
      end
    end

    # Operation Parser for ListApplications
    class ListApplications
      def self.parse(http_resp)
        data = Types::ListApplicationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.application_summary_list = (Parsers::ApplicationSummaries.parse(map['ApplicationSummaryList']) unless map['ApplicationSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApplicationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApplicationSummary
      def self.parse(map)
        data = Types::ApplicationSummary.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.vpc_id = map['VpcId']
        data.proxy_type = map['ProxyType']
        data.api_gateway_proxy = (Parsers::ApiGatewayProxySummary.parse(map['ApiGatewayProxy']) unless map['ApiGatewayProxy'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class ApiGatewayProxySummary
      def self.parse(map)
        data = Types::ApiGatewayProxySummary.new
        data.proxy_url = map['ProxyUrl']
        data.api_gateway_id = map['ApiGatewayId']
        data.vpc_link_id = map['VpcLinkId']
        data.nlb_arn = map['NlbArn']
        data.nlb_name = map['NlbName']
        data.endpoint_type = map['EndpointType']
        data.stage_name = map['StageName']
        return data
      end
    end

    # Operation Parser for ListEnvironmentVpcs
    class ListEnvironmentVpcs
      def self.parse(http_resp)
        data = Types::ListEnvironmentVpcsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment_vpc_list = (Parsers::EnvironmentVpcs.parse(map['EnvironmentVpcList']) unless map['EnvironmentVpcList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EnvironmentVpcs
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EnvironmentVpc.parse(value) unless value.nil?
        end
        data
      end
    end

    class EnvironmentVpc
      def self.parse(map)
        data = Types::EnvironmentVpc.new
        data.environment_id = map['EnvironmentId']
        data.vpc_id = map['VpcId']
        data.account_id = map['AccountId']
        data.cidr_blocks = (Parsers::CidrBlocks.parse(map['CidrBlocks']) unless map['CidrBlocks'].nil?)
        data.vpc_name = map['VpcName']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class CidrBlocks
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEnvironments
    class ListEnvironments
      def self.parse(http_resp)
        data = Types::ListEnvironmentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.environment_summary_list = (Parsers::EnvironmentSummaries.parse(map['EnvironmentSummaryList']) unless map['EnvironmentSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EnvironmentSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EnvironmentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class EnvironmentSummary
      def self.parse(map)
        data = Types::EnvironmentSummary.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.environment_id = map['EnvironmentId']
        data.network_fabric_type = map['NetworkFabricType']
        data.owner_account_id = map['OwnerAccountId']
        data.transit_gateway_id = map['TransitGatewayId']
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListRoutes
    class ListRoutes
      def self.parse(http_resp)
        data = Types::ListRoutesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.route_summary_list = (Parsers::RouteSummaries.parse(map['RouteSummaryList']) unless map['RouteSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RouteSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RouteSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteSummary
      def self.parse(map)
        data = Types::RouteSummary.new
        data.route_id = map['RouteId']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.route_type = map['RouteType']
        data.service_id = map['ServiceId']
        data.application_id = map['ApplicationId']
        data.environment_id = map['EnvironmentId']
        data.source_path = map['SourcePath']
        data.member_methods = (Parsers::HttpMethods.parse(map['Methods']) unless map['Methods'].nil?)
        data.include_child_paths = map['IncludeChildPaths']
        data.path_resource_to_id = (Parsers::PathResourceToId.parse(map['PathResourceToId']) unless map['PathResourceToId'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListServices
    class ListServices
      def self.parse(http_resp)
        data = Types::ListServicesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.service_summary_list = (Parsers::ServiceSummaries.parse(map['ServiceSummaryList']) unless map['ServiceSummaryList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ServiceSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ServiceSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ServiceSummary
      def self.parse(map)
        data = Types::ServiceSummary.new
        data.service_id = map['ServiceId']
        data.name = map['Name']
        data.arn = map['Arn']
        data.owner_account_id = map['OwnerAccountId']
        data.created_by_account_id = map['CreatedByAccountId']
        data.description = map['Description']
        data.environment_id = map['EnvironmentId']
        data.application_id = map['ApplicationId']
        data.vpc_id = map['VpcId']
        data.endpoint_type = map['EndpointType']
        data.url_endpoint = (Parsers::UrlEndpointSummary.parse(map['UrlEndpoint']) unless map['UrlEndpoint'].nil?)
        data.lambda_endpoint = (Parsers::LambdaEndpointSummary.parse(map['LambdaEndpoint']) unless map['LambdaEndpoint'].nil?)
        data.state = map['State']
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.error = (Parsers::ErrorResponse.parse(map['Error']) unless map['Error'].nil?)
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class LambdaEndpointSummary
      def self.parse(map)
        data = Types::LambdaEndpointSummary.new
        data.arn = map['Arn']
        return data
      end
    end

    class UrlEndpointSummary
      def self.parse(map)
        data = Types::UrlEndpointSummary.new
        data.url = map['Url']
        data.health_url = map['HealthUrl']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutResourcePolicy
    class PutResourcePolicy
      def self.parse(http_resp)
        data = Types::PutResourcePolicyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidResourcePolicyException
    class InvalidResourcePolicyException
      def self.parse(http_resp)
        data = Types::InvalidResourcePolicyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
