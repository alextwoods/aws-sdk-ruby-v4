# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::APIGateway
  module Stubs

    # Operation Stubber for CreateApiKey
    class CreateApiKey
      def self.default(visited=[])
        {
          id: 'id',
          value: 'value',
          name: 'name',
          customer_id: 'customer_id',
          description: 'description',
          enabled: false,
          created_date: Time.now,
          last_updated_date: Time.now,
          stage_keys: ListOfString.default(visited),
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['customerId'] = stub[:customer_id] unless stub[:customer_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['stageKeys'] = ListOfString.stub(stub[:stage_keys]) unless stub[:stage_keys].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for MapOfStringToString
    class MapOfStringToString
      def self.default(visited=[])
        return nil if visited.include?('MapOfStringToString')
        visited = visited + ['MapOfStringToString']
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

    # List Stubber for ListOfString
    class ListOfString
      def self.default(visited=[])
        return nil if visited.include?('ListOfString')
        visited = visited + ['ListOfString']
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

    # Operation Stubber for CreateAuthorizer
    class CreateAuthorizer
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          type: 'type',
          provider_ar_ns: ListOfARNs.default(visited),
          auth_type: 'auth_type',
          authorizer_uri: 'authorizer_uri',
          authorizer_credentials: 'authorizer_credentials',
          identity_source: 'identity_source',
          identity_validation_expression: 'identity_validation_expression',
          authorizer_result_ttl_in_seconds: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['providerARNs'] = ListOfARNs.stub(stub[:provider_ar_ns]) unless stub[:provider_ar_ns].nil?
        data['authType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['authorizerCredentials'] = stub[:authorizer_credentials] unless stub[:authorizer_credentials].nil?
        data['identitySource'] = stub[:identity_source] unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfARNs
    class ListOfARNs
      def self.default(visited=[])
        return nil if visited.include?('ListOfARNs')
        visited = visited + ['ListOfARNs']
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

    # Operation Stubber for CreateBasePathMapping
    class CreateBasePathMapping
      def self.default(visited=[])
        {
          base_path: 'base_path',
          rest_api_id: 'rest_api_id',
          stage: 'stage',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['basePath'] = stub[:base_path] unless stub[:base_path].nil?
        data['restApiId'] = stub[:rest_api_id] unless stub[:rest_api_id].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDeployment
    class CreateDeployment
      def self.default(visited=[])
        {
          id: 'id',
          description: 'description',
          created_date: Time.now,
          api_summary: PathToMapOfMethodSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['apiSummary'] = PathToMapOfMethodSnapshot.stub(stub[:api_summary]) unless stub[:api_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for PathToMapOfMethodSnapshot
    class PathToMapOfMethodSnapshot
      def self.default(visited=[])
        return nil if visited.include?('PathToMapOfMethodSnapshot')
        visited = visited + ['PathToMapOfMethodSnapshot']
        {
          test_key: MapOfMethodSnapshot.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = MapOfMethodSnapshot.stub(value) unless value.nil?
        end
        data
      end
    end

    # Map Stubber for MapOfMethodSnapshot
    class MapOfMethodSnapshot
      def self.default(visited=[])
        return nil if visited.include?('MapOfMethodSnapshot')
        visited = visited + ['MapOfMethodSnapshot']
        {
          test_key: MethodSnapshot.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = MethodSnapshot.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MethodSnapshot
    class MethodSnapshot
      def self.default(visited=[])
        return nil if visited.include?('MethodSnapshot')
        visited = visited + ['MethodSnapshot']
        {
          authorization_type: 'authorization_type',
          api_key_required: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::MethodSnapshot.new
        data = {}
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data
      end
    end

    # Operation Stubber for CreateDocumentationPart
    class CreateDocumentationPart
      def self.default(visited=[])
        {
          id: 'id',
          location: DocumentationPartLocation.default(visited),
          properties: 'properties',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['location'] = DocumentationPartLocation.stub(stub[:location]) unless stub[:location].nil?
        data['properties'] = stub[:properties] unless stub[:properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for DocumentationPartLocation
    class DocumentationPartLocation
      def self.default(visited=[])
        return nil if visited.include?('DocumentationPartLocation')
        visited = visited + ['DocumentationPartLocation']
        {
          type: 'type',
          path: 'path',
          member_method: 'member_method',
          status_code: 'status_code',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentationPartLocation.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['method'] = stub[:member_method] unless stub[:member_method].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for CreateDocumentationVersion
    class CreateDocumentationVersion
      def self.default(visited=[])
        {
          version: 'version',
          created_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateDomainName
    class CreateDomainName
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          certificate_name: 'certificate_name',
          certificate_arn: 'certificate_arn',
          certificate_upload_date: Time.now,
          regional_domain_name: 'regional_domain_name',
          regional_hosted_zone_id: 'regional_hosted_zone_id',
          regional_certificate_name: 'regional_certificate_name',
          regional_certificate_arn: 'regional_certificate_arn',
          distribution_domain_name: 'distribution_domain_name',
          distribution_hosted_zone_id: 'distribution_hosted_zone_id',
          endpoint_configuration: EndpointConfiguration.default(visited),
          domain_name_status: 'domain_name_status',
          domain_name_status_message: 'domain_name_status_message',
          security_policy: 'security_policy',
          tags: MapOfStringToString.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          ownership_verification_certificate_arn: 'ownership_verification_certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateUploadDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:certificate_upload_date]).to_i unless stub[:certificate_upload_date].nil?
        data['regionalDomainName'] = stub[:regional_domain_name] unless stub[:regional_domain_name].nil?
        data['regionalHostedZoneId'] = stub[:regional_hosted_zone_id] unless stub[:regional_hosted_zone_id].nil?
        data['regionalCertificateName'] = stub[:regional_certificate_name] unless stub[:regional_certificate_name].nil?
        data['regionalCertificateArn'] = stub[:regional_certificate_arn] unless stub[:regional_certificate_arn].nil?
        data['distributionDomainName'] = stub[:distribution_domain_name] unless stub[:distribution_domain_name].nil?
        data['distributionHostedZoneId'] = stub[:distribution_hosted_zone_id] unless stub[:distribution_hosted_zone_id].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['domainNameStatus'] = stub[:domain_name_status] unless stub[:domain_name_status].nil?
        data['domainNameStatusMessage'] = stub[:domain_name_status_message] unless stub[:domain_name_status_message].nil?
        data['securityPolicy'] = stub[:security_policy] unless stub[:security_policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['ownershipVerificationCertificateArn'] = stub[:ownership_verification_certificate_arn] unless stub[:ownership_verification_certificate_arn].nil?
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
          truststore_warnings: ListOfString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MutualTlsAuthentication.new
        data = {}
        data['truststoreUri'] = stub[:truststore_uri] unless stub[:truststore_uri].nil?
        data['truststoreVersion'] = stub[:truststore_version] unless stub[:truststore_version].nil?
        data['truststoreWarnings'] = ListOfString.stub(stub[:truststore_warnings]) unless stub[:truststore_warnings].nil?
        data
      end
    end

    # Structure Stubber for EndpointConfiguration
    class EndpointConfiguration
      def self.default(visited=[])
        return nil if visited.include?('EndpointConfiguration')
        visited = visited + ['EndpointConfiguration']
        {
          types: ListOfEndpointType.default(visited),
          vpc_endpoint_ids: ListOfString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EndpointConfiguration.new
        data = {}
        data['types'] = ListOfEndpointType.stub(stub[:types]) unless stub[:types].nil?
        data['vpcEndpointIds'] = ListOfString.stub(stub[:vpc_endpoint_ids]) unless stub[:vpc_endpoint_ids].nil?
        data
      end
    end

    # List Stubber for ListOfEndpointType
    class ListOfEndpointType
      def self.default(visited=[])
        return nil if visited.include?('ListOfEndpointType')
        visited = visited + ['ListOfEndpointType']
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

    # Operation Stubber for CreateModel
    class CreateModel
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          schema: 'schema',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateRequestValidator
    class CreateRequestValidator
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          validate_request_body: false,
          validate_request_parameters: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['validateRequestBody'] = stub[:validate_request_body] unless stub[:validate_request_body].nil?
        data['validateRequestParameters'] = stub[:validate_request_parameters] unless stub[:validate_request_parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateResource
    class CreateResource
      def self.default(visited=[])
        {
          id: 'id',
          parent_id: 'parent_id',
          path_part: 'path_part',
          path: 'path',
          resource_methods: MapOfMethod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['parentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data['pathPart'] = stub[:path_part] unless stub[:path_part].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['resourceMethods'] = MapOfMethod.stub(stub[:resource_methods]) unless stub[:resource_methods].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for MapOfMethod
    class MapOfMethod
      def self.default(visited=[])
        return nil if visited.include?('MapOfMethod')
        visited = visited + ['MapOfMethod']
        {
          test_key: Method.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Method.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for Method
    class Method
      def self.default(visited=[])
        return nil if visited.include?('Method')
        visited = visited + ['Method']
        {
          http_method: 'http_method',
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          api_key_required: false,
          request_validator_id: 'request_validator_id',
          operation_name: 'operation_name',
          request_parameters: MapOfStringToBoolean.default(visited),
          request_models: MapOfStringToString.default(visited),
          method_responses: MapOfMethodResponse.default(visited),
          method_integration: Integration.default(visited),
          authorization_scopes: ListOfString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Method.new
        data = {}
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['requestValidatorId'] = stub[:request_validator_id] unless stub[:request_validator_id].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestParameters'] = MapOfStringToBoolean.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestModels'] = MapOfStringToString.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['methodResponses'] = MapOfMethodResponse.stub(stub[:method_responses]) unless stub[:method_responses].nil?
        data['methodIntegration'] = Integration.stub(stub[:method_integration]) unless stub[:method_integration].nil?
        data['authorizationScopes'] = ListOfString.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        data
      end
    end

    # Structure Stubber for Integration
    class Integration
      def self.default(visited=[])
        return nil if visited.include?('Integration')
        visited = visited + ['Integration']
        {
          type: 'type',
          http_method: 'http_method',
          uri: 'uri',
          connection_type: 'connection_type',
          connection_id: 'connection_id',
          credentials: 'credentials',
          request_parameters: MapOfStringToString.default(visited),
          request_templates: MapOfStringToString.default(visited),
          passthrough_behavior: 'passthrough_behavior',
          content_handling: 'content_handling',
          timeout_in_millis: 1,
          cache_namespace: 'cache_namespace',
          cache_key_parameters: ListOfString.default(visited),
          integration_responses: MapOfIntegrationResponse.default(visited),
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Integration.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['credentials'] = stub[:credentials] unless stub[:credentials].nil?
        data['requestParameters'] = MapOfStringToString.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = MapOfStringToString.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['cacheNamespace'] = stub[:cache_namespace] unless stub[:cache_namespace].nil?
        data['cacheKeyParameters'] = ListOfString.stub(stub[:cache_key_parameters]) unless stub[:cache_key_parameters].nil?
        data['integrationResponses'] = MapOfIntegrationResponse.stub(stub[:integration_responses]) unless stub[:integration_responses].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        data
      end
    end

    # Structure Stubber for TlsConfig
    class TlsConfig
      def self.default(visited=[])
        return nil if visited.include?('TlsConfig')
        visited = visited + ['TlsConfig']
        {
          insecure_skip_verification: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::TlsConfig.new
        data = {}
        data['insecureSkipVerification'] = stub[:insecure_skip_verification] unless stub[:insecure_skip_verification].nil?
        data
      end
    end

    # Map Stubber for MapOfIntegrationResponse
    class MapOfIntegrationResponse
      def self.default(visited=[])
        return nil if visited.include?('MapOfIntegrationResponse')
        visited = visited + ['MapOfIntegrationResponse']
        {
          test_key: IntegrationResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = IntegrationResponse.stub(value) unless value.nil?
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
          status_code: 'status_code',
          selection_pattern: 'selection_pattern',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          content_handling: 'content_handling',
        }
      end

      def self.stub(stub)
        stub ||= Types::IntegrationResponse.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['selectionPattern'] = stub[:selection_pattern] unless stub[:selection_pattern].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        data
      end
    end

    # Map Stubber for MapOfMethodResponse
    class MapOfMethodResponse
      def self.default(visited=[])
        return nil if visited.include?('MapOfMethodResponse')
        visited = visited + ['MapOfMethodResponse']
        {
          test_key: MethodResponse.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = MethodResponse.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MethodResponse
    class MethodResponse
      def self.default(visited=[])
        return nil if visited.include?('MethodResponse')
        visited = visited + ['MethodResponse']
        {
          status_code: 'status_code',
          response_parameters: MapOfStringToBoolean.default(visited),
          response_models: MapOfStringToString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MethodResponse.new
        data = {}
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToBoolean.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseModels'] = MapOfStringToString.stub(stub[:response_models]) unless stub[:response_models].nil?
        data
      end
    end

    # Map Stubber for MapOfStringToBoolean
    class MapOfStringToBoolean
      def self.default(visited=[])
        return nil if visited.include?('MapOfStringToBoolean')
        visited = visited + ['MapOfStringToBoolean']
        {
          test_key: false
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

    # Operation Stubber for CreateRestApi
    class CreateRestApi
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: Time.now,
          version: 'version',
          warnings: ListOfString.default(visited),
          binary_media_types: ListOfString.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: EndpointConfiguration.default(visited),
          policy: 'policy',
          tags: MapOfStringToString.default(visited),
          disable_execute_api_endpoint: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['binaryMediaTypes'] = ListOfString.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['minimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['apiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateStage
    class CreateStage
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
          client_certificate_id: 'client_certificate_id',
          stage_name: 'stage_name',
          description: 'description',
          cache_cluster_enabled: false,
          cache_cluster_size: 'cache_cluster_size',
          cache_cluster_status: 'cache_cluster_status',
          method_settings: MapOfMethodSettings.default(visited),
          variables: MapOfStringToString.default(visited),
          documentation_version: 'documentation_version',
          access_log_settings: AccessLogSettings.default(visited),
          canary_settings: CanarySettings.default(visited),
          tracing_enabled: false,
          web_acl_arn: 'web_acl_arn',
          tags: MapOfStringToString.default(visited),
          created_date: Time.now,
          last_updated_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['cacheClusterEnabled'] = stub[:cache_cluster_enabled] unless stub[:cache_cluster_enabled].nil?
        data['cacheClusterSize'] = stub[:cache_cluster_size] unless stub[:cache_cluster_size].nil?
        data['cacheClusterStatus'] = stub[:cache_cluster_status] unless stub[:cache_cluster_status].nil?
        data['methodSettings'] = MapOfMethodSettings.stub(stub[:method_settings]) unless stub[:method_settings].nil?
        data['variables'] = MapOfStringToString.stub(stub[:variables]) unless stub[:variables].nil?
        data['documentationVersion'] = stub[:documentation_version] unless stub[:documentation_version].nil?
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['canarySettings'] = CanarySettings.stub(stub[:canary_settings]) unless stub[:canary_settings].nil?
        data['tracingEnabled'] = stub[:tracing_enabled] unless stub[:tracing_enabled].nil?
        data['webAclArn'] = stub[:web_acl_arn] unless stub[:web_acl_arn].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CanarySettings
    class CanarySettings
      def self.default(visited=[])
        return nil if visited.include?('CanarySettings')
        visited = visited + ['CanarySettings']
        {
          percent_traffic: 1.0,
          deployment_id: 'deployment_id',
          stage_variable_overrides: MapOfStringToString.default(visited),
          use_stage_cache: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::CanarySettings.new
        data = {}
        data['percentTraffic'] = Hearth::NumberHelper.serialize(stub[:percent_traffic])
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['stageVariableOverrides'] = MapOfStringToString.stub(stub[:stage_variable_overrides]) unless stub[:stage_variable_overrides].nil?
        data['useStageCache'] = stub[:use_stage_cache] unless stub[:use_stage_cache].nil?
        data
      end
    end

    # Structure Stubber for AccessLogSettings
    class AccessLogSettings
      def self.default(visited=[])
        return nil if visited.include?('AccessLogSettings')
        visited = visited + ['AccessLogSettings']
        {
          format: 'format',
          destination_arn: 'destination_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessLogSettings.new
        data = {}
        data['format'] = stub[:format] unless stub[:format].nil?
        data['destinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data
      end
    end

    # Map Stubber for MapOfMethodSettings
    class MapOfMethodSettings
      def self.default(visited=[])
        return nil if visited.include?('MapOfMethodSettings')
        visited = visited + ['MapOfMethodSettings']
        {
          test_key: MethodSetting.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = MethodSetting.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for MethodSetting
    class MethodSetting
      def self.default(visited=[])
        return nil if visited.include?('MethodSetting')
        visited = visited + ['MethodSetting']
        {
          metrics_enabled: false,
          logging_level: 'logging_level',
          data_trace_enabled: false,
          throttling_burst_limit: 1,
          throttling_rate_limit: 1.0,
          caching_enabled: false,
          cache_ttl_in_seconds: 1,
          cache_data_encrypted: false,
          require_authorization_for_cache_control: false,
          unauthorized_cache_control_header_strategy: 'unauthorized_cache_control_header_strategy',
        }
      end

      def self.stub(stub)
        stub ||= Types::MethodSetting.new
        data = {}
        data['metricsEnabled'] = stub[:metrics_enabled] unless stub[:metrics_enabled].nil?
        data['loggingLevel'] = stub[:logging_level] unless stub[:logging_level].nil?
        data['dataTraceEnabled'] = stub[:data_trace_enabled] unless stub[:data_trace_enabled].nil?
        data['throttlingBurstLimit'] = stub[:throttling_burst_limit] unless stub[:throttling_burst_limit].nil?
        data['throttlingRateLimit'] = Hearth::NumberHelper.serialize(stub[:throttling_rate_limit])
        data['cachingEnabled'] = stub[:caching_enabled] unless stub[:caching_enabled].nil?
        data['cacheTtlInSeconds'] = stub[:cache_ttl_in_seconds] unless stub[:cache_ttl_in_seconds].nil?
        data['cacheDataEncrypted'] = stub[:cache_data_encrypted] unless stub[:cache_data_encrypted].nil?
        data['requireAuthorizationForCacheControl'] = stub[:require_authorization_for_cache_control] unless stub[:require_authorization_for_cache_control].nil?
        data['unauthorizedCacheControlHeaderStrategy'] = stub[:unauthorized_cache_control_header_strategy] unless stub[:unauthorized_cache_control_header_strategy].nil?
        data
      end
    end

    # Operation Stubber for CreateUsagePlan
    class CreateUsagePlan
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          api_stages: ListOfApiStage.default(visited),
          throttle: ThrottleSettings.default(visited),
          quota: QuotaSettings.default(visited),
          product_code: 'product_code',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['apiStages'] = ListOfApiStage.stub(stub[:api_stages]) unless stub[:api_stages].nil?
        data['throttle'] = ThrottleSettings.stub(stub[:throttle]) unless stub[:throttle].nil?
        data['quota'] = QuotaSettings.stub(stub[:quota]) unless stub[:quota].nil?
        data['productCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for QuotaSettings
    class QuotaSettings
      def self.default(visited=[])
        return nil if visited.include?('QuotaSettings')
        visited = visited + ['QuotaSettings']
        {
          limit: 1,
          offset: 1,
          period: 'period',
        }
      end

      def self.stub(stub)
        stub ||= Types::QuotaSettings.new
        data = {}
        data['limit'] = stub[:limit] unless stub[:limit].nil?
        data['offset'] = stub[:offset] unless stub[:offset].nil?
        data['period'] = stub[:period] unless stub[:period].nil?
        data
      end
    end

    # Structure Stubber for ThrottleSettings
    class ThrottleSettings
      def self.default(visited=[])
        return nil if visited.include?('ThrottleSettings')
        visited = visited + ['ThrottleSettings']
        {
          burst_limit: 1,
          rate_limit: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThrottleSettings.new
        data = {}
        data['burstLimit'] = stub[:burst_limit] unless stub[:burst_limit].nil?
        data['rateLimit'] = Hearth::NumberHelper.serialize(stub[:rate_limit])
        data
      end
    end

    # List Stubber for ListOfApiStage
    class ListOfApiStage
      def self.default(visited=[])
        return nil if visited.include?('ListOfApiStage')
        visited = visited + ['ListOfApiStage']
        [
          ApiStage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApiStage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApiStage
    class ApiStage
      def self.default(visited=[])
        return nil if visited.include?('ApiStage')
        visited = visited + ['ApiStage']
        {
          api_id: 'api_id',
          stage: 'stage',
          throttle: MapOfApiStageThrottleSettings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiStage.new
        data = {}
        data['apiId'] = stub[:api_id] unless stub[:api_id].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data['throttle'] = MapOfApiStageThrottleSettings.stub(stub[:throttle]) unless stub[:throttle].nil?
        data
      end
    end

    # Map Stubber for MapOfApiStageThrottleSettings
    class MapOfApiStageThrottleSettings
      def self.default(visited=[])
        return nil if visited.include?('MapOfApiStageThrottleSettings')
        visited = visited + ['MapOfApiStageThrottleSettings']
        {
          test_key: ThrottleSettings.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ThrottleSettings.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateUsagePlanKey
    class CreateUsagePlanKey
      def self.default(visited=[])
        {
          id: 'id',
          type: 'type',
          value: 'value',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateVpcLink
    class CreateVpcLink
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          target_arns: ListOfString.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targetArns'] = ListOfString.stub(stub[:target_arns]) unless stub[:target_arns].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteApiKey
    class DeleteApiKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteBasePathMapping
    class DeleteBasePathMapping
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteClientCertificate
    class DeleteClientCertificate
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteDocumentationPart
    class DeleteDocumentationPart
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteDocumentationVersion
    class DeleteDocumentationVersion
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteGatewayResponse
    class DeleteGatewayResponse
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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

    # Operation Stubber for DeleteMethod
    class DeleteMethod
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteMethodResponse
    class DeleteMethodResponse
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteRequestValidator
    class DeleteRequestValidator
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteResource
    class DeleteResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteRestApi
    class DeleteRestApi
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteUsagePlan
    class DeleteUsagePlan
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for DeleteUsagePlanKey
    class DeleteUsagePlanKey
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
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

    # Operation Stubber for FlushStageAuthorizersCache
    class FlushStageAuthorizersCache
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for FlushStageCache
    class FlushStageCache
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 202
      end
    end

    # Operation Stubber for GenerateClientCertificate
    class GenerateClientCertificate
      def self.default(visited=[])
        {
          client_certificate_id: 'client_certificate_id',
          description: 'description',
          pem_encoded_certificate: 'pem_encoded_certificate',
          created_date: Time.now,
          expiration_date: Time.now,
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['pemEncodedCertificate'] = stub[:pem_encoded_certificate] unless stub[:pem_encoded_certificate].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAccount
    class GetAccount
      def self.default(visited=[])
        {
          cloudwatch_role_arn: 'cloudwatch_role_arn',
          throttle_settings: ThrottleSettings.default(visited),
          features: ListOfString.default(visited),
          api_key_version: 'api_key_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cloudwatchRoleArn'] = stub[:cloudwatch_role_arn] unless stub[:cloudwatch_role_arn].nil?
        data['throttleSettings'] = ThrottleSettings.stub(stub[:throttle_settings]) unless stub[:throttle_settings].nil?
        data['features'] = ListOfString.stub(stub[:features]) unless stub[:features].nil?
        data['apiKeyVersion'] = stub[:api_key_version] unless stub[:api_key_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApiKey
    class GetApiKey
      def self.default(visited=[])
        {
          id: 'id',
          value: 'value',
          name: 'name',
          customer_id: 'customer_id',
          description: 'description',
          enabled: false,
          created_date: Time.now,
          last_updated_date: Time.now,
          stage_keys: ListOfString.default(visited),
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['customerId'] = stub[:customer_id] unless stub[:customer_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['stageKeys'] = ListOfString.stub(stub[:stage_keys]) unless stub[:stage_keys].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetApiKeys
    class GetApiKeys
      def self.default(visited=[])
        {
          warnings: ListOfString.default(visited),
          items: ListOfApiKey.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['item'] = ListOfApiKey.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfApiKey
    class ListOfApiKey
      def self.default(visited=[])
        return nil if visited.include?('ListOfApiKey')
        visited = visited + ['ListOfApiKey']
        [
          ApiKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApiKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApiKey
    class ApiKey
      def self.default(visited=[])
        return nil if visited.include?('ApiKey')
        visited = visited + ['ApiKey']
        {
          id: 'id',
          value: 'value',
          name: 'name',
          customer_id: 'customer_id',
          description: 'description',
          enabled: false,
          created_date: Time.now,
          last_updated_date: Time.now,
          stage_keys: ListOfString.default(visited),
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApiKey.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['customerId'] = stub[:customer_id] unless stub[:customer_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['stageKeys'] = ListOfString.stub(stub[:stage_keys]) unless stub[:stage_keys].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetAuthorizer
    class GetAuthorizer
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          type: 'type',
          provider_ar_ns: ListOfARNs.default(visited),
          auth_type: 'auth_type',
          authorizer_uri: 'authorizer_uri',
          authorizer_credentials: 'authorizer_credentials',
          identity_source: 'identity_source',
          identity_validation_expression: 'identity_validation_expression',
          authorizer_result_ttl_in_seconds: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['providerARNs'] = ListOfARNs.stub(stub[:provider_ar_ns]) unless stub[:provider_ar_ns].nil?
        data['authType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['authorizerCredentials'] = stub[:authorizer_credentials] unless stub[:authorizer_credentials].nil?
        data['identitySource'] = stub[:identity_source] unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAuthorizers
    class GetAuthorizers
      def self.default(visited=[])
        {
          items: ListOfAuthorizer.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfAuthorizer.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfAuthorizer
    class ListOfAuthorizer
      def self.default(visited=[])
        return nil if visited.include?('ListOfAuthorizer')
        visited = visited + ['ListOfAuthorizer']
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
          id: 'id',
          name: 'name',
          type: 'type',
          provider_ar_ns: ListOfARNs.default(visited),
          auth_type: 'auth_type',
          authorizer_uri: 'authorizer_uri',
          authorizer_credentials: 'authorizer_credentials',
          identity_source: 'identity_source',
          identity_validation_expression: 'identity_validation_expression',
          authorizer_result_ttl_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Authorizer.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['providerARNs'] = ListOfARNs.stub(stub[:provider_ar_ns]) unless stub[:provider_ar_ns].nil?
        data['authType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['authorizerCredentials'] = stub[:authorizer_credentials] unless stub[:authorizer_credentials].nil?
        data['identitySource'] = stub[:identity_source] unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        data
      end
    end

    # Operation Stubber for GetBasePathMapping
    class GetBasePathMapping
      def self.default(visited=[])
        {
          base_path: 'base_path',
          rest_api_id: 'rest_api_id',
          stage: 'stage',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['basePath'] = stub[:base_path] unless stub[:base_path].nil?
        data['restApiId'] = stub[:rest_api_id] unless stub[:rest_api_id].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetBasePathMappings
    class GetBasePathMappings
      def self.default(visited=[])
        {
          items: ListOfBasePathMapping.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfBasePathMapping.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfBasePathMapping
    class ListOfBasePathMapping
      def self.default(visited=[])
        return nil if visited.include?('ListOfBasePathMapping')
        visited = visited + ['ListOfBasePathMapping']
        [
          BasePathMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BasePathMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BasePathMapping
    class BasePathMapping
      def self.default(visited=[])
        return nil if visited.include?('BasePathMapping')
        visited = visited + ['BasePathMapping']
        {
          base_path: 'base_path',
          rest_api_id: 'rest_api_id',
          stage: 'stage',
        }
      end

      def self.stub(stub)
        stub ||= Types::BasePathMapping.new
        data = {}
        data['basePath'] = stub[:base_path] unless stub[:base_path].nil?
        data['restApiId'] = stub[:rest_api_id] unless stub[:rest_api_id].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data
      end
    end

    # Operation Stubber for GetClientCertificate
    class GetClientCertificate
      def self.default(visited=[])
        {
          client_certificate_id: 'client_certificate_id',
          description: 'description',
          pem_encoded_certificate: 'pem_encoded_certificate',
          created_date: Time.now,
          expiration_date: Time.now,
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['pemEncodedCertificate'] = stub[:pem_encoded_certificate] unless stub[:pem_encoded_certificate].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetClientCertificates
    class GetClientCertificates
      def self.default(visited=[])
        {
          items: ListOfClientCertificate.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfClientCertificate.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfClientCertificate
    class ListOfClientCertificate
      def self.default(visited=[])
        return nil if visited.include?('ListOfClientCertificate')
        visited = visited + ['ListOfClientCertificate']
        [
          ClientCertificate.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ClientCertificate.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ClientCertificate
    class ClientCertificate
      def self.default(visited=[])
        return nil if visited.include?('ClientCertificate')
        visited = visited + ['ClientCertificate']
        {
          client_certificate_id: 'client_certificate_id',
          description: 'description',
          pem_encoded_certificate: 'pem_encoded_certificate',
          created_date: Time.now,
          expiration_date: Time.now,
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ClientCertificate.new
        data = {}
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['pemEncodedCertificate'] = stub[:pem_encoded_certificate] unless stub[:pem_encoded_certificate].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetDeployment
    class GetDeployment
      def self.default(visited=[])
        {
          id: 'id',
          description: 'description',
          created_date: Time.now,
          api_summary: PathToMapOfMethodSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['apiSummary'] = PathToMapOfMethodSnapshot.stub(stub[:api_summary]) unless stub[:api_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDeployments
    class GetDeployments
      def self.default(visited=[])
        {
          items: ListOfDeployment.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfDeployment.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfDeployment
    class ListOfDeployment
      def self.default(visited=[])
        return nil if visited.include?('ListOfDeployment')
        visited = visited + ['ListOfDeployment']
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
          id: 'id',
          description: 'description',
          created_date: Time.now,
          api_summary: PathToMapOfMethodSnapshot.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Deployment.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['apiSummary'] = PathToMapOfMethodSnapshot.stub(stub[:api_summary]) unless stub[:api_summary].nil?
        data
      end
    end

    # Operation Stubber for GetDocumentationPart
    class GetDocumentationPart
      def self.default(visited=[])
        {
          id: 'id',
          location: DocumentationPartLocation.default(visited),
          properties: 'properties',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['location'] = DocumentationPartLocation.stub(stub[:location]) unless stub[:location].nil?
        data['properties'] = stub[:properties] unless stub[:properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDocumentationParts
    class GetDocumentationParts
      def self.default(visited=[])
        {
          items: ListOfDocumentationPart.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfDocumentationPart.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfDocumentationPart
    class ListOfDocumentationPart
      def self.default(visited=[])
        return nil if visited.include?('ListOfDocumentationPart')
        visited = visited + ['ListOfDocumentationPart']
        [
          DocumentationPart.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentationPart.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentationPart
    class DocumentationPart
      def self.default(visited=[])
        return nil if visited.include?('DocumentationPart')
        visited = visited + ['DocumentationPart']
        {
          id: 'id',
          location: DocumentationPartLocation.default(visited),
          properties: 'properties',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentationPart.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['location'] = DocumentationPartLocation.stub(stub[:location]) unless stub[:location].nil?
        data['properties'] = stub[:properties] unless stub[:properties].nil?
        data
      end
    end

    # Operation Stubber for GetDocumentationVersion
    class GetDocumentationVersion
      def self.default(visited=[])
        {
          version: 'version',
          created_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDocumentationVersions
    class GetDocumentationVersions
      def self.default(visited=[])
        {
          items: ListOfDocumentationVersion.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfDocumentationVersion.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfDocumentationVersion
    class ListOfDocumentationVersion
      def self.default(visited=[])
        return nil if visited.include?('ListOfDocumentationVersion')
        visited = visited + ['ListOfDocumentationVersion']
        [
          DocumentationVersion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentationVersion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentationVersion
    class DocumentationVersion
      def self.default(visited=[])
        return nil if visited.include?('DocumentationVersion')
        visited = visited + ['DocumentationVersion']
        {
          version: 'version',
          created_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentationVersion.new
        data = {}
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data
      end
    end

    # Operation Stubber for GetDomainName
    class GetDomainName
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          certificate_name: 'certificate_name',
          certificate_arn: 'certificate_arn',
          certificate_upload_date: Time.now,
          regional_domain_name: 'regional_domain_name',
          regional_hosted_zone_id: 'regional_hosted_zone_id',
          regional_certificate_name: 'regional_certificate_name',
          regional_certificate_arn: 'regional_certificate_arn',
          distribution_domain_name: 'distribution_domain_name',
          distribution_hosted_zone_id: 'distribution_hosted_zone_id',
          endpoint_configuration: EndpointConfiguration.default(visited),
          domain_name_status: 'domain_name_status',
          domain_name_status_message: 'domain_name_status_message',
          security_policy: 'security_policy',
          tags: MapOfStringToString.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          ownership_verification_certificate_arn: 'ownership_verification_certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateUploadDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:certificate_upload_date]).to_i unless stub[:certificate_upload_date].nil?
        data['regionalDomainName'] = stub[:regional_domain_name] unless stub[:regional_domain_name].nil?
        data['regionalHostedZoneId'] = stub[:regional_hosted_zone_id] unless stub[:regional_hosted_zone_id].nil?
        data['regionalCertificateName'] = stub[:regional_certificate_name] unless stub[:regional_certificate_name].nil?
        data['regionalCertificateArn'] = stub[:regional_certificate_arn] unless stub[:regional_certificate_arn].nil?
        data['distributionDomainName'] = stub[:distribution_domain_name] unless stub[:distribution_domain_name].nil?
        data['distributionHostedZoneId'] = stub[:distribution_hosted_zone_id] unless stub[:distribution_hosted_zone_id].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['domainNameStatus'] = stub[:domain_name_status] unless stub[:domain_name_status].nil?
        data['domainNameStatusMessage'] = stub[:domain_name_status_message] unless stub[:domain_name_status_message].nil?
        data['securityPolicy'] = stub[:security_policy] unless stub[:security_policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['ownershipVerificationCertificateArn'] = stub[:ownership_verification_certificate_arn] unless stub[:ownership_verification_certificate_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetDomainNames
    class GetDomainNames
      def self.default(visited=[])
        {
          items: ListOfDomainName.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfDomainName.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfDomainName
    class ListOfDomainName
      def self.default(visited=[])
        return nil if visited.include?('ListOfDomainName')
        visited = visited + ['ListOfDomainName']
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
          domain_name: 'domain_name',
          certificate_name: 'certificate_name',
          certificate_arn: 'certificate_arn',
          certificate_upload_date: Time.now,
          regional_domain_name: 'regional_domain_name',
          regional_hosted_zone_id: 'regional_hosted_zone_id',
          regional_certificate_name: 'regional_certificate_name',
          regional_certificate_arn: 'regional_certificate_arn',
          distribution_domain_name: 'distribution_domain_name',
          distribution_hosted_zone_id: 'distribution_hosted_zone_id',
          endpoint_configuration: EndpointConfiguration.default(visited),
          domain_name_status: 'domain_name_status',
          domain_name_status_message: 'domain_name_status_message',
          security_policy: 'security_policy',
          tags: MapOfStringToString.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          ownership_verification_certificate_arn: 'ownership_verification_certificate_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainName.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateUploadDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:certificate_upload_date]).to_i unless stub[:certificate_upload_date].nil?
        data['regionalDomainName'] = stub[:regional_domain_name] unless stub[:regional_domain_name].nil?
        data['regionalHostedZoneId'] = stub[:regional_hosted_zone_id] unless stub[:regional_hosted_zone_id].nil?
        data['regionalCertificateName'] = stub[:regional_certificate_name] unless stub[:regional_certificate_name].nil?
        data['regionalCertificateArn'] = stub[:regional_certificate_arn] unless stub[:regional_certificate_arn].nil?
        data['distributionDomainName'] = stub[:distribution_domain_name] unless stub[:distribution_domain_name].nil?
        data['distributionHostedZoneId'] = stub[:distribution_hosted_zone_id] unless stub[:distribution_hosted_zone_id].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['domainNameStatus'] = stub[:domain_name_status] unless stub[:domain_name_status].nil?
        data['domainNameStatusMessage'] = stub[:domain_name_status_message] unless stub[:domain_name_status_message].nil?
        data['securityPolicy'] = stub[:security_policy] unless stub[:security_policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['ownershipVerificationCertificateArn'] = stub[:ownership_verification_certificate_arn] unless stub[:ownership_verification_certificate_arn].nil?
        data
      end
    end

    # Operation Stubber for GetExport
    class GetExport
      def self.default(visited=[])
        {
          content_type: 'content_type',
          content_disposition: 'content_disposition',
          body: 'body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Disposition'] = stub[:content_disposition] unless stub[:content_disposition].nil? || stub[:content_disposition].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:body] || '')
      end
    end

    # Operation Stubber for GetGatewayResponse
    class GetGatewayResponse
      def self.default(visited=[])
        {
          response_type: 'response_type',
          status_code: 'status_code',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          default_response: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['responseType'] = stub[:response_type] unless stub[:response_type].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['defaultResponse'] = stub[:default_response] unless stub[:default_response].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetGatewayResponses
    class GetGatewayResponses
      def self.default(visited=[])
        {
          items: ListOfGatewayResponse.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfGatewayResponse.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfGatewayResponse
    class ListOfGatewayResponse
      def self.default(visited=[])
        return nil if visited.include?('ListOfGatewayResponse')
        visited = visited + ['ListOfGatewayResponse']
        [
          GatewayResponse.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GatewayResponse.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GatewayResponse
    class GatewayResponse
      def self.default(visited=[])
        return nil if visited.include?('GatewayResponse')
        visited = visited + ['GatewayResponse']
        {
          response_type: 'response_type',
          status_code: 'status_code',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          default_response: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::GatewayResponse.new
        data = {}
        data['responseType'] = stub[:response_type] unless stub[:response_type].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['defaultResponse'] = stub[:default_response] unless stub[:default_response].nil?
        data
      end
    end

    # Operation Stubber for GetIntegration
    class GetIntegration
      def self.default(visited=[])
        {
          type: 'type',
          http_method: 'http_method',
          uri: 'uri',
          connection_type: 'connection_type',
          connection_id: 'connection_id',
          credentials: 'credentials',
          request_parameters: MapOfStringToString.default(visited),
          request_templates: MapOfStringToString.default(visited),
          passthrough_behavior: 'passthrough_behavior',
          content_handling: 'content_handling',
          timeout_in_millis: 1,
          cache_namespace: 'cache_namespace',
          cache_key_parameters: ListOfString.default(visited),
          integration_responses: MapOfIntegrationResponse.default(visited),
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['type'] = stub[:type] unless stub[:type].nil?
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['credentials'] = stub[:credentials] unless stub[:credentials].nil?
        data['requestParameters'] = MapOfStringToString.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = MapOfStringToString.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['cacheNamespace'] = stub[:cache_namespace] unless stub[:cache_namespace].nil?
        data['cacheKeyParameters'] = ListOfString.stub(stub[:cache_key_parameters]) unless stub[:cache_key_parameters].nil?
        data['integrationResponses'] = MapOfIntegrationResponse.stub(stub[:integration_responses]) unless stub[:integration_responses].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetIntegrationResponse
    class GetIntegrationResponse
      def self.default(visited=[])
        {
          status_code: 'status_code',
          selection_pattern: 'selection_pattern',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          content_handling: 'content_handling',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['selectionPattern'] = stub[:selection_pattern] unless stub[:selection_pattern].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMethod
    class GetMethod
      def self.default(visited=[])
        {
          http_method: 'http_method',
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          api_key_required: false,
          request_validator_id: 'request_validator_id',
          operation_name: 'operation_name',
          request_parameters: MapOfStringToBoolean.default(visited),
          request_models: MapOfStringToString.default(visited),
          method_responses: MapOfMethodResponse.default(visited),
          method_integration: Integration.default(visited),
          authorization_scopes: ListOfString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['requestValidatorId'] = stub[:request_validator_id] unless stub[:request_validator_id].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestParameters'] = MapOfStringToBoolean.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestModels'] = MapOfStringToString.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['methodResponses'] = MapOfMethodResponse.stub(stub[:method_responses]) unless stub[:method_responses].nil?
        data['methodIntegration'] = Integration.stub(stub[:method_integration]) unless stub[:method_integration].nil?
        data['authorizationScopes'] = ListOfString.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetMethodResponse
    class GetMethodResponse
      def self.default(visited=[])
        {
          status_code: 'status_code',
          response_parameters: MapOfStringToBoolean.default(visited),
          response_models: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToBoolean.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseModels'] = MapOfStringToString.stub(stub[:response_models]) unless stub[:response_models].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetModel
    class GetModel
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          schema: 'schema',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
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
          items: ListOfModel.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfModel.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfModel
    class ListOfModel
      def self.default(visited=[])
        return nil if visited.include?('ListOfModel')
        visited = visited + ['ListOfModel']
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
          id: 'id',
          name: 'name',
          description: 'description',
          schema: 'schema',
          content_type: 'content_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Model.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data
      end
    end

    # Operation Stubber for GetRequestValidator
    class GetRequestValidator
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          validate_request_body: false,
          validate_request_parameters: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['validateRequestBody'] = stub[:validate_request_body] unless stub[:validate_request_body].nil?
        data['validateRequestParameters'] = stub[:validate_request_parameters] unless stub[:validate_request_parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRequestValidators
    class GetRequestValidators
      def self.default(visited=[])
        {
          items: ListOfRequestValidator.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfRequestValidator.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfRequestValidator
    class ListOfRequestValidator
      def self.default(visited=[])
        return nil if visited.include?('ListOfRequestValidator')
        visited = visited + ['ListOfRequestValidator']
        [
          RequestValidator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RequestValidator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RequestValidator
    class RequestValidator
      def self.default(visited=[])
        return nil if visited.include?('RequestValidator')
        visited = visited + ['RequestValidator']
        {
          id: 'id',
          name: 'name',
          validate_request_body: false,
          validate_request_parameters: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestValidator.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['validateRequestBody'] = stub[:validate_request_body] unless stub[:validate_request_body].nil?
        data['validateRequestParameters'] = stub[:validate_request_parameters] unless stub[:validate_request_parameters].nil?
        data
      end
    end

    # Operation Stubber for GetResource
    class GetResource
      def self.default(visited=[])
        {
          id: 'id',
          parent_id: 'parent_id',
          path_part: 'path_part',
          path: 'path',
          resource_methods: MapOfMethod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['parentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data['pathPart'] = stub[:path_part] unless stub[:path_part].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['resourceMethods'] = MapOfMethod.stub(stub[:resource_methods]) unless stub[:resource_methods].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetResources
    class GetResources
      def self.default(visited=[])
        {
          items: ListOfResource.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfResource.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfResource
    class ListOfResource
      def self.default(visited=[])
        return nil if visited.include?('ListOfResource')
        visited = visited + ['ListOfResource']
        [
          Resource.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Resource.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Resource
    class Resource
      def self.default(visited=[])
        return nil if visited.include?('Resource')
        visited = visited + ['Resource']
        {
          id: 'id',
          parent_id: 'parent_id',
          path_part: 'path_part',
          path: 'path',
          resource_methods: MapOfMethod.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Resource.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['parentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data['pathPart'] = stub[:path_part] unless stub[:path_part].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['resourceMethods'] = MapOfMethod.stub(stub[:resource_methods]) unless stub[:resource_methods].nil?
        data
      end
    end

    # Operation Stubber for GetRestApi
    class GetRestApi
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: Time.now,
          version: 'version',
          warnings: ListOfString.default(visited),
          binary_media_types: ListOfString.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: EndpointConfiguration.default(visited),
          policy: 'policy',
          tags: MapOfStringToString.default(visited),
          disable_execute_api_endpoint: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['binaryMediaTypes'] = ListOfString.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['minimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['apiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRestApis
    class GetRestApis
      def self.default(visited=[])
        {
          items: ListOfRestApi.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfRestApi.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfRestApi
    class ListOfRestApi
      def self.default(visited=[])
        return nil if visited.include?('ListOfRestApi')
        visited = visited + ['ListOfRestApi']
        [
          RestApi.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RestApi.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RestApi
    class RestApi
      def self.default(visited=[])
        return nil if visited.include?('RestApi')
        visited = visited + ['RestApi']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: Time.now,
          version: 'version',
          warnings: ListOfString.default(visited),
          binary_media_types: ListOfString.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: EndpointConfiguration.default(visited),
          policy: 'policy',
          tags: MapOfStringToString.default(visited),
          disable_execute_api_endpoint: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::RestApi.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['binaryMediaTypes'] = ListOfString.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['minimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['apiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        data
      end
    end

    # Operation Stubber for GetSdk
    class GetSdk
      def self.default(visited=[])
        {
          content_type: 'content_type',
          content_disposition: 'content_disposition',
          body: 'body',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = stub[:content_type] unless stub[:content_type].nil? || stub[:content_type].empty?
        http_resp.headers['Content-Disposition'] = stub[:content_disposition] unless stub[:content_disposition].nil? || stub[:content_disposition].empty?
        http_resp.headers['Content-Type'] = 'application/octet-stream'
        http_resp.body = ::StringIO.new(stub[:body] || '')
      end
    end

    # Operation Stubber for GetSdkType
    class GetSdkType
      def self.default(visited=[])
        {
          id: 'id',
          friendly_name: 'friendly_name',
          description: 'description',
          configuration_properties: ListOfSdkConfigurationProperty.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['friendlyName'] = stub[:friendly_name] unless stub[:friendly_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['configurationProperties'] = ListOfSdkConfigurationProperty.stub(stub[:configuration_properties]) unless stub[:configuration_properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfSdkConfigurationProperty
    class ListOfSdkConfigurationProperty
      def self.default(visited=[])
        return nil if visited.include?('ListOfSdkConfigurationProperty')
        visited = visited + ['ListOfSdkConfigurationProperty']
        [
          SdkConfigurationProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SdkConfigurationProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SdkConfigurationProperty
    class SdkConfigurationProperty
      def self.default(visited=[])
        return nil if visited.include?('SdkConfigurationProperty')
        visited = visited + ['SdkConfigurationProperty']
        {
          name: 'name',
          friendly_name: 'friendly_name',
          description: 'description',
          required: false,
          default_value: 'default_value',
        }
      end

      def self.stub(stub)
        stub ||= Types::SdkConfigurationProperty.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['friendlyName'] = stub[:friendly_name] unless stub[:friendly_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['required'] = stub[:required] unless stub[:required].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data
      end
    end

    # Operation Stubber for GetSdkTypes
    class GetSdkTypes
      def self.default(visited=[])
        {
          items: ListOfSdkType.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfSdkType.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfSdkType
    class ListOfSdkType
      def self.default(visited=[])
        return nil if visited.include?('ListOfSdkType')
        visited = visited + ['ListOfSdkType']
        [
          SdkType.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SdkType.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SdkType
    class SdkType
      def self.default(visited=[])
        return nil if visited.include?('SdkType')
        visited = visited + ['SdkType']
        {
          id: 'id',
          friendly_name: 'friendly_name',
          description: 'description',
          configuration_properties: ListOfSdkConfigurationProperty.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SdkType.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['friendlyName'] = stub[:friendly_name] unless stub[:friendly_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['configurationProperties'] = ListOfSdkConfigurationProperty.stub(stub[:configuration_properties]) unless stub[:configuration_properties].nil?
        data
      end
    end

    # Operation Stubber for GetStage
    class GetStage
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
          client_certificate_id: 'client_certificate_id',
          stage_name: 'stage_name',
          description: 'description',
          cache_cluster_enabled: false,
          cache_cluster_size: 'cache_cluster_size',
          cache_cluster_status: 'cache_cluster_status',
          method_settings: MapOfMethodSettings.default(visited),
          variables: MapOfStringToString.default(visited),
          documentation_version: 'documentation_version',
          access_log_settings: AccessLogSettings.default(visited),
          canary_settings: CanarySettings.default(visited),
          tracing_enabled: false,
          web_acl_arn: 'web_acl_arn',
          tags: MapOfStringToString.default(visited),
          created_date: Time.now,
          last_updated_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['cacheClusterEnabled'] = stub[:cache_cluster_enabled] unless stub[:cache_cluster_enabled].nil?
        data['cacheClusterSize'] = stub[:cache_cluster_size] unless stub[:cache_cluster_size].nil?
        data['cacheClusterStatus'] = stub[:cache_cluster_status] unless stub[:cache_cluster_status].nil?
        data['methodSettings'] = MapOfMethodSettings.stub(stub[:method_settings]) unless stub[:method_settings].nil?
        data['variables'] = MapOfStringToString.stub(stub[:variables]) unless stub[:variables].nil?
        data['documentationVersion'] = stub[:documentation_version] unless stub[:documentation_version].nil?
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['canarySettings'] = CanarySettings.stub(stub[:canary_settings]) unless stub[:canary_settings].nil?
        data['tracingEnabled'] = stub[:tracing_enabled] unless stub[:tracing_enabled].nil?
        data['webAclArn'] = stub[:web_acl_arn] unless stub[:web_acl_arn].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStages
    class GetStages
      def self.default(visited=[])
        {
          item: ListOfStage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfStage.stub(stub[:item]) unless stub[:item].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfStage
    class ListOfStage
      def self.default(visited=[])
        return nil if visited.include?('ListOfStage')
        visited = visited + ['ListOfStage']
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
          deployment_id: 'deployment_id',
          client_certificate_id: 'client_certificate_id',
          stage_name: 'stage_name',
          description: 'description',
          cache_cluster_enabled: false,
          cache_cluster_size: 'cache_cluster_size',
          cache_cluster_status: 'cache_cluster_status',
          method_settings: MapOfMethodSettings.default(visited),
          variables: MapOfStringToString.default(visited),
          documentation_version: 'documentation_version',
          access_log_settings: AccessLogSettings.default(visited),
          canary_settings: CanarySettings.default(visited),
          tracing_enabled: false,
          web_acl_arn: 'web_acl_arn',
          tags: MapOfStringToString.default(visited),
          created_date: Time.now,
          last_updated_date: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Stage.new
        data = {}
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['cacheClusterEnabled'] = stub[:cache_cluster_enabled] unless stub[:cache_cluster_enabled].nil?
        data['cacheClusterSize'] = stub[:cache_cluster_size] unless stub[:cache_cluster_size].nil?
        data['cacheClusterStatus'] = stub[:cache_cluster_status] unless stub[:cache_cluster_status].nil?
        data['methodSettings'] = MapOfMethodSettings.stub(stub[:method_settings]) unless stub[:method_settings].nil?
        data['variables'] = MapOfStringToString.stub(stub[:variables]) unless stub[:variables].nil?
        data['documentationVersion'] = stub[:documentation_version] unless stub[:documentation_version].nil?
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['canarySettings'] = CanarySettings.stub(stub[:canary_settings]) unless stub[:canary_settings].nil?
        data['tracingEnabled'] = stub[:tracing_enabled] unless stub[:tracing_enabled].nil?
        data['webAclArn'] = stub[:web_acl_arn] unless stub[:web_acl_arn].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data
      end
    end

    # Operation Stubber for GetTags
    class GetTags
      def self.default(visited=[])
        {
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUsage
    class GetUsage
      def self.default(visited=[])
        {
          usage_plan_id: 'usage_plan_id',
          start_date: 'start_date',
          end_date: 'end_date',
          items: MapOfKeyUsages.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['usagePlanId'] = stub[:usage_plan_id] unless stub[:usage_plan_id].nil?
        data['startDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['endDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['values'] = MapOfKeyUsages.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for MapOfKeyUsages
    class MapOfKeyUsages
      def self.default(visited=[])
        return nil if visited.include?('MapOfKeyUsages')
        visited = visited + ['MapOfKeyUsages']
        {
          test_key: ListOfUsage.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ListOfUsage.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ListOfUsage
    class ListOfUsage
      def self.default(visited=[])
        return nil if visited.include?('ListOfUsage')
        visited = visited + ['ListOfUsage']
        [
          ListOfLong.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ListOfLong.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for ListOfLong
    class ListOfLong
      def self.default(visited=[])
        return nil if visited.include?('ListOfLong')
        visited = visited + ['ListOfLong']
        [
          1
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

    # Operation Stubber for GetUsagePlan
    class GetUsagePlan
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          api_stages: ListOfApiStage.default(visited),
          throttle: ThrottleSettings.default(visited),
          quota: QuotaSettings.default(visited),
          product_code: 'product_code',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['apiStages'] = ListOfApiStage.stub(stub[:api_stages]) unless stub[:api_stages].nil?
        data['throttle'] = ThrottleSettings.stub(stub[:throttle]) unless stub[:throttle].nil?
        data['quota'] = QuotaSettings.stub(stub[:quota]) unless stub[:quota].nil?
        data['productCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUsagePlanKey
    class GetUsagePlanKey
      def self.default(visited=[])
        {
          id: 'id',
          type: 'type',
          value: 'value',
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetUsagePlanKeys
    class GetUsagePlanKeys
      def self.default(visited=[])
        {
          items: ListOfUsagePlanKey.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfUsagePlanKey.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfUsagePlanKey
    class ListOfUsagePlanKey
      def self.default(visited=[])
        return nil if visited.include?('ListOfUsagePlanKey')
        visited = visited + ['ListOfUsagePlanKey']
        [
          UsagePlanKey.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UsagePlanKey.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsagePlanKey
    class UsagePlanKey
      def self.default(visited=[])
        return nil if visited.include?('UsagePlanKey')
        visited = visited + ['UsagePlanKey']
        {
          id: 'id',
          type: 'type',
          value: 'value',
          name: 'name',
        }
      end

      def self.stub(stub)
        stub ||= Types::UsagePlanKey.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data
      end
    end

    # Operation Stubber for GetUsagePlans
    class GetUsagePlans
      def self.default(visited=[])
        {
          items: ListOfUsagePlan.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfUsagePlan.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfUsagePlan
    class ListOfUsagePlan
      def self.default(visited=[])
        return nil if visited.include?('ListOfUsagePlan')
        visited = visited + ['ListOfUsagePlan']
        [
          UsagePlan.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UsagePlan.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsagePlan
    class UsagePlan
      def self.default(visited=[])
        return nil if visited.include?('UsagePlan')
        visited = visited + ['UsagePlan']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          api_stages: ListOfApiStage.default(visited),
          throttle: ThrottleSettings.default(visited),
          quota: QuotaSettings.default(visited),
          product_code: 'product_code',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsagePlan.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['apiStages'] = ListOfApiStage.stub(stub[:api_stages]) unless stub[:api_stages].nil?
        data['throttle'] = ThrottleSettings.stub(stub[:throttle]) unless stub[:throttle].nil?
        data['quota'] = QuotaSettings.stub(stub[:quota]) unless stub[:quota].nil?
        data['productCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetVpcLink
    class GetVpcLink
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          target_arns: ListOfString.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targetArns'] = ListOfString.stub(stub[:target_arns]) unless stub[:target_arns].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetVpcLinks
    class GetVpcLinks
      def self.default(visited=[])
        {
          items: ListOfVpcLink.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['item'] = ListOfVpcLink.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ListOfVpcLink
    class ListOfVpcLink
      def self.default(visited=[])
        return nil if visited.include?('ListOfVpcLink')
        visited = visited + ['ListOfVpcLink']
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
          id: 'id',
          name: 'name',
          description: 'description',
          target_arns: ListOfString.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcLink.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targetArns'] = ListOfString.stub(stub[:target_arns]) unless stub[:target_arns].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ImportApiKeys
    class ImportApiKeys
      def self.default(visited=[])
        {
          ids: ListOfString.default(visited),
          warnings: ListOfString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['ids'] = ListOfString.stub(stub[:ids]) unless stub[:ids].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportDocumentationParts
    class ImportDocumentationParts
      def self.default(visited=[])
        {
          ids: ListOfString.default(visited),
          warnings: ListOfString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ids'] = ListOfString.stub(stub[:ids]) unless stub[:ids].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ImportRestApi
    class ImportRestApi
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: Time.now,
          version: 'version',
          warnings: ListOfString.default(visited),
          binary_media_types: ListOfString.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: EndpointConfiguration.default(visited),
          policy: 'policy',
          tags: MapOfStringToString.default(visited),
          disable_execute_api_endpoint: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['binaryMediaTypes'] = ListOfString.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['minimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['apiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutGatewayResponse
    class PutGatewayResponse
      def self.default(visited=[])
        {
          response_type: 'response_type',
          status_code: 'status_code',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          default_response: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['responseType'] = stub[:response_type] unless stub[:response_type].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['defaultResponse'] = stub[:default_response] unless stub[:default_response].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutIntegration
    class PutIntegration
      def self.default(visited=[])
        {
          type: 'type',
          http_method: 'http_method',
          uri: 'uri',
          connection_type: 'connection_type',
          connection_id: 'connection_id',
          credentials: 'credentials',
          request_parameters: MapOfStringToString.default(visited),
          request_templates: MapOfStringToString.default(visited),
          passthrough_behavior: 'passthrough_behavior',
          content_handling: 'content_handling',
          timeout_in_millis: 1,
          cache_namespace: 'cache_namespace',
          cache_key_parameters: ListOfString.default(visited),
          integration_responses: MapOfIntegrationResponse.default(visited),
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['type'] = stub[:type] unless stub[:type].nil?
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['credentials'] = stub[:credentials] unless stub[:credentials].nil?
        data['requestParameters'] = MapOfStringToString.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = MapOfStringToString.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['cacheNamespace'] = stub[:cache_namespace] unless stub[:cache_namespace].nil?
        data['cacheKeyParameters'] = ListOfString.stub(stub[:cache_key_parameters]) unless stub[:cache_key_parameters].nil?
        data['integrationResponses'] = MapOfIntegrationResponse.stub(stub[:integration_responses]) unless stub[:integration_responses].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutIntegrationResponse
    class PutIntegrationResponse
      def self.default(visited=[])
        {
          status_code: 'status_code',
          selection_pattern: 'selection_pattern',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          content_handling: 'content_handling',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['selectionPattern'] = stub[:selection_pattern] unless stub[:selection_pattern].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutMethod
    class PutMethod
      def self.default(visited=[])
        {
          http_method: 'http_method',
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          api_key_required: false,
          request_validator_id: 'request_validator_id',
          operation_name: 'operation_name',
          request_parameters: MapOfStringToBoolean.default(visited),
          request_models: MapOfStringToString.default(visited),
          method_responses: MapOfMethodResponse.default(visited),
          method_integration: Integration.default(visited),
          authorization_scopes: ListOfString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['requestValidatorId'] = stub[:request_validator_id] unless stub[:request_validator_id].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestParameters'] = MapOfStringToBoolean.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestModels'] = MapOfStringToString.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['methodResponses'] = MapOfMethodResponse.stub(stub[:method_responses]) unless stub[:method_responses].nil?
        data['methodIntegration'] = Integration.stub(stub[:method_integration]) unless stub[:method_integration].nil?
        data['authorizationScopes'] = ListOfString.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutMethodResponse
    class PutMethodResponse
      def self.default(visited=[])
        {
          status_code: 'status_code',
          response_parameters: MapOfStringToBoolean.default(visited),
          response_models: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToBoolean.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseModels'] = MapOfStringToString.stub(stub[:response_models]) unless stub[:response_models].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRestApi
    class PutRestApi
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: Time.now,
          version: 'version',
          warnings: ListOfString.default(visited),
          binary_media_types: ListOfString.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: EndpointConfiguration.default(visited),
          policy: 'policy',
          tags: MapOfStringToString.default(visited),
          disable_execute_api_endpoint: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['binaryMediaTypes'] = ListOfString.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['minimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['apiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for TestInvokeAuthorizer
    class TestInvokeAuthorizer
      def self.default(visited=[])
        {
          client_status: 1,
          log: 'log',
          latency: 1,
          principal_id: 'principal_id',
          policy: 'policy',
          authorization: MapOfStringToList.default(visited),
          claims: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clientStatus'] = stub[:client_status] unless stub[:client_status].nil?
        data['log'] = stub[:log] unless stub[:log].nil?
        data['latency'] = stub[:latency] unless stub[:latency].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['authorization'] = MapOfStringToList.stub(stub[:authorization]) unless stub[:authorization].nil?
        data['claims'] = MapOfStringToString.stub(stub[:claims]) unless stub[:claims].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for MapOfStringToList
    class MapOfStringToList
      def self.default(visited=[])
        return nil if visited.include?('MapOfStringToList')
        visited = visited + ['MapOfStringToList']
        {
          test_key: ListOfString.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ListOfString.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for TestInvokeMethod
    class TestInvokeMethod
      def self.default(visited=[])
        {
          status: 1,
          body: 'body',
          headers: MapOfStringToString.default(visited),
          multi_value_headers: MapOfStringToList.default(visited),
          log: 'log',
          latency: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['status'] = stub[:status] unless stub[:status].nil?
        data['body'] = stub[:body] unless stub[:body].nil?
        data['headers'] = MapOfStringToString.stub(stub[:headers]) unless stub[:headers].nil?
        data['multiValueHeaders'] = MapOfStringToList.stub(stub[:multi_value_headers]) unless stub[:multi_value_headers].nil?
        data['log'] = stub[:log] unless stub[:log].nil?
        data['latency'] = stub[:latency] unless stub[:latency].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for UpdateAccount
    class UpdateAccount
      def self.default(visited=[])
        {
          cloudwatch_role_arn: 'cloudwatch_role_arn',
          throttle_settings: ThrottleSettings.default(visited),
          features: ListOfString.default(visited),
          api_key_version: 'api_key_version',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['cloudwatchRoleArn'] = stub[:cloudwatch_role_arn] unless stub[:cloudwatch_role_arn].nil?
        data['throttleSettings'] = ThrottleSettings.stub(stub[:throttle_settings]) unless stub[:throttle_settings].nil?
        data['features'] = ListOfString.stub(stub[:features]) unless stub[:features].nil?
        data['apiKeyVersion'] = stub[:api_key_version] unless stub[:api_key_version].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateApiKey
    class UpdateApiKey
      def self.default(visited=[])
        {
          id: 'id',
          value: 'value',
          name: 'name',
          customer_id: 'customer_id',
          description: 'description',
          enabled: false,
          created_date: Time.now,
          last_updated_date: Time.now,
          stage_keys: ListOfString.default(visited),
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['customerId'] = stub[:customer_id] unless stub[:customer_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        data['stageKeys'] = ListOfString.stub(stub[:stage_keys]) unless stub[:stage_keys].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateAuthorizer
    class UpdateAuthorizer
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          type: 'type',
          provider_ar_ns: ListOfARNs.default(visited),
          auth_type: 'auth_type',
          authorizer_uri: 'authorizer_uri',
          authorizer_credentials: 'authorizer_credentials',
          identity_source: 'identity_source',
          identity_validation_expression: 'identity_validation_expression',
          authorizer_result_ttl_in_seconds: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['providerARNs'] = ListOfARNs.stub(stub[:provider_ar_ns]) unless stub[:provider_ar_ns].nil?
        data['authType'] = stub[:auth_type] unless stub[:auth_type].nil?
        data['authorizerUri'] = stub[:authorizer_uri] unless stub[:authorizer_uri].nil?
        data['authorizerCredentials'] = stub[:authorizer_credentials] unless stub[:authorizer_credentials].nil?
        data['identitySource'] = stub[:identity_source] unless stub[:identity_source].nil?
        data['identityValidationExpression'] = stub[:identity_validation_expression] unless stub[:identity_validation_expression].nil?
        data['authorizerResultTtlInSeconds'] = stub[:authorizer_result_ttl_in_seconds] unless stub[:authorizer_result_ttl_in_seconds].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateBasePathMapping
    class UpdateBasePathMapping
      def self.default(visited=[])
        {
          base_path: 'base_path',
          rest_api_id: 'rest_api_id',
          stage: 'stage',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['basePath'] = stub[:base_path] unless stub[:base_path].nil?
        data['restApiId'] = stub[:rest_api_id] unless stub[:rest_api_id].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateClientCertificate
    class UpdateClientCertificate
      def self.default(visited=[])
        {
          client_certificate_id: 'client_certificate_id',
          description: 'description',
          pem_encoded_certificate: 'pem_encoded_certificate',
          created_date: Time.now,
          expiration_date: Time.now,
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['pemEncodedCertificate'] = stub[:pem_encoded_certificate] unless stub[:pem_encoded_certificate].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['expirationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_date]).to_i unless stub[:expiration_date].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDeployment
    class UpdateDeployment
      def self.default(visited=[])
        {
          id: 'id',
          description: 'description',
          created_date: Time.now,
          api_summary: PathToMapOfMethodSnapshot.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['apiSummary'] = PathToMapOfMethodSnapshot.stub(stub[:api_summary]) unless stub[:api_summary].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDocumentationPart
    class UpdateDocumentationPart
      def self.default(visited=[])
        {
          id: 'id',
          location: DocumentationPartLocation.default(visited),
          properties: 'properties',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['location'] = DocumentationPartLocation.stub(stub[:location]) unless stub[:location].nil?
        data['properties'] = stub[:properties] unless stub[:properties].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDocumentationVersion
    class UpdateDocumentationVersion
      def self.default(visited=[])
        {
          version: 'version',
          created_date: Time.now,
          description: 'description',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['version'] = stub[:version] unless stub[:version].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateDomainName
    class UpdateDomainName
      def self.default(visited=[])
        {
          domain_name: 'domain_name',
          certificate_name: 'certificate_name',
          certificate_arn: 'certificate_arn',
          certificate_upload_date: Time.now,
          regional_domain_name: 'regional_domain_name',
          regional_hosted_zone_id: 'regional_hosted_zone_id',
          regional_certificate_name: 'regional_certificate_name',
          regional_certificate_arn: 'regional_certificate_arn',
          distribution_domain_name: 'distribution_domain_name',
          distribution_hosted_zone_id: 'distribution_hosted_zone_id',
          endpoint_configuration: EndpointConfiguration.default(visited),
          domain_name_status: 'domain_name_status',
          domain_name_status_message: 'domain_name_status_message',
          security_policy: 'security_policy',
          tags: MapOfStringToString.default(visited),
          mutual_tls_authentication: MutualTlsAuthentication.default(visited),
          ownership_verification_certificate_arn: 'ownership_verification_certificate_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['certificateName'] = stub[:certificate_name] unless stub[:certificate_name].nil?
        data['certificateArn'] = stub[:certificate_arn] unless stub[:certificate_arn].nil?
        data['certificateUploadDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:certificate_upload_date]).to_i unless stub[:certificate_upload_date].nil?
        data['regionalDomainName'] = stub[:regional_domain_name] unless stub[:regional_domain_name].nil?
        data['regionalHostedZoneId'] = stub[:regional_hosted_zone_id] unless stub[:regional_hosted_zone_id].nil?
        data['regionalCertificateName'] = stub[:regional_certificate_name] unless stub[:regional_certificate_name].nil?
        data['regionalCertificateArn'] = stub[:regional_certificate_arn] unless stub[:regional_certificate_arn].nil?
        data['distributionDomainName'] = stub[:distribution_domain_name] unless stub[:distribution_domain_name].nil?
        data['distributionHostedZoneId'] = stub[:distribution_hosted_zone_id] unless stub[:distribution_hosted_zone_id].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['domainNameStatus'] = stub[:domain_name_status] unless stub[:domain_name_status].nil?
        data['domainNameStatusMessage'] = stub[:domain_name_status_message] unless stub[:domain_name_status_message].nil?
        data['securityPolicy'] = stub[:security_policy] unless stub[:security_policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['mutualTlsAuthentication'] = MutualTlsAuthentication.stub(stub[:mutual_tls_authentication]) unless stub[:mutual_tls_authentication].nil?
        data['ownershipVerificationCertificateArn'] = stub[:ownership_verification_certificate_arn] unless stub[:ownership_verification_certificate_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateGatewayResponse
    class UpdateGatewayResponse
      def self.default(visited=[])
        {
          response_type: 'response_type',
          status_code: 'status_code',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          default_response: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['responseType'] = stub[:response_type] unless stub[:response_type].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['defaultResponse'] = stub[:default_response] unless stub[:default_response].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIntegration
    class UpdateIntegration
      def self.default(visited=[])
        {
          type: 'type',
          http_method: 'http_method',
          uri: 'uri',
          connection_type: 'connection_type',
          connection_id: 'connection_id',
          credentials: 'credentials',
          request_parameters: MapOfStringToString.default(visited),
          request_templates: MapOfStringToString.default(visited),
          passthrough_behavior: 'passthrough_behavior',
          content_handling: 'content_handling',
          timeout_in_millis: 1,
          cache_namespace: 'cache_namespace',
          cache_key_parameters: ListOfString.default(visited),
          integration_responses: MapOfIntegrationResponse.default(visited),
          tls_config: TlsConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['type'] = stub[:type] unless stub[:type].nil?
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['uri'] = stub[:uri] unless stub[:uri].nil?
        data['connectionType'] = stub[:connection_type] unless stub[:connection_type].nil?
        data['connectionId'] = stub[:connection_id] unless stub[:connection_id].nil?
        data['credentials'] = stub[:credentials] unless stub[:credentials].nil?
        data['requestParameters'] = MapOfStringToString.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestTemplates'] = MapOfStringToString.stub(stub[:request_templates]) unless stub[:request_templates].nil?
        data['passthroughBehavior'] = stub[:passthrough_behavior] unless stub[:passthrough_behavior].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        data['timeoutInMillis'] = stub[:timeout_in_millis] unless stub[:timeout_in_millis].nil?
        data['cacheNamespace'] = stub[:cache_namespace] unless stub[:cache_namespace].nil?
        data['cacheKeyParameters'] = ListOfString.stub(stub[:cache_key_parameters]) unless stub[:cache_key_parameters].nil?
        data['integrationResponses'] = MapOfIntegrationResponse.stub(stub[:integration_responses]) unless stub[:integration_responses].nil?
        data['tlsConfig'] = TlsConfig.stub(stub[:tls_config]) unless stub[:tls_config].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIntegrationResponse
    class UpdateIntegrationResponse
      def self.default(visited=[])
        {
          status_code: 'status_code',
          selection_pattern: 'selection_pattern',
          response_parameters: MapOfStringToString.default(visited),
          response_templates: MapOfStringToString.default(visited),
          content_handling: 'content_handling',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['selectionPattern'] = stub[:selection_pattern] unless stub[:selection_pattern].nil?
        data['responseParameters'] = MapOfStringToString.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseTemplates'] = MapOfStringToString.stub(stub[:response_templates]) unless stub[:response_templates].nil?
        data['contentHandling'] = stub[:content_handling] unless stub[:content_handling].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMethod
    class UpdateMethod
      def self.default(visited=[])
        {
          http_method: 'http_method',
          authorization_type: 'authorization_type',
          authorizer_id: 'authorizer_id',
          api_key_required: false,
          request_validator_id: 'request_validator_id',
          operation_name: 'operation_name',
          request_parameters: MapOfStringToBoolean.default(visited),
          request_models: MapOfStringToString.default(visited),
          method_responses: MapOfMethodResponse.default(visited),
          method_integration: Integration.default(visited),
          authorization_scopes: ListOfString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['httpMethod'] = stub[:http_method] unless stub[:http_method].nil?
        data['authorizationType'] = stub[:authorization_type] unless stub[:authorization_type].nil?
        data['authorizerId'] = stub[:authorizer_id] unless stub[:authorizer_id].nil?
        data['apiKeyRequired'] = stub[:api_key_required] unless stub[:api_key_required].nil?
        data['requestValidatorId'] = stub[:request_validator_id] unless stub[:request_validator_id].nil?
        data['operationName'] = stub[:operation_name] unless stub[:operation_name].nil?
        data['requestParameters'] = MapOfStringToBoolean.stub(stub[:request_parameters]) unless stub[:request_parameters].nil?
        data['requestModels'] = MapOfStringToString.stub(stub[:request_models]) unless stub[:request_models].nil?
        data['methodResponses'] = MapOfMethodResponse.stub(stub[:method_responses]) unless stub[:method_responses].nil?
        data['methodIntegration'] = Integration.stub(stub[:method_integration]) unless stub[:method_integration].nil?
        data['authorizationScopes'] = ListOfString.stub(stub[:authorization_scopes]) unless stub[:authorization_scopes].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateMethodResponse
    class UpdateMethodResponse
      def self.default(visited=[])
        {
          status_code: 'status_code',
          response_parameters: MapOfStringToBoolean.default(visited),
          response_models: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 201
        http_resp.headers['Content-Type'] = 'application/json'
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['responseParameters'] = MapOfStringToBoolean.stub(stub[:response_parameters]) unless stub[:response_parameters].nil?
        data['responseModels'] = MapOfStringToString.stub(stub[:response_models]) unless stub[:response_models].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateModel
    class UpdateModel
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          schema: 'schema',
          content_type: 'content_type',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['schema'] = stub[:schema] unless stub[:schema].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRequestValidator
    class UpdateRequestValidator
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          validate_request_body: false,
          validate_request_parameters: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['validateRequestBody'] = stub[:validate_request_body] unless stub[:validate_request_body].nil?
        data['validateRequestParameters'] = stub[:validate_request_parameters] unless stub[:validate_request_parameters].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateResource
    class UpdateResource
      def self.default(visited=[])
        {
          id: 'id',
          parent_id: 'parent_id',
          path_part: 'path_part',
          path: 'path',
          resource_methods: MapOfMethod.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['parentId'] = stub[:parent_id] unless stub[:parent_id].nil?
        data['pathPart'] = stub[:path_part] unless stub[:path_part].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['resourceMethods'] = MapOfMethod.stub(stub[:resource_methods]) unless stub[:resource_methods].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateRestApi
    class UpdateRestApi
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          created_date: Time.now,
          version: 'version',
          warnings: ListOfString.default(visited),
          binary_media_types: ListOfString.default(visited),
          minimum_compression_size: 1,
          api_key_source: 'api_key_source',
          endpoint_configuration: EndpointConfiguration.default(visited),
          policy: 'policy',
          tags: MapOfStringToString.default(visited),
          disable_execute_api_endpoint: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['version'] = stub[:version] unless stub[:version].nil?
        data['warnings'] = ListOfString.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['binaryMediaTypes'] = ListOfString.stub(stub[:binary_media_types]) unless stub[:binary_media_types].nil?
        data['minimumCompressionSize'] = stub[:minimum_compression_size] unless stub[:minimum_compression_size].nil?
        data['apiKeySource'] = stub[:api_key_source] unless stub[:api_key_source].nil?
        data['endpointConfiguration'] = EndpointConfiguration.stub(stub[:endpoint_configuration]) unless stub[:endpoint_configuration].nil?
        data['policy'] = stub[:policy] unless stub[:policy].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['disableExecuteApiEndpoint'] = stub[:disable_execute_api_endpoint] unless stub[:disable_execute_api_endpoint].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStage
    class UpdateStage
      def self.default(visited=[])
        {
          deployment_id: 'deployment_id',
          client_certificate_id: 'client_certificate_id',
          stage_name: 'stage_name',
          description: 'description',
          cache_cluster_enabled: false,
          cache_cluster_size: 'cache_cluster_size',
          cache_cluster_status: 'cache_cluster_status',
          method_settings: MapOfMethodSettings.default(visited),
          variables: MapOfStringToString.default(visited),
          documentation_version: 'documentation_version',
          access_log_settings: AccessLogSettings.default(visited),
          canary_settings: CanarySettings.default(visited),
          tracing_enabled: false,
          web_acl_arn: 'web_acl_arn',
          tags: MapOfStringToString.default(visited),
          created_date: Time.now,
          last_updated_date: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['deploymentId'] = stub[:deployment_id] unless stub[:deployment_id].nil?
        data['clientCertificateId'] = stub[:client_certificate_id] unless stub[:client_certificate_id].nil?
        data['stageName'] = stub[:stage_name] unless stub[:stage_name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['cacheClusterEnabled'] = stub[:cache_cluster_enabled] unless stub[:cache_cluster_enabled].nil?
        data['cacheClusterSize'] = stub[:cache_cluster_size] unless stub[:cache_cluster_size].nil?
        data['cacheClusterStatus'] = stub[:cache_cluster_status] unless stub[:cache_cluster_status].nil?
        data['methodSettings'] = MapOfMethodSettings.stub(stub[:method_settings]) unless stub[:method_settings].nil?
        data['variables'] = MapOfStringToString.stub(stub[:variables]) unless stub[:variables].nil?
        data['documentationVersion'] = stub[:documentation_version] unless stub[:documentation_version].nil?
        data['accessLogSettings'] = AccessLogSettings.stub(stub[:access_log_settings]) unless stub[:access_log_settings].nil?
        data['canarySettings'] = CanarySettings.stub(stub[:canary_settings]) unless stub[:canary_settings].nil?
        data['tracingEnabled'] = stub[:tracing_enabled] unless stub[:tracing_enabled].nil?
        data['webAclArn'] = stub[:web_acl_arn] unless stub[:web_acl_arn].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        data['createdDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_date]).to_i unless stub[:created_date].nil?
        data['lastUpdatedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_date]).to_i unless stub[:last_updated_date].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUsage
    class UpdateUsage
      def self.default(visited=[])
        {
          usage_plan_id: 'usage_plan_id',
          start_date: 'start_date',
          end_date: 'end_date',
          items: MapOfKeyUsages.default(visited),
          position: 'position',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['usagePlanId'] = stub[:usage_plan_id] unless stub[:usage_plan_id].nil?
        data['startDate'] = stub[:start_date] unless stub[:start_date].nil?
        data['endDate'] = stub[:end_date] unless stub[:end_date].nil?
        data['values'] = MapOfKeyUsages.stub(stub[:items]) unless stub[:items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUsagePlan
    class UpdateUsagePlan
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          api_stages: ListOfApiStage.default(visited),
          throttle: ThrottleSettings.default(visited),
          quota: QuotaSettings.default(visited),
          product_code: 'product_code',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['apiStages'] = ListOfApiStage.stub(stub[:api_stages]) unless stub[:api_stages].nil?
        data['throttle'] = ThrottleSettings.stub(stub[:throttle]) unless stub[:throttle].nil?
        data['quota'] = QuotaSettings.stub(stub[:quota]) unless stub[:quota].nil?
        data['productCode'] = stub[:product_code] unless stub[:product_code].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateVpcLink
    class UpdateVpcLink
      def self.default(visited=[])
        {
          id: 'id',
          name: 'name',
          description: 'description',
          target_arns: ListOfString.default(visited),
          status: 'status',
          status_message: 'status_message',
          tags: MapOfStringToString.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['id'] = stub[:id] unless stub[:id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['targetArns'] = ListOfString.stub(stub[:target_arns]) unless stub[:target_arns].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['tags'] = MapOfStringToString.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
