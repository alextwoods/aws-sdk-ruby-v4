# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::APIGateway
  module Builders

    # Operation Builder for CreateApiKey
    class CreateApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/apikeys')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['enabled'] = input[:enabled] unless input[:enabled].nil?
        data['generateDistinctId'] = input[:generate_distinct_id] unless input[:generate_distinct_id].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['stageKeys'] = Builders::ListOfStageKeys.build(input[:stage_keys]) unless input[:stage_keys].nil?
        data['customerId'] = input[:customer_id] unless input[:customer_id].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MapOfStringToString
    class MapOfStringToString
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for ListOfStageKeys
    class ListOfStageKeys
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StageKey.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StageKey
    class StageKey
      def self.build(input)
        data = {}
        data['restApiId'] = input[:rest_api_id] unless input[:rest_api_id].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data
      end
    end

    # Operation Builder for CreateAuthorizer
    class CreateAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/authorizers',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['providerARNs'] = Builders::ListOfARNs.build(input[:provider_ar_ns]) unless input[:provider_ar_ns].nil?
        data['authType'] = input[:auth_type] unless input[:auth_type].nil?
        data['authorizerUri'] = input[:authorizer_uri] unless input[:authorizer_uri].nil?
        data['authorizerCredentials'] = input[:authorizer_credentials] unless input[:authorizer_credentials].nil?
        data['identitySource'] = input[:identity_source] unless input[:identity_source].nil?
        data['identityValidationExpression'] = input[:identity_validation_expression] unless input[:identity_validation_expression].nil?
        data['authorizerResultTtlInSeconds'] = input[:authorizer_result_ttl_in_seconds] unless input[:authorizer_result_ttl_in_seconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListOfARNs
    class ListOfARNs
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateBasePathMapping
    class CreateBasePathMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/basepathmappings',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['basePath'] = input[:base_path] unless input[:base_path].nil?
        data['restApiId'] = input[:rest_api_id] unless input[:rest_api_id].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDeployment
    class CreateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/deployments',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['stageDescription'] = input[:stage_description] unless input[:stage_description].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['cacheClusterEnabled'] = input[:cache_cluster_enabled] unless input[:cache_cluster_enabled].nil?
        data['cacheClusterSize'] = input[:cache_cluster_size] unless input[:cache_cluster_size].nil?
        data['variables'] = Builders::MapOfStringToString.build(input[:variables]) unless input[:variables].nil?
        data['canarySettings'] = Builders::DeploymentCanarySettings.build(input[:canary_settings]) unless input[:canary_settings].nil?
        data['tracingEnabled'] = input[:tracing_enabled] unless input[:tracing_enabled].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DeploymentCanarySettings
    class DeploymentCanarySettings
      def self.build(input)
        data = {}
        data['percentTraffic'] = Hearth::NumberHelper.serialize(input[:percent_traffic]) unless input[:percent_traffic].nil?
        data['stageVariableOverrides'] = Builders::MapOfStringToString.build(input[:stage_variable_overrides]) unless input[:stage_variable_overrides].nil?
        data['useStageCache'] = input[:use_stage_cache] unless input[:use_stage_cache].nil?
        data
      end
    end

    # Operation Builder for CreateDocumentationPart
    class CreateDocumentationPart
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/parts',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['location'] = Builders::DocumentationPartLocation.build(input[:location]) unless input[:location].nil?
        data['properties'] = input[:properties] unless input[:properties].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DocumentationPartLocation
    class DocumentationPartLocation
      def self.build(input)
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['method'] = input[:member_method] unless input[:member_method].nil?
        data['statusCode'] = input[:status_code] unless input[:status_code].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CreateDocumentationVersion
    class CreateDocumentationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/versions',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['documentationVersion'] = input[:documentation_version] unless input[:documentation_version].nil?
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDomainName
    class CreateDomainName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/domainnames')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['certificateName'] = input[:certificate_name] unless input[:certificate_name].nil?
        data['certificateBody'] = input[:certificate_body] unless input[:certificate_body].nil?
        data['certificatePrivateKey'] = input[:certificate_private_key] unless input[:certificate_private_key].nil?
        data['certificateChain'] = input[:certificate_chain] unless input[:certificate_chain].nil?
        data['certificateArn'] = input[:certificate_arn] unless input[:certificate_arn].nil?
        data['regionalCertificateName'] = input[:regional_certificate_name] unless input[:regional_certificate_name].nil?
        data['regionalCertificateArn'] = input[:regional_certificate_arn] unless input[:regional_certificate_arn].nil?
        data['endpointConfiguration'] = Builders::EndpointConfiguration.build(input[:endpoint_configuration]) unless input[:endpoint_configuration].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        data['securityPolicy'] = input[:security_policy] unless input[:security_policy].nil?
        data['mutualTlsAuthentication'] = Builders::MutualTlsAuthenticationInput.build(input[:mutual_tls_authentication]) unless input[:mutual_tls_authentication].nil?
        data['ownershipVerificationCertificateArn'] = input[:ownership_verification_certificate_arn] unless input[:ownership_verification_certificate_arn].nil?
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

    # Structure Builder for EndpointConfiguration
    class EndpointConfiguration
      def self.build(input)
        data = {}
        data['types'] = Builders::ListOfEndpointType.build(input[:types]) unless input[:types].nil?
        data['vpcEndpointIds'] = Builders::ListOfString.build(input[:vpc_endpoint_ids]) unless input[:vpc_endpoint_ids].nil?
        data
      end
    end

    # List Builder for ListOfString
    class ListOfString
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ListOfEndpointType
    class ListOfEndpointType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateModel
    class CreateModel
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/models',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['schema'] = input[:schema] unless input[:schema].nil?
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRequestValidator
    class CreateRequestValidator
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/requestvalidators',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['validateRequestBody'] = input[:validate_request_body] unless input[:validate_request_body].nil?
        data['validateRequestParameters'] = input[:validate_request_parameters] unless input[:validate_request_parameters].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateResource
    class CreateResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:parent_id].to_s.empty?
          raise ArgumentError, "HTTP label :parent_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<parentId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            parentId: Hearth::HTTP.uri_escape(input[:parent_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['pathPart'] = input[:path_part] unless input[:path_part].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRestApi
    class CreateRestApi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/restapis')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['version'] = input[:version] unless input[:version].nil?
        data['cloneFrom'] = input[:clone_from] unless input[:clone_from].nil?
        data['binaryMediaTypes'] = Builders::ListOfString.build(input[:binary_media_types]) unless input[:binary_media_types].nil?
        data['minimumCompressionSize'] = input[:minimum_compression_size] unless input[:minimum_compression_size].nil?
        data['apiKeySource'] = input[:api_key_source] unless input[:api_key_source].nil?
        data['endpointConfiguration'] = Builders::EndpointConfiguration.build(input[:endpoint_configuration]) unless input[:endpoint_configuration].nil?
        data['policy'] = input[:policy] unless input[:policy].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        data['disableExecuteApiEndpoint'] = input[:disable_execute_api_endpoint] unless input[:disable_execute_api_endpoint].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStage
    class CreateStage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['stageName'] = input[:stage_name] unless input[:stage_name].nil?
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['cacheClusterEnabled'] = input[:cache_cluster_enabled] unless input[:cache_cluster_enabled].nil?
        data['cacheClusterSize'] = input[:cache_cluster_size] unless input[:cache_cluster_size].nil?
        data['variables'] = Builders::MapOfStringToString.build(input[:variables]) unless input[:variables].nil?
        data['documentationVersion'] = input[:documentation_version] unless input[:documentation_version].nil?
        data['canarySettings'] = Builders::CanarySettings.build(input[:canary_settings]) unless input[:canary_settings].nil?
        data['tracingEnabled'] = input[:tracing_enabled] unless input[:tracing_enabled].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CanarySettings
    class CanarySettings
      def self.build(input)
        data = {}
        data['percentTraffic'] = Hearth::NumberHelper.serialize(input[:percent_traffic]) unless input[:percent_traffic].nil?
        data['deploymentId'] = input[:deployment_id] unless input[:deployment_id].nil?
        data['stageVariableOverrides'] = Builders::MapOfStringToString.build(input[:stage_variable_overrides]) unless input[:stage_variable_overrides].nil?
        data['useStageCache'] = input[:use_stage_cache] unless input[:use_stage_cache].nil?
        data
      end
    end

    # Operation Builder for CreateUsagePlan
    class CreateUsagePlan
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/usageplans')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['apiStages'] = Builders::ListOfApiStage.build(input[:api_stages]) unless input[:api_stages].nil?
        data['throttle'] = Builders::ThrottleSettings.build(input[:throttle]) unless input[:throttle].nil?
        data['quota'] = Builders::QuotaSettings.build(input[:quota]) unless input[:quota].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for QuotaSettings
    class QuotaSettings
      def self.build(input)
        data = {}
        data['limit'] = input[:limit] unless input[:limit].nil?
        data['offset'] = input[:offset] unless input[:offset].nil?
        data['period'] = input[:period] unless input[:period].nil?
        data
      end
    end

    # Structure Builder for ThrottleSettings
    class ThrottleSettings
      def self.build(input)
        data = {}
        data['burstLimit'] = input[:burst_limit] unless input[:burst_limit].nil?
        data['rateLimit'] = Hearth::NumberHelper.serialize(input[:rate_limit]) unless input[:rate_limit].nil?
        data
      end
    end

    # List Builder for ListOfApiStage
    class ListOfApiStage
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ApiStage.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ApiStage
    class ApiStage
      def self.build(input)
        data = {}
        data['apiId'] = input[:api_id] unless input[:api_id].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        data['throttle'] = Builders::MapOfApiStageThrottleSettings.build(input[:throttle]) unless input[:throttle].nil?
        data
      end
    end

    # Map Builder for MapOfApiStageThrottleSettings
    class MapOfApiStageThrottleSettings
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ThrottleSettings.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateUsagePlanKey
    class CreateUsagePlanKey
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s/keys',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['keyId'] = input[:key_id] unless input[:key_id].nil?
        data['keyType'] = input[:key_type] unless input[:key_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVpcLink
    class CreateVpcLink
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/vpclinks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['targetArns'] = Builders::ListOfString.build(input[:target_arns]) unless input[:target_arns].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApiKey
    class DeleteApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:api_key].to_s.empty?
          raise ArgumentError, "HTTP label :api_key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apikeys/%<apiKey>s',
            apiKey: Hearth::HTTP.uri_escape(input[:api_key].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/authorizers/%<authorizerId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            authorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteBasePathMapping
    class DeleteBasePathMapping
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:base_path].to_s.empty?
          raise ArgumentError, "HTTP label :base_path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/basepathmappings/%<basePath>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            basePath: Hearth::HTTP.uri_escape(input[:base_path].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteClientCertificate
    class DeleteClientCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:client_certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :client_certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clientcertificates/%<clientCertificateId>s',
            clientCertificateId: Hearth::HTTP.uri_escape(input[:client_certificate_id].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/deployments/%<deploymentId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDocumentationPart
    class DeleteDocumentationPart
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:documentation_part_id].to_s.empty?
          raise ArgumentError, "HTTP label :documentation_part_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/parts/%<documentationPartId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            documentationPartId: Hearth::HTTP.uri_escape(input[:documentation_part_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteDocumentationVersion
    class DeleteDocumentationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:documentation_version].to_s.empty?
          raise ArgumentError, "HTTP label :documentation_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/versions/%<documentationVersion>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            documentationVersion: Hearth::HTTP.uri_escape(input[:documentation_version].to_s)
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
            '/domainnames/%<domainName>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteGatewayResponse
    class DeleteGatewayResponse
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:response_type].to_s.empty?
          raise ArgumentError, "HTTP label :response_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/gatewayresponses/%<responseType>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            responseType: Hearth::HTTP.uri_escape(input[:response_type].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMethod
    class DeleteMethod
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteMethodResponse
    class DeleteMethodResponse
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:model_name].to_s.empty?
          raise ArgumentError, "HTTP label :model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/models/%<modelName>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            modelName: Hearth::HTTP.uri_escape(input[:model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRequestValidator
    class DeleteRequestValidator
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:request_validator_id].to_s.empty?
          raise ArgumentError, "HTTP label :request_validator_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/requestvalidators/%<requestValidatorId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            requestValidatorId: Hearth::HTTP.uri_escape(input[:request_validator_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteResource
    class DeleteResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteRestApi
    class DeleteRestApi
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUsagePlan
    class DeleteUsagePlan
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUsagePlanKey
    class DeleteUsagePlanKey
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        if input[:key_id].to_s.empty?
          raise ArgumentError, "HTTP label :key_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s/keys/%<keyId>s',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s),
            keyId: Hearth::HTTP.uri_escape(input[:key_id].to_s)
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
            '/vpclinks/%<vpcLinkId>s',
            vpcLinkId: Hearth::HTTP.uri_escape(input[:vpc_link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for FlushStageAuthorizersCache
    class FlushStageAuthorizersCache
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s/cache/authorizers',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for FlushStageCache
    class FlushStageCache
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s/cache/data',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GenerateClientCertificate
    class GenerateClientCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/clientcertificates')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccount
    class GetAccount
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/account')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApiKey
    class GetApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:api_key].to_s.empty?
          raise ArgumentError, "HTTP label :api_key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apikeys/%<apiKey>s',
            apiKey: Hearth::HTTP.uri_escape(input[:api_key].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['includeValue'] = input[:include_value].to_s unless input[:include_value].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetApiKeys
    class GetApiKeys
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/apikeys')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['name'] = input[:name_query].to_s unless input[:name_query].nil?
        params['customerId'] = input[:customer_id].to_s unless input[:customer_id].nil?
        params['includeValues'] = input[:include_values].to_s unless input[:include_values].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAuthorizer
    class GetAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/authorizers/%<authorizerId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            authorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/authorizers',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBasePathMapping
    class GetBasePathMapping
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:base_path].to_s.empty?
          raise ArgumentError, "HTTP label :base_path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/basepathmappings/%<basePath>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            basePath: Hearth::HTTP.uri_escape(input[:base_path].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBasePathMappings
    class GetBasePathMappings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/basepathmappings',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetClientCertificate
    class GetClientCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:client_certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :client_certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clientcertificates/%<clientCertificateId>s',
            clientCertificateId: Hearth::HTTP.uri_escape(input[:client_certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetClientCertificates
    class GetClientCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/clientcertificates')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployment
    class GetDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/deployments/%<deploymentId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:embed].nil? || input[:embed].empty?
          params['embed'] = input[:embed].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDeployments
    class GetDeployments
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/deployments',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDocumentationPart
    class GetDocumentationPart
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:documentation_part_id].to_s.empty?
          raise ArgumentError, "HTTP label :documentation_part_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/parts/%<documentationPartId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            documentationPartId: Hearth::HTTP.uri_escape(input[:documentation_part_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDocumentationParts
    class GetDocumentationParts
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/parts',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['type'] = input[:type].to_s unless input[:type].nil?
        params['name'] = input[:name_query].to_s unless input[:name_query].nil?
        params['path'] = input[:path].to_s unless input[:path].nil?
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['locationStatus'] = input[:location_status].to_s unless input[:location_status].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDocumentationVersion
    class GetDocumentationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:documentation_version].to_s.empty?
          raise ArgumentError, "HTTP label :documentation_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/versions/%<documentationVersion>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            documentationVersion: Hearth::HTTP.uri_escape(input[:documentation_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetDocumentationVersions
    class GetDocumentationVersions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/versions',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
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
            '/domainnames/%<domainName>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
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
        http_req.append_path('/domainnames')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetExport
    class GetExport
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        if input[:export_type].to_s.empty?
          raise ArgumentError, "HTTP label :export_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s/exports/%<exportType>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s),
            exportType: Hearth::HTTP.uri_escape(input[:export_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:parameters].nil? || input[:parameters].empty?
          input[:parameters].each do |k, v|
            params[k] = v.to_s unless v.nil?
          end
        end
        http_req.append_query_params(params)
        http_req.headers['Accept'] = input[:accepts] unless input[:accepts].nil? || input[:accepts].empty?
      end
    end

    # Operation Builder for GetGatewayResponse
    class GetGatewayResponse
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:response_type].to_s.empty?
          raise ArgumentError, "HTTP label :response_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/gatewayresponses/%<responseType>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            responseType: Hearth::HTTP.uri_escape(input[:response_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetGatewayResponses
    class GetGatewayResponses
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/gatewayresponses',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIntegration
    class GetIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMethod
    class GetMethod
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMethodResponse
    class GetMethodResponse
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetModel
    class GetModel
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:model_name].to_s.empty?
          raise ArgumentError, "HTTP label :model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/models/%<modelName>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            modelName: Hearth::HTTP.uri_escape(input[:model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['flatten'] = input[:flatten].to_s unless input[:flatten].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetModelTemplate
    class GetModelTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:model_name].to_s.empty?
          raise ArgumentError, "HTTP label :model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/models/%<modelName>s/default_template',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            modelName: Hearth::HTTP.uri_escape(input[:model_name].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/models',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRequestValidator
    class GetRequestValidator
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:request_validator_id].to_s.empty?
          raise ArgumentError, "HTTP label :request_validator_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/requestvalidators/%<requestValidatorId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            requestValidatorId: Hearth::HTTP.uri_escape(input[:request_validator_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRequestValidators
    class GetRequestValidators
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/requestvalidators',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResource
    class GetResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:embed].nil? || input[:embed].empty?
          params['embed'] = input[:embed].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetResources
    class GetResources
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        unless input[:embed].nil? || input[:embed].empty?
          params['embed'] = input[:embed].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRestApi
    class GetRestApi
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRestApis
    class GetRestApis
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/restapis')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSdk
    class GetSdk
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        if input[:sdk_type].to_s.empty?
          raise ArgumentError, "HTTP label :sdk_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s/sdks/%<sdkType>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s),
            sdkType: Hearth::HTTP.uri_escape(input[:sdk_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:parameters].nil? || input[:parameters].empty?
          input[:parameters].each do |k, v|
            params[k] = v.to_s unless v.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSdkType
    class GetSdkType
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:id].to_s.empty?
          raise ArgumentError, "HTTP label :id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/sdktypes/%<id>s',
            id: Hearth::HTTP.uri_escape(input[:id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSdkTypes
    class GetSdkTypes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/sdktypes')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStage
    class GetStage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
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
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['deploymentId'] = input[:deployment_id].to_s unless input[:deployment_id].nil?
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUsage
    class GetUsage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s/usage',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['keyId'] = input[:key_id].to_s unless input[:key_id].nil?
        params['startDate'] = input[:start_date].to_s unless input[:start_date].nil?
        params['endDate'] = input[:end_date].to_s unless input[:end_date].nil?
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUsagePlan
    class GetUsagePlan
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUsagePlanKey
    class GetUsagePlanKey
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        if input[:key_id].to_s.empty?
          raise ArgumentError, "HTTP label :key_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s/keys/%<keyId>s',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s),
            keyId: Hearth::HTTP.uri_escape(input[:key_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUsagePlanKeys
    class GetUsagePlanKeys
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s/keys',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        params['name'] = input[:name_query].to_s unless input[:name_query].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUsagePlans
    class GetUsagePlans
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/usageplans')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['keyId'] = input[:key_id].to_s unless input[:key_id].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
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
            '/vpclinks/%<vpcLinkId>s',
            vpcLinkId: Hearth::HTTP.uri_escape(input[:vpc_link_id].to_s)
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
        http_req.append_path('/vpclinks')
        params = Hearth::Query::ParamList.new
        params['position'] = input[:position].to_s unless input[:position].nil?
        params['limit'] = input[:limit].to_s unless input[:limit].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ImportApiKeys
    class ImportApiKeys
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('mode=import').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/apikeys')
        params = Hearth::Query::ParamList.new
        params['format'] = input[:format].to_s unless input[:format].nil?
        params['failonwarnings'] = input[:fail_on_warnings].to_s unless input[:fail_on_warnings].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:body] || '')
      end
    end

    # Operation Builder for ImportDocumentationParts
    class ImportDocumentationParts
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/parts',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['mode'] = input[:mode].to_s unless input[:mode].nil?
        params['failonwarnings'] = input[:fail_on_warnings].to_s unless input[:fail_on_warnings].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:body] || '')
      end
    end

    # Operation Builder for ImportRestApi
    class ImportRestApi
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        CGI.parse('mode=import').each do |k,v|
          v.each { |q_v| http_req.append_query_param(k, q_v) }
        end
        http_req.append_path('/restapis')
        params = Hearth::Query::ParamList.new
        unless input[:parameters].nil? || input[:parameters].empty?
          input[:parameters].each do |k, v|
            params[k] = v.to_s unless v.nil?
          end
        end
        params['failonwarnings'] = input[:fail_on_warnings].to_s unless input[:fail_on_warnings].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:body] || '')
      end
    end

    # Operation Builder for PutGatewayResponse
    class PutGatewayResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:response_type].to_s.empty?
          raise ArgumentError, "HTTP label :response_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/gatewayresponses/%<responseType>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            responseType: Hearth::HTTP.uri_escape(input[:response_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['statusCode'] = input[:status_code] unless input[:status_code].nil?
        data['responseParameters'] = Builders::MapOfStringToString.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['responseTemplates'] = Builders::MapOfStringToString.build(input[:response_templates]) unless input[:response_templates].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutIntegration
    class PutIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['type'] = input[:type] unless input[:type].nil?
        data['httpMethod'] = input[:integration_http_method] unless input[:integration_http_method].nil?
        data['uri'] = input[:uri] unless input[:uri].nil?
        data['connectionType'] = input[:connection_type] unless input[:connection_type].nil?
        data['connectionId'] = input[:connection_id] unless input[:connection_id].nil?
        data['credentials'] = input[:credentials] unless input[:credentials].nil?
        data['requestParameters'] = Builders::MapOfStringToString.build(input[:request_parameters]) unless input[:request_parameters].nil?
        data['requestTemplates'] = Builders::MapOfStringToString.build(input[:request_templates]) unless input[:request_templates].nil?
        data['passthroughBehavior'] = input[:passthrough_behavior] unless input[:passthrough_behavior].nil?
        data['cacheNamespace'] = input[:cache_namespace] unless input[:cache_namespace].nil?
        data['cacheKeyParameters'] = Builders::ListOfString.build(input[:cache_key_parameters]) unless input[:cache_key_parameters].nil?
        data['contentHandling'] = input[:content_handling] unless input[:content_handling].nil?
        data['timeoutInMillis'] = input[:timeout_in_millis] unless input[:timeout_in_millis].nil?
        data['tlsConfig'] = Builders::TlsConfig.build(input[:tls_config]) unless input[:tls_config].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TlsConfig
    class TlsConfig
      def self.build(input)
        data = {}
        data['insecureSkipVerification'] = input[:insecure_skip_verification] unless input[:insecure_skip_verification].nil?
        data
      end
    end

    # Operation Builder for PutIntegrationResponse
    class PutIntegrationResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['selectionPattern'] = input[:selection_pattern] unless input[:selection_pattern].nil?
        data['responseParameters'] = Builders::MapOfStringToString.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['responseTemplates'] = Builders::MapOfStringToString.build(input[:response_templates]) unless input[:response_templates].nil?
        data['contentHandling'] = input[:content_handling] unless input[:content_handling].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutMethod
    class PutMethod
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['authorizationType'] = input[:authorization_type] unless input[:authorization_type].nil?
        data['authorizerId'] = input[:authorizer_id] unless input[:authorizer_id].nil?
        data['apiKeyRequired'] = input[:api_key_required] unless input[:api_key_required].nil?
        data['operationName'] = input[:operation_name] unless input[:operation_name].nil?
        data['requestParameters'] = Builders::MapOfStringToBoolean.build(input[:request_parameters]) unless input[:request_parameters].nil?
        data['requestModels'] = Builders::MapOfStringToString.build(input[:request_models]) unless input[:request_models].nil?
        data['requestValidatorId'] = input[:request_validator_id] unless input[:request_validator_id].nil?
        data['authorizationScopes'] = Builders::ListOfString.build(input[:authorization_scopes]) unless input[:authorization_scopes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MapOfStringToBoolean
    class MapOfStringToBoolean
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for PutMethodResponse
    class PutMethodResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['responseParameters'] = Builders::MapOfStringToBoolean.build(input[:response_parameters]) unless input[:response_parameters].nil?
        data['responseModels'] = Builders::MapOfStringToString.build(input[:response_models]) unless input[:response_models].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRestApi
    class PutRestApi
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:parameters].nil? || input[:parameters].empty?
          input[:parameters].each do |k, v|
            params[k] = v.to_s unless v.nil?
          end
        end
        params['mode'] = input[:mode].to_s unless input[:mode].nil?
        params['failonwarnings'] = input[:fail_on_warnings].to_s unless input[:fail_on_warnings].nil?
        http_req.append_query_params(params)
        http_req.headers['Content-Type'] = 'application/octet-stream'
        http_req.body = StringIO.new(input[:body] || '')
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::MapOfStringToString.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestInvokeAuthorizer
    class TestInvokeAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/authorizers/%<authorizerId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            authorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['headers'] = Builders::MapOfStringToString.build(input[:headers]) unless input[:headers].nil?
        data['multiValueHeaders'] = Builders::MapOfStringToList.build(input[:multi_value_headers]) unless input[:multi_value_headers].nil?
        data['pathWithQueryString'] = input[:path_with_query_string] unless input[:path_with_query_string].nil?
        data['body'] = input[:body] unless input[:body].nil?
        data['stageVariables'] = Builders::MapOfStringToString.build(input[:stage_variables]) unless input[:stage_variables].nil?
        data['additionalContext'] = Builders::MapOfStringToString.build(input[:additional_context]) unless input[:additional_context].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for MapOfStringToList
    class MapOfStringToList
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::ListOfString.build(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for TestInvokeMethod
    class TestInvokeMethod
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['pathWithQueryString'] = input[:path_with_query_string] unless input[:path_with_query_string].nil?
        data['body'] = input[:body] unless input[:body].nil?
        data['headers'] = Builders::MapOfStringToString.build(input[:headers]) unless input[:headers].nil?
        data['multiValueHeaders'] = Builders::MapOfStringToList.build(input[:multi_value_headers]) unless input[:multi_value_headers].nil?
        data['clientCertificateId'] = input[:client_certificate_id] unless input[:client_certificate_id].nil?
        data['stageVariables'] = Builders::MapOfStringToString.build(input[:stage_variables]) unless input[:stage_variables].nil?
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
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
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

    # Operation Builder for UpdateAccount
    class UpdateAccount
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        http_req.append_path('/account')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ListOfPatchOperation
    class ListOfPatchOperation
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PatchOperation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PatchOperation
    class PatchOperation
      def self.build(input)
        data = {}
        data['op'] = input[:op] unless input[:op].nil?
        data['path'] = input[:path] unless input[:path].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data['from'] = input[:from] unless input[:from].nil?
        data
      end
    end

    # Operation Builder for UpdateApiKey
    class UpdateApiKey
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:api_key].to_s.empty?
          raise ArgumentError, "HTTP label :api_key cannot be nil or empty."
        end
        http_req.append_path(format(
            '/apikeys/%<apiKey>s',
            apiKey: Hearth::HTTP.uri_escape(input[:api_key].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateAuthorizer
    class UpdateAuthorizer
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:authorizer_id].to_s.empty?
          raise ArgumentError, "HTTP label :authorizer_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/authorizers/%<authorizerId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            authorizerId: Hearth::HTTP.uri_escape(input[:authorizer_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBasePathMapping
    class UpdateBasePathMapping
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:domain_name].to_s.empty?
          raise ArgumentError, "HTTP label :domain_name cannot be nil or empty."
        end
        if input[:base_path].to_s.empty?
          raise ArgumentError, "HTTP label :base_path cannot be nil or empty."
        end
        http_req.append_path(format(
            '/domainnames/%<domainName>s/basepathmappings/%<basePath>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s),
            basePath: Hearth::HTTP.uri_escape(input[:base_path].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateClientCertificate
    class UpdateClientCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:client_certificate_id].to_s.empty?
          raise ArgumentError, "HTTP label :client_certificate_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/clientcertificates/%<clientCertificateId>s',
            clientCertificateId: Hearth::HTTP.uri_escape(input[:client_certificate_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDeployment
    class UpdateDeployment
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:deployment_id].to_s.empty?
          raise ArgumentError, "HTTP label :deployment_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/deployments/%<deploymentId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            deploymentId: Hearth::HTTP.uri_escape(input[:deployment_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDocumentationPart
    class UpdateDocumentationPart
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:documentation_part_id].to_s.empty?
          raise ArgumentError, "HTTP label :documentation_part_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/parts/%<documentationPartId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            documentationPartId: Hearth::HTTP.uri_escape(input[:documentation_part_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDocumentationVersion
    class UpdateDocumentationVersion
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:documentation_version].to_s.empty?
          raise ArgumentError, "HTTP label :documentation_version cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/documentation/versions/%<documentationVersion>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            documentationVersion: Hearth::HTTP.uri_escape(input[:documentation_version].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
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
            '/domainnames/%<domainName>s',
            domainName: Hearth::HTTP.uri_escape(input[:domain_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGatewayResponse
    class UpdateGatewayResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:response_type].to_s.empty?
          raise ArgumentError, "HTTP label :response_type cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/gatewayresponses/%<responseType>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            responseType: Hearth::HTTP.uri_escape(input[:response_type].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIntegration
    class UpdateIntegration
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIntegrationResponse
    class UpdateIntegrationResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/integration/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMethod
    class UpdateMethod
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMethodResponse
    class UpdateMethodResponse
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        if input[:http_method].to_s.empty?
          raise ArgumentError, "HTTP label :http_method cannot be nil or empty."
        end
        if input[:status_code].to_s.empty?
          raise ArgumentError, "HTTP label :status_code cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s/methods/%<httpMethod>s/responses/%<statusCode>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s),
            httpMethod: Hearth::HTTP.uri_escape(input[:http_method].to_s),
            statusCode: Hearth::HTTP.uri_escape(input[:status_code].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateModel
    class UpdateModel
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:model_name].to_s.empty?
          raise ArgumentError, "HTTP label :model_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/models/%<modelName>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            modelName: Hearth::HTTP.uri_escape(input[:model_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRequestValidator
    class UpdateRequestValidator
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:request_validator_id].to_s.empty?
          raise ArgumentError, "HTTP label :request_validator_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/requestvalidators/%<requestValidatorId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            requestValidatorId: Hearth::HTTP.uri_escape(input[:request_validator_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResource
    class UpdateResource
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:resource_id].to_s.empty?
          raise ArgumentError, "HTTP label :resource_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/resources/%<resourceId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            resourceId: Hearth::HTTP.uri_escape(input[:resource_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRestApi
    class UpdateRestApi
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateStage
    class UpdateStage
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:rest_api_id].to_s.empty?
          raise ArgumentError, "HTTP label :rest_api_id cannot be nil or empty."
        end
        if input[:stage_name].to_s.empty?
          raise ArgumentError, "HTTP label :stage_name cannot be nil or empty."
        end
        http_req.append_path(format(
            '/restapis/%<restApiId>s/stages/%<stageName>s',
            restApiId: Hearth::HTTP.uri_escape(input[:rest_api_id].to_s),
            stageName: Hearth::HTTP.uri_escape(input[:stage_name].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUsage
    class UpdateUsage
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        if input[:key_id].to_s.empty?
          raise ArgumentError, "HTTP label :key_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s/keys/%<keyId>s/usage',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s),
            keyId: Hearth::HTTP.uri_escape(input[:key_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateUsagePlan
    class UpdateUsagePlan
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:usage_plan_id].to_s.empty?
          raise ArgumentError, "HTTP label :usage_plan_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/usageplans/%<usagePlanId>s',
            usagePlanId: Hearth::HTTP.uri_escape(input[:usage_plan_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
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
            '/vpclinks/%<vpcLinkId>s',
            vpcLinkId: Hearth::HTTP.uri_escape(input[:vpc_link_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['patchOperations'] = Builders::ListOfPatchOperation.build(input[:patch_operations]) unless input[:patch_operations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
