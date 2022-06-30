# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ApiGatewayV2
  module Parsers

    # Operation Parser for CreateApi
    class CreateApi
      def self.parse(http_resp)
        data = Types::CreateApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_endpoint = map['apiEndpoint']
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_id = map['apiId']
        data.api_key_selection_expression = map['apiKeySelectionExpression']
        data.cors_configuration = (Parsers::Cors.parse(map['corsConfiguration']) unless map['corsConfiguration'].nil?)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.description = map['description']
        data.disable_schema_validation = map['disableSchemaValidation']
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data.import_info = (Parsers::List____listOf__string.parse(map['importInfo']) unless map['importInfo'].nil?)
        data.name = map['name']
        data.protocol_type = map['protocolType']
        data.route_selection_expression = map['routeSelectionExpression']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data.warnings = (Parsers::List____listOf__string.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    class List____listOf__string
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Cors
      def self.parse(map)
        data = Types::Cors.new
        data.allow_credentials = map['allowCredentials']
        data.allow_headers = (Parsers::CorsHeaderList.parse(map['allowHeaders']) unless map['allowHeaders'].nil?)
        data.allow_methods = (Parsers::CorsMethodList.parse(map['allowMethods']) unless map['allowMethods'].nil?)
        data.allow_origins = (Parsers::CorsOriginList.parse(map['allowOrigins']) unless map['allowOrigins'].nil?)
        data.expose_headers = (Parsers::CorsHeaderList.parse(map['exposeHeaders']) unless map['exposeHeaders'].nil?)
        data.max_age = map['maxAge']
        return data
      end
    end

    class CorsHeaderList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CorsOriginList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class CorsMethodList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.limit_type = map['limitType']
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_type = map['resourceType']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for BadRequestException
    class BadRequestException
      def self.parse(http_resp)
        data = Types::BadRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateApiMapping
    class CreateApiMapping
      def self.parse(http_resp)
        data = Types::CreateApiMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_id = map['apiId']
        data.api_mapping_id = map['apiMappingId']
        data.api_mapping_key = map['apiMappingKey']
        data.stage = map['stage']
        data
      end
    end

    # Operation Parser for CreateAuthorizer
    class CreateAuthorizer
      def self.parse(http_resp)
        data = Types::CreateAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_credentials_arn = map['authorizerCredentialsArn']
        data.authorizer_id = map['authorizerId']
        data.authorizer_payload_format_version = map['authorizerPayloadFormatVersion']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data.authorizer_type = map['authorizerType']
        data.authorizer_uri = map['authorizerUri']
        data.enable_simple_responses = map['enableSimpleResponses']
        data.identity_source = (Parsers::IdentitySourceList.parse(map['identitySource']) unless map['identitySource'].nil?)
        data.identity_validation_expression = map['identityValidationExpression']
        data.jwt_configuration = (Parsers::JWTConfiguration.parse(map['jwtConfiguration']) unless map['jwtConfiguration'].nil?)
        data.name = map['name']
        data
      end
    end

    class JWTConfiguration
      def self.parse(map)
        data = Types::JWTConfiguration.new
        data.audience = (Parsers::List____listOf__string.parse(map['audience']) unless map['audience'].nil?)
        data.issuer = map['issuer']
        return data
      end
    end

    class IdentitySourceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_deployed = map['autoDeployed']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.deployment_id = map['deploymentId']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for CreateDomainName
    class CreateDomainName
      def self.parse(http_resp)
        data = Types::CreateDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_mapping_selection_expression = map['apiMappingSelectionExpression']
        data.domain_name = map['domainName']
        data.domain_name_configurations = (Parsers::DomainNameConfigurations.parse(map['domainNameConfigurations']) unless map['domainNameConfigurations'].nil?)
        data.mutual_tls_authentication = (Parsers::MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class MutualTlsAuthentication
      def self.parse(map)
        data = Types::MutualTlsAuthentication.new
        data.truststore_uri = map['truststoreUri']
        data.truststore_version = map['truststoreVersion']
        data.truststore_warnings = (Parsers::List____listOf__string.parse(map['truststoreWarnings']) unless map['truststoreWarnings'].nil?)
        return data
      end
    end

    class DomainNameConfigurations
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainNameConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainNameConfiguration
      def self.parse(map)
        data = Types::DomainNameConfiguration.new
        data.api_gateway_domain_name = map['apiGatewayDomainName']
        data.certificate_arn = map['certificateArn']
        data.certificate_name = map['certificateName']
        data.certificate_upload_date = Time.parse(map['certificateUploadDate']) if map['certificateUploadDate']
        data.domain_name_status = map['domainNameStatus']
        data.domain_name_status_message = map['domainNameStatusMessage']
        data.endpoint_type = map['endpointType']
        data.hosted_zone_id = map['hostedZoneId']
        data.security_policy = map['securityPolicy']
        data.ownership_verification_certificate_arn = map['ownershipVerificationCertificateArn']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateIntegration
    class CreateIntegration
      def self.parse(http_resp)
        data = Types::CreateIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.connection_id = map['connectionId']
        data.connection_type = map['connectionType']
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.credentials_arn = map['credentialsArn']
        data.description = map['description']
        data.integration_id = map['integrationId']
        data.integration_method = map['integrationMethod']
        data.integration_response_selection_expression = map['integrationResponseSelectionExpression']
        data.integration_subtype = map['integrationSubtype']
        data.integration_type = map['integrationType']
        data.integration_uri = map['integrationUri']
        data.passthrough_behavior = map['passthroughBehavior']
        data.payload_format_version = map['payloadFormatVersion']
        data.request_parameters = (Parsers::IntegrationParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (Parsers::TemplateMap.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.response_parameters = (Parsers::ResponseParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data.timeout_in_millis = map['timeoutInMillis']
        data.tls_config = (Parsers::TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        data
      end
    end

    class TlsConfig
      def self.parse(map)
        data = Types::TlsConfig.new
        data.server_name_to_verify = map['serverNameToVerify']
        return data
      end
    end

    class ResponseParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::IntegrationParameters.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntegrationParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class TemplateMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateIntegrationResponse
    class CreateIntegrationResponse
      def self.parse(http_resp)
        data = Types::CreateIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.integration_response_id = map['integrationResponseId']
        data.integration_response_key = map['integrationResponseKey']
        data.response_parameters = (Parsers::IntegrationParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (Parsers::TemplateMap.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data
      end
    end

    # Operation Parser for CreateModel
    class CreateModel
      def self.parse(http_resp)
        data = Types::CreateModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_type = map['contentType']
        data.description = map['description']
        data.model_id = map['modelId']
        data.name = map['name']
        data.schema = map['schema']
        data
      end
    end

    # Operation Parser for CreateRoute
    class CreateRoute
      def self.parse(http_resp)
        data = Types::CreateRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_key_required = map['apiKeyRequired']
        data.authorization_scopes = (Parsers::AuthorizationScopes.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.model_selection_expression = map['modelSelectionExpression']
        data.operation_name = map['operationName']
        data.request_models = (Parsers::RouteModels.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.request_parameters = (Parsers::RouteParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.route_id = map['routeId']
        data.route_key = map['routeKey']
        data.route_response_selection_expression = map['routeResponseSelectionExpression']
        data.target = map['target']
        data
      end
    end

    class RouteParameters
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ParameterConstraints.parse(value) unless value.nil?
        end
        data
      end
    end

    class ParameterConstraints
      def self.parse(map)
        data = Types::ParameterConstraints.new
        data.required = map['required']
        return data
      end
    end

    class RouteModels
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class AuthorizationScopes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateRouteResponse
    class CreateRouteResponse
      def self.parse(http_resp)
        data = Types::CreateRouteResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_selection_expression = map['modelSelectionExpression']
        data.response_models = (Parsers::RouteModels.parse(map['responseModels']) unless map['responseModels'].nil?)
        data.response_parameters = (Parsers::RouteParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.route_response_id = map['routeResponseId']
        data.route_response_key = map['routeResponseKey']
        data
      end
    end

    # Operation Parser for CreateStage
    class CreateStage
      def self.parse(http_resp)
        data = Types::CreateStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_log_settings = (Parsers::AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.auto_deploy = map['autoDeploy']
        data.client_certificate_id = map['clientCertificateId']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.default_route_settings = (Parsers::RouteSettings.parse(map['defaultRouteSettings']) unless map['defaultRouteSettings'].nil?)
        data.deployment_id = map['deploymentId']
        data.description = map['description']
        data.last_deployment_status_message = map['lastDeploymentStatusMessage']
        data.last_updated_date = Time.parse(map['lastUpdatedDate']) if map['lastUpdatedDate']
        data.route_settings = (Parsers::RouteSettingsMap.parse(map['routeSettings']) unless map['routeSettings'].nil?)
        data.stage_name = map['stageName']
        data.stage_variables = (Parsers::StageVariablesMap.parse(map['stageVariables']) unless map['stageVariables'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class StageVariablesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class RouteSettingsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::RouteSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteSettings
      def self.parse(map)
        data = Types::RouteSettings.new
        data.data_trace_enabled = map['dataTraceEnabled']
        data.detailed_metrics_enabled = map['detailedMetricsEnabled']
        data.logging_level = map['loggingLevel']
        data.throttling_burst_limit = map['throttlingBurstLimit']
        data.throttling_rate_limit = Hearth::NumberHelper.deserialize(map['throttlingRateLimit'])
        return data
      end
    end

    class AccessLogSettings
      def self.parse(map)
        data = Types::AccessLogSettings.new
        data.destination_arn = map['destinationArn']
        data.format = map['format']
        return data
      end
    end

    # Operation Parser for CreateVpcLink
    class CreateVpcLink
      def self.parse(http_resp)
        data = Types::CreateVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.name = map['name']
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_link_id = map['vpcLinkId']
        data.vpc_link_status = map['vpcLinkStatus']
        data.vpc_link_status_message = map['vpcLinkStatusMessage']
        data.vpc_link_version = map['vpcLinkVersion']
        data
      end
    end

    class SubnetIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DeleteAccessLogSettings
    class DeleteAccessLogSettings
      def self.parse(http_resp)
        data = Types::DeleteAccessLogSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteApi
    class DeleteApi
      def self.parse(http_resp)
        data = Types::DeleteApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteApiMapping
    class DeleteApiMapping
      def self.parse(http_resp)
        data = Types::DeleteApiMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAuthorizer
    class DeleteAuthorizer
      def self.parse(http_resp)
        data = Types::DeleteAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteCorsConfiguration
    class DeleteCorsConfiguration
      def self.parse(http_resp)
        data = Types::DeleteCorsConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDeployment
    class DeleteDeployment
      def self.parse(http_resp)
        data = Types::DeleteDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDomainName
    class DeleteDomainName
      def self.parse(http_resp)
        data = Types::DeleteDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIntegration
    class DeleteIntegration
      def self.parse(http_resp)
        data = Types::DeleteIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteIntegrationResponse
    class DeleteIntegrationResponse
      def self.parse(http_resp)
        data = Types::DeleteIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteModel
    class DeleteModel
      def self.parse(http_resp)
        data = Types::DeleteModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRoute
    class DeleteRoute
      def self.parse(http_resp)
        data = Types::DeleteRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRouteRequestParameter
    class DeleteRouteRequestParameter
      def self.parse(http_resp)
        data = Types::DeleteRouteRequestParameterOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRouteResponse
    class DeleteRouteResponse
      def self.parse(http_resp)
        data = Types::DeleteRouteResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRouteSettings
    class DeleteRouteSettings
      def self.parse(http_resp)
        data = Types::DeleteRouteSettingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteStage
    class DeleteStage
      def self.parse(http_resp)
        data = Types::DeleteStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteVpcLink
    class DeleteVpcLink
      def self.parse(http_resp)
        data = Types::DeleteVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ExportApi
    class ExportApi
      def self.parse(http_resp)
        data = Types::ExportApiOutput.new
        payload = http_resp.body.read
        data.body = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetApi
    class GetApi
      def self.parse(http_resp)
        data = Types::GetApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_endpoint = map['apiEndpoint']
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_id = map['apiId']
        data.api_key_selection_expression = map['apiKeySelectionExpression']
        data.cors_configuration = (Parsers::Cors.parse(map['corsConfiguration']) unless map['corsConfiguration'].nil?)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.description = map['description']
        data.disable_schema_validation = map['disableSchemaValidation']
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data.import_info = (Parsers::List____listOf__string.parse(map['importInfo']) unless map['importInfo'].nil?)
        data.name = map['name']
        data.protocol_type = map['protocolType']
        data.route_selection_expression = map['routeSelectionExpression']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data.warnings = (Parsers::List____listOf__string.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    # Operation Parser for GetApiMapping
    class GetApiMapping
      def self.parse(http_resp)
        data = Types::GetApiMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_id = map['apiId']
        data.api_mapping_id = map['apiMappingId']
        data.api_mapping_key = map['apiMappingKey']
        data.stage = map['stage']
        data
      end
    end

    # Operation Parser for GetApiMappings
    class GetApiMappings
      def self.parse(http_resp)
        data = Types::GetApiMappingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfApiMapping.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfApiMapping
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ApiMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApiMapping
      def self.parse(map)
        data = Types::ApiMapping.new
        data.api_id = map['apiId']
        data.api_mapping_id = map['apiMappingId']
        data.api_mapping_key = map['apiMappingKey']
        data.stage = map['stage']
        return data
      end
    end

    # Operation Parser for GetApis
    class GetApis
      def self.parse(http_resp)
        data = Types::GetApisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfApi.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfApi
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Api.parse(value) unless value.nil?
        end
        data
      end
    end

    class Api
      def self.parse(map)
        data = Types::Api.new
        data.api_endpoint = map['apiEndpoint']
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_id = map['apiId']
        data.api_key_selection_expression = map['apiKeySelectionExpression']
        data.cors_configuration = (Parsers::Cors.parse(map['corsConfiguration']) unless map['corsConfiguration'].nil?)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.description = map['description']
        data.disable_schema_validation = map['disableSchemaValidation']
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data.import_info = (Parsers::List____listOf__string.parse(map['importInfo']) unless map['importInfo'].nil?)
        data.name = map['name']
        data.protocol_type = map['protocolType']
        data.route_selection_expression = map['routeSelectionExpression']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data.warnings = (Parsers::List____listOf__string.parse(map['warnings']) unless map['warnings'].nil?)
        return data
      end
    end

    # Operation Parser for GetAuthorizer
    class GetAuthorizer
      def self.parse(http_resp)
        data = Types::GetAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_credentials_arn = map['authorizerCredentialsArn']
        data.authorizer_id = map['authorizerId']
        data.authorizer_payload_format_version = map['authorizerPayloadFormatVersion']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data.authorizer_type = map['authorizerType']
        data.authorizer_uri = map['authorizerUri']
        data.enable_simple_responses = map['enableSimpleResponses']
        data.identity_source = (Parsers::IdentitySourceList.parse(map['identitySource']) unless map['identitySource'].nil?)
        data.identity_validation_expression = map['identityValidationExpression']
        data.jwt_configuration = (Parsers::JWTConfiguration.parse(map['jwtConfiguration']) unless map['jwtConfiguration'].nil?)
        data.name = map['name']
        data
      end
    end

    # Operation Parser for GetAuthorizers
    class GetAuthorizers
      def self.parse(http_resp)
        data = Types::GetAuthorizersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfAuthorizer.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfAuthorizer
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Authorizer.parse(value) unless value.nil?
        end
        data
      end
    end

    class Authorizer
      def self.parse(map)
        data = Types::Authorizer.new
        data.authorizer_credentials_arn = map['authorizerCredentialsArn']
        data.authorizer_id = map['authorizerId']
        data.authorizer_payload_format_version = map['authorizerPayloadFormatVersion']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data.authorizer_type = map['authorizerType']
        data.authorizer_uri = map['authorizerUri']
        data.enable_simple_responses = map['enableSimpleResponses']
        data.identity_source = (Parsers::IdentitySourceList.parse(map['identitySource']) unless map['identitySource'].nil?)
        data.identity_validation_expression = map['identityValidationExpression']
        data.jwt_configuration = (Parsers::JWTConfiguration.parse(map['jwtConfiguration']) unless map['jwtConfiguration'].nil?)
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for GetDeployment
    class GetDeployment
      def self.parse(http_resp)
        data = Types::GetDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_deployed = map['autoDeployed']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.deployment_id = map['deploymentId']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for GetDeployments
    class GetDeployments
      def self.parse(http_resp)
        data = Types::GetDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfDeployment.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfDeployment
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Deployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Deployment
      def self.parse(map)
        data = Types::Deployment.new
        data.auto_deployed = map['autoDeployed']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.deployment_id = map['deploymentId']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for GetDomainName
    class GetDomainName
      def self.parse(http_resp)
        data = Types::GetDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_mapping_selection_expression = map['apiMappingSelectionExpression']
        data.domain_name = map['domainName']
        data.domain_name_configurations = (Parsers::DomainNameConfigurations.parse(map['domainNameConfigurations']) unless map['domainNameConfigurations'].nil?)
        data.mutual_tls_authentication = (Parsers::MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetDomainNames
    class GetDomainNames
      def self.parse(http_resp)
        data = Types::GetDomainNamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfDomainName.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfDomainName
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DomainName.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainName
      def self.parse(map)
        data = Types::DomainName.new
        data.api_mapping_selection_expression = map['apiMappingSelectionExpression']
        data.domain_name = map['domainName']
        data.domain_name_configurations = (Parsers::DomainNameConfigurations.parse(map['domainNameConfigurations']) unless map['domainNameConfigurations'].nil?)
        data.mutual_tls_authentication = (Parsers::MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetIntegration
    class GetIntegration
      def self.parse(http_resp)
        data = Types::GetIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.connection_id = map['connectionId']
        data.connection_type = map['connectionType']
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.credentials_arn = map['credentialsArn']
        data.description = map['description']
        data.integration_id = map['integrationId']
        data.integration_method = map['integrationMethod']
        data.integration_response_selection_expression = map['integrationResponseSelectionExpression']
        data.integration_subtype = map['integrationSubtype']
        data.integration_type = map['integrationType']
        data.integration_uri = map['integrationUri']
        data.passthrough_behavior = map['passthroughBehavior']
        data.payload_format_version = map['payloadFormatVersion']
        data.request_parameters = (Parsers::IntegrationParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (Parsers::TemplateMap.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.response_parameters = (Parsers::ResponseParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data.timeout_in_millis = map['timeoutInMillis']
        data.tls_config = (Parsers::TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetIntegrationResponse
    class GetIntegrationResponse
      def self.parse(http_resp)
        data = Types::GetIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.integration_response_id = map['integrationResponseId']
        data.integration_response_key = map['integrationResponseKey']
        data.response_parameters = (Parsers::IntegrationParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (Parsers::TemplateMap.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data
      end
    end

    # Operation Parser for GetIntegrationResponses
    class GetIntegrationResponses
      def self.parse(http_resp)
        data = Types::GetIntegrationResponsesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfIntegrationResponse.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfIntegrationResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::IntegrationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntegrationResponse
      def self.parse(map)
        data = Types::IntegrationResponse.new
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.integration_response_id = map['integrationResponseId']
        data.integration_response_key = map['integrationResponseKey']
        data.response_parameters = (Parsers::IntegrationParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (Parsers::TemplateMap.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        return data
      end
    end

    # Operation Parser for GetIntegrations
    class GetIntegrations
      def self.parse(http_resp)
        data = Types::GetIntegrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfIntegration.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfIntegration
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Integration.parse(value) unless value.nil?
        end
        data
      end
    end

    class Integration
      def self.parse(map)
        data = Types::Integration.new
        data.api_gateway_managed = map['apiGatewayManaged']
        data.connection_id = map['connectionId']
        data.connection_type = map['connectionType']
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.credentials_arn = map['credentialsArn']
        data.description = map['description']
        data.integration_id = map['integrationId']
        data.integration_method = map['integrationMethod']
        data.integration_response_selection_expression = map['integrationResponseSelectionExpression']
        data.integration_subtype = map['integrationSubtype']
        data.integration_type = map['integrationType']
        data.integration_uri = map['integrationUri']
        data.passthrough_behavior = map['passthroughBehavior']
        data.payload_format_version = map['payloadFormatVersion']
        data.request_parameters = (Parsers::IntegrationParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (Parsers::TemplateMap.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.response_parameters = (Parsers::ResponseParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data.timeout_in_millis = map['timeoutInMillis']
        data.tls_config = (Parsers::TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        return data
      end
    end

    # Operation Parser for GetModel
    class GetModel
      def self.parse(http_resp)
        data = Types::GetModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_type = map['contentType']
        data.description = map['description']
        data.model_id = map['modelId']
        data.name = map['name']
        data.schema = map['schema']
        data
      end
    end

    # Operation Parser for GetModelTemplate
    class GetModelTemplate
      def self.parse(http_resp)
        data = Types::GetModelTemplateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.value = map['value']
        data
      end
    end

    # Operation Parser for GetModels
    class GetModels
      def self.parse(http_resp)
        data = Types::GetModelsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfModel.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfModel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Model.parse(value) unless value.nil?
        end
        data
      end
    end

    class Model
      def self.parse(map)
        data = Types::Model.new
        data.content_type = map['contentType']
        data.description = map['description']
        data.model_id = map['modelId']
        data.name = map['name']
        data.schema = map['schema']
        return data
      end
    end

    # Operation Parser for GetRoute
    class GetRoute
      def self.parse(http_resp)
        data = Types::GetRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_key_required = map['apiKeyRequired']
        data.authorization_scopes = (Parsers::AuthorizationScopes.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.model_selection_expression = map['modelSelectionExpression']
        data.operation_name = map['operationName']
        data.request_models = (Parsers::RouteModels.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.request_parameters = (Parsers::RouteParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.route_id = map['routeId']
        data.route_key = map['routeKey']
        data.route_response_selection_expression = map['routeResponseSelectionExpression']
        data.target = map['target']
        data
      end
    end

    # Operation Parser for GetRouteResponse
    class GetRouteResponse
      def self.parse(http_resp)
        data = Types::GetRouteResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_selection_expression = map['modelSelectionExpression']
        data.response_models = (Parsers::RouteModels.parse(map['responseModels']) unless map['responseModels'].nil?)
        data.response_parameters = (Parsers::RouteParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.route_response_id = map['routeResponseId']
        data.route_response_key = map['routeResponseKey']
        data
      end
    end

    # Operation Parser for GetRouteResponses
    class GetRouteResponses
      def self.parse(http_resp)
        data = Types::GetRouteResponsesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfRouteResponse.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfRouteResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RouteResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class RouteResponse
      def self.parse(map)
        data = Types::RouteResponse.new
        data.model_selection_expression = map['modelSelectionExpression']
        data.response_models = (Parsers::RouteModels.parse(map['responseModels']) unless map['responseModels'].nil?)
        data.response_parameters = (Parsers::RouteParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.route_response_id = map['routeResponseId']
        data.route_response_key = map['routeResponseKey']
        return data
      end
    end

    # Operation Parser for GetRoutes
    class GetRoutes
      def self.parse(http_resp)
        data = Types::GetRoutesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfRoute.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfRoute
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Route.parse(value) unless value.nil?
        end
        data
      end
    end

    class Route
      def self.parse(map)
        data = Types::Route.new
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_key_required = map['apiKeyRequired']
        data.authorization_scopes = (Parsers::AuthorizationScopes.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.model_selection_expression = map['modelSelectionExpression']
        data.operation_name = map['operationName']
        data.request_models = (Parsers::RouteModels.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.request_parameters = (Parsers::RouteParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.route_id = map['routeId']
        data.route_key = map['routeKey']
        data.route_response_selection_expression = map['routeResponseSelectionExpression']
        data.target = map['target']
        return data
      end
    end

    # Operation Parser for GetStage
    class GetStage
      def self.parse(http_resp)
        data = Types::GetStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_log_settings = (Parsers::AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.auto_deploy = map['autoDeploy']
        data.client_certificate_id = map['clientCertificateId']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.default_route_settings = (Parsers::RouteSettings.parse(map['defaultRouteSettings']) unless map['defaultRouteSettings'].nil?)
        data.deployment_id = map['deploymentId']
        data.description = map['description']
        data.last_deployment_status_message = map['lastDeploymentStatusMessage']
        data.last_updated_date = Time.parse(map['lastUpdatedDate']) if map['lastUpdatedDate']
        data.route_settings = (Parsers::RouteSettingsMap.parse(map['routeSettings']) unless map['routeSettings'].nil?)
        data.stage_name = map['stageName']
        data.stage_variables = (Parsers::StageVariablesMap.parse(map['stageVariables']) unless map['stageVariables'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetStages
    class GetStages
      def self.parse(http_resp)
        data = Types::GetStagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfStage.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfStage
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Stage.parse(value) unless value.nil?
        end
        data
      end
    end

    class Stage
      def self.parse(map)
        data = Types::Stage.new
        data.access_log_settings = (Parsers::AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.auto_deploy = map['autoDeploy']
        data.client_certificate_id = map['clientCertificateId']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.default_route_settings = (Parsers::RouteSettings.parse(map['defaultRouteSettings']) unless map['defaultRouteSettings'].nil?)
        data.deployment_id = map['deploymentId']
        data.description = map['description']
        data.last_deployment_status_message = map['lastDeploymentStatusMessage']
        data.last_updated_date = Time.parse(map['lastUpdatedDate']) if map['lastUpdatedDate']
        data.route_settings = (Parsers::RouteSettingsMap.parse(map['routeSettings']) unless map['routeSettings'].nil?)
        data.stage_name = map['stageName']
        data.stage_variables = (Parsers::StageVariablesMap.parse(map['stageVariables']) unless map['stageVariables'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetTags
    class GetTags
      def self.parse(http_resp)
        data = Types::GetTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetVpcLink
    class GetVpcLink
      def self.parse(http_resp)
        data = Types::GetVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.name = map['name']
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_link_id = map['vpcLinkId']
        data.vpc_link_status = map['vpcLinkStatus']
        data.vpc_link_status_message = map['vpcLinkStatusMessage']
        data.vpc_link_version = map['vpcLinkVersion']
        data
      end
    end

    # Operation Parser for GetVpcLinks
    class GetVpcLinks
      def self.parse(http_resp)
        data = Types::GetVpcLinksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (Parsers::List____listOfVpcLink.parse(map['items']) unless map['items'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class List____listOfVpcLink
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::VpcLink.parse(value) unless value.nil?
        end
        data
      end
    end

    class VpcLink
      def self.parse(map)
        data = Types::VpcLink.new
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.name = map['name']
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_link_id = map['vpcLinkId']
        data.vpc_link_status = map['vpcLinkStatus']
        data.vpc_link_status_message = map['vpcLinkStatusMessage']
        data.vpc_link_version = map['vpcLinkVersion']
        return data
      end
    end

    # Operation Parser for ImportApi
    class ImportApi
      def self.parse(http_resp)
        data = Types::ImportApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_endpoint = map['apiEndpoint']
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_id = map['apiId']
        data.api_key_selection_expression = map['apiKeySelectionExpression']
        data.cors_configuration = (Parsers::Cors.parse(map['corsConfiguration']) unless map['corsConfiguration'].nil?)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.description = map['description']
        data.disable_schema_validation = map['disableSchemaValidation']
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data.import_info = (Parsers::List____listOf__string.parse(map['importInfo']) unless map['importInfo'].nil?)
        data.name = map['name']
        data.protocol_type = map['protocolType']
        data.route_selection_expression = map['routeSelectionExpression']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data.warnings = (Parsers::List____listOf__string.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    # Operation Parser for ReimportApi
    class ReimportApi
      def self.parse(http_resp)
        data = Types::ReimportApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_endpoint = map['apiEndpoint']
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_id = map['apiId']
        data.api_key_selection_expression = map['apiKeySelectionExpression']
        data.cors_configuration = (Parsers::Cors.parse(map['corsConfiguration']) unless map['corsConfiguration'].nil?)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.description = map['description']
        data.disable_schema_validation = map['disableSchemaValidation']
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data.import_info = (Parsers::List____listOf__string.parse(map['importInfo']) unless map['importInfo'].nil?)
        data.name = map['name']
        data.protocol_type = map['protocolType']
        data.route_selection_expression = map['routeSelectionExpression']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data.warnings = (Parsers::List____listOf__string.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    # Operation Parser for ResetAuthorizersCache
    class ResetAuthorizersCache
      def self.parse(http_resp)
        data = Types::ResetAuthorizersCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Operation Parser for UpdateApi
    class UpdateApi
      def self.parse(http_resp)
        data = Types::UpdateApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_endpoint = map['apiEndpoint']
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_id = map['apiId']
        data.api_key_selection_expression = map['apiKeySelectionExpression']
        data.cors_configuration = (Parsers::Cors.parse(map['corsConfiguration']) unless map['corsConfiguration'].nil?)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.description = map['description']
        data.disable_schema_validation = map['disableSchemaValidation']
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data.import_info = (Parsers::List____listOf__string.parse(map['importInfo']) unless map['importInfo'].nil?)
        data.name = map['name']
        data.protocol_type = map['protocolType']
        data.route_selection_expression = map['routeSelectionExpression']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.version = map['version']
        data.warnings = (Parsers::List____listOf__string.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    # Operation Parser for UpdateApiMapping
    class UpdateApiMapping
      def self.parse(http_resp)
        data = Types::UpdateApiMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_id = map['apiId']
        data.api_mapping_id = map['apiMappingId']
        data.api_mapping_key = map['apiMappingKey']
        data.stage = map['stage']
        data
      end
    end

    # Operation Parser for UpdateAuthorizer
    class UpdateAuthorizer
      def self.parse(http_resp)
        data = Types::UpdateAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.authorizer_credentials_arn = map['authorizerCredentialsArn']
        data.authorizer_id = map['authorizerId']
        data.authorizer_payload_format_version = map['authorizerPayloadFormatVersion']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data.authorizer_type = map['authorizerType']
        data.authorizer_uri = map['authorizerUri']
        data.enable_simple_responses = map['enableSimpleResponses']
        data.identity_source = (Parsers::IdentitySourceList.parse(map['identitySource']) unless map['identitySource'].nil?)
        data.identity_validation_expression = map['identityValidationExpression']
        data.jwt_configuration = (Parsers::JWTConfiguration.parse(map['jwtConfiguration']) unless map['jwtConfiguration'].nil?)
        data.name = map['name']
        data
      end
    end

    # Operation Parser for UpdateDeployment
    class UpdateDeployment
      def self.parse(http_resp)
        data = Types::UpdateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_deployed = map['autoDeployed']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.deployment_id = map['deploymentId']
        data.deployment_status = map['deploymentStatus']
        data.deployment_status_message = map['deploymentStatusMessage']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for UpdateDomainName
    class UpdateDomainName
      def self.parse(http_resp)
        data = Types::UpdateDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_mapping_selection_expression = map['apiMappingSelectionExpression']
        data.domain_name = map['domainName']
        data.domain_name_configurations = (Parsers::DomainNameConfigurations.parse(map['domainNameConfigurations']) unless map['domainNameConfigurations'].nil?)
        data.mutual_tls_authentication = (Parsers::MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateIntegration
    class UpdateIntegration
      def self.parse(http_resp)
        data = Types::UpdateIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.connection_id = map['connectionId']
        data.connection_type = map['connectionType']
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.credentials_arn = map['credentialsArn']
        data.description = map['description']
        data.integration_id = map['integrationId']
        data.integration_method = map['integrationMethod']
        data.integration_response_selection_expression = map['integrationResponseSelectionExpression']
        data.integration_subtype = map['integrationSubtype']
        data.integration_type = map['integrationType']
        data.integration_uri = map['integrationUri']
        data.passthrough_behavior = map['passthroughBehavior']
        data.payload_format_version = map['payloadFormatVersion']
        data.request_parameters = (Parsers::IntegrationParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (Parsers::TemplateMap.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.response_parameters = (Parsers::ResponseParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data.timeout_in_millis = map['timeoutInMillis']
        data.tls_config = (Parsers::TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateIntegrationResponse
    class UpdateIntegrationResponse
      def self.parse(http_resp)
        data = Types::UpdateIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_handling_strategy = map['contentHandlingStrategy']
        data.integration_response_id = map['integrationResponseId']
        data.integration_response_key = map['integrationResponseKey']
        data.response_parameters = (Parsers::IntegrationParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (Parsers::TemplateMap.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.template_selection_expression = map['templateSelectionExpression']
        data
      end
    end

    # Operation Parser for UpdateModel
    class UpdateModel
      def self.parse(http_resp)
        data = Types::UpdateModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_type = map['contentType']
        data.description = map['description']
        data.model_id = map['modelId']
        data.name = map['name']
        data.schema = map['schema']
        data
      end
    end

    # Operation Parser for UpdateRoute
    class UpdateRoute
      def self.parse(http_resp)
        data = Types::UpdateRouteOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.api_key_required = map['apiKeyRequired']
        data.authorization_scopes = (Parsers::AuthorizationScopes.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.model_selection_expression = map['modelSelectionExpression']
        data.operation_name = map['operationName']
        data.request_models = (Parsers::RouteModels.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.request_parameters = (Parsers::RouteParameters.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.route_id = map['routeId']
        data.route_key = map['routeKey']
        data.route_response_selection_expression = map['routeResponseSelectionExpression']
        data.target = map['target']
        data
      end
    end

    # Operation Parser for UpdateRouteResponse
    class UpdateRouteResponse
      def self.parse(http_resp)
        data = Types::UpdateRouteResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.model_selection_expression = map['modelSelectionExpression']
        data.response_models = (Parsers::RouteModels.parse(map['responseModels']) unless map['responseModels'].nil?)
        data.response_parameters = (Parsers::RouteParameters.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.route_response_id = map['routeResponseId']
        data.route_response_key = map['routeResponseKey']
        data
      end
    end

    # Operation Parser for UpdateStage
    class UpdateStage
      def self.parse(http_resp)
        data = Types::UpdateStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.access_log_settings = (Parsers::AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.api_gateway_managed = map['apiGatewayManaged']
        data.auto_deploy = map['autoDeploy']
        data.client_certificate_id = map['clientCertificateId']
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.default_route_settings = (Parsers::RouteSettings.parse(map['defaultRouteSettings']) unless map['defaultRouteSettings'].nil?)
        data.deployment_id = map['deploymentId']
        data.description = map['description']
        data.last_deployment_status_message = map['lastDeploymentStatusMessage']
        data.last_updated_date = Time.parse(map['lastUpdatedDate']) if map['lastUpdatedDate']
        data.route_settings = (Parsers::RouteSettingsMap.parse(map['routeSettings']) unless map['routeSettings'].nil?)
        data.stage_name = map['stageName']
        data.stage_variables = (Parsers::StageVariablesMap.parse(map['stageVariables']) unless map['stageVariables'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVpcLink
    class UpdateVpcLink
      def self.parse(http_resp)
        data = Types::UpdateVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.created_date = Time.parse(map['createdDate']) if map['createdDate']
        data.name = map['name']
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['securityGroupIds']) unless map['securityGroupIds'].nil?)
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['subnetIds']) unless map['subnetIds'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.vpc_link_id = map['vpcLinkId']
        data.vpc_link_status = map['vpcLinkStatus']
        data.vpc_link_status_message = map['vpcLinkStatusMessage']
        data.vpc_link_version = map['vpcLinkVersion']
        data
      end
    end
  end
end
