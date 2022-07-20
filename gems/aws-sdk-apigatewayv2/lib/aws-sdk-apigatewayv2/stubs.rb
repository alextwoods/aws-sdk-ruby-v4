# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ApiGatewayV2
  module Stubs

    # Operation Stubber for CreateApi
    class CreateApi
      def self.default(visited=[])
        {
          api_endpoint: 'api_endpoint',
          api_gateway_managed: false,
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          cors_configuration: Cors.default(visited),
          created_date: Time.now,
          description: 'description',
          disable_schema_validation: false,
          disable_execute_api_endpoint: false,
          import_info: List____listOf__string.default(visited),
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          tags: Tags.default(visited),
          version: 'version',
          warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Cors.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['disableSchemaValidation'] = stub[:disable_schema_validation] unless stub[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data['importInfo'] = List____listOf__string.stub(stub[:import_info]) unless stub[:import_info].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['protocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['routeSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = List____listOf__string.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOf__string
    class List____listOf__string
      def self.default(visited=[])
        return nil if visited.include?('List____listOf__string')
        visited = visited + ['List____listOf__string']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Cors
    class Cors
      def self.default(visited=[])
        return nil if visited.include?('Cors')
        visited = visited + ['Cors']
        {
          allow_credentials: false,
          allow_headers: CorsHeaderList.default(visited),
          allow_methods: CorsMethodList.default(visited),
          allow_origins: CorsOriginList.default(visited),
          expose_headers: CorsHeaderList.default(visited),
          max_age: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Cors.new
        data = {}
        data['allowCredentials'] = stub[:allow_credentials] unless stub[:allow_credentials].nil?
        data['allowHeaders'] = CorsHeaderList.stub(stub[:allow_headers]) unless stub[:allow_headers].nil?
        data['allowMethods'] = CorsMethodList.stub(stub[:allow_methods]) unless stub[:allow_methods].nil?
        data['allowOrigins'] = CorsOriginList.stub(stub[:allow_origins]) unless stub[:allow_origins].nil?
        data['exposeHeaders'] = CorsHeaderList.stub(stub[:expose_headers]) unless stub[:expose_headers].nil?
        data['maxAge'] = stub[:max_age] unless stub[:max_age].nil?
        data
      end
    end

    # List Stubber for CorsHeaderList
    class CorsHeaderList
      def self.default(visited=[])
        return nil if visited.include?('CorsHeaderList')
        visited = visited + ['CorsHeaderList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CorsOriginList
    class CorsOriginList
      def self.default(visited=[])
        return nil if visited.include?('CorsOriginList')
        visited = visited + ['CorsOriginList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for CorsMethodList
    class CorsMethodList
      def self.default(visited=[])
        return nil if visited.include?('CorsMethodList')
        visited = visited + ['CorsMethodList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateApiMapping
    class CreateApiMapping
      def self.default(visited=[])
        {
          api_id: 'api_id',
          api_mapping_id: 'api_mapping_id',
          api_mapping_key: 'api_mapping_key',
          stage: 'stage',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiMappingId'] = stub[:api_mapping_id] unless stub[:api_mapping_id].nil?
        data['apiMappingKey'] = stub[:api_mapping_key] unless stub[:api_mapping_key].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateAuthorizer
    class CreateAuthorizer
      def self.default(visited=[])
        {
          authorizer_credentials_arn: 'authorizer_credentials_arn',
          authorizer_id: 'authorizer_id',
          authorizer_payload_format_version: 'authorizer_payload_format_version',
          authorizer_result_ttl_in_seconds: 1,
          authorizer_type: 'authorizer_type',
          authorizer_uri: 'authorizer_uri',
          enable_simple_responses: false,
          identity_source: IdentitySourceList.default(visited),
          identity_validation_expression: 'identity_validation_expression',
          jwt_configuration: JWTConfiguration.default(visited),
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerCredentialsArn'] = stub[:authorizer_credentials_arn] unless stub[:authorizer_credentials_arn].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['authorizerPayloadFormatVersion'] = stub[:authorizer_payload_format_version] unless stub[:authorizer_payload_format_version].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerType'] = stub[:authorizer_type] unless stub[:authorizer_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['enableSimpleResponses'] = stub[:enable_simple_responses] unless stub[:enable_simple_responses].nil?
        data['identitySource'] = IdentitySourceList.stub(stub[:identity_source]) unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['jwtConfiguration'] = JWTConfiguration.stub(stub[:jwt_configuration]) unless stub[:jwt_configuration].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for JWTConfiguration
    class JWTConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JWTConfiguration')
        visited = visited + ['JWTConfiguration']
        {
          audience: List____listOf__string.default(visited),
          issuer: 'issuer',
        }
      end

      def self.stub(stub)
        stub ||= Types::JWTConfiguration.new
        data = {}
        data['audience'] = List____listOf__string.stub(stub[:audience]) unless stub[:audience].nil?
        data['issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data
      end
    end

    # List Stubber for IdentitySourceList
    class IdentitySourceList
      def self.default(visited=[])
        return nil if visited.include?('IdentitySourceList')
        visited = visited + ['IdentitySourceList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          auto_deployed: false,
          created_date: Time.now,
          deployment_id: 'deployment_id',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoDeployed'] = stub[:auto_deployed] unless stub[:auto_deployed].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDomainName
    class CreateDomainName
      def self.default(visited=[])
        {
          api_mapping_selection_expression: 'api_mapping_selection_expression',
          domain_name: 'domain_name',
          domain_name_configurations: DomainNameConfigurations.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiMappingSelectionExpression'] = stub[:api_mapping_selection_expression] unless stub[:api_mapping_selection_expression].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainNameConfigurations'] = DomainNameConfigurations.stub(stub[:domain_name_configurations]) unless stub[:domain_name_configurations].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for MutualTlsAuthentication
    class MutualTlsAuthentication
      def self.default(visited=[])
        return nil if visited.include?('MutualTlsAuthentication')
        visited = visited + ['MutualTlsAuthentication']
        {
          truststore_uri: 'truststore_uri',
          truststore_version: 'truststore_version',
          truststore_warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MutualTlsAuthentication.new
        data = {}
        data['truststoreUri'] = stub[:truststore_uri] unless stub[:truststore_uri].nil?
        data['truststoreVersion'] = stub[:truststore_version] unless stub[:truststore_version].nil?
        data['truststoreWarnings'] = List____listOf__string.stub(stub[:truststore_warnings]) unless stub[:truststore_warnings].nil?
        data
      end
    end

    # List Stubber for DomainNameConfigurations
    class DomainNameConfigurations
      def self.default(visited=[])
        return nil if visited.include?('DomainNameConfigurations')
        visited = visited + ['DomainNameConfigurations']
        [
          DomainNameConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainNameConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainNameConfiguration
    class DomainNameConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DomainNameConfiguration')
        visited = visited + ['DomainNameConfiguration']
        {
          api_gateway_domain_name: 'api_gateway_domain_name',
          certificate_arn: 'certificate_arn',
          certificate_name: 'certificate_name',
          certificate_upload_date: Time.now,
          domain_name_status: 'domain_name_status',
          domain_name_status_message: 'domain_name_status_message',
          endpoint_type: 'endpoint_type',
          hosted_zone_id: 'hosted_zone_id',
          security_policy: 'security_policy',
          ownership_verification_certificate_arn: 'ownership_verification_certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainNameConfiguration.new
        data = {}
        data['apiGatewayDomainName'] = stub[:api_gateway_domain_name] unless stub[:api_gateway_domain_name].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['certificateUploadDate'] = Hearth::TimeHelper.to_date_time(stub[:certificate_upload_date]) unless stub[:certificate_upload_date].nil?
        data['domainNameStatus'] = stub[:domain_name_status] unless stub[:domain_name_status].nil?
        data['domainNameStatusMessage'] = stub[:domain_name_status_message] unless stub[:domain_name_status_message].nil?
        data['endpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['hostedZoneId'] = stub[:hosted_zone_id] unless stub[:hosted_zone_id].nil?
        data['securityPolicy'] = stub[:security_policy] unless stub[:security_policy].nil?
        data['ownershipVerificationCertificateArn'] = stub[:ownership_verification_certificate_arn] unless stub[:ownership_verification_certificate_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateIntegration
    class CreateIntegration
      def self.default(visited=[])
        {
          api_gateway_managed: false,
          connection_id: 'connection_id',
          connection_type: 'connection_type',
          content_handling_strategy: 'content_handling_strategy',
          credentials_arn: 'credentials_arn',
          description: 'description',
          integration_id: 'integration_id',
          integration_method: 'integration_method',
          integration_response_selection_expression: 'integration_response_selection_expression',
          integration_subtype: 'integration_subtype',
          integration_type: 'integration_type',
          integration_uri: 'integration_uri',
          passthrough_behavior: 'passthrough_behavior',
          payload_format_version: 'payload_format_version',
          request_parameters: IntegrationParameters.default(visited),
          request_templates: TemplateMap.default(visited),
          response_parameters: ResponseParameters.default(visited),
          template_selection_expression: 'template_selection_expression',
          timeout_in_millis: 1,
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['credentialsArn'] = stub[:credentials_arn] unless stub[:credentials_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['integrationId'] = stub[:integration_id] unless stub[:integration_id].nil?
        data['integrationMethod'] = stub[:integration_method] unless stub[:integration_method].nil?
        data['integrationResponseSelectionExpression'] = stub[:integration_response_selection_expression] unless stub[:integration_response_selection_expression].nil?
        data['integrationSubtype'] = stub[:integration_subtype] unless stub[:integration_subtype].nil?
        data['integrationType'] = stub[:integration_type] unless stub[:integration_type].nil?
        data['integrationUri'] = stub[:integration_uri] unless stub[:integration_uri].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['payloadFormatVersion'] = stub[:payload_format_version] unless stub[:payload_format_version].nil?
        data['requestParameters'] = IntegrationParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = TemplateMap.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['responseParameters'] = ResponseParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TlsConfig
    class TlsConfig
      def self.default(visited=[])
        return nil if visited.include?('TlsConfig')
        visited = visited + ['TlsConfig']
        {
          server_name_to_verify: 'server_name_to_verify',
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsConfig.new
        data = {}
        data['serverNameToVerify'] = stub[:server_name_to_verify] unless stub[:server_name_to_verify].nil?
        data
      end
    end

    # Map Stubber for ResponseParameters
    class ResponseParameters
      def self.default(visited=[])
        return nil if visited.include?('ResponseParameters')
        visited = visited + ['ResponseParameters']
        {
          test_key: IntegrationParameters.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = IntegrationParameters.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for IntegrationParameters
    class IntegrationParameters
      def self.default(visited=[])
        return nil if visited.include?('IntegrationParameters')
        visited = visited + ['IntegrationParameters']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for TemplateMap
    class TemplateMap
      def self.default(visited=[])
        return nil if visited.include?('TemplateMap')
        visited = visited + ['TemplateMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateIntegrationResponse
    class CreateIntegrationResponse
      def self.default(visited=[])
        {
          content_handling_strategy: 'content_handling_strategy',
          integration_response_id: 'integration_response_id',
          integration_response_key: 'integration_response_key',
          response_parameters: IntegrationParameters.default(visited),
          response_templates: TemplateMap.default(visited),
          template_selection_expression: 'template_selection_expression',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['integrationResponseId'] = stub[:integration_response_id] unless stub[:integration_response_id].nil?
        data['integrationResponseKey'] = stub[:integration_response_key] unless stub[:integration_response_key].nil?
        data['responseParameters'] = IntegrationParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = TemplateMap.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateModel
    class CreateModel
      def self.default(visited=[])
        {
          content_type: 'content_type',
          description: 'description',
          model_id: 'model_id',
          name: 'name',
          schema: 'schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRoute
    class CreateRoute
      def self.default(visited=[])
        {
          api_gateway_managed: false,
          api_key_required: false,
          authorization_scopes: AuthorizationScopes.default(visited),
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          model_selection_expression: 'model_selection_expression',
          operation_name: 'operation_name',
          request_models: RouteModels.default(visited),
          request_parameters: RouteParameters.default(visited),
          route_id: 'route_id',
          route_key: 'route_key',
          route_response_selection_expression: 'route_response_selection_expression',
          target: 'target',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['authorizationScopes'] = AuthorizationScopes.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestModels'] = RouteModels.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['requestParameters'] = RouteParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['routeId'] = stub[:route_id] unless stub[:route_id].nil?
        data['routeKey'] = stub[:route_key] unless stub[:route_key].nil?
        data['routeResponseSelectionExpression'] = stub[:route_response_selection_expression] unless stub[:route_response_selection_expression].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for RouteParameters
    class RouteParameters
      def self.default(visited=[])
        return nil if visited.include?('RouteParameters')
        visited = visited + ['RouteParameters']
        {
          test_key: ParameterConstraints.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ParameterConstraints.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for ParameterConstraints
    class ParameterConstraints
      def self.default(visited=[])
        return nil if visited.include?('ParameterConstraints')
        visited = visited + ['ParameterConstraints']
        {
          required: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ParameterConstraints.new
        data = {}
        data['required'] = stub[:required] unless stub[:required].nil?
        data
      end
    end

    # Map Stubber for RouteModels
    class RouteModels
      def self.default(visited=[])
        return nil if visited.include?('RouteModels')
        visited = visited + ['RouteModels']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Stubber for AuthorizationScopes
    class AuthorizationScopes
      def self.default(visited=[])
        return nil if visited.include?('AuthorizationScopes')
        visited = visited + ['AuthorizationScopes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateRouteResponse
    class CreateRouteResponse
      def self.default(visited=[])
        {
          model_selection_expression: 'model_selection_expression',
          response_models: RouteModels.default(visited),
          response_parameters: RouteParameters.default(visited),
          route_response_id: 'route_response_id',
          route_response_key: 'route_response_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['responseModels'] = RouteModels.stub(stub[:response_models]) unless stub[:response_models].nil?
        data['responseParameters'] = RouteParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['routeResponseId'] = stub[:route_response_id] unless stub[:route_response_id].nil?
        data['routeResponseKey'] = stub[:route_response_key] unless stub[:route_response_key].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateStage
    class CreateStage
      def self.default(visited=[])
        {
          access_log_settings: AccessLogSettings.default(visited),
          api_gateway_managed: false,
          auto_deploy: false,
          client_certificate_id: 'client_certificate_id',
          created_date: Time.now,
          default_route_settings: RouteSettings.default(visited),
          deployment_id: 'deployment_id',
          description: 'description',
          last_deployment_status_message: 'last_deployment_status_message',
          last_updated_date: Time.now,
          route_settings: RouteSettingsMap.default(visited),
          stage_name: 'stage_name',
          stage_variables: StageVariablesMap.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['autoDeploy'] = stub[:auto_deploy] unless stub[:auto_deploy].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['defaultRouteSettings'] = RouteSettings.stub(stub[:default_route_settings]) unless stub[:default_route_settings].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastDeploymentStatusMessage'] = stub[:last_deployment_status_message] unless stub[:last_deployment_status_message].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_date_time(stub[:last_updated_date]) unless stub[:last_updated_date].nil?
        data['routeSettings'] = RouteSettingsMap.stub(stub[:route_settings]) unless stub[:route_settings].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['stageVariables'] = StageVariablesMap.stub(stub[:stage_variables]) unless stub[:stage_variables].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for StageVariablesMap
    class StageVariablesMap
      def self.default(visited=[])
        return nil if visited.include?('StageVariablesMap')
        visited = visited + ['StageVariablesMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Stubber for RouteSettingsMap
    class RouteSettingsMap
      def self.default(visited=[])
        return nil if visited.include?('RouteSettingsMap')
        visited = visited + ['RouteSettingsMap']
        {
          test_key: RouteSettings.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = RouteSettings.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RouteSettings
    class RouteSettings
      def self.default(visited=[])
        return nil if visited.include?('RouteSettings')
        visited = visited + ['RouteSettings']
        {
          data_trace_enabled: false,
          detailed_metrics_enabled: false,
          logging_level: 'logging_level',
          throttling_burst_limit: 1,
          throttling_rate_limit: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteSettings.new
        data = {}
        data['dataTraceEnabled'] = stub[:data_trace_enabled] unless stub[:data_trace_enabled].nil?
        data['detailedMetricsEnabled'] = stub[:detailed_metrics_enabled] unless stub[:detailed_metrics_enabled].nil?
        data['loggingLevel'] = stub[:logging_level] unless stub[:logging_level].nil?
        data['throttlingBurstLimit'] = stub[:throttling_burst_limit] unless stub[:throttling_burst_limit].nil?
        data['throttlingRateLimit'] = Hearth::NumberHelper.serialize(stub[:throttling_rate_limit])
        data
      end
    end

    # Structure Stubber for AccessLogSettings
    class AccessLogSettings
      def self.default(visited=[])
        return nil if visited.include?('AccessLogSettings')
        visited = visited + ['AccessLogSettings']
        {
          destination_arn: 'destination_arn',
          format: 'format',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessLogSettings.new
        data = {}
        data['destinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['format'] = stub[:format] unless stub[:format].nil?
        data
      end
    end

    # Operation Stubber for CreateVpcLink
    class CreateVpcLink
      def self.default(visited=[])
        {
          created_date: Time.now,
          name: 'name',
          security_group_ids: SecurityGroupIdList.default(visited),
          subnet_ids: SubnetIdList.default(visited),
          tags: Tags.default(visited),
          vpc_link_id: 'vpc_link_id',
          vpc_link_status: 'vpc_link_status',
          vpc_link_status_message: 'vpc_link_status_message',
          vpc_link_version: 'vpc_link_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['securityGroupIds'] = SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcLinkId'] = stub[:vpc_link_id] unless stub[:vpc_link_id].nil?
        data['vpcLinkStatus'] = stub[:vpc_link_status] unless stub[:vpc_link_status].nil?
        data['vpcLinkStatusMessage'] = stub[:vpc_link_status_message] unless stub[:vpc_link_status_message].nil?
        data['vpcLinkVersion'] = stub[:vpc_link_version] unless stub[:vpc_link_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DeleteAccessLogSettings
    class DeleteAccessLogSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteApi
    class DeleteApi
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteApiMapping
    class DeleteApiMapping
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAuthorizer
    class DeleteAuthorizer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteCorsConfiguration
    class DeleteCorsConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDeployment
    class DeleteDeployment
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteDomainName
    class DeleteDomainName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteIntegration
    class DeleteIntegration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteIntegrationResponse
    class DeleteIntegrationResponse
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteModel
    class DeleteModel
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRoute
    class DeleteRoute
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRouteRequestParameter
    class DeleteRouteRequestParameter
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRouteResponse
    class DeleteRouteResponse
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteRouteSettings
    class DeleteRouteSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteStage
    class DeleteStage
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteVpcLink
    class DeleteVpcLink
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for ExportApi
    class ExportApi
      def self.default(visited=[])
        {
          body: 'body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:body] || '')
      end
    end

    # Operation Stubber for GetApi
    class GetApi
      def self.default(visited=[])
        {
          api_endpoint: 'api_endpoint',
          api_gateway_managed: false,
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          cors_configuration: Cors.default(visited),
          created_date: Time.now,
          description: 'description',
          disable_schema_validation: false,
          disable_execute_api_endpoint: false,
          import_info: List____listOf__string.default(visited),
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          tags: Tags.default(visited),
          version: 'version',
          warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Cors.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['disableSchemaValidation'] = stub[:disable_schema_validation] unless stub[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data['importInfo'] = List____listOf__string.stub(stub[:import_info]) unless stub[:import_info].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['protocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['routeSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = List____listOf__string.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApiMapping
    class GetApiMapping
      def self.default(visited=[])
        {
          api_id: 'api_id',
          api_mapping_id: 'api_mapping_id',
          api_mapping_key: 'api_mapping_key',
          stage: 'stage',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiMappingId'] = stub[:api_mapping_id] unless stub[:api_mapping_id].nil?
        data['apiMappingKey'] = stub[:api_mapping_key] unless stub[:api_mapping_key].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApiMappings
    class GetApiMappings
      def self.default(visited=[])
        {
          items: List____listOfApiMapping.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfApiMapping.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfApiMapping
    class List____listOfApiMapping
      def self.default(visited=[])
        return nil if visited.include?('List____listOfApiMapping')
        visited = visited + ['List____listOfApiMapping']
        [
          ApiMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApiMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApiMapping
    class ApiMapping
      def self.default(visited=[])
        return nil if visited.include?('ApiMapping')
        visited = visited + ['ApiMapping']
        {
          api_id: 'api_id',
          api_mapping_id: 'api_mapping_id',
          api_mapping_key: 'api_mapping_key',
          stage: 'stage',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiMapping.new
        data = {}
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiMappingId'] = stub[:api_mapping_id] unless stub[:api_mapping_id].nil?
        data['apiMappingKey'] = stub[:api_mapping_key] unless stub[:api_mapping_key].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data
      end
    end

    # Operation Stubber for GetApis
    class GetApis
      def self.default(visited=[])
        {
          items: List____listOfApi.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfApi.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfApi
    class List____listOfApi
      def self.default(visited=[])
        return nil if visited.include?('List____listOfApi')
        visited = visited + ['List____listOfApi']
        [
          Api.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Api.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Api
    class Api
      def self.default(visited=[])
        return nil if visited.include?('Api')
        visited = visited + ['Api']
        {
          api_endpoint: 'api_endpoint',
          api_gateway_managed: false,
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          cors_configuration: Cors.default(visited),
          created_date: Time.now,
          description: 'description',
          disable_schema_validation: false,
          disable_execute_api_endpoint: false,
          import_info: List____listOf__string.default(visited),
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          tags: Tags.default(visited),
          version: 'version',
          warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Api.new
        data = {}
        data['apiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Cors.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['disableSchemaValidation'] = stub[:disable_schema_validation] unless stub[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data['importInfo'] = List____listOf__string.stub(stub[:import_info]) unless stub[:import_info].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['protocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['routeSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = List____listOf__string.stub(stub[:warnings]) unless stub[:warnings].nil?
        data
      end
    end

    # Operation Stubber for GetAuthorizer
    class GetAuthorizer
      def self.default(visited=[])
        {
          authorizer_credentials_arn: 'authorizer_credentials_arn',
          authorizer_id: 'authorizer_id',
          authorizer_payload_format_version: 'authorizer_payload_format_version',
          authorizer_result_ttl_in_seconds: 1,
          authorizer_type: 'authorizer_type',
          authorizer_uri: 'authorizer_uri',
          enable_simple_responses: false,
          identity_source: IdentitySourceList.default(visited),
          identity_validation_expression: 'identity_validation_expression',
          jwt_configuration: JWTConfiguration.default(visited),
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerCredentialsArn'] = stub[:authorizer_credentials_arn] unless stub[:authorizer_credentials_arn].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['authorizerPayloadFormatVersion'] = stub[:authorizer_payload_format_version] unless stub[:authorizer_payload_format_version].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerType'] = stub[:authorizer_type] unless stub[:authorizer_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['enableSimpleResponses'] = stub[:enable_simple_responses] unless stub[:enable_simple_responses].nil?
        data['identitySource'] = IdentitySourceList.stub(stub[:identity_source]) unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['jwtConfiguration'] = JWTConfiguration.stub(stub[:jwt_configuration]) unless stub[:jwt_configuration].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAuthorizers
    class GetAuthorizers
      def self.default(visited=[])
        {
          items: List____listOfAuthorizer.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfAuthorizer.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfAuthorizer
    class List____listOfAuthorizer
      def self.default(visited=[])
        return nil if visited.include?('List____listOfAuthorizer')
        visited = visited + ['List____listOfAuthorizer']
        [
          Authorizer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Authorizer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Authorizer
    class Authorizer
      def self.default(visited=[])
        return nil if visited.include?('Authorizer')
        visited = visited + ['Authorizer']
        {
          authorizer_credentials_arn: 'authorizer_credentials_arn',
          authorizer_id: 'authorizer_id',
          authorizer_payload_format_version: 'authorizer_payload_format_version',
          authorizer_result_ttl_in_seconds: 1,
          authorizer_type: 'authorizer_type',
          authorizer_uri: 'authorizer_uri',
          enable_simple_responses: false,
          identity_source: IdentitySourceList.default(visited),
          identity_validation_expression: 'identity_validation_expression',
          jwt_configuration: JWTConfiguration.default(visited),
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::Authorizer.new
        data = {}
        data['authorizerCredentialsArn'] = stub[:authorizer_credentials_arn] unless stub[:authorizer_credentials_arn].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['authorizerPayloadFormatVersion'] = stub[:authorizer_payload_format_version] unless stub[:authorizer_payload_format_version].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerType'] = stub[:authorizer_type] unless stub[:authorizer_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['enableSimpleResponses'] = stub[:enable_simple_responses] unless stub[:enable_simple_responses].nil?
        data['identitySource'] = IdentitySourceList.stub(stub[:identity_source]) unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['jwtConfiguration'] = JWTConfiguration.stub(stub[:jwt_configuration]) unless stub[:jwt_configuration].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetDeployment
    class GetDeployment
      def self.default(visited=[])
        {
          auto_deployed: false,
          created_date: Time.now,
          deployment_id: 'deployment_id',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoDeployed'] = stub[:auto_deployed] unless stub[:auto_deployed].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeployments
    class GetDeployments
      def self.default(visited=[])
        {
          items: List____listOfDeployment.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfDeployment.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDeployment
    class List____listOfDeployment
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDeployment')
        visited = visited + ['List____listOfDeployment']
        [
          Deployment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Deployment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Deployment
    class Deployment
      def self.default(visited=[])
        return nil if visited.include?('Deployment')
        visited = visited + ['Deployment']
        {
          auto_deployed: false,
          created_date: Time.now,
          deployment_id: 'deployment_id',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::Deployment.new
        data = {}
        data['autoDeployed'] = stub[:auto_deployed] unless stub[:auto_deployed].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetDomainName
    class GetDomainName
      def self.default(visited=[])
        {
          api_mapping_selection_expression: 'api_mapping_selection_expression',
          domain_name: 'domain_name',
          domain_name_configurations: DomainNameConfigurations.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiMappingSelectionExpression'] = stub[:api_mapping_selection_expression] unless stub[:api_mapping_selection_expression].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainNameConfigurations'] = DomainNameConfigurations.stub(stub[:domain_name_configurations]) unless stub[:domain_name_configurations].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDomainNames
    class GetDomainNames
      def self.default(visited=[])
        {
          items: List____listOfDomainName.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfDomainName.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfDomainName
    class List____listOfDomainName
      def self.default(visited=[])
        return nil if visited.include?('List____listOfDomainName')
        visited = visited + ['List____listOfDomainName']
        [
          DomainName.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DomainName.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DomainName
    class DomainName
      def self.default(visited=[])
        return nil if visited.include?('DomainName')
        visited = visited + ['DomainName']
        {
          api_mapping_selection_expression: 'api_mapping_selection_expression',
          domain_name: 'domain_name',
          domain_name_configurations: DomainNameConfigurations.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainName.new
        data = {}
        data['apiMappingSelectionExpression'] = stub[:api_mapping_selection_expression] unless stub[:api_mapping_selection_expression].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainNameConfigurations'] = DomainNameConfigurations.stub(stub[:domain_name_configurations]) unless stub[:domain_name_configurations].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetIntegration
    class GetIntegration
      def self.default(visited=[])
        {
          api_gateway_managed: false,
          connection_id: 'connection_id',
          connection_type: 'connection_type',
          content_handling_strategy: 'content_handling_strategy',
          credentials_arn: 'credentials_arn',
          description: 'description',
          integration_id: 'integration_id',
          integration_method: 'integration_method',
          integration_response_selection_expression: 'integration_response_selection_expression',
          integration_subtype: 'integration_subtype',
          integration_type: 'integration_type',
          integration_uri: 'integration_uri',
          passthrough_behavior: 'passthrough_behavior',
          payload_format_version: 'payload_format_version',
          request_parameters: IntegrationParameters.default(visited),
          request_templates: TemplateMap.default(visited),
          response_parameters: ResponseParameters.default(visited),
          template_selection_expression: 'template_selection_expression',
          timeout_in_millis: 1,
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['credentialsArn'] = stub[:credentials_arn] unless stub[:credentials_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['integrationId'] = stub[:integration_id] unless stub[:integration_id].nil?
        data['integrationMethod'] = stub[:integration_method] unless stub[:integration_method].nil?
        data['integrationResponseSelectionExpression'] = stub[:integration_response_selection_expression] unless stub[:integration_response_selection_expression].nil?
        data['integrationSubtype'] = stub[:integration_subtype] unless stub[:integration_subtype].nil?
        data['integrationType'] = stub[:integration_type] unless stub[:integration_type].nil?
        data['integrationUri'] = stub[:integration_uri] unless stub[:integration_uri].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['payloadFormatVersion'] = stub[:payload_format_version] unless stub[:payload_format_version].nil?
        data['requestParameters'] = IntegrationParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = TemplateMap.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['responseParameters'] = ResponseParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetIntegrationResponse
    class GetIntegrationResponse
      def self.default(visited=[])
        {
          content_handling_strategy: 'content_handling_strategy',
          integration_response_id: 'integration_response_id',
          integration_response_key: 'integration_response_key',
          response_parameters: IntegrationParameters.default(visited),
          response_templates: TemplateMap.default(visited),
          template_selection_expression: 'template_selection_expression',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['integrationResponseId'] = stub[:integration_response_id] unless stub[:integration_response_id].nil?
        data['integrationResponseKey'] = stub[:integration_response_key] unless stub[:integration_response_key].nil?
        data['responseParameters'] = IntegrationParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = TemplateMap.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetIntegrationResponses
    class GetIntegrationResponses
      def self.default(visited=[])
        {
          items: List____listOfIntegrationResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfIntegrationResponse.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfIntegrationResponse
    class List____listOfIntegrationResponse
      def self.default(visited=[])
        return nil if visited.include?('List____listOfIntegrationResponse')
        visited = visited + ['List____listOfIntegrationResponse']
        [
          IntegrationResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IntegrationResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IntegrationResponse
    class IntegrationResponse
      def self.default(visited=[])
        return nil if visited.include?('IntegrationResponse')
        visited = visited + ['IntegrationResponse']
        {
          content_handling_strategy: 'content_handling_strategy',
          integration_response_id: 'integration_response_id',
          integration_response_key: 'integration_response_key',
          response_parameters: IntegrationParameters.default(visited),
          response_templates: TemplateMap.default(visited),
          template_selection_expression: 'template_selection_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegrationResponse.new
        data = {}
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['integrationResponseId'] = stub[:integration_response_id] unless stub[:integration_response_id].nil?
        data['integrationResponseKey'] = stub[:integration_response_key] unless stub[:integration_response_key].nil?
        data['responseParameters'] = IntegrationParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = TemplateMap.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        data
      end
    end

    # Operation Stubber for GetIntegrations
    class GetIntegrations
      def self.default(visited=[])
        {
          items: List____listOfIntegration.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfIntegration.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfIntegration
    class List____listOfIntegration
      def self.default(visited=[])
        return nil if visited.include?('List____listOfIntegration')
        visited = visited + ['List____listOfIntegration']
        [
          Integration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Integration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Integration
    class Integration
      def self.default(visited=[])
        return nil if visited.include?('Integration')
        visited = visited + ['Integration']
        {
          api_gateway_managed: false,
          connection_id: 'connection_id',
          connection_type: 'connection_type',
          content_handling_strategy: 'content_handling_strategy',
          credentials_arn: 'credentials_arn',
          description: 'description',
          integration_id: 'integration_id',
          integration_method: 'integration_method',
          integration_response_selection_expression: 'integration_response_selection_expression',
          integration_subtype: 'integration_subtype',
          integration_type: 'integration_type',
          integration_uri: 'integration_uri',
          passthrough_behavior: 'passthrough_behavior',
          payload_format_version: 'payload_format_version',
          request_parameters: IntegrationParameters.default(visited),
          request_templates: TemplateMap.default(visited),
          response_parameters: ResponseParameters.default(visited),
          template_selection_expression: 'template_selection_expression',
          timeout_in_millis: 1,
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Integration.new
        data = {}
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['credentialsArn'] = stub[:credentials_arn] unless stub[:credentials_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['integrationId'] = stub[:integration_id] unless stub[:integration_id].nil?
        data['integrationMethod'] = stub[:integration_method] unless stub[:integration_method].nil?
        data['integrationResponseSelectionExpression'] = stub[:integration_response_selection_expression] unless stub[:integration_response_selection_expression].nil?
        data['integrationSubtype'] = stub[:integration_subtype] unless stub[:integration_subtype].nil?
        data['integrationType'] = stub[:integration_type] unless stub[:integration_type].nil?
        data['integrationUri'] = stub[:integration_uri] unless stub[:integration_uri].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['payloadFormatVersion'] = stub[:payload_format_version] unless stub[:payload_format_version].nil?
        data['requestParameters'] = IntegrationParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = TemplateMap.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['responseParameters'] = ResponseParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        data
      end
    end

    # Operation Stubber for GetModel
    class GetModel
      def self.default(visited=[])
        {
          content_type: 'content_type',
          description: 'description',
          model_id: 'model_id',
          name: 'name',
          schema: 'schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetModelTemplate
    class GetModelTemplate
      def self.default(visited=[])
        {
          value: 'value',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['value'] = stub[:value] unless stub[:value].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetModels
    class GetModels
      def self.default(visited=[])
        {
          items: List____listOfModel.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfModel.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfModel
    class List____listOfModel
      def self.default(visited=[])
        return nil if visited.include?('List____listOfModel')
        visited = visited + ['List____listOfModel']
        [
          Model.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Model.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Model
    class Model
      def self.default(visited=[])
        return nil if visited.include?('Model')
        visited = visited + ['Model']
        {
          content_type: 'content_type',
          description: 'description',
          model_id: 'model_id',
          name: 'name',
          schema: 'schema',
        }
      end

      def self.stub(stub)
        stub ||= Types::Model.new
        data = {}
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data
      end
    end

    # Operation Stubber for GetRoute
    class GetRoute
      def self.default(visited=[])
        {
          api_gateway_managed: false,
          api_key_required: false,
          authorization_scopes: AuthorizationScopes.default(visited),
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          model_selection_expression: 'model_selection_expression',
          operation_name: 'operation_name',
          request_models: RouteModels.default(visited),
          request_parameters: RouteParameters.default(visited),
          route_id: 'route_id',
          route_key: 'route_key',
          route_response_selection_expression: 'route_response_selection_expression',
          target: 'target',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['authorizationScopes'] = AuthorizationScopes.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestModels'] = RouteModels.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['requestParameters'] = RouteParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['routeId'] = stub[:route_id] unless stub[:route_id].nil?
        data['routeKey'] = stub[:route_key] unless stub[:route_key].nil?
        data['routeResponseSelectionExpression'] = stub[:route_response_selection_expression] unless stub[:route_response_selection_expression].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRouteResponse
    class GetRouteResponse
      def self.default(visited=[])
        {
          model_selection_expression: 'model_selection_expression',
          response_models: RouteModels.default(visited),
          response_parameters: RouteParameters.default(visited),
          route_response_id: 'route_response_id',
          route_response_key: 'route_response_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['responseModels'] = RouteModels.stub(stub[:response_models]) unless stub[:response_models].nil?
        data['responseParameters'] = RouteParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['routeResponseId'] = stub[:route_response_id] unless stub[:route_response_id].nil?
        data['routeResponseKey'] = stub[:route_response_key] unless stub[:route_response_key].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRouteResponses
    class GetRouteResponses
      def self.default(visited=[])
        {
          items: List____listOfRouteResponse.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfRouteResponse.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRouteResponse
    class List____listOfRouteResponse
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRouteResponse')
        visited = visited + ['List____listOfRouteResponse']
        [
          RouteResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RouteResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RouteResponse
    class RouteResponse
      def self.default(visited=[])
        return nil if visited.include?('RouteResponse')
        visited = visited + ['RouteResponse']
        {
          model_selection_expression: 'model_selection_expression',
          response_models: RouteModels.default(visited),
          response_parameters: RouteParameters.default(visited),
          route_response_id: 'route_response_id',
          route_response_key: 'route_response_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::RouteResponse.new
        data = {}
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['responseModels'] = RouteModels.stub(stub[:response_models]) unless stub[:response_models].nil?
        data['responseParameters'] = RouteParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['routeResponseId'] = stub[:route_response_id] unless stub[:route_response_id].nil?
        data['routeResponseKey'] = stub[:route_response_key] unless stub[:route_response_key].nil?
        data
      end
    end

    # Operation Stubber for GetRoutes
    class GetRoutes
      def self.default(visited=[])
        {
          items: List____listOfRoute.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfRoute.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfRoute
    class List____listOfRoute
      def self.default(visited=[])
        return nil if visited.include?('List____listOfRoute')
        visited = visited + ['List____listOfRoute']
        [
          Route.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Route.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Route
    class Route
      def self.default(visited=[])
        return nil if visited.include?('Route')
        visited = visited + ['Route']
        {
          api_gateway_managed: false,
          api_key_required: false,
          authorization_scopes: AuthorizationScopes.default(visited),
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          model_selection_expression: 'model_selection_expression',
          operation_name: 'operation_name',
          request_models: RouteModels.default(visited),
          request_parameters: RouteParameters.default(visited),
          route_id: 'route_id',
          route_key: 'route_key',
          route_response_selection_expression: 'route_response_selection_expression',
          target: 'target',
        }
      end

      def self.stub(stub)
        stub ||= Types::Route.new
        data = {}
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['authorizationScopes'] = AuthorizationScopes.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestModels'] = RouteModels.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['requestParameters'] = RouteParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['routeId'] = stub[:route_id] unless stub[:route_id].nil?
        data['routeKey'] = stub[:route_key] unless stub[:route_key].nil?
        data['routeResponseSelectionExpression'] = stub[:route_response_selection_expression] unless stub[:route_response_selection_expression].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        data
      end
    end

    # Operation Stubber for GetStage
    class GetStage
      def self.default(visited=[])
        {
          access_log_settings: AccessLogSettings.default(visited),
          api_gateway_managed: false,
          auto_deploy: false,
          client_certificate_id: 'client_certificate_id',
          created_date: Time.now,
          default_route_settings: RouteSettings.default(visited),
          deployment_id: 'deployment_id',
          description: 'description',
          last_deployment_status_message: 'last_deployment_status_message',
          last_updated_date: Time.now,
          route_settings: RouteSettingsMap.default(visited),
          stage_name: 'stage_name',
          stage_variables: StageVariablesMap.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['autoDeploy'] = stub[:auto_deploy] unless stub[:auto_deploy].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['defaultRouteSettings'] = RouteSettings.stub(stub[:default_route_settings]) unless stub[:default_route_settings].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastDeploymentStatusMessage'] = stub[:last_deployment_status_message] unless stub[:last_deployment_status_message].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_date_time(stub[:last_updated_date]) unless stub[:last_updated_date].nil?
        data['routeSettings'] = RouteSettingsMap.stub(stub[:route_settings]) unless stub[:route_settings].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['stageVariables'] = StageVariablesMap.stub(stub[:stage_variables]) unless stub[:stage_variables].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStages
    class GetStages
      def self.default(visited=[])
        {
          items: List____listOfStage.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfStage.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfStage
    class List____listOfStage
      def self.default(visited=[])
        return nil if visited.include?('List____listOfStage')
        visited = visited + ['List____listOfStage']
        [
          Stage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Stage
    class Stage
      def self.default(visited=[])
        return nil if visited.include?('Stage')
        visited = visited + ['Stage']
        {
          access_log_settings: AccessLogSettings.default(visited),
          api_gateway_managed: false,
          auto_deploy: false,
          client_certificate_id: 'client_certificate_id',
          created_date: Time.now,
          default_route_settings: RouteSettings.default(visited),
          deployment_id: 'deployment_id',
          description: 'description',
          last_deployment_status_message: 'last_deployment_status_message',
          last_updated_date: Time.now,
          route_settings: RouteSettingsMap.default(visited),
          stage_name: 'stage_name',
          stage_variables: StageVariablesMap.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Stage.new
        data = {}
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['autoDeploy'] = stub[:auto_deploy] unless stub[:auto_deploy].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['defaultRouteSettings'] = RouteSettings.stub(stub[:default_route_settings]) unless stub[:default_route_settings].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastDeploymentStatusMessage'] = stub[:last_deployment_status_message] unless stub[:last_deployment_status_message].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_date_time(stub[:last_updated_date]) unless stub[:last_updated_date].nil?
        data['routeSettings'] = RouteSettingsMap.stub(stub[:route_settings]) unless stub[:route_settings].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['stageVariables'] = StageVariablesMap.stub(stub[:stage_variables]) unless stub[:stage_variables].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetTags
    class GetTags
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVpcLink
    class GetVpcLink
      def self.default(visited=[])
        {
          created_date: Time.now,
          name: 'name',
          security_group_ids: SecurityGroupIdList.default(visited),
          subnet_ids: SubnetIdList.default(visited),
          tags: Tags.default(visited),
          vpc_link_id: 'vpc_link_id',
          vpc_link_status: 'vpc_link_status',
          vpc_link_status_message: 'vpc_link_status_message',
          vpc_link_version: 'vpc_link_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['securityGroupIds'] = SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcLinkId'] = stub[:vpc_link_id] unless stub[:vpc_link_id].nil?
        data['vpcLinkStatus'] = stub[:vpc_link_status] unless stub[:vpc_link_status].nil?
        data['vpcLinkStatusMessage'] = stub[:vpc_link_status_message] unless stub[:vpc_link_status_message].nil?
        data['vpcLinkVersion'] = stub[:vpc_link_version] unless stub[:vpc_link_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVpcLinks
    class GetVpcLinks
      def self.default(visited=[])
        {
          items: List____listOfVpcLink.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['items'] = List____listOfVpcLink.stub(stub[:items]) unless stub[:items].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for __listOfVpcLink
    class List____listOfVpcLink
      def self.default(visited=[])
        return nil if visited.include?('List____listOfVpcLink')
        visited = visited + ['List____listOfVpcLink']
        [
          VpcLink.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VpcLink.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VpcLink
    class VpcLink
      def self.default(visited=[])
        return nil if visited.include?('VpcLink')
        visited = visited + ['VpcLink']
        {
          created_date: Time.now,
          name: 'name',
          security_group_ids: SecurityGroupIdList.default(visited),
          subnet_ids: SubnetIdList.default(visited),
          tags: Tags.default(visited),
          vpc_link_id: 'vpc_link_id',
          vpc_link_status: 'vpc_link_status',
          vpc_link_status_message: 'vpc_link_status_message',
          vpc_link_version: 'vpc_link_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcLink.new
        data = {}
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['securityGroupIds'] = SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcLinkId'] = stub[:vpc_link_id] unless stub[:vpc_link_id].nil?
        data['vpcLinkStatus'] = stub[:vpc_link_status] unless stub[:vpc_link_status].nil?
        data['vpcLinkStatusMessage'] = stub[:vpc_link_status_message] unless stub[:vpc_link_status_message].nil?
        data['vpcLinkVersion'] = stub[:vpc_link_version] unless stub[:vpc_link_version].nil?
        data
      end
    end

    # Operation Stubber for ImportApi
    class ImportApi
      def self.default(visited=[])
        {
          api_endpoint: 'api_endpoint',
          api_gateway_managed: false,
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          cors_configuration: Cors.default(visited),
          created_date: Time.now,
          description: 'description',
          disable_schema_validation: false,
          disable_execute_api_endpoint: false,
          import_info: List____listOf__string.default(visited),
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          tags: Tags.default(visited),
          version: 'version',
          warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Cors.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['disableSchemaValidation'] = stub[:disable_schema_validation] unless stub[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data['importInfo'] = List____listOf__string.stub(stub[:import_info]) unless stub[:import_info].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['protocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['routeSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = List____listOf__string.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ReimportApi
    class ReimportApi
      def self.default(visited=[])
        {
          api_endpoint: 'api_endpoint',
          api_gateway_managed: false,
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          cors_configuration: Cors.default(visited),
          created_date: Time.now,
          description: 'description',
          disable_schema_validation: false,
          disable_execute_api_endpoint: false,
          import_info: List____listOf__string.default(visited),
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          tags: Tags.default(visited),
          version: 'version',
          warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Cors.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['disableSchemaValidation'] = stub[:disable_schema_validation] unless stub[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data['importInfo'] = List____listOf__string.stub(stub[:import_info]) unless stub[:import_info].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['protocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['routeSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = List____listOf__string.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ResetAuthorizersCache
    class ResetAuthorizersCache
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateApi
    class UpdateApi
      def self.default(visited=[])
        {
          api_endpoint: 'api_endpoint',
          api_gateway_managed: false,
          api_id: 'api_id',
          api_key_selection_expression: 'api_key_selection_expression',
          cors_configuration: Cors.default(visited),
          created_date: Time.now,
          description: 'description',
          disable_schema_validation: false,
          disable_execute_api_endpoint: false,
          import_info: List____listOf__string.default(visited),
          name: 'name',
          protocol_type: 'protocol_type',
          route_selection_expression: 'route_selection_expression',
          tags: Tags.default(visited),
          version: 'version',
          warnings: List____listOf__string.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiEndpoint'] = stub[:api_endpoint] unless stub[:api_endpoint].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiKeySelectionExpression'] = stub[:api_key_selection_expression] unless stub[:api_key_selection_expression].nil?
        data['corsConfiguration'] = Cors.stub(stub[:cors_configuration]) unless stub[:cors_configuration].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['disableSchemaValidation'] = stub[:disable_schema_validation] unless stub[:disable_schema_validation].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data['importInfo'] = List____listOf__string.stub(stub[:import_info]) unless stub[:import_info].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['protocolType'] = stub[:protocol_type] unless stub[:protocol_type].nil?
        data['routeSelectionExpression'] = stub[:route_selection_expression] unless stub[:route_selection_expression].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = List____listOf__string.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApiMapping
    class UpdateApiMapping
      def self.default(visited=[])
        {
          api_id: 'api_id',
          api_mapping_id: 'api_mapping_id',
          api_mapping_key: 'api_mapping_key',
          stage: 'stage',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['apiMappingId'] = stub[:api_mapping_id] unless stub[:api_mapping_id].nil?
        data['apiMappingKey'] = stub[:api_mapping_key] unless stub[:api_mapping_key].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAuthorizer
    class UpdateAuthorizer
      def self.default(visited=[])
        {
          authorizer_credentials_arn: 'authorizer_credentials_arn',
          authorizer_id: 'authorizer_id',
          authorizer_payload_format_version: 'authorizer_payload_format_version',
          authorizer_result_ttl_in_seconds: 1,
          authorizer_type: 'authorizer_type',
          authorizer_uri: 'authorizer_uri',
          enable_simple_responses: false,
          identity_source: IdentitySourceList.default(visited),
          identity_validation_expression: 'identity_validation_expression',
          jwt_configuration: JWTConfiguration.default(visited),
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['authorizerCredentialsArn'] = stub[:authorizer_credentials_arn] unless stub[:authorizer_credentials_arn].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['authorizerPayloadFormatVersion'] = stub[:authorizer_payload_format_version] unless stub[:authorizer_payload_format_version].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        data['authorizerType'] = stub[:authorizer_type] unless stub[:authorizer_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['enableSimpleResponses'] = stub[:enable_simple_responses] unless stub[:enable_simple_responses].nil?
        data['identitySource'] = IdentitySourceList.stub(stub[:identity_source]) unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['jwtConfiguration'] = JWTConfiguration.stub(stub[:jwt_configuration]) unless stub[:jwt_configuration].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDeployment
    class UpdateDeployment
      def self.default(visited=[])
        {
          auto_deployed: false,
          created_date: Time.now,
          deployment_id: 'deployment_id',
          deployment_status: 'deployment_status',
          deployment_status_message: 'deployment_status_message',
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['autoDeployed'] = stub[:auto_deployed] unless stub[:auto_deployed].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['deploymentStatus'] = stub[:deployment_status] unless stub[:deployment_status].nil?
        data['deploymentStatusMessage'] = stub[:deployment_status_message] unless stub[:deployment_status_message].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDomainName
    class UpdateDomainName
      def self.default(visited=[])
        {
          api_mapping_selection_expression: 'api_mapping_selection_expression',
          domain_name: 'domain_name',
          domain_name_configurations: DomainNameConfigurations.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiMappingSelectionExpression'] = stub[:api_mapping_selection_expression] unless stub[:api_mapping_selection_expression].nil?
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['domainNameConfigurations'] = DomainNameConfigurations.stub(stub[:domain_name_configurations]) unless stub[:domain_name_configurations].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIntegration
    class UpdateIntegration
      def self.default(visited=[])
        {
          api_gateway_managed: false,
          connection_id: 'connection_id',
          connection_type: 'connection_type',
          content_handling_strategy: 'content_handling_strategy',
          credentials_arn: 'credentials_arn',
          description: 'description',
          integration_id: 'integration_id',
          integration_method: 'integration_method',
          integration_response_selection_expression: 'integration_response_selection_expression',
          integration_subtype: 'integration_subtype',
          integration_type: 'integration_type',
          integration_uri: 'integration_uri',
          passthrough_behavior: 'passthrough_behavior',
          payload_format_version: 'payload_format_version',
          request_parameters: IntegrationParameters.default(visited),
          request_templates: TemplateMap.default(visited),
          response_parameters: ResponseParameters.default(visited),
          template_selection_expression: 'template_selection_expression',
          timeout_in_millis: 1,
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['credentialsArn'] = stub[:credentials_arn] unless stub[:credentials_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['integrationId'] = stub[:integration_id] unless stub[:integration_id].nil?
        data['integrationMethod'] = stub[:integration_method] unless stub[:integration_method].nil?
        data['integrationResponseSelectionExpression'] = stub[:integration_response_selection_expression] unless stub[:integration_response_selection_expression].nil?
        data['integrationSubtype'] = stub[:integration_subtype] unless stub[:integration_subtype].nil?
        data['integrationType'] = stub[:integration_type] unless stub[:integration_type].nil?
        data['integrationUri'] = stub[:integration_uri] unless stub[:integration_uri].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['payloadFormatVersion'] = stub[:payload_format_version] unless stub[:payload_format_version].nil?
        data['requestParameters'] = IntegrationParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = TemplateMap.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['responseParameters'] = ResponseParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIntegrationResponse
    class UpdateIntegrationResponse
      def self.default(visited=[])
        {
          content_handling_strategy: 'content_handling_strategy',
          integration_response_id: 'integration_response_id',
          integration_response_key: 'integration_response_key',
          response_parameters: IntegrationParameters.default(visited),
          response_templates: TemplateMap.default(visited),
          template_selection_expression: 'template_selection_expression',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentHandlingStrategy'] = stub[:content_handling_strategy] unless stub[:content_handling_strategy].nil?
        data['integrationResponseId'] = stub[:integration_response_id] unless stub[:integration_response_id].nil?
        data['integrationResponseKey'] = stub[:integration_response_key] unless stub[:integration_response_key].nil?
        data['responseParameters'] = IntegrationParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = TemplateMap.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['templateSelectionExpression'] = stub[:template_selection_expression] unless stub[:template_selection_expression].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateModel
    class UpdateModel
      def self.default(visited=[])
        {
          content_type: 'content_type',
          description: 'description',
          model_id: 'model_id',
          name: 'name',
          schema: 'schema',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['modelId'] = stub[:model_id] unless stub[:model_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRoute
    class UpdateRoute
      def self.default(visited=[])
        {
          api_gateway_managed: false,
          api_key_required: false,
          authorization_scopes: AuthorizationScopes.default(visited),
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          model_selection_expression: 'model_selection_expression',
          operation_name: 'operation_name',
          request_models: RouteModels.default(visited),
          request_parameters: RouteParameters.default(visited),
          route_id: 'route_id',
          route_key: 'route_key',
          route_response_selection_expression: 'route_response_selection_expression',
          target: 'target',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['authorizationScopes'] = AuthorizationScopes.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestModels'] = RouteModels.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['requestParameters'] = RouteParameters.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['routeId'] = stub[:route_id] unless stub[:route_id].nil?
        data['routeKey'] = stub[:route_key] unless stub[:route_key].nil?
        data['routeResponseSelectionExpression'] = stub[:route_response_selection_expression] unless stub[:route_response_selection_expression].nil?
        data['target'] = stub[:target] unless stub[:target].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRouteResponse
    class UpdateRouteResponse
      def self.default(visited=[])
        {
          model_selection_expression: 'model_selection_expression',
          response_models: RouteModels.default(visited),
          response_parameters: RouteParameters.default(visited),
          route_response_id: 'route_response_id',
          route_response_key: 'route_response_key',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['modelSelectionExpression'] = stub[:model_selection_expression] unless stub[:model_selection_expression].nil?
        data['responseModels'] = RouteModels.stub(stub[:response_models]) unless stub[:response_models].nil?
        data['responseParameters'] = RouteParameters.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['routeResponseId'] = stub[:route_response_id] unless stub[:route_response_id].nil?
        data['routeResponseKey'] = stub[:route_response_key] unless stub[:route_response_key].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStage
    class UpdateStage
      def self.default(visited=[])
        {
          access_log_settings: AccessLogSettings.default(visited),
          api_gateway_managed: false,
          auto_deploy: false,
          client_certificate_id: 'client_certificate_id',
          created_date: Time.now,
          default_route_settings: RouteSettings.default(visited),
          deployment_id: 'deployment_id',
          description: 'description',
          last_deployment_status_message: 'last_deployment_status_message',
          last_updated_date: Time.now,
          route_settings: RouteSettingsMap.default(visited),
          stage_name: 'stage_name',
          stage_variables: StageVariablesMap.default(visited),
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['apiGatewayManaged'] = stub[:api_gateway_managed] unless stub[:api_gateway_managed].nil?
        data['autoDeploy'] = stub[:auto_deploy] unless stub[:auto_deploy].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['defaultRouteSettings'] = RouteSettings.stub(stub[:default_route_settings]) unless stub[:default_route_settings].nil?
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastDeploymentStatusMessage'] = stub[:last_deployment_status_message] unless stub[:last_deployment_status_message].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_date_time(stub[:last_updated_date]) unless stub[:last_updated_date].nil?
        data['routeSettings'] = RouteSettingsMap.stub(stub[:route_settings]) unless stub[:route_settings].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['stageVariables'] = StageVariablesMap.stub(stub[:stage_variables]) unless stub[:stage_variables].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVpcLink
    class UpdateVpcLink
      def self.default(visited=[])
        {
          created_date: Time.now,
          name: 'name',
          security_group_ids: SecurityGroupIdList.default(visited),
          subnet_ids: SubnetIdList.default(visited),
          tags: Tags.default(visited),
          vpc_link_id: 'vpc_link_id',
          vpc_link_status: 'vpc_link_status',
          vpc_link_status_message: 'vpc_link_status_message',
          vpc_link_version: 'vpc_link_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['createdDate'] = Hearth::TimeHelper.to_date_time(stub[:created_date]) unless stub[:created_date].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['securityGroupIds'] = SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['subnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['tags'] = Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['vpcLinkId'] = stub[:vpc_link_id] unless stub[:vpc_link_id].nil?
        data['vpcLinkStatus'] = stub[:vpc_link_status] unless stub[:vpc_link_status].nil?
        data['vpcLinkStatusMessage'] = stub[:vpc_link_status_message] unless stub[:vpc_link_status_message].nil?
        data['vpcLinkVersion'] = stub[:vpc_link_version] unless stub[:vpc_link_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
