# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::APIGateway
  module Parsers

    # Operation Parser for CreateApiKey
    class CreateApiKey
      def self.parse(http_resp)
        data = Types::CreateApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.value = map['value']
        data.name = map['name']
        data.customer_id = map['customerId']
        data.description = map['description']
        data.enabled = map['enabled']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.stage_keys = (ListOfString.parse(map['stageKeys']) unless map['stageKeys'].nil?)
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class MapOfStringToString
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ListOfString
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
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

    # Operation Parser for CreateAuthorizer
    class CreateAuthorizer
      def self.parse(http_resp)
        data = Types::CreateAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.type = map['type']
        data.provider_ar_ns = (ListOfARNs.parse(map['providerARNs']) unless map['providerARNs'].nil?)
        data.auth_type = map['authType']
        data.authorizer_uri = map['authorizerUri']
        data.authorizer_credentials = map['authorizerCredentials']
        data.identity_source = map['identitySource']
        data.identity_validation_expression = map['identityValidationExpression']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data
      end
    end

    class ListOfARNs
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateBasePathMapping
    class CreateBasePathMapping
      def self.parse(http_resp)
        data = Types::CreateBasePathMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.base_path = map['basePath']
        data.rest_api_id = map['restApiId']
        data.stage = map['stage']
        data
      end
    end

    # Operation Parser for CreateDeployment
    class CreateDeployment
      def self.parse(http_resp)
        data = Types::CreateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.api_summary = (PathToMapOfMethodSnapshot.parse(map['apiSummary']) unless map['apiSummary'].nil?)
        data
      end
    end

    class PathToMapOfMethodSnapshot
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MapOfMethodSnapshot.parse(value) unless value.nil?
        end
        data
      end
    end

    class MapOfMethodSnapshot
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MethodSnapshot.parse(value) unless value.nil?
        end
        data
      end
    end

    class MethodSnapshot
      def self.parse(map)
        data = Types::MethodSnapshot.new
        data.authorization_type = map['authorizationType']
        data.api_key_required = map['apiKeyRequired']
        return data
      end
    end

    # Error Parser for ServiceUnavailableException
    class ServiceUnavailableException
      def self.parse(http_resp)
        data = Types::ServiceUnavailableException.new
        data.retry_after_seconds = http_resp.headers['Retry-After']
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateDocumentationPart
    class CreateDocumentationPart
      def self.parse(http_resp)
        data = Types::CreateDocumentationPartOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.location = (DocumentationPartLocation.parse(map['location']) unless map['location'].nil?)
        data.properties = map['properties']
        data
      end
    end

    class DocumentationPartLocation
      def self.parse(map)
        data = Types::DocumentationPartLocation.new
        data.type = map['type']
        data.path = map['path']
        data.member_method = map['method']
        data.status_code = map['statusCode']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for CreateDocumentationVersion
    class CreateDocumentationVersion
      def self.parse(http_resp)
        data = Types::CreateDocumentationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['version']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for CreateDomainName
    class CreateDomainName
      def self.parse(http_resp)
        data = Types::CreateDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['domainName']
        data.certificate_name = map['certificateName']
        data.certificate_arn = map['certificateArn']
        data.certificate_upload_date = Time.at(map['certificateUploadDate'].to_i) if map['certificateUploadDate']
        data.regional_domain_name = map['regionalDomainName']
        data.regional_hosted_zone_id = map['regionalHostedZoneId']
        data.regional_certificate_name = map['regionalCertificateName']
        data.regional_certificate_arn = map['regionalCertificateArn']
        data.distribution_domain_name = map['distributionDomainName']
        data.distribution_hosted_zone_id = map['distributionHostedZoneId']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.domain_name_status = map['domainNameStatus']
        data.domain_name_status_message = map['domainNameStatusMessage']
        data.security_policy = map['securityPolicy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.mutual_tls_authentication = (MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.ownership_verification_certificate_arn = map['ownershipVerificationCertificateArn']
        data
      end
    end

    class MutualTlsAuthentication
      def self.parse(map)
        data = Types::MutualTlsAuthentication.new
        data.truststore_uri = map['truststoreUri']
        data.truststore_version = map['truststoreVersion']
        data.truststore_warnings = (ListOfString.parse(map['truststoreWarnings']) unless map['truststoreWarnings'].nil?)
        return data
      end
    end

    class EndpointConfiguration
      def self.parse(map)
        data = Types::EndpointConfiguration.new
        data.types = (ListOfEndpointType.parse(map['types']) unless map['types'].nil?)
        data.vpc_endpoint_ids = (ListOfString.parse(map['vpcEndpointIds']) unless map['vpcEndpointIds'].nil?)
        return data
      end
    end

    class ListOfEndpointType
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateModel
    class CreateModel
      def self.parse(http_resp)
        data = Types::CreateModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.schema = map['schema']
        data.content_type = map['contentType']
        data
      end
    end

    # Operation Parser for CreateRequestValidator
    class CreateRequestValidator
      def self.parse(http_resp)
        data = Types::CreateRequestValidatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.validate_request_body = map['validateRequestBody']
        data.validate_request_parameters = map['validateRequestParameters']
        data
      end
    end

    # Operation Parser for CreateResource
    class CreateResource
      def self.parse(http_resp)
        data = Types::CreateResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.parent_id = map['parentId']
        data.path_part = map['pathPart']
        data.path = map['path']
        data.resource_methods = (MapOfMethod.parse(map['resourceMethods']) unless map['resourceMethods'].nil?)
        data
      end
    end

    class MapOfMethod
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Method.parse(value) unless value.nil?
        end
        data
      end
    end

    class Method
      def self.parse(map)
        data = Types::Method.new
        data.http_method = map['httpMethod']
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.api_key_required = map['apiKeyRequired']
        data.request_validator_id = map['requestValidatorId']
        data.operation_name = map['operationName']
        data.request_parameters = (MapOfStringToBoolean.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_models = (MapOfStringToString.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.method_responses = (MapOfMethodResponse.parse(map['methodResponses']) unless map['methodResponses'].nil?)
        data.method_integration = (Integration.parse(map['methodIntegration']) unless map['methodIntegration'].nil?)
        data.authorization_scopes = (ListOfString.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        return data
      end
    end

    class Integration
      def self.parse(map)
        data = Types::Integration.new
        data.type = map['type']
        data.http_method = map['httpMethod']
        data.uri = map['uri']
        data.connection_type = map['connectionType']
        data.connection_id = map['connectionId']
        data.credentials = map['credentials']
        data.request_parameters = (MapOfStringToString.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (MapOfStringToString.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.passthrough_behavior = map['passthroughBehavior']
        data.content_handling = map['contentHandling']
        data.timeout_in_millis = map['timeoutInMillis']
        data.cache_namespace = map['cacheNamespace']
        data.cache_key_parameters = (ListOfString.parse(map['cacheKeyParameters']) unless map['cacheKeyParameters'].nil?)
        data.integration_responses = (MapOfIntegrationResponse.parse(map['integrationResponses']) unless map['integrationResponses'].nil?)
        data.tls_config = (TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        return data
      end
    end

    class TlsConfig
      def self.parse(map)
        data = Types::TlsConfig.new
        data.insecure_skip_verification = map['insecureSkipVerification']
        return data
      end
    end

    class MapOfIntegrationResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = IntegrationResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class IntegrationResponse
      def self.parse(map)
        data = Types::IntegrationResponse.new
        data.status_code = map['statusCode']
        data.selection_pattern = map['selectionPattern']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.content_handling = map['contentHandling']
        return data
      end
    end

    class MapOfMethodResponse
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MethodResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class MethodResponse
      def self.parse(map)
        data = Types::MethodResponse.new
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToBoolean.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_models = (MapOfStringToString.parse(map['responseModels']) unless map['responseModels'].nil?)
        return data
      end
    end

    class MapOfStringToBoolean
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateRestApi
    class CreateRestApi
      def self.parse(http_resp)
        data = Types::CreateRestApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.binary_media_types = (ListOfString.parse(map['binaryMediaTypes']) unless map['binaryMediaTypes'].nil?)
        data.minimum_compression_size = map['minimumCompressionSize']
        data.api_key_source = map['apiKeySource']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.policy = map['policy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data
      end
    end

    # Operation Parser for CreateStage
    class CreateStage
      def self.parse(http_resp)
        data = Types::CreateStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_id = map['deploymentId']
        data.client_certificate_id = map['clientCertificateId']
        data.stage_name = map['stageName']
        data.description = map['description']
        data.cache_cluster_enabled = map['cacheClusterEnabled']
        data.cache_cluster_size = map['cacheClusterSize']
        data.cache_cluster_status = map['cacheClusterStatus']
        data.method_settings = (MapOfMethodSettings.parse(map['methodSettings']) unless map['methodSettings'].nil?)
        data.variables = (MapOfStringToString.parse(map['variables']) unless map['variables'].nil?)
        data.documentation_version = map['documentationVersion']
        data.access_log_settings = (AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.canary_settings = (CanarySettings.parse(map['canarySettings']) unless map['canarySettings'].nil?)
        data.tracing_enabled = map['tracingEnabled']
        data.web_acl_arn = map['webAclArn']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data
      end
    end

    class CanarySettings
      def self.parse(map)
        data = Types::CanarySettings.new
        data.percent_traffic = Hearth::NumberHelper.deserialize(map['percentTraffic'])
        data.deployment_id = map['deploymentId']
        data.stage_variable_overrides = (MapOfStringToString.parse(map['stageVariableOverrides']) unless map['stageVariableOverrides'].nil?)
        data.use_stage_cache = map['useStageCache']
        return data
      end
    end

    class AccessLogSettings
      def self.parse(map)
        data = Types::AccessLogSettings.new
        data.format = map['format']
        data.destination_arn = map['destinationArn']
        return data
      end
    end

    class MapOfMethodSettings
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = MethodSetting.parse(value) unless value.nil?
        end
        data
      end
    end

    class MethodSetting
      def self.parse(map)
        data = Types::MethodSetting.new
        data.metrics_enabled = map['metricsEnabled']
        data.logging_level = map['loggingLevel']
        data.data_trace_enabled = map['dataTraceEnabled']
        data.throttling_burst_limit = map['throttlingBurstLimit']
        data.throttling_rate_limit = Hearth::NumberHelper.deserialize(map['throttlingRateLimit'])
        data.caching_enabled = map['cachingEnabled']
        data.cache_ttl_in_seconds = map['cacheTtlInSeconds']
        data.cache_data_encrypted = map['cacheDataEncrypted']
        data.require_authorization_for_cache_control = map['requireAuthorizationForCacheControl']
        data.unauthorized_cache_control_header_strategy = map['unauthorizedCacheControlHeaderStrategy']
        return data
      end
    end

    # Operation Parser for CreateUsagePlan
    class CreateUsagePlan
      def self.parse(http_resp)
        data = Types::CreateUsagePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.api_stages = (ListOfApiStage.parse(map['apiStages']) unless map['apiStages'].nil?)
        data.throttle = (ThrottleSettings.parse(map['throttle']) unless map['throttle'].nil?)
        data.quota = (QuotaSettings.parse(map['quota']) unless map['quota'].nil?)
        data.product_code = map['productCode']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class QuotaSettings
      def self.parse(map)
        data = Types::QuotaSettings.new
        data.limit = map['limit']
        data.offset = map['offset']
        data.period = map['period']
        return data
      end
    end

    class ThrottleSettings
      def self.parse(map)
        data = Types::ThrottleSettings.new
        data.burst_limit = map['burstLimit']
        data.rate_limit = Hearth::NumberHelper.deserialize(map['rateLimit'])
        return data
      end
    end

    class ListOfApiStage
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApiStage.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApiStage
      def self.parse(map)
        data = Types::ApiStage.new
        data.api_id = map['apiId']
        data.stage = map['stage']
        data.throttle = (MapOfApiStageThrottleSettings.parse(map['throttle']) unless map['throttle'].nil?)
        return data
      end
    end

    class MapOfApiStageThrottleSettings
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ThrottleSettings.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateUsagePlanKey
    class CreateUsagePlanKey
      def self.parse(http_resp)
        data = Types::CreateUsagePlanKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.type = map['type']
        data.value = map['value']
        data.name = map['name']
        data
      end
    end

    # Operation Parser for CreateVpcLink
    class CreateVpcLink
      def self.parse(http_resp)
        data = Types::CreateVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.target_arns = (ListOfString.parse(map['targetArns']) unless map['targetArns'].nil?)
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for DeleteApiKey
    class DeleteApiKey
      def self.parse(http_resp)
        data = Types::DeleteApiKeyOutput.new
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

    # Operation Parser for DeleteBasePathMapping
    class DeleteBasePathMapping
      def self.parse(http_resp)
        data = Types::DeleteBasePathMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteClientCertificate
    class DeleteClientCertificate
      def self.parse(http_resp)
        data = Types::DeleteClientCertificateOutput.new
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

    # Operation Parser for DeleteDocumentationPart
    class DeleteDocumentationPart
      def self.parse(http_resp)
        data = Types::DeleteDocumentationPartOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteDocumentationVersion
    class DeleteDocumentationVersion
      def self.parse(http_resp)
        data = Types::DeleteDocumentationVersionOutput.new
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

    # Operation Parser for DeleteGatewayResponse
    class DeleteGatewayResponse
      def self.parse(http_resp)
        data = Types::DeleteGatewayResponseOutput.new
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

    # Operation Parser for DeleteMethod
    class DeleteMethod
      def self.parse(http_resp)
        data = Types::DeleteMethodOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMethodResponse
    class DeleteMethodResponse
      def self.parse(http_resp)
        data = Types::DeleteMethodResponseOutput.new
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

    # Operation Parser for DeleteRequestValidator
    class DeleteRequestValidator
      def self.parse(http_resp)
        data = Types::DeleteRequestValidatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteResource
    class DeleteResource
      def self.parse(http_resp)
        data = Types::DeleteResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteRestApi
    class DeleteRestApi
      def self.parse(http_resp)
        data = Types::DeleteRestApiOutput.new
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

    # Operation Parser for DeleteUsagePlan
    class DeleteUsagePlan
      def self.parse(http_resp)
        data = Types::DeleteUsagePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteUsagePlanKey
    class DeleteUsagePlanKey
      def self.parse(http_resp)
        data = Types::DeleteUsagePlanKeyOutput.new
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

    # Operation Parser for FlushStageAuthorizersCache
    class FlushStageAuthorizersCache
      def self.parse(http_resp)
        data = Types::FlushStageAuthorizersCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for FlushStageCache
    class FlushStageCache
      def self.parse(http_resp)
        data = Types::FlushStageCacheOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GenerateClientCertificate
    class GenerateClientCertificate
      def self.parse(http_resp)
        data = Types::GenerateClientCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_certificate_id = map['clientCertificateId']
        data.description = map['description']
        data.pem_encoded_certificate = map['pemEncodedCertificate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.expiration_date = Time.at(map['expirationDate'].to_i) if map['expirationDate']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetAccount
    class GetAccount
      def self.parse(http_resp)
        data = Types::GetAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cloudwatch_role_arn = map['cloudwatchRoleArn']
        data.throttle_settings = (ThrottleSettings.parse(map['throttleSettings']) unless map['throttleSettings'].nil?)
        data.features = (ListOfString.parse(map['features']) unless map['features'].nil?)
        data.api_key_version = map['apiKeyVersion']
        data
      end
    end

    # Operation Parser for GetApiKey
    class GetApiKey
      def self.parse(http_resp)
        data = Types::GetApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.value = map['value']
        data.name = map['name']
        data.customer_id = map['customerId']
        data.description = map['description']
        data.enabled = map['enabled']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.stage_keys = (ListOfString.parse(map['stageKeys']) unless map['stageKeys'].nil?)
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetApiKeys
    class GetApiKeys
      def self.parse(http_resp)
        data = Types::GetApiKeysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.items = (ListOfApiKey.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfApiKey
      def self.parse(list)
        data = []
        list.map do |value|
          data << ApiKey.parse(value) unless value.nil?
        end
        data
      end
    end

    class ApiKey
      def self.parse(map)
        data = Types::ApiKey.new
        data.id = map['id']
        data.value = map['value']
        data.name = map['name']
        data.customer_id = map['customerId']
        data.description = map['description']
        data.enabled = map['enabled']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.stage_keys = (ListOfString.parse(map['stageKeys']) unless map['stageKeys'].nil?)
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetAuthorizer
    class GetAuthorizer
      def self.parse(http_resp)
        data = Types::GetAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.type = map['type']
        data.provider_ar_ns = (ListOfARNs.parse(map['providerARNs']) unless map['providerARNs'].nil?)
        data.auth_type = map['authType']
        data.authorizer_uri = map['authorizerUri']
        data.authorizer_credentials = map['authorizerCredentials']
        data.identity_source = map['identitySource']
        data.identity_validation_expression = map['identityValidationExpression']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data
      end
    end

    # Operation Parser for GetAuthorizers
    class GetAuthorizers
      def self.parse(http_resp)
        data = Types::GetAuthorizersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfAuthorizer.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfAuthorizer
      def self.parse(list)
        data = []
        list.map do |value|
          data << Authorizer.parse(value) unless value.nil?
        end
        data
      end
    end

    class Authorizer
      def self.parse(map)
        data = Types::Authorizer.new
        data.id = map['id']
        data.name = map['name']
        data.type = map['type']
        data.provider_ar_ns = (ListOfARNs.parse(map['providerARNs']) unless map['providerARNs'].nil?)
        data.auth_type = map['authType']
        data.authorizer_uri = map['authorizerUri']
        data.authorizer_credentials = map['authorizerCredentials']
        data.identity_source = map['identitySource']
        data.identity_validation_expression = map['identityValidationExpression']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        return data
      end
    end

    # Operation Parser for GetBasePathMapping
    class GetBasePathMapping
      def self.parse(http_resp)
        data = Types::GetBasePathMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.base_path = map['basePath']
        data.rest_api_id = map['restApiId']
        data.stage = map['stage']
        data
      end
    end

    # Operation Parser for GetBasePathMappings
    class GetBasePathMappings
      def self.parse(http_resp)
        data = Types::GetBasePathMappingsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfBasePathMapping.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfBasePathMapping
      def self.parse(list)
        data = []
        list.map do |value|
          data << BasePathMapping.parse(value) unless value.nil?
        end
        data
      end
    end

    class BasePathMapping
      def self.parse(map)
        data = Types::BasePathMapping.new
        data.base_path = map['basePath']
        data.rest_api_id = map['restApiId']
        data.stage = map['stage']
        return data
      end
    end

    # Operation Parser for GetClientCertificate
    class GetClientCertificate
      def self.parse(http_resp)
        data = Types::GetClientCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_certificate_id = map['clientCertificateId']
        data.description = map['description']
        data.pem_encoded_certificate = map['pemEncodedCertificate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.expiration_date = Time.at(map['expirationDate'].to_i) if map['expirationDate']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetClientCertificates
    class GetClientCertificates
      def self.parse(http_resp)
        data = Types::GetClientCertificatesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfClientCertificate.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfClientCertificate
      def self.parse(list)
        data = []
        list.map do |value|
          data << ClientCertificate.parse(value) unless value.nil?
        end
        data
      end
    end

    class ClientCertificate
      def self.parse(map)
        data = Types::ClientCertificate.new
        data.client_certificate_id = map['clientCertificateId']
        data.description = map['description']
        data.pem_encoded_certificate = map['pemEncodedCertificate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.expiration_date = Time.at(map['expirationDate'].to_i) if map['expirationDate']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetDeployment
    class GetDeployment
      def self.parse(http_resp)
        data = Types::GetDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.api_summary = (PathToMapOfMethodSnapshot.parse(map['apiSummary']) unless map['apiSummary'].nil?)
        data
      end
    end

    # Operation Parser for GetDeployments
    class GetDeployments
      def self.parse(http_resp)
        data = Types::GetDeploymentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfDeployment.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfDeployment
      def self.parse(list)
        data = []
        list.map do |value|
          data << Deployment.parse(value) unless value.nil?
        end
        data
      end
    end

    class Deployment
      def self.parse(map)
        data = Types::Deployment.new
        data.id = map['id']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.api_summary = (PathToMapOfMethodSnapshot.parse(map['apiSummary']) unless map['apiSummary'].nil?)
        return data
      end
    end

    # Operation Parser for GetDocumentationPart
    class GetDocumentationPart
      def self.parse(http_resp)
        data = Types::GetDocumentationPartOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.location = (DocumentationPartLocation.parse(map['location']) unless map['location'].nil?)
        data.properties = map['properties']
        data
      end
    end

    # Operation Parser for GetDocumentationParts
    class GetDocumentationParts
      def self.parse(http_resp)
        data = Types::GetDocumentationPartsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfDocumentationPart.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfDocumentationPart
      def self.parse(list)
        data = []
        list.map do |value|
          data << DocumentationPart.parse(value) unless value.nil?
        end
        data
      end
    end

    class DocumentationPart
      def self.parse(map)
        data = Types::DocumentationPart.new
        data.id = map['id']
        data.location = (DocumentationPartLocation.parse(map['location']) unless map['location'].nil?)
        data.properties = map['properties']
        return data
      end
    end

    # Operation Parser for GetDocumentationVersion
    class GetDocumentationVersion
      def self.parse(http_resp)
        data = Types::GetDocumentationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['version']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for GetDocumentationVersions
    class GetDocumentationVersions
      def self.parse(http_resp)
        data = Types::GetDocumentationVersionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfDocumentationVersion.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfDocumentationVersion
      def self.parse(list)
        data = []
        list.map do |value|
          data << DocumentationVersion.parse(value) unless value.nil?
        end
        data
      end
    end

    class DocumentationVersion
      def self.parse(map)
        data = Types::DocumentationVersion.new
        data.version = map['version']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.description = map['description']
        return data
      end
    end

    # Operation Parser for GetDomainName
    class GetDomainName
      def self.parse(http_resp)
        data = Types::GetDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['domainName']
        data.certificate_name = map['certificateName']
        data.certificate_arn = map['certificateArn']
        data.certificate_upload_date = Time.at(map['certificateUploadDate'].to_i) if map['certificateUploadDate']
        data.regional_domain_name = map['regionalDomainName']
        data.regional_hosted_zone_id = map['regionalHostedZoneId']
        data.regional_certificate_name = map['regionalCertificateName']
        data.regional_certificate_arn = map['regionalCertificateArn']
        data.distribution_domain_name = map['distributionDomainName']
        data.distribution_hosted_zone_id = map['distributionHostedZoneId']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.domain_name_status = map['domainNameStatus']
        data.domain_name_status_message = map['domainNameStatusMessage']
        data.security_policy = map['securityPolicy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.mutual_tls_authentication = (MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.ownership_verification_certificate_arn = map['ownershipVerificationCertificateArn']
        data
      end
    end

    # Operation Parser for GetDomainNames
    class GetDomainNames
      def self.parse(http_resp)
        data = Types::GetDomainNamesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfDomainName.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfDomainName
      def self.parse(list)
        data = []
        list.map do |value|
          data << DomainName.parse(value) unless value.nil?
        end
        data
      end
    end

    class DomainName
      def self.parse(map)
        data = Types::DomainName.new
        data.domain_name = map['domainName']
        data.certificate_name = map['certificateName']
        data.certificate_arn = map['certificateArn']
        data.certificate_upload_date = Time.at(map['certificateUploadDate'].to_i) if map['certificateUploadDate']
        data.regional_domain_name = map['regionalDomainName']
        data.regional_hosted_zone_id = map['regionalHostedZoneId']
        data.regional_certificate_name = map['regionalCertificateName']
        data.regional_certificate_arn = map['regionalCertificateArn']
        data.distribution_domain_name = map['distributionDomainName']
        data.distribution_hosted_zone_id = map['distributionHostedZoneId']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.domain_name_status = map['domainNameStatus']
        data.domain_name_status_message = map['domainNameStatusMessage']
        data.security_policy = map['securityPolicy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.mutual_tls_authentication = (MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.ownership_verification_certificate_arn = map['ownershipVerificationCertificateArn']
        return data
      end
    end

    # Operation Parser for GetExport
    class GetExport
      def self.parse(http_resp)
        data = Types::GetExportOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.content_disposition = http_resp.headers['Content-Disposition']
        payload = http_resp.body.read
        data.body = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetGatewayResponse
    class GetGatewayResponse
      def self.parse(http_resp)
        data = Types::GetGatewayResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.response_type = map['responseType']
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.default_response = map['defaultResponse']
        data
      end
    end

    # Operation Parser for GetGatewayResponses
    class GetGatewayResponses
      def self.parse(http_resp)
        data = Types::GetGatewayResponsesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfGatewayResponse.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfGatewayResponse
      def self.parse(list)
        data = []
        list.map do |value|
          data << GatewayResponse.parse(value) unless value.nil?
        end
        data
      end
    end

    class GatewayResponse
      def self.parse(map)
        data = Types::GatewayResponse.new
        data.response_type = map['responseType']
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.default_response = map['defaultResponse']
        return data
      end
    end

    # Operation Parser for GetIntegration
    class GetIntegration
      def self.parse(http_resp)
        data = Types::GetIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.http_method = map['httpMethod']
        data.uri = map['uri']
        data.connection_type = map['connectionType']
        data.connection_id = map['connectionId']
        data.credentials = map['credentials']
        data.request_parameters = (MapOfStringToString.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (MapOfStringToString.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.passthrough_behavior = map['passthroughBehavior']
        data.content_handling = map['contentHandling']
        data.timeout_in_millis = map['timeoutInMillis']
        data.cache_namespace = map['cacheNamespace']
        data.cache_key_parameters = (ListOfString.parse(map['cacheKeyParameters']) unless map['cacheKeyParameters'].nil?)
        data.integration_responses = (MapOfIntegrationResponse.parse(map['integrationResponses']) unless map['integrationResponses'].nil?)
        data.tls_config = (TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        data
      end
    end

    # Operation Parser for GetIntegrationResponse
    class GetIntegrationResponse
      def self.parse(http_resp)
        data = Types::GetIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status_code = map['statusCode']
        data.selection_pattern = map['selectionPattern']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.content_handling = map['contentHandling']
        data
      end
    end

    # Operation Parser for GetMethod
    class GetMethod
      def self.parse(http_resp)
        data = Types::GetMethodOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.http_method = map['httpMethod']
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.api_key_required = map['apiKeyRequired']
        data.request_validator_id = map['requestValidatorId']
        data.operation_name = map['operationName']
        data.request_parameters = (MapOfStringToBoolean.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_models = (MapOfStringToString.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.method_responses = (MapOfMethodResponse.parse(map['methodResponses']) unless map['methodResponses'].nil?)
        data.method_integration = (Integration.parse(map['methodIntegration']) unless map['methodIntegration'].nil?)
        data.authorization_scopes = (ListOfString.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data
      end
    end

    # Operation Parser for GetMethodResponse
    class GetMethodResponse
      def self.parse(http_resp)
        data = Types::GetMethodResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToBoolean.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_models = (MapOfStringToString.parse(map['responseModels']) unless map['responseModels'].nil?)
        data
      end
    end

    # Operation Parser for GetModel
    class GetModel
      def self.parse(http_resp)
        data = Types::GetModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.schema = map['schema']
        data.content_type = map['contentType']
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
        data.items = (ListOfModel.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfModel
      def self.parse(list)
        data = []
        list.map do |value|
          data << Model.parse(value) unless value.nil?
        end
        data
      end
    end

    class Model
      def self.parse(map)
        data = Types::Model.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.schema = map['schema']
        data.content_type = map['contentType']
        return data
      end
    end

    # Operation Parser for GetRequestValidator
    class GetRequestValidator
      def self.parse(http_resp)
        data = Types::GetRequestValidatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.validate_request_body = map['validateRequestBody']
        data.validate_request_parameters = map['validateRequestParameters']
        data
      end
    end

    # Operation Parser for GetRequestValidators
    class GetRequestValidators
      def self.parse(http_resp)
        data = Types::GetRequestValidatorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfRequestValidator.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfRequestValidator
      def self.parse(list)
        data = []
        list.map do |value|
          data << RequestValidator.parse(value) unless value.nil?
        end
        data
      end
    end

    class RequestValidator
      def self.parse(map)
        data = Types::RequestValidator.new
        data.id = map['id']
        data.name = map['name']
        data.validate_request_body = map['validateRequestBody']
        data.validate_request_parameters = map['validateRequestParameters']
        return data
      end
    end

    # Operation Parser for GetResource
    class GetResource
      def self.parse(http_resp)
        data = Types::GetResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.parent_id = map['parentId']
        data.path_part = map['pathPart']
        data.path = map['path']
        data.resource_methods = (MapOfMethod.parse(map['resourceMethods']) unless map['resourceMethods'].nil?)
        data
      end
    end

    # Operation Parser for GetResources
    class GetResources
      def self.parse(http_resp)
        data = Types::GetResourcesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfResource.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfResource
      def self.parse(list)
        data = []
        list.map do |value|
          data << Resource.parse(value) unless value.nil?
        end
        data
      end
    end

    class Resource
      def self.parse(map)
        data = Types::Resource.new
        data.id = map['id']
        data.parent_id = map['parentId']
        data.path_part = map['pathPart']
        data.path = map['path']
        data.resource_methods = (MapOfMethod.parse(map['resourceMethods']) unless map['resourceMethods'].nil?)
        return data
      end
    end

    # Operation Parser for GetRestApi
    class GetRestApi
      def self.parse(http_resp)
        data = Types::GetRestApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.binary_media_types = (ListOfString.parse(map['binaryMediaTypes']) unless map['binaryMediaTypes'].nil?)
        data.minimum_compression_size = map['minimumCompressionSize']
        data.api_key_source = map['apiKeySource']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.policy = map['policy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data
      end
    end

    # Operation Parser for GetRestApis
    class GetRestApis
      def self.parse(http_resp)
        data = Types::GetRestApisOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfRestApi.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfRestApi
      def self.parse(list)
        data = []
        list.map do |value|
          data << RestApi.parse(value) unless value.nil?
        end
        data
      end
    end

    class RestApi
      def self.parse(map)
        data = Types::RestApi.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.binary_media_types = (ListOfString.parse(map['binaryMediaTypes']) unless map['binaryMediaTypes'].nil?)
        data.minimum_compression_size = map['minimumCompressionSize']
        data.api_key_source = map['apiKeySource']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.policy = map['policy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        return data
      end
    end

    # Operation Parser for GetSdk
    class GetSdk
      def self.parse(http_resp)
        data = Types::GetSdkOutput.new
        data.content_type = http_resp.headers['Content-Type']
        data.content_disposition = http_resp.headers['Content-Disposition']
        payload = http_resp.body.read
        data.body = payload unless payload.empty?
        data
      end
    end

    # Operation Parser for GetSdkType
    class GetSdkType
      def self.parse(http_resp)
        data = Types::GetSdkTypeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.friendly_name = map['friendlyName']
        data.description = map['description']
        data.configuration_properties = (ListOfSdkConfigurationProperty.parse(map['configurationProperties']) unless map['configurationProperties'].nil?)
        data
      end
    end

    class ListOfSdkConfigurationProperty
      def self.parse(list)
        data = []
        list.map do |value|
          data << SdkConfigurationProperty.parse(value) unless value.nil?
        end
        data
      end
    end

    class SdkConfigurationProperty
      def self.parse(map)
        data = Types::SdkConfigurationProperty.new
        data.name = map['name']
        data.friendly_name = map['friendlyName']
        data.description = map['description']
        data.required = map['required']
        data.default_value = map['defaultValue']
        return data
      end
    end

    # Operation Parser for GetSdkTypes
    class GetSdkTypes
      def self.parse(http_resp)
        data = Types::GetSdkTypesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfSdkType.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfSdkType
      def self.parse(list)
        data = []
        list.map do |value|
          data << SdkType.parse(value) unless value.nil?
        end
        data
      end
    end

    class SdkType
      def self.parse(map)
        data = Types::SdkType.new
        data.id = map['id']
        data.friendly_name = map['friendlyName']
        data.description = map['description']
        data.configuration_properties = (ListOfSdkConfigurationProperty.parse(map['configurationProperties']) unless map['configurationProperties'].nil?)
        return data
      end
    end

    # Operation Parser for GetStage
    class GetStage
      def self.parse(http_resp)
        data = Types::GetStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_id = map['deploymentId']
        data.client_certificate_id = map['clientCertificateId']
        data.stage_name = map['stageName']
        data.description = map['description']
        data.cache_cluster_enabled = map['cacheClusterEnabled']
        data.cache_cluster_size = map['cacheClusterSize']
        data.cache_cluster_status = map['cacheClusterStatus']
        data.method_settings = (MapOfMethodSettings.parse(map['methodSettings']) unless map['methodSettings'].nil?)
        data.variables = (MapOfStringToString.parse(map['variables']) unless map['variables'].nil?)
        data.documentation_version = map['documentationVersion']
        data.access_log_settings = (AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.canary_settings = (CanarySettings.parse(map['canarySettings']) unless map['canarySettings'].nil?)
        data.tracing_enabled = map['tracingEnabled']
        data.web_acl_arn = map['webAclArn']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data
      end
    end

    # Operation Parser for GetStages
    class GetStages
      def self.parse(http_resp)
        data = Types::GetStagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.item = (ListOfStage.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfStage
      def self.parse(list)
        data = []
        list.map do |value|
          data << Stage.parse(value) unless value.nil?
        end
        data
      end
    end

    class Stage
      def self.parse(map)
        data = Types::Stage.new
        data.deployment_id = map['deploymentId']
        data.client_certificate_id = map['clientCertificateId']
        data.stage_name = map['stageName']
        data.description = map['description']
        data.cache_cluster_enabled = map['cacheClusterEnabled']
        data.cache_cluster_size = map['cacheClusterSize']
        data.cache_cluster_status = map['cacheClusterStatus']
        data.method_settings = (MapOfMethodSettings.parse(map['methodSettings']) unless map['methodSettings'].nil?)
        data.variables = (MapOfStringToString.parse(map['variables']) unless map['variables'].nil?)
        data.documentation_version = map['documentationVersion']
        data.access_log_settings = (AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.canary_settings = (CanarySettings.parse(map['canarySettings']) unless map['canarySettings'].nil?)
        data.tracing_enabled = map['tracingEnabled']
        data.web_acl_arn = map['webAclArn']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        return data
      end
    end

    # Operation Parser for GetTags
    class GetTags
      def self.parse(http_resp)
        data = Types::GetTagsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetUsage
    class GetUsage
      def self.parse(http_resp)
        data = Types::GetUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.usage_plan_id = map['usagePlanId']
        data.start_date = map['startDate']
        data.end_date = map['endDate']
        data.items = (MapOfKeyUsages.parse(map['values']) unless map['values'].nil?)
        data
      end
    end

    class MapOfKeyUsages
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ListOfUsage.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListOfUsage
      def self.parse(list)
        data = []
        list.map do |value|
          data << ListOfLong.parse(value) unless value.nil?
        end
        data
      end
    end

    class ListOfLong
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetUsagePlan
    class GetUsagePlan
      def self.parse(http_resp)
        data = Types::GetUsagePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.api_stages = (ListOfApiStage.parse(map['apiStages']) unless map['apiStages'].nil?)
        data.throttle = (ThrottleSettings.parse(map['throttle']) unless map['throttle'].nil?)
        data.quota = (QuotaSettings.parse(map['quota']) unless map['quota'].nil?)
        data.product_code = map['productCode']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetUsagePlanKey
    class GetUsagePlanKey
      def self.parse(http_resp)
        data = Types::GetUsagePlanKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.type = map['type']
        data.value = map['value']
        data.name = map['name']
        data
      end
    end

    # Operation Parser for GetUsagePlanKeys
    class GetUsagePlanKeys
      def self.parse(http_resp)
        data = Types::GetUsagePlanKeysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfUsagePlanKey.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfUsagePlanKey
      def self.parse(list)
        data = []
        list.map do |value|
          data << UsagePlanKey.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsagePlanKey
      def self.parse(map)
        data = Types::UsagePlanKey.new
        data.id = map['id']
        data.type = map['type']
        data.value = map['value']
        data.name = map['name']
        return data
      end
    end

    # Operation Parser for GetUsagePlans
    class GetUsagePlans
      def self.parse(http_resp)
        data = Types::GetUsagePlansOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfUsagePlan.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfUsagePlan
      def self.parse(list)
        data = []
        list.map do |value|
          data << UsagePlan.parse(value) unless value.nil?
        end
        data
      end
    end

    class UsagePlan
      def self.parse(map)
        data = Types::UsagePlan.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.api_stages = (ListOfApiStage.parse(map['apiStages']) unless map['apiStages'].nil?)
        data.throttle = (ThrottleSettings.parse(map['throttle']) unless map['throttle'].nil?)
        data.quota = (QuotaSettings.parse(map['quota']) unless map['quota'].nil?)
        data.product_code = map['productCode']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetVpcLink
    class GetVpcLink
      def self.parse(http_resp)
        data = Types::GetVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.target_arns = (ListOfString.parse(map['targetArns']) unless map['targetArns'].nil?)
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for GetVpcLinks
    class GetVpcLinks
      def self.parse(http_resp)
        data = Types::GetVpcLinksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.items = (ListOfVpcLink.parse(map['item']) unless map['item'].nil?)
        data
      end
    end

    class ListOfVpcLink
      def self.parse(list)
        data = []
        list.map do |value|
          data << VpcLink.parse(value) unless value.nil?
        end
        data
      end
    end

    class VpcLink
      def self.parse(map)
        data = Types::VpcLink.new
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.target_arns = (ListOfString.parse(map['targetArns']) unless map['targetArns'].nil?)
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ImportApiKeys
    class ImportApiKeys
      def self.parse(http_resp)
        data = Types::ImportApiKeysOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ids = (ListOfString.parse(map['ids']) unless map['ids'].nil?)
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    # Operation Parser for ImportDocumentationParts
    class ImportDocumentationParts
      def self.parse(http_resp)
        data = Types::ImportDocumentationPartsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.ids = (ListOfString.parse(map['ids']) unless map['ids'].nil?)
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data
      end
    end

    # Operation Parser for ImportRestApi
    class ImportRestApi
      def self.parse(http_resp)
        data = Types::ImportRestApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.binary_media_types = (ListOfString.parse(map['binaryMediaTypes']) unless map['binaryMediaTypes'].nil?)
        data.minimum_compression_size = map['minimumCompressionSize']
        data.api_key_source = map['apiKeySource']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.policy = map['policy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data
      end
    end

    # Operation Parser for PutGatewayResponse
    class PutGatewayResponse
      def self.parse(http_resp)
        data = Types::PutGatewayResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.response_type = map['responseType']
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.default_response = map['defaultResponse']
        data
      end
    end

    # Operation Parser for PutIntegration
    class PutIntegration
      def self.parse(http_resp)
        data = Types::PutIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.http_method = map['httpMethod']
        data.uri = map['uri']
        data.connection_type = map['connectionType']
        data.connection_id = map['connectionId']
        data.credentials = map['credentials']
        data.request_parameters = (MapOfStringToString.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (MapOfStringToString.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.passthrough_behavior = map['passthroughBehavior']
        data.content_handling = map['contentHandling']
        data.timeout_in_millis = map['timeoutInMillis']
        data.cache_namespace = map['cacheNamespace']
        data.cache_key_parameters = (ListOfString.parse(map['cacheKeyParameters']) unless map['cacheKeyParameters'].nil?)
        data.integration_responses = (MapOfIntegrationResponse.parse(map['integrationResponses']) unless map['integrationResponses'].nil?)
        data.tls_config = (TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        data
      end
    end

    # Operation Parser for PutIntegrationResponse
    class PutIntegrationResponse
      def self.parse(http_resp)
        data = Types::PutIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status_code = map['statusCode']
        data.selection_pattern = map['selectionPattern']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.content_handling = map['contentHandling']
        data
      end
    end

    # Operation Parser for PutMethod
    class PutMethod
      def self.parse(http_resp)
        data = Types::PutMethodOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.http_method = map['httpMethod']
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.api_key_required = map['apiKeyRequired']
        data.request_validator_id = map['requestValidatorId']
        data.operation_name = map['operationName']
        data.request_parameters = (MapOfStringToBoolean.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_models = (MapOfStringToString.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.method_responses = (MapOfMethodResponse.parse(map['methodResponses']) unless map['methodResponses'].nil?)
        data.method_integration = (Integration.parse(map['methodIntegration']) unless map['methodIntegration'].nil?)
        data.authorization_scopes = (ListOfString.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data
      end
    end

    # Operation Parser for PutMethodResponse
    class PutMethodResponse
      def self.parse(http_resp)
        data = Types::PutMethodResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToBoolean.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_models = (MapOfStringToString.parse(map['responseModels']) unless map['responseModels'].nil?)
        data
      end
    end

    # Operation Parser for PutRestApi
    class PutRestApi
      def self.parse(http_resp)
        data = Types::PutRestApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.binary_media_types = (ListOfString.parse(map['binaryMediaTypes']) unless map['binaryMediaTypes'].nil?)
        data.minimum_compression_size = map['minimumCompressionSize']
        data.api_key_source = map['apiKeySource']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.policy = map['policy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
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

    # Operation Parser for TestInvokeAuthorizer
    class TestInvokeAuthorizer
      def self.parse(http_resp)
        data = Types::TestInvokeAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_status = map['clientStatus']
        data.log = map['log']
        data.latency = map['latency']
        data.principal_id = map['principalId']
        data.policy = map['policy']
        data.authorization = (MapOfStringToList.parse(map['authorization']) unless map['authorization'].nil?)
        data.claims = (MapOfStringToString.parse(map['claims']) unless map['claims'].nil?)
        data
      end
    end

    class MapOfStringToList
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = ListOfString.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for TestInvokeMethod
    class TestInvokeMethod
      def self.parse(http_resp)
        data = Types::TestInvokeMethodOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status = map['status']
        data.body = map['body']
        data.headers = (MapOfStringToString.parse(map['headers']) unless map['headers'].nil?)
        data.multi_value_headers = (MapOfStringToList.parse(map['multiValueHeaders']) unless map['multiValueHeaders'].nil?)
        data.log = map['log']
        data.latency = map['latency']
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

    # Operation Parser for UpdateAccount
    class UpdateAccount
      def self.parse(http_resp)
        data = Types::UpdateAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.cloudwatch_role_arn = map['cloudwatchRoleArn']
        data.throttle_settings = (ThrottleSettings.parse(map['throttleSettings']) unless map['throttleSettings'].nil?)
        data.features = (ListOfString.parse(map['features']) unless map['features'].nil?)
        data.api_key_version = map['apiKeyVersion']
        data
      end
    end

    # Operation Parser for UpdateApiKey
    class UpdateApiKey
      def self.parse(http_resp)
        data = Types::UpdateApiKeyOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.value = map['value']
        data.name = map['name']
        data.customer_id = map['customerId']
        data.description = map['description']
        data.enabled = map['enabled']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data.stage_keys = (ListOfString.parse(map['stageKeys']) unless map['stageKeys'].nil?)
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateAuthorizer
    class UpdateAuthorizer
      def self.parse(http_resp)
        data = Types::UpdateAuthorizerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.type = map['type']
        data.provider_ar_ns = (ListOfARNs.parse(map['providerARNs']) unless map['providerARNs'].nil?)
        data.auth_type = map['authType']
        data.authorizer_uri = map['authorizerUri']
        data.authorizer_credentials = map['authorizerCredentials']
        data.identity_source = map['identitySource']
        data.identity_validation_expression = map['identityValidationExpression']
        data.authorizer_result_ttl_in_seconds = map['authorizerResultTtlInSeconds']
        data
      end
    end

    # Operation Parser for UpdateBasePathMapping
    class UpdateBasePathMapping
      def self.parse(http_resp)
        data = Types::UpdateBasePathMappingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.base_path = map['basePath']
        data.rest_api_id = map['restApiId']
        data.stage = map['stage']
        data
      end
    end

    # Operation Parser for UpdateClientCertificate
    class UpdateClientCertificate
      def self.parse(http_resp)
        data = Types::UpdateClientCertificateOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.client_certificate_id = map['clientCertificateId']
        data.description = map['description']
        data.pem_encoded_certificate = map['pemEncodedCertificate']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.expiration_date = Time.at(map['expirationDate'].to_i) if map['expirationDate']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDeployment
    class UpdateDeployment
      def self.parse(http_resp)
        data = Types::UpdateDeploymentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.api_summary = (PathToMapOfMethodSnapshot.parse(map['apiSummary']) unless map['apiSummary'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDocumentationPart
    class UpdateDocumentationPart
      def self.parse(http_resp)
        data = Types::UpdateDocumentationPartOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.location = (DocumentationPartLocation.parse(map['location']) unless map['location'].nil?)
        data.properties = map['properties']
        data
      end
    end

    # Operation Parser for UpdateDocumentationVersion
    class UpdateDocumentationVersion
      def self.parse(http_resp)
        data = Types::UpdateDocumentationVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.version = map['version']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.description = map['description']
        data
      end
    end

    # Operation Parser for UpdateDomainName
    class UpdateDomainName
      def self.parse(http_resp)
        data = Types::UpdateDomainNameOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.domain_name = map['domainName']
        data.certificate_name = map['certificateName']
        data.certificate_arn = map['certificateArn']
        data.certificate_upload_date = Time.at(map['certificateUploadDate'].to_i) if map['certificateUploadDate']
        data.regional_domain_name = map['regionalDomainName']
        data.regional_hosted_zone_id = map['regionalHostedZoneId']
        data.regional_certificate_name = map['regionalCertificateName']
        data.regional_certificate_arn = map['regionalCertificateArn']
        data.distribution_domain_name = map['distributionDomainName']
        data.distribution_hosted_zone_id = map['distributionHostedZoneId']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.domain_name_status = map['domainNameStatus']
        data.domain_name_status_message = map['domainNameStatusMessage']
        data.security_policy = map['securityPolicy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.mutual_tls_authentication = (MutualTlsAuthentication.parse(map['mutualTlsAuthentication']) unless map['mutualTlsAuthentication'].nil?)
        data.ownership_verification_certificate_arn = map['ownershipVerificationCertificateArn']
        data
      end
    end

    # Operation Parser for UpdateGatewayResponse
    class UpdateGatewayResponse
      def self.parse(http_resp)
        data = Types::UpdateGatewayResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.response_type = map['responseType']
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.default_response = map['defaultResponse']
        data
      end
    end

    # Operation Parser for UpdateIntegration
    class UpdateIntegration
      def self.parse(http_resp)
        data = Types::UpdateIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.type = map['type']
        data.http_method = map['httpMethod']
        data.uri = map['uri']
        data.connection_type = map['connectionType']
        data.connection_id = map['connectionId']
        data.credentials = map['credentials']
        data.request_parameters = (MapOfStringToString.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_templates = (MapOfStringToString.parse(map['requestTemplates']) unless map['requestTemplates'].nil?)
        data.passthrough_behavior = map['passthroughBehavior']
        data.content_handling = map['contentHandling']
        data.timeout_in_millis = map['timeoutInMillis']
        data.cache_namespace = map['cacheNamespace']
        data.cache_key_parameters = (ListOfString.parse(map['cacheKeyParameters']) unless map['cacheKeyParameters'].nil?)
        data.integration_responses = (MapOfIntegrationResponse.parse(map['integrationResponses']) unless map['integrationResponses'].nil?)
        data.tls_config = (TlsConfig.parse(map['tlsConfig']) unless map['tlsConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateIntegrationResponse
    class UpdateIntegrationResponse
      def self.parse(http_resp)
        data = Types::UpdateIntegrationResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status_code = map['statusCode']
        data.selection_pattern = map['selectionPattern']
        data.response_parameters = (MapOfStringToString.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_templates = (MapOfStringToString.parse(map['responseTemplates']) unless map['responseTemplates'].nil?)
        data.content_handling = map['contentHandling']
        data
      end
    end

    # Operation Parser for UpdateMethod
    class UpdateMethod
      def self.parse(http_resp)
        data = Types::UpdateMethodOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.http_method = map['httpMethod']
        data.authorization_type = map['authorizationType']
        data.authorizer_id = map['authorizerId']
        data.api_key_required = map['apiKeyRequired']
        data.request_validator_id = map['requestValidatorId']
        data.operation_name = map['operationName']
        data.request_parameters = (MapOfStringToBoolean.parse(map['requestParameters']) unless map['requestParameters'].nil?)
        data.request_models = (MapOfStringToString.parse(map['requestModels']) unless map['requestModels'].nil?)
        data.method_responses = (MapOfMethodResponse.parse(map['methodResponses']) unless map['methodResponses'].nil?)
        data.method_integration = (Integration.parse(map['methodIntegration']) unless map['methodIntegration'].nil?)
        data.authorization_scopes = (ListOfString.parse(map['authorizationScopes']) unless map['authorizationScopes'].nil?)
        data
      end
    end

    # Operation Parser for UpdateMethodResponse
    class UpdateMethodResponse
      def self.parse(http_resp)
        data = Types::UpdateMethodResponseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.status_code = map['statusCode']
        data.response_parameters = (MapOfStringToBoolean.parse(map['responseParameters']) unless map['responseParameters'].nil?)
        data.response_models = (MapOfStringToString.parse(map['responseModels']) unless map['responseModels'].nil?)
        data
      end
    end

    # Operation Parser for UpdateModel
    class UpdateModel
      def self.parse(http_resp)
        data = Types::UpdateModelOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.schema = map['schema']
        data.content_type = map['contentType']
        data
      end
    end

    # Operation Parser for UpdateRequestValidator
    class UpdateRequestValidator
      def self.parse(http_resp)
        data = Types::UpdateRequestValidatorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.validate_request_body = map['validateRequestBody']
        data.validate_request_parameters = map['validateRequestParameters']
        data
      end
    end

    # Operation Parser for UpdateResource
    class UpdateResource
      def self.parse(http_resp)
        data = Types::UpdateResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.parent_id = map['parentId']
        data.path_part = map['pathPart']
        data.path = map['path']
        data.resource_methods = (MapOfMethod.parse(map['resourceMethods']) unless map['resourceMethods'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRestApi
    class UpdateRestApi
      def self.parse(http_resp)
        data = Types::UpdateRestApiOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.version = map['version']
        data.warnings = (ListOfString.parse(map['warnings']) unless map['warnings'].nil?)
        data.binary_media_types = (ListOfString.parse(map['binaryMediaTypes']) unless map['binaryMediaTypes'].nil?)
        data.minimum_compression_size = map['minimumCompressionSize']
        data.api_key_source = map['apiKeySource']
        data.endpoint_configuration = (EndpointConfiguration.parse(map['endpointConfiguration']) unless map['endpointConfiguration'].nil?)
        data.policy = map['policy']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.disable_execute_api_endpoint = map['disableExecuteApiEndpoint']
        data
      end
    end

    # Operation Parser for UpdateStage
    class UpdateStage
      def self.parse(http_resp)
        data = Types::UpdateStageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.deployment_id = map['deploymentId']
        data.client_certificate_id = map['clientCertificateId']
        data.stage_name = map['stageName']
        data.description = map['description']
        data.cache_cluster_enabled = map['cacheClusterEnabled']
        data.cache_cluster_size = map['cacheClusterSize']
        data.cache_cluster_status = map['cacheClusterStatus']
        data.method_settings = (MapOfMethodSettings.parse(map['methodSettings']) unless map['methodSettings'].nil?)
        data.variables = (MapOfStringToString.parse(map['variables']) unless map['variables'].nil?)
        data.documentation_version = map['documentationVersion']
        data.access_log_settings = (AccessLogSettings.parse(map['accessLogSettings']) unless map['accessLogSettings'].nil?)
        data.canary_settings = (CanarySettings.parse(map['canarySettings']) unless map['canarySettings'].nil?)
        data.tracing_enabled = map['tracingEnabled']
        data.web_acl_arn = map['webAclArn']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data.created_date = Time.at(map['createdDate'].to_i) if map['createdDate']
        data.last_updated_date = Time.at(map['lastUpdatedDate'].to_i) if map['lastUpdatedDate']
        data
      end
    end

    # Operation Parser for UpdateUsage
    class UpdateUsage
      def self.parse(http_resp)
        data = Types::UpdateUsageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.usage_plan_id = map['usagePlanId']
        data.start_date = map['startDate']
        data.end_date = map['endDate']
        data.items = (MapOfKeyUsages.parse(map['values']) unless map['values'].nil?)
        data
      end
    end

    # Operation Parser for UpdateUsagePlan
    class UpdateUsagePlan
      def self.parse(http_resp)
        data = Types::UpdateUsagePlanOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.api_stages = (ListOfApiStage.parse(map['apiStages']) unless map['apiStages'].nil?)
        data.throttle = (ThrottleSettings.parse(map['throttle']) unless map['throttle'].nil?)
        data.quota = (QuotaSettings.parse(map['quota']) unless map['quota'].nil?)
        data.product_code = map['productCode']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for UpdateVpcLink
    class UpdateVpcLink
      def self.parse(http_resp)
        data = Types::UpdateVpcLinkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['id']
        data.name = map['name']
        data.description = map['description']
        data.target_arns = (ListOfString.parse(map['targetArns']) unless map['targetArns'].nil?)
        data.status = map['status']
        data.status_message = map['statusMessage']
        data.tags = (MapOfStringToString.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end
  end
end
