# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::ApiGatewayV2
  module Builders

    # Operation Builder for CreateApi
    class CreateApi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v2/apis')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiKeySelectionExpression'] = input[:api_key_selection_expression] unless input[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Builders::Cors.build(input[:cors_configuration]) unless input[:cors_configuration].nil?
        data['credentialsArn'] = input[:credentials_arn] unless input[:credentials_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['disableSchemaValidation'] = input[:disable_schema_validation] unless input[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = input[:disable_execute_api_endpoint] unless input[:disable_execute_api_endpoint].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['protocolType'] = input[:protocol_type] unless input[:protocol_type].nil?
        data['routeKey'] = input[:route_key] unless input[:route_key].nil?
        data['routeSelectionExpression'] = input[:route_selection_expression] unless input[:route_selection_expression].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['target'] = input[:target] unless input[:target].nil?
        data['version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Cors
    class Cors
      def self.build(input)
        data = {}
        data['allowCredentials'] = input[:allow_credentials] unless input[:allow_credentials].nil?
        data['allowHeaders'] = Builders::CorsHeaderList.build(input[:allow_headers]) unless input[:allow_headers].nil?
        data['allowMethods'] = Builders::CorsMethodList.build(input[:allow_methods]) unless input[:allow_methods].nil?
        data['allowOrigins'] = Builders::CorsOriginList.build(input[:allow_origins]) unless input[:allow_origins].nil?
        data['exposeHeaders'] = Builders::CorsHeaderList.build(input[:expose_headers]) unless input[:expose_headers].nil?
        data['maxAge'] = input[:max_age] unless input[:max_age].nil?
        data
      end
    end

    # List Builder for CorsHeaderList
    class CorsHeaderList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CorsOriginList
    class CorsOriginList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for CorsMethodList
    class CorsMethodList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateApiMapping
    class CreateApiMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s/apimappings',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiId'] = input[:api_id] unless input[:api_id].nil?
        data['apiMappingKey'] = input[:api_mapping_key] unless input[:api_mapping_key].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAuthorizer
    class CreateAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/authorizers',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizerCredentialsArn'] = input[:authorizer_credentials_arn] unless input[:authorizer_credentials_arn].nil?
        data['authorizerPayloadFormatVersion'] = input[:authorizer_payload_format_version] unless input[:authorizer_payload_format_version].nil?
        data['authorizerResultTtlInSeconds'] = input[:authorizer_result_ttl_in_seconds] unless input[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerType'] = input[:authorizer_type] unless input[:authorizer_type].nil?
        data['authorizerUri'] = input[:authorizer_uri] unless input[:authorizer_uri].nil?
        data['enableSimpleResponses'] = input[:enable_simple_responses] unless input[:enable_simple_responses].nil?
        data['identitySource'] = Builders::IdentitySourceList.build(input[:identity_source]) unless input[:identity_source].nil?
        data['identityValidationExpression'] = input[:identity_validation_expression] unless input[:identity_validation_expression].nil?
        data['jwtConfiguration'] = Builders::JWTConfiguration.build(input[:jwt_configuration]) unless input[:jwt_configuration].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for JWTConfiguration
    class JWTConfiguration
      def self.build(input)
        data = {}
        data['audience'] = Builders::List____listOf__string.build(input[:audience]) unless input[:audience].nil?
        data['issuer'] = input[:issuer] unless input[:issuer].nil?
        data
      end
    end

    # List Builder for __listOf__string
    class List____listOf__string
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for IdentitySourceList
    class IdentitySourceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/deployments',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDomainName
    class CreateDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v2/domainnames')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['domainNameConfigurations'] = Builders::DomainNameConfigurations.build(input[:domain_name_configurations]) unless input[:domain_name_configurations].nil?
        data['mutualTlsAuthentication'] = Builders::MutualTlsAuthenticationInput.build(input[:mutual_tls_authentication]) unless input[:mutual_tls_authentication].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MutualTlsAuthenticationInput
    class MutualTlsAuthenticationInput
      def self.build(input)
        data = {}
        data['truststoreUri'] = input[:truststore_uri] unless input[:truststore_uri].nil?
        data['truststoreVersion'] = input[:truststore_version] unless input[:truststore_version].nil?
        data
      end
    end

    # List Builder for DomainNameConfigurations
    class DomainNameConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DomainNameConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DomainNameConfiguration
    class DomainNameConfiguration
      def self.build(input)
        data = {}
        data['apiGatewayDomainName'] = input[:api_gateway_domain_name] unless input[:api_gateway_domain_name].nil?
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['certificateUploadDate'] = Hearth::TimeHelper.to_date_time(input[:certificate_upload_date]) unless input[:certificate_upload_date].nil?
        data['domainNameStatus'] = input[:domain_name_status] unless input[:domain_name_status].nil?
        data['domainNameStatusMessage'] = input[:domain_name_status_message] unless input[:domain_name_status_message].nil?
        data['endpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['hostedZoneId'] = input[:hosted_zone_id] unless input[:hosted_zone_id].nil?
        data['securityPolicy'] = input[:security_policy] unless input[:security_policy].nil?
        data['ownershipVerificationCertificateArn'] = input[:ownership_verification_certificate_arn] unless input[:ownership_verification_certificate_arn].nil?
        data
      end
    end

    # Operation Builder for CreateIntegration
    class CreateIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['connectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['contentHandlingStrategy'] = input[:content_handling_strategy] unless input[:content_handling_strategy].nil?
        data['credentialsArn'] = input[:credentials_arn] unless input[:credentials_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['integrationMethod'] = input[:integration_method] unless input[:integration_method].nil?
        data['integrationSubtype'] = input[:integration_subtype] unless input[:integration_subtype].nil?
        data['integrationType'] = input[:integration_type] unless input[:integration_type].nil?
        data['integrationUri'] = input[:integration_uri] unless input[:integration_uri].nil?
        data['passthroughBehavior'] = input[:passthrough_behavior] unless input[:passthrough_behavior].nil?
        data['payloadFormatVersion'] = input[:payload_format_version] unless input[:payload_format_version].nil?
        data['requestParameters'] = Builders::IntegrationParameters.build(input[:request_parameters]) unless input[:request_parameters].nil?
        data['requestTemplates'] = Builders::TemplateMap.build(input[:request_templates]) unless input[:request_templates].nil?
        data['responseParameters'] = Builders::ResponseParameters.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['templateSelectionExpression'] = input[:template_selection_expression] unless input[:template_selection_expression].nil?
        data['timeoutInMillis'] = input[:timeout_in_millis] unless input[:timeout_in_millis].nil?
        data['tlsConfig'] = Builders::TlsConfigInput.build(input[:tls_config]) unless input[:tls_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TlsConfigInput
    class TlsConfigInput
      def self.build(input)
        data = {}
        data['serverNameToVerify'] = input[:server_name_to_verify] unless input[:server_name_to_verify].nil?
        data
      end
    end

    # Map Builder for ResponseParameters
    class ResponseParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::IntegrationParameters.build(value) unless value.nil?
        end
        data
      end
    end

    # Map Builder for IntegrationParameters
    class IntegrationParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for TemplateMap
    class TemplateMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateIntegrationResponse
    class CreateIntegrationResponse
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s/integrationresponses',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentHandlingStrategy'] = input[:content_handling_strategy] unless input[:content_handling_strategy].nil?
        data['integrationResponseKey'] = input[:integration_response_key] unless input[:integration_response_key].nil?
        data['responseParameters'] = Builders::IntegrationParameters.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['responseTemplates'] = Builders::TemplateMap.build(input[:response_templates]) unless input[:response_templates].nil?
        data['templateSelectionExpression'] = input[:template_selection_expression] unless input[:template_selection_expression].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateModel
    class CreateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/models',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRoute
    class CreateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiKeyRequired'] = input[:api_key_required] unless input[:api_key_required].nil?
        data['authorizationScopes'] = Builders::AuthorizationScopes.build(input[:authorization_scopes]) unless input[:authorization_scopes].nil?
        data['authorizationType'] = input[:authorization_type] unless input[:authorization_type].nil?
        data['authorizerId'] = input[:authorizer_id] unless input[:authorizer_id].nil?
        data['modelSelectionExpression'] = input[:model_selection_expression] unless input[:model_selection_expression].nil?
        data['operationName'] = input[:operation_name] unless input[:operation_name].nil?
        data['requestModels'] = Builders::RouteModels.build(input[:request_models]) unless input[:request_models].nil?
        data['requestParameters'] = Builders::RouteParameters.build(input[:request_parameters]) unless input[:request_parameters].nil?
        data['routeKey'] = input[:route_key] unless input[:route_key].nil?
        data['routeResponseSelectionExpression'] = input[:route_response_selection_expression] unless input[:route_response_selection_expression].nil?
        data['target'] = input[:target] unless input[:target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for RouteParameters
    class RouteParameters
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ParameterConstraints.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ParameterConstraints
    class ParameterConstraints
      def self.build(input)
        data = {}
        data['required'] = input[:required] unless input[:required].nil?
        data
      end
    end

    # Map Builder for RouteModels
    class RouteModels
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for AuthorizationScopes
    class AuthorizationScopes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateRouteResponse
    class CreateRouteResponse
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s/routeresponses',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['modelSelectionExpression'] = input[:model_selection_expression] unless input[:model_selection_expression].nil?
        data['responseModels'] = Builders::RouteModels.build(input[:response_models]) unless input[:response_models].nil?
        data['responseParameters'] = Builders::RouteParameters.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['routeResponseKey'] = input[:route_response_key] unless input[:route_response_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStage
    class CreateStage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accessLogSettings'] = Builders::AccessLogSettings.build(input[:access_log_settings]) unless input[:access_log_settings].nil?
        data['autoDeploy'] = input[:auto_deploy] unless input[:auto_deploy].nil?
        data['clientCertificateId'] = input[:client_certificate_id] unless input[:client_certificate_id].nil?
        data['defaultRouteSettings'] = Builders::RouteSettings.build(input[:default_route_settings]) unless input[:default_route_settings].nil?
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['routeSettings'] = Builders::RouteSettingsMap.build(input[:route_settings]) unless input[:route_settings].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['stageVariables'] = Builders::StageVariablesMap.build(input[:stage_variables]) unless input[:stage_variables].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for StageVariablesMap
    class StageVariablesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for RouteSettingsMap
    class RouteSettingsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::RouteSettings.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for RouteSettings
    class RouteSettings
      def self.build(input)
        data = {}
        data['dataTraceEnabled'] = input[:data_trace_enabled] unless input[:data_trace_enabled].nil?
        data['detailedMetricsEnabled'] = input[:detailed_metrics_enabled] unless input[:detailed_metrics_enabled].nil?
        data['loggingLevel'] = input[:logging_level] unless input[:logging_level].nil?
        data['throttlingBurstLimit'] = input[:throttling_burst_limit] unless input[:throttling_burst_limit].nil?
        data['throttlingRateLimit'] = Hearth::NumberHelper.serialize(input[:throttling_rate_limit]) unless input[:throttling_rate_limit].nil?
        data
      end
    end

    # Structure Builder for AccessLogSettings
    class AccessLogSettings
      def self.build(input)
        data = {}
        data['destinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['format'] = input[:format] unless input[:format].nil?
        data
      end
    end

    # Operation Builder for CreateVpcLink
    class CreateVpcLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/v2/vpclinks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['subnetIds'] = Builders::SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteAccessLogSettings
    class DeleteAccessLogSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages/%<StageName>s/accesslogsettings',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApi
    class DeleteApi
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteApiMapping
    class DeleteApiMapping
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_mapping_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_mapping_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s/apimappings/%<ApiMappingId>s',
            ApiMappingId: Hearth::HTTP.uri_escape(input[:api_mapping_id].to_s),
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAuthorizer
    class DeleteAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/authorizers/%<AuthorizerId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            AuthorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteCorsConfiguration
    class DeleteCorsConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/cors',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDeployment
    class DeleteDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/deployments/%<DeploymentId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            DeploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDomainName
    class DeleteDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntegration
    class DeleteIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIntegrationResponse
    class DeleteIntegrationResponse
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        if input[:integration_response_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_response_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s/integrationresponses/%<IntegrationResponseId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s),
            IntegrationResponseId: Hearth::HTTP.uri_escape(input[:integration_response_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteModel
    class DeleteModel
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:model_id].to_s.empty?
          raise ArgumentError, "HTTP label :model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/models/%<ModelId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            ModelId: Hearth::HTTP.uri_escape(input[:model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRoute
    class DeleteRoute
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRouteRequestParameter
    class DeleteRouteRequestParameter
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:request_parameter_key].to_s.empty?
          raise ArgumentError, "HTTP label :request_parameter_key cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s/requestparameters/%<RequestParameterKey>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RequestParameterKey: Hearth::HTTP.uri_escape(input[:request_parameter_key].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRouteResponse
    class DeleteRouteResponse
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        if input[:route_response_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_response_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s/routeresponses/%<RouteResponseId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s),
            RouteResponseId: Hearth::HTTP.uri_escape(input[:route_response_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRouteSettings
    class DeleteRouteSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_key].to_s.empty?
          raise ArgumentError, "HTTP label :route_key cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages/%<StageName>s/routesettings/%<RouteKey>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteKey: Hearth::HTTP.uri_escape(input[:route_key].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteStage
    class DeleteStage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages/%<StageName>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteVpcLink
    class DeleteVpcLink
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:vpc_link_id].to_s.empty?
          raise ArgumentError, "HTTP label :vpc_link_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/vpclinks/%<VpcLinkId>s',
            VpcLinkId: Hearth::HTTP.uri_escape(input[:vpc_link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ExportApi
    class ExportApi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:specification].to_s.empty?
          raise ArgumentError, "HTTP label :specification cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/exports/%<Specification>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            Specification: Hearth::HTTP.uri_escape(input[:specification].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['exportVersion'] = input[:export_version].to_s unless input[:export_version].nil?
        params['includeExtensions'] = input[:include_extensions].to_s unless input[:include_extensions].nil?
        params['outputType'] = input[:output_type].to_s unless input[:output_type].nil?
        params['stageName'] = input[:stage_name].to_s unless input[:stage_name].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApi
    class GetApi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApiMapping
    class GetApiMapping
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_mapping_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_mapping_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s/apimappings/%<ApiMappingId>s',
            ApiMappingId: Hearth::HTTP.uri_escape(input[:api_mapping_id].to_s),
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApiMappings
    class GetApiMappings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s/apimappings',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApis
    class GetApis
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v2/apis')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAuthorizer
    class GetAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/authorizers/%<AuthorizerId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            AuthorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAuthorizers
    class GetAuthorizers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/authorizers',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployment
    class GetDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/deployments/%<DeploymentId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            DeploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployments
    class GetDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/deployments',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainName
    class GetDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDomainNames
    class GetDomainNames
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v2/domainnames')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntegration
    class GetIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntegrationResponse
    class GetIntegrationResponse
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        if input[:integration_response_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_response_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s/integrationresponses/%<IntegrationResponseId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s),
            IntegrationResponseId: Hearth::HTTP.uri_escape(input[:integration_response_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntegrationResponses
    class GetIntegrationResponses
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s/integrationresponses',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntegrations
    class GetIntegrations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetModel
    class GetModel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:model_id].to_s.empty?
          raise ArgumentError, "HTTP label :model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/models/%<ModelId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            ModelId: Hearth::HTTP.uri_escape(input[:model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetModelTemplate
    class GetModelTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:model_id].to_s.empty?
          raise ArgumentError, "HTTP label :model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/models/%<ModelId>s/template',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            ModelId: Hearth::HTTP.uri_escape(input[:model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetModels
    class GetModels
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/models',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRoute
    class GetRoute
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRouteResponse
    class GetRouteResponse
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        if input[:route_response_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_response_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s/routeresponses/%<RouteResponseId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s),
            RouteResponseId: Hearth::HTTP.uri_escape(input[:route_response_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRouteResponses
    class GetRouteResponses
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s/routeresponses',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRoutes
    class GetRoutes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStage
    class GetStage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages/%<StageName>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStages
    class GetStages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTags
    class GetTags
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVpcLink
    class GetVpcLink
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:vpc_link_id].to_s.empty?
          raise ArgumentError, "HTTP label :vpc_link_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/vpclinks/%<VpcLinkId>s',
            VpcLinkId: Hearth::HTTP.uri_escape(input[:vpc_link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetVpcLinks
    class GetVpcLinks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/v2/vpclinks')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportApi
    class ImportApi
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/v2/apis')
        params = Hearth::Query::ParamList.new
        params['basepath'] = input[:basepath].to_s unless input[:basepath].nil?
        params['failOnWarnings'] = input[:fail_on_warnings].to_s unless input[:fail_on_warnings].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['body'] = input[:body] unless input[:body].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ReimportApi
    class ReimportApi
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['basepath'] = input[:basepath].to_s unless input[:basepath].nil?
        params['failOnWarnings'] = input[:fail_on_warnings].to_s unless input[:fail_on_warnings].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['body'] = input[:body] unless input[:body].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResetAuthorizersCache
    class ResetAuthorizersCache
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages/%<StageName>s/cache/authorizers',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateApi
    class UpdateApi
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiKeySelectionExpression'] = input[:api_key_selection_expression] unless input[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Builders::Cors.build(input[:cors_configuration]) unless input[:cors_configuration].nil?
        data['credentialsArn'] = input[:credentials_arn] unless input[:credentials_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['disableSchemaValidation'] = input[:disable_schema_validation] unless input[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = input[:disable_execute_api_endpoint] unless input[:disable_execute_api_endpoint].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['routeKey'] = input[:route_key] unless input[:route_key].nil?
        data['routeSelectionExpression'] = input[:route_selection_expression] unless input[:route_selection_expression].nil?
        data['target'] = input[:target] unless input[:target].nil?
        data['version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApiMapping
    class UpdateApiMapping
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_mapping_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_mapping_id cannot be nil or empty."
        end
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s/apimappings/%<ApiMappingId>s',
            ApiMappingId: Hearth::HTTP.uri_escape(input[:api_mapping_id].to_s),
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiId'] = input[:api_id] unless input[:api_id].nil?
        data['apiMappingKey'] = input[:api_mapping_key] unless input[:api_mapping_key].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAuthorizer
    class UpdateAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/authorizers/%<AuthorizerId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            AuthorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizerCredentialsArn'] = input[:authorizer_credentials_arn] unless input[:authorizer_credentials_arn].nil?
        data['authorizerPayloadFormatVersion'] = input[:authorizer_payload_format_version] unless input[:authorizer_payload_format_version].nil?
        data['authorizerResultTtlInSeconds'] = input[:authorizer_result_ttl_in_seconds] unless input[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerType'] = input[:authorizer_type] unless input[:authorizer_type].nil?
        data['authorizerUri'] = input[:authorizer_uri] unless input[:authorizer_uri].nil?
        data['enableSimpleResponses'] = input[:enable_simple_responses] unless input[:enable_simple_responses].nil?
        data['identitySource'] = Builders::IdentitySourceList.build(input[:identity_source]) unless input[:identity_source].nil?
        data['identityValidationExpression'] = input[:identity_validation_expression] unless input[:identity_validation_expression].nil?
        data['jwtConfiguration'] = Builders::JWTConfiguration.build(input[:jwt_configuration]) unless input[:jwt_configuration].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeployment
    class UpdateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/deployments/%<DeploymentId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            DeploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDomainName
    class UpdateDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/domainnames/%<DomainName>s',
            DomainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domainNameConfigurations'] = Builders::DomainNameConfigurations.build(input[:domain_name_configurations]) unless input[:domain_name_configurations].nil?
        data['mutualTlsAuthentication'] = Builders::MutualTlsAuthenticationInput.build(input[:mutual_tls_authentication]) unless input[:mutual_tls_authentication].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIntegration
    class UpdateIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['connectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['contentHandlingStrategy'] = input[:content_handling_strategy] unless input[:content_handling_strategy].nil?
        data['credentialsArn'] = input[:credentials_arn] unless input[:credentials_arn].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['integrationMethod'] = input[:integration_method] unless input[:integration_method].nil?
        data['integrationSubtype'] = input[:integration_subtype] unless input[:integration_subtype].nil?
        data['integrationType'] = input[:integration_type] unless input[:integration_type].nil?
        data['integrationUri'] = input[:integration_uri] unless input[:integration_uri].nil?
        data['passthroughBehavior'] = input[:passthrough_behavior] unless input[:passthrough_behavior].nil?
        data['payloadFormatVersion'] = input[:payload_format_version] unless input[:payload_format_version].nil?
        data['requestParameters'] = Builders::IntegrationParameters.build(input[:request_parameters]) unless input[:request_parameters].nil?
        data['requestTemplates'] = Builders::TemplateMap.build(input[:request_templates]) unless input[:request_templates].nil?
        data['responseParameters'] = Builders::ResponseParameters.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['templateSelectionExpression'] = input[:template_selection_expression] unless input[:template_selection_expression].nil?
        data['timeoutInMillis'] = input[:timeout_in_millis] unless input[:timeout_in_millis].nil?
        data['tlsConfig'] = Builders::TlsConfigInput.build(input[:tls_config]) unless input[:tls_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIntegrationResponse
    class UpdateIntegrationResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:integration_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_id cannot be nil or empty."
        end
        if input[:integration_response_id].to_s.empty?
          raise ArgumentError, "HTTP label :integration_response_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/integrations/%<IntegrationId>s/integrationresponses/%<IntegrationResponseId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            IntegrationId: Hearth::HTTP.uri_escape(input[:integration_id].to_s),
            IntegrationResponseId: Hearth::HTTP.uri_escape(input[:integration_response_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentHandlingStrategy'] = input[:content_handling_strategy] unless input[:content_handling_strategy].nil?
        data['integrationResponseKey'] = input[:integration_response_key] unless input[:integration_response_key].nil?
        data['responseParameters'] = Builders::IntegrationParameters.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['responseTemplates'] = Builders::TemplateMap.build(input[:response_templates]) unless input[:response_templates].nil?
        data['templateSelectionExpression'] = input[:template_selection_expression] unless input[:template_selection_expression].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateModel
    class UpdateModel
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:model_id].to_s.empty?
          raise ArgumentError, "HTTP label :model_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/models/%<ModelId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            ModelId: Hearth::HTTP.uri_escape(input[:model_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRoute
    class UpdateRoute
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['apiKeyRequired'] = input[:api_key_required] unless input[:api_key_required].nil?
        data['authorizationScopes'] = Builders::AuthorizationScopes.build(input[:authorization_scopes]) unless input[:authorization_scopes].nil?
        data['authorizationType'] = input[:authorization_type] unless input[:authorization_type].nil?
        data['authorizerId'] = input[:authorizer_id] unless input[:authorizer_id].nil?
        data['modelSelectionExpression'] = input[:model_selection_expression] unless input[:model_selection_expression].nil?
        data['operationName'] = input[:operation_name] unless input[:operation_name].nil?
        data['requestModels'] = Builders::RouteModels.build(input[:request_models]) unless input[:request_models].nil?
        data['requestParameters'] = Builders::RouteParameters.build(input[:request_parameters]) unless input[:request_parameters].nil?
        data['routeKey'] = input[:route_key] unless input[:route_key].nil?
        data['routeResponseSelectionExpression'] = input[:route_response_selection_expression] unless input[:route_response_selection_expression].nil?
        data['target'] = input[:target] unless input[:target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRouteResponse
    class UpdateRouteResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:route_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_id cannot be nil or empty."
        end
        if input[:route_response_id].to_s.empty?
          raise ArgumentError, "HTTP label :route_response_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/routes/%<RouteId>s/routeresponses/%<RouteResponseId>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            RouteId: Hearth::HTTP.uri_escape(input[:route_id].to_s),
            RouteResponseId: Hearth::HTTP.uri_escape(input[:route_response_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['modelSelectionExpression'] = input[:model_selection_expression] unless input[:model_selection_expression].nil?
        data['responseModels'] = Builders::RouteModels.build(input[:response_models]) unless input[:response_models].nil?
        data['responseParameters'] = Builders::RouteParameters.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['routeResponseKey'] = input[:route_response_key] unless input[:route_response_key].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStage
    class UpdateStage
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_id].to_s.empty?
          raise ArgumentError, "HTTP label :api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/apis/%<ApiId>s/stages/%<StageName>s',
            ApiId: Hearth::HTTP.uri_escape(input[:api_id].to_s),
            StageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['accessLogSettings'] = Builders::AccessLogSettings.build(input[:access_log_settings]) unless input[:access_log_settings].nil?
        data['autoDeploy'] = input[:auto_deploy] unless input[:auto_deploy].nil?
        data['clientCertificateId'] = input[:client_certificate_id] unless input[:client_certificate_id].nil?
        data['defaultRouteSettings'] = Builders::RouteSettings.build(input[:default_route_settings]) unless input[:default_route_settings].nil?
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['routeSettings'] = Builders::RouteSettingsMap.build(input[:route_settings]) unless input[:route_settings].nil?
        data['stageVariables'] = Builders::StageVariablesMap.build(input[:stage_variables]) unless input[:stage_variables].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateVpcLink
    class UpdateVpcLink
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:vpc_link_id].to_s.empty?
          raise ArgumentError, "HTTP label :vpc_link_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/v2/vpclinks/%<VpcLinkId>s',
            VpcLinkId: Hearth::HTTP.uri_escape(input[:vpc_link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
