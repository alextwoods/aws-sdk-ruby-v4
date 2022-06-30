# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::APIGateway
  module Params

    module AccessLogSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessLogSettings, context: context)
        type = Types::AccessLogSettings.new
        type.format = params[:format]
        type.destination_arn = params[:destination_arn]
        type
      end
    end

    module ApiKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiKey, context: context)
        type = Types::ApiKey.new
        type.id = params[:id]
        type.value = params[:value]
        type.name = params[:name]
        type.customer_id = params[:customer_id]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type.stage_keys = ListOfString.build(params[:stage_keys], context: "#{context}[:stage_keys]") unless params[:stage_keys].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ApiStage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiStage, context: context)
        type = Types::ApiStage.new
        type.api_id = params[:api_id]
        type.stage = params[:stage]
        type.throttle = MapOfApiStageThrottleSettings.build(params[:throttle], context: "#{context}[:throttle]") unless params[:throttle].nil?
        type
      end
    end

    module Authorizer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Authorizer, context: context)
        type = Types::Authorizer.new
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.provider_ar_ns = ListOfARNs.build(params[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless params[:provider_ar_ns].nil?
        type.auth_type = params[:auth_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.authorizer_credentials = params[:authorizer_credentials]
        type.identity_source = params[:identity_source]
        type.identity_validation_expression = params[:identity_validation_expression]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module BasePathMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BasePathMapping, context: context)
        type = Types::BasePathMapping.new
        type.base_path = params[:base_path]
        type.rest_api_id = params[:rest_api_id]
        type.stage = params[:stage]
        type
      end
    end

    module CanarySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CanarySettings, context: context)
        type = Types::CanarySettings.new
        type.percent_traffic = params[:percent_traffic]
        type.deployment_id = params[:deployment_id]
        type.stage_variable_overrides = MapOfStringToString.build(params[:stage_variable_overrides], context: "#{context}[:stage_variable_overrides]") unless params[:stage_variable_overrides].nil?
        type.use_stage_cache = params[:use_stage_cache]
        type
      end
    end

    module ClientCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientCertificate, context: context)
        type = Types::ClientCertificate.new
        type.client_certificate_id = params[:client_certificate_id]
        type.description = params[:description]
        type.pem_encoded_certificate = params[:pem_encoded_certificate]
        type.created_date = params[:created_date]
        type.expiration_date = params[:expiration_date]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiKeyInput, context: context)
        type = Types::CreateApiKeyInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.generate_distinct_id = params[:generate_distinct_id]
        type.value = params[:value]
        type.stage_keys = ListOfStageKeys.build(params[:stage_keys], context: "#{context}[:stage_keys]") unless params[:stage_keys].nil?
        type.customer_id = params[:customer_id]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiKeyOutput, context: context)
        type = Types::CreateApiKeyOutput.new
        type.id = params[:id]
        type.value = params[:value]
        type.name = params[:name]
        type.customer_id = params[:customer_id]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type.stage_keys = ListOfString.build(params[:stage_keys], context: "#{context}[:stage_keys]") unless params[:stage_keys].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthorizerInput, context: context)
        type = Types::CreateAuthorizerInput.new
        type.rest_api_id = params[:rest_api_id]
        type.name = params[:name]
        type.type = params[:type]
        type.provider_ar_ns = ListOfARNs.build(params[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless params[:provider_ar_ns].nil?
        type.auth_type = params[:auth_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.authorizer_credentials = params[:authorizer_credentials]
        type.identity_source = params[:identity_source]
        type.identity_validation_expression = params[:identity_validation_expression]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type
      end
    end

    module CreateAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthorizerOutput, context: context)
        type = Types::CreateAuthorizerOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.provider_ar_ns = ListOfARNs.build(params[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless params[:provider_ar_ns].nil?
        type.auth_type = params[:auth_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.authorizer_credentials = params[:authorizer_credentials]
        type.identity_source = params[:identity_source]
        type.identity_validation_expression = params[:identity_validation_expression]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type
      end
    end

    module CreateBasePathMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBasePathMappingInput, context: context)
        type = Types::CreateBasePathMappingInput.new
        type.domain_name = params[:domain_name]
        type.base_path = params[:base_path]
        type.rest_api_id = params[:rest_api_id]
        type.stage = params[:stage]
        type
      end
    end

    module CreateBasePathMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBasePathMappingOutput, context: context)
        type = Types::CreateBasePathMappingOutput.new
        type.base_path = params[:base_path]
        type.rest_api_id = params[:rest_api_id]
        type.stage = params[:stage]
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type.stage_description = params[:stage_description]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.variables = MapOfStringToString.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.canary_settings = DeploymentCanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.id = params[:id]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.api_summary = PathToMapOfMethodSnapshot.build(params[:api_summary], context: "#{context}[:api_summary]") unless params[:api_summary].nil?
        type
      end
    end

    module CreateDocumentationPartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentationPartInput, context: context)
        type = Types::CreateDocumentationPartInput.new
        type.rest_api_id = params[:rest_api_id]
        type.location = DocumentationPartLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.properties = params[:properties]
        type
      end
    end

    module CreateDocumentationPartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentationPartOutput, context: context)
        type = Types::CreateDocumentationPartOutput.new
        type.id = params[:id]
        type.location = DocumentationPartLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.properties = params[:properties]
        type
      end
    end

    module CreateDocumentationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentationVersionInput, context: context)
        type = Types::CreateDocumentationVersionInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_version = params[:documentation_version]
        type.stage_name = params[:stage_name]
        type.description = params[:description]
        type
      end
    end

    module CreateDocumentationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDocumentationVersionOutput, context: context)
        type = Types::CreateDocumentationVersionOutput.new
        type.version = params[:version]
        type.created_date = params[:created_date]
        type.description = params[:description]
        type
      end
    end

    module CreateDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainNameInput, context: context)
        type = Types::CreateDomainNameInput.new
        type.domain_name = params[:domain_name]
        type.certificate_name = params[:certificate_name]
        type.certificate_body = params[:certificate_body]
        type.certificate_private_key = params[:certificate_private_key]
        type.certificate_chain = params[:certificate_chain]
        type.certificate_arn = params[:certificate_arn]
        type.regional_certificate_name = params[:regional_certificate_name]
        type.regional_certificate_arn = params[:regional_certificate_arn]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.security_policy = params[:security_policy]
        type.mutual_tls_authentication = MutualTlsAuthenticationInput.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.ownership_verification_certificate_arn = params[:ownership_verification_certificate_arn]
        type
      end
    end

    module CreateDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainNameOutput, context: context)
        type = Types::CreateDomainNameOutput.new
        type.domain_name = params[:domain_name]
        type.certificate_name = params[:certificate_name]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_upload_date = params[:certificate_upload_date]
        type.regional_domain_name = params[:regional_domain_name]
        type.regional_hosted_zone_id = params[:regional_hosted_zone_id]
        type.regional_certificate_name = params[:regional_certificate_name]
        type.regional_certificate_arn = params[:regional_certificate_arn]
        type.distribution_domain_name = params[:distribution_domain_name]
        type.distribution_hosted_zone_id = params[:distribution_hosted_zone_id]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.domain_name_status = params[:domain_name_status]
        type.domain_name_status_message = params[:domain_name_status_message]
        type.security_policy = params[:security_policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.ownership_verification_certificate_arn = params[:ownership_verification_certificate_arn]
        type
      end
    end

    module CreateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelInput, context: context)
        type = Types::CreateModelInput.new
        type.rest_api_id = params[:rest_api_id]
        type.name = params[:name]
        type.description = params[:description]
        type.schema = params[:schema]
        type.content_type = params[:content_type]
        type
      end
    end

    module CreateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelOutput, context: context)
        type = Types::CreateModelOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.schema = params[:schema]
        type.content_type = params[:content_type]
        type
      end
    end

    module CreateRequestValidatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRequestValidatorInput, context: context)
        type = Types::CreateRequestValidatorInput.new
        type.rest_api_id = params[:rest_api_id]
        type.name = params[:name]
        type.validate_request_body = params[:validate_request_body]
        type.validate_request_parameters = params[:validate_request_parameters]
        type
      end
    end

    module CreateRequestValidatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRequestValidatorOutput, context: context)
        type = Types::CreateRequestValidatorOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.validate_request_body = params[:validate_request_body]
        type.validate_request_parameters = params[:validate_request_parameters]
        type
      end
    end

    module CreateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceInput, context: context)
        type = Types::CreateResourceInput.new
        type.rest_api_id = params[:rest_api_id]
        type.parent_id = params[:parent_id]
        type.path_part = params[:path_part]
        type
      end
    end

    module CreateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceOutput, context: context)
        type = Types::CreateResourceOutput.new
        type.id = params[:id]
        type.parent_id = params[:parent_id]
        type.path_part = params[:path_part]
        type.path = params[:path]
        type.resource_methods = MapOfMethod.build(params[:resource_methods], context: "#{context}[:resource_methods]") unless params[:resource_methods].nil?
        type
      end
    end

    module CreateRestApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRestApiInput, context: context)
        type = Types::CreateRestApiInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.version = params[:version]
        type.clone_from = params[:clone_from]
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module CreateRestApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRestApiOutput, context: context)
        type = Types::CreateRestApiOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module CreateStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStageInput, context: context)
        type = Types::CreateStageInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.variables = MapOfStringToString.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.documentation_version = params[:documentation_version]
        type.canary_settings = CanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStageOutput, context: context)
        type = Types::CreateStageOutput.new
        type.deployment_id = params[:deployment_id]
        type.client_certificate_id = params[:client_certificate_id]
        type.stage_name = params[:stage_name]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.cache_cluster_status = params[:cache_cluster_status]
        type.method_settings = MapOfMethodSettings.build(params[:method_settings], context: "#{context}[:method_settings]") unless params[:method_settings].nil?
        type.variables = MapOfStringToString.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.documentation_version = params[:documentation_version]
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.canary_settings = CanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type.web_acl_arn = params[:web_acl_arn]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type
      end
    end

    module CreateUsagePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsagePlanInput, context: context)
        type = Types::CreateUsagePlanInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.api_stages = ListOfApiStage.build(params[:api_stages], context: "#{context}[:api_stages]") unless params[:api_stages].nil?
        type.throttle = ThrottleSettings.build(params[:throttle], context: "#{context}[:throttle]") unless params[:throttle].nil?
        type.quota = QuotaSettings.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateUsagePlanKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsagePlanKeyInput, context: context)
        type = Types::CreateUsagePlanKeyInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.key_id = params[:key_id]
        type.key_type = params[:key_type]
        type
      end
    end

    module CreateUsagePlanKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsagePlanKeyOutput, context: context)
        type = Types::CreateUsagePlanKeyOutput.new
        type.id = params[:id]
        type.type = params[:type]
        type.value = params[:value]
        type.name = params[:name]
        type
      end
    end

    module CreateUsagePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUsagePlanOutput, context: context)
        type = Types::CreateUsagePlanOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.api_stages = ListOfApiStage.build(params[:api_stages], context: "#{context}[:api_stages]") unless params[:api_stages].nil?
        type.throttle = ThrottleSettings.build(params[:throttle], context: "#{context}[:throttle]") unless params[:throttle].nil?
        type.quota = QuotaSettings.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type.product_code = params[:product_code]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVpcLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcLinkInput, context: context)
        type = Types::CreateVpcLinkInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.target_arns = ListOfString.build(params[:target_arns], context: "#{context}[:target_arns]") unless params[:target_arns].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVpcLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcLinkOutput, context: context)
        type = Types::CreateVpcLinkOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.target_arns = ListOfString.build(params[:target_arns], context: "#{context}[:target_arns]") unless params[:target_arns].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DeleteApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiKeyInput, context: context)
        type = Types::DeleteApiKeyInput.new
        type.api_key = params[:api_key]
        type
      end
    end

    module DeleteApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiKeyOutput, context: context)
        type = Types::DeleteApiKeyOutput.new
        type
      end
    end

    module DeleteAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthorizerInput, context: context)
        type = Types::DeleteAuthorizerInput.new
        type.rest_api_id = params[:rest_api_id]
        type.authorizer_id = params[:authorizer_id]
        type
      end
    end

    module DeleteAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthorizerOutput, context: context)
        type = Types::DeleteAuthorizerOutput.new
        type
      end
    end

    module DeleteBasePathMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBasePathMappingInput, context: context)
        type = Types::DeleteBasePathMappingInput.new
        type.domain_name = params[:domain_name]
        type.base_path = params[:base_path]
        type
      end
    end

    module DeleteBasePathMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBasePathMappingOutput, context: context)
        type = Types::DeleteBasePathMappingOutput.new
        type
      end
    end

    module DeleteClientCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClientCertificateInput, context: context)
        type = Types::DeleteClientCertificateInput.new
        type.client_certificate_id = params[:client_certificate_id]
        type
      end
    end

    module DeleteClientCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClientCertificateOutput, context: context)
        type = Types::DeleteClientCertificateOutput.new
        type
      end
    end

    module DeleteDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentInput, context: context)
        type = Types::DeleteDeploymentInput.new
        type.rest_api_id = params[:rest_api_id]
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module DeleteDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentOutput, context: context)
        type = Types::DeleteDeploymentOutput.new
        type
      end
    end

    module DeleteDocumentationPartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentationPartInput, context: context)
        type = Types::DeleteDocumentationPartInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_part_id = params[:documentation_part_id]
        type
      end
    end

    module DeleteDocumentationPartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentationPartOutput, context: context)
        type = Types::DeleteDocumentationPartOutput.new
        type
      end
    end

    module DeleteDocumentationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentationVersionInput, context: context)
        type = Types::DeleteDocumentationVersionInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_version = params[:documentation_version]
        type
      end
    end

    module DeleteDocumentationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDocumentationVersionOutput, context: context)
        type = Types::DeleteDocumentationVersionOutput.new
        type
      end
    end

    module DeleteDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainNameInput, context: context)
        type = Types::DeleteDomainNameInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainNameOutput, context: context)
        type = Types::DeleteDomainNameOutput.new
        type
      end
    end

    module DeleteGatewayResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayResponseInput, context: context)
        type = Types::DeleteGatewayResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.response_type = params[:response_type]
        type
      end
    end

    module DeleteGatewayResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGatewayResponseOutput, context: context)
        type = Types::DeleteGatewayResponseOutput.new
        type
      end
    end

    module DeleteIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationInput, context: context)
        type = Types::DeleteIntegrationInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type
      end
    end

    module DeleteIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationOutput, context: context)
        type = Types::DeleteIntegrationOutput.new
        type
      end
    end

    module DeleteIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationResponseInput, context: context)
        type = Types::DeleteIntegrationResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type
      end
    end

    module DeleteIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationResponseOutput, context: context)
        type = Types::DeleteIntegrationResponseOutput.new
        type
      end
    end

    module DeleteMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMethodInput, context: context)
        type = Types::DeleteMethodInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type
      end
    end

    module DeleteMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMethodOutput, context: context)
        type = Types::DeleteMethodOutput.new
        type
      end
    end

    module DeleteMethodResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMethodResponseInput, context: context)
        type = Types::DeleteMethodResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type
      end
    end

    module DeleteMethodResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMethodResponseOutput, context: context)
        type = Types::DeleteMethodResponseOutput.new
        type
      end
    end

    module DeleteModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelInput, context: context)
        type = Types::DeleteModelInput.new
        type.rest_api_id = params[:rest_api_id]
        type.model_name = params[:model_name]
        type
      end
    end

    module DeleteModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelOutput, context: context)
        type = Types::DeleteModelOutput.new
        type
      end
    end

    module DeleteRequestValidatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRequestValidatorInput, context: context)
        type = Types::DeleteRequestValidatorInput.new
        type.rest_api_id = params[:rest_api_id]
        type.request_validator_id = params[:request_validator_id]
        type
      end
    end

    module DeleteRequestValidatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRequestValidatorOutput, context: context)
        type = Types::DeleteRequestValidatorOutput.new
        type
      end
    end

    module DeleteResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceInput, context: context)
        type = Types::DeleteResourceInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type
      end
    end

    module DeleteResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceOutput, context: context)
        type = Types::DeleteResourceOutput.new
        type
      end
    end

    module DeleteRestApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRestApiInput, context: context)
        type = Types::DeleteRestApiInput.new
        type.rest_api_id = params[:rest_api_id]
        type
      end
    end

    module DeleteRestApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRestApiOutput, context: context)
        type = Types::DeleteRestApiOutput.new
        type
      end
    end

    module DeleteStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStageInput, context: context)
        type = Types::DeleteStageInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module DeleteStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStageOutput, context: context)
        type = Types::DeleteStageOutput.new
        type
      end
    end

    module DeleteUsagePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsagePlanInput, context: context)
        type = Types::DeleteUsagePlanInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type
      end
    end

    module DeleteUsagePlanKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsagePlanKeyInput, context: context)
        type = Types::DeleteUsagePlanKeyInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.key_id = params[:key_id]
        type
      end
    end

    module DeleteUsagePlanKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsagePlanKeyOutput, context: context)
        type = Types::DeleteUsagePlanKeyOutput.new
        type
      end
    end

    module DeleteUsagePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteUsagePlanOutput, context: context)
        type = Types::DeleteUsagePlanOutput.new
        type
      end
    end

    module DeleteVpcLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcLinkInput, context: context)
        type = Types::DeleteVpcLinkInput.new
        type.vpc_link_id = params[:vpc_link_id]
        type
      end
    end

    module DeleteVpcLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcLinkOutput, context: context)
        type = Types::DeleteVpcLinkOutput.new
        type
      end
    end

    module Deployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Deployment, context: context)
        type = Types::Deployment.new
        type.id = params[:id]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.api_summary = PathToMapOfMethodSnapshot.build(params[:api_summary], context: "#{context}[:api_summary]") unless params[:api_summary].nil?
        type
      end
    end

    module DeploymentCanarySettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeploymentCanarySettings, context: context)
        type = Types::DeploymentCanarySettings.new
        type.percent_traffic = params[:percent_traffic]
        type.stage_variable_overrides = MapOfStringToString.build(params[:stage_variable_overrides], context: "#{context}[:stage_variable_overrides]") unless params[:stage_variable_overrides].nil?
        type.use_stage_cache = params[:use_stage_cache]
        type
      end
    end

    module DocumentationPart
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentationPart, context: context)
        type = Types::DocumentationPart.new
        type.id = params[:id]
        type.location = DocumentationPartLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.properties = params[:properties]
        type
      end
    end

    module DocumentationPartLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentationPartLocation, context: context)
        type = Types::DocumentationPartLocation.new
        type.type = params[:type]
        type.path = params[:path]
        type.member_method = params[:member_method]
        type.status_code = params[:status_code]
        type.name = params[:name]
        type
      end
    end

    module DocumentationVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentationVersion, context: context)
        type = Types::DocumentationVersion.new
        type.version = params[:version]
        type.created_date = params[:created_date]
        type.description = params[:description]
        type
      end
    end

    module DomainName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainName, context: context)
        type = Types::DomainName.new
        type.domain_name = params[:domain_name]
        type.certificate_name = params[:certificate_name]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_upload_date = params[:certificate_upload_date]
        type.regional_domain_name = params[:regional_domain_name]
        type.regional_hosted_zone_id = params[:regional_hosted_zone_id]
        type.regional_certificate_name = params[:regional_certificate_name]
        type.regional_certificate_arn = params[:regional_certificate_arn]
        type.distribution_domain_name = params[:distribution_domain_name]
        type.distribution_hosted_zone_id = params[:distribution_hosted_zone_id]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.domain_name_status = params[:domain_name_status]
        type.domain_name_status_message = params[:domain_name_status_message]
        type.security_policy = params[:security_policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.ownership_verification_certificate_arn = params[:ownership_verification_certificate_arn]
        type
      end
    end

    module EndpointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EndpointConfiguration, context: context)
        type = Types::EndpointConfiguration.new
        type.types = ListOfEndpointType.build(params[:types], context: "#{context}[:types]") unless params[:types].nil?
        type.vpc_endpoint_ids = ListOfString.build(params[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless params[:vpc_endpoint_ids].nil?
        type
      end
    end

    module FlushStageAuthorizersCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlushStageAuthorizersCacheInput, context: context)
        type = Types::FlushStageAuthorizersCacheInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module FlushStageAuthorizersCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlushStageAuthorizersCacheOutput, context: context)
        type = Types::FlushStageAuthorizersCacheOutput.new
        type
      end
    end

    module FlushStageCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlushStageCacheInput, context: context)
        type = Types::FlushStageCacheInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module FlushStageCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlushStageCacheOutput, context: context)
        type = Types::FlushStageCacheOutput.new
        type
      end
    end

    module GatewayResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GatewayResponse, context: context)
        type = Types::GatewayResponse.new
        type.response_type = params[:response_type]
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.default_response = params[:default_response]
        type
      end
    end

    module GenerateClientCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateClientCertificateInput, context: context)
        type = Types::GenerateClientCertificateInput.new
        type.description = params[:description]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GenerateClientCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GenerateClientCertificateOutput, context: context)
        type = Types::GenerateClientCertificateOutput.new
        type.client_certificate_id = params[:client_certificate_id]
        type.description = params[:description]
        type.pem_encoded_certificate = params[:pem_encoded_certificate]
        type.created_date = params[:created_date]
        type.expiration_date = params[:expiration_date]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountInput, context: context)
        type = Types::GetAccountInput.new
        type
      end
    end

    module GetAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAccountOutput, context: context)
        type = Types::GetAccountOutput.new
        type.cloudwatch_role_arn = params[:cloudwatch_role_arn]
        type.throttle_settings = ThrottleSettings.build(params[:throttle_settings], context: "#{context}[:throttle_settings]") unless params[:throttle_settings].nil?
        type.features = ListOfString.build(params[:features], context: "#{context}[:features]") unless params[:features].nil?
        type.api_key_version = params[:api_key_version]
        type
      end
    end

    module GetApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiKeyInput, context: context)
        type = Types::GetApiKeyInput.new
        type.api_key = params[:api_key]
        type.include_value = params[:include_value]
        type
      end
    end

    module GetApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiKeyOutput, context: context)
        type = Types::GetApiKeyOutput.new
        type.id = params[:id]
        type.value = params[:value]
        type.name = params[:name]
        type.customer_id = params[:customer_id]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type.stage_keys = ListOfString.build(params[:stage_keys], context: "#{context}[:stage_keys]") unless params[:stage_keys].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetApiKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiKeysInput, context: context)
        type = Types::GetApiKeysInput.new
        type.position = params[:position]
        type.limit = params[:limit]
        type.name_query = params[:name_query]
        type.customer_id = params[:customer_id]
        type.include_values = params[:include_values]
        type
      end
    end

    module GetApiKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiKeysOutput, context: context)
        type = Types::GetApiKeysOutput.new
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.items = ListOfApiKey.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizerInput, context: context)
        type = Types::GetAuthorizerInput.new
        type.rest_api_id = params[:rest_api_id]
        type.authorizer_id = params[:authorizer_id]
        type
      end
    end

    module GetAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizerOutput, context: context)
        type = Types::GetAuthorizerOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.provider_ar_ns = ListOfARNs.build(params[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless params[:provider_ar_ns].nil?
        type.auth_type = params[:auth_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.authorizer_credentials = params[:authorizer_credentials]
        type.identity_source = params[:identity_source]
        type.identity_validation_expression = params[:identity_validation_expression]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type
      end
    end

    module GetAuthorizersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizersInput, context: context)
        type = Types::GetAuthorizersInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetAuthorizersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizersOutput, context: context)
        type = Types::GetAuthorizersOutput.new
        type.items = ListOfAuthorizer.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetBasePathMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBasePathMappingInput, context: context)
        type = Types::GetBasePathMappingInput.new
        type.domain_name = params[:domain_name]
        type.base_path = params[:base_path]
        type
      end
    end

    module GetBasePathMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBasePathMappingOutput, context: context)
        type = Types::GetBasePathMappingOutput.new
        type.base_path = params[:base_path]
        type.rest_api_id = params[:rest_api_id]
        type.stage = params[:stage]
        type
      end
    end

    module GetBasePathMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBasePathMappingsInput, context: context)
        type = Types::GetBasePathMappingsInput.new
        type.domain_name = params[:domain_name]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetBasePathMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBasePathMappingsOutput, context: context)
        type = Types::GetBasePathMappingsOutput.new
        type.items = ListOfBasePathMapping.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetClientCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClientCertificateInput, context: context)
        type = Types::GetClientCertificateInput.new
        type.client_certificate_id = params[:client_certificate_id]
        type
      end
    end

    module GetClientCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClientCertificateOutput, context: context)
        type = Types::GetClientCertificateOutput.new
        type.client_certificate_id = params[:client_certificate_id]
        type.description = params[:description]
        type.pem_encoded_certificate = params[:pem_encoded_certificate]
        type.created_date = params[:created_date]
        type.expiration_date = params[:expiration_date]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetClientCertificatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClientCertificatesInput, context: context)
        type = Types::GetClientCertificatesInput.new
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetClientCertificatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetClientCertificatesOutput, context: context)
        type = Types::GetClientCertificatesOutput.new
        type.items = ListOfClientCertificate.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInput, context: context)
        type = Types::GetDeploymentInput.new
        type.rest_api_id = params[:rest_api_id]
        type.deployment_id = params[:deployment_id]
        type.embed = ListOfString.build(params[:embed], context: "#{context}[:embed]") unless params[:embed].nil?
        type
      end
    end

    module GetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentOutput, context: context)
        type = Types::GetDeploymentOutput.new
        type.id = params[:id]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.api_summary = PathToMapOfMethodSnapshot.build(params[:api_summary], context: "#{context}[:api_summary]") unless params[:api_summary].nil?
        type
      end
    end

    module GetDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentsInput, context: context)
        type = Types::GetDeploymentsInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentsOutput, context: context)
        type = Types::GetDeploymentsOutput.new
        type.items = ListOfDeployment.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetDocumentationPartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationPartInput, context: context)
        type = Types::GetDocumentationPartInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_part_id = params[:documentation_part_id]
        type
      end
    end

    module GetDocumentationPartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationPartOutput, context: context)
        type = Types::GetDocumentationPartOutput.new
        type.id = params[:id]
        type.location = DocumentationPartLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.properties = params[:properties]
        type
      end
    end

    module GetDocumentationPartsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationPartsInput, context: context)
        type = Types::GetDocumentationPartsInput.new
        type.rest_api_id = params[:rest_api_id]
        type.type = params[:type]
        type.name_query = params[:name_query]
        type.path = params[:path]
        type.position = params[:position]
        type.limit = params[:limit]
        type.location_status = params[:location_status]
        type
      end
    end

    module GetDocumentationPartsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationPartsOutput, context: context)
        type = Types::GetDocumentationPartsOutput.new
        type.items = ListOfDocumentationPart.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetDocumentationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationVersionInput, context: context)
        type = Types::GetDocumentationVersionInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_version = params[:documentation_version]
        type
      end
    end

    module GetDocumentationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationVersionOutput, context: context)
        type = Types::GetDocumentationVersionOutput.new
        type.version = params[:version]
        type.created_date = params[:created_date]
        type.description = params[:description]
        type
      end
    end

    module GetDocumentationVersionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationVersionsInput, context: context)
        type = Types::GetDocumentationVersionsInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetDocumentationVersionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDocumentationVersionsOutput, context: context)
        type = Types::GetDocumentationVersionsOutput.new
        type.items = ListOfDocumentationVersion.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNameInput, context: context)
        type = Types::GetDomainNameInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNameOutput, context: context)
        type = Types::GetDomainNameOutput.new
        type.domain_name = params[:domain_name]
        type.certificate_name = params[:certificate_name]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_upload_date = params[:certificate_upload_date]
        type.regional_domain_name = params[:regional_domain_name]
        type.regional_hosted_zone_id = params[:regional_hosted_zone_id]
        type.regional_certificate_name = params[:regional_certificate_name]
        type.regional_certificate_arn = params[:regional_certificate_arn]
        type.distribution_domain_name = params[:distribution_domain_name]
        type.distribution_hosted_zone_id = params[:distribution_hosted_zone_id]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.domain_name_status = params[:domain_name_status]
        type.domain_name_status_message = params[:domain_name_status_message]
        type.security_policy = params[:security_policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.ownership_verification_certificate_arn = params[:ownership_verification_certificate_arn]
        type
      end
    end

    module GetDomainNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNamesInput, context: context)
        type = Types::GetDomainNamesInput.new
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetDomainNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNamesOutput, context: context)
        type = Types::GetDomainNamesOutput.new
        type.items = ListOfDomainName.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetExportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportInput, context: context)
        type = Types::GetExportInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type.export_type = params[:export_type]
        type.parameters = MapOfStringToString.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.accepts = params[:accepts]
        type
      end
    end

    module GetExportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetExportOutput, context: context)
        type = Types::GetExportOutput.new
        type.content_type = params[:content_type]
        type.content_disposition = params[:content_disposition]
        type.body = params[:body]
        type
      end
    end

    module GetGatewayResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayResponseInput, context: context)
        type = Types::GetGatewayResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.response_type = params[:response_type]
        type
      end
    end

    module GetGatewayResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayResponseOutput, context: context)
        type = Types::GetGatewayResponseOutput.new
        type.response_type = params[:response_type]
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.default_response = params[:default_response]
        type
      end
    end

    module GetGatewayResponsesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayResponsesInput, context: context)
        type = Types::GetGatewayResponsesInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetGatewayResponsesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGatewayResponsesOutput, context: context)
        type = Types::GetGatewayResponsesOutput.new
        type.items = ListOfGatewayResponse.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationInput, context: context)
        type = Types::GetIntegrationInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type
      end
    end

    module GetIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationOutput, context: context)
        type = Types::GetIntegrationOutput.new
        type.type = params[:type]
        type.http_method = params[:http_method]
        type.uri = params[:uri]
        type.connection_type = params[:connection_type]
        type.connection_id = params[:connection_id]
        type.credentials = params[:credentials]
        type.request_parameters = MapOfStringToString.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = MapOfStringToString.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.passthrough_behavior = params[:passthrough_behavior]
        type.content_handling = params[:content_handling]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.cache_namespace = params[:cache_namespace]
        type.cache_key_parameters = ListOfString.build(params[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless params[:cache_key_parameters].nil?
        type.integration_responses = MapOfIntegrationResponse.build(params[:integration_responses], context: "#{context}[:integration_responses]") unless params[:integration_responses].nil?
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module GetIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationResponseInput, context: context)
        type = Types::GetIntegrationResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type
      end
    end

    module GetIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationResponseOutput, context: context)
        type = Types::GetIntegrationResponseOutput.new
        type.status_code = params[:status_code]
        type.selection_pattern = params[:selection_pattern]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.content_handling = params[:content_handling]
        type
      end
    end

    module GetMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMethodInput, context: context)
        type = Types::GetMethodInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type
      end
    end

    module GetMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMethodOutput, context: context)
        type = Types::GetMethodOutput.new
        type.http_method = params[:http_method]
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.api_key_required = params[:api_key_required]
        type.request_validator_id = params[:request_validator_id]
        type.operation_name = params[:operation_name]
        type.request_parameters = MapOfStringToBoolean.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_models = MapOfStringToString.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.method_responses = MapOfMethodResponse.build(params[:method_responses], context: "#{context}[:method_responses]") unless params[:method_responses].nil?
        type.method_integration = Integration.build(params[:method_integration], context: "#{context}[:method_integration]") unless params[:method_integration].nil?
        type.authorization_scopes = ListOfString.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type
      end
    end

    module GetMethodResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMethodResponseInput, context: context)
        type = Types::GetMethodResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type
      end
    end

    module GetMethodResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMethodResponseOutput, context: context)
        type = Types::GetMethodResponseOutput.new
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToBoolean.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_models = MapOfStringToString.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type
      end
    end

    module GetModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelInput, context: context)
        type = Types::GetModelInput.new
        type.rest_api_id = params[:rest_api_id]
        type.model_name = params[:model_name]
        type.flatten = params[:flatten]
        type
      end
    end

    module GetModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelOutput, context: context)
        type = Types::GetModelOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.schema = params[:schema]
        type.content_type = params[:content_type]
        type
      end
    end

    module GetModelTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelTemplateInput, context: context)
        type = Types::GetModelTemplateInput.new
        type.rest_api_id = params[:rest_api_id]
        type.model_name = params[:model_name]
        type
      end
    end

    module GetModelTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelTemplateOutput, context: context)
        type = Types::GetModelTemplateOutput.new
        type.value = params[:value]
        type
      end
    end

    module GetModelsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelsInput, context: context)
        type = Types::GetModelsInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelsOutput, context: context)
        type = Types::GetModelsOutput.new
        type.items = ListOfModel.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetRequestValidatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRequestValidatorInput, context: context)
        type = Types::GetRequestValidatorInput.new
        type.rest_api_id = params[:rest_api_id]
        type.request_validator_id = params[:request_validator_id]
        type
      end
    end

    module GetRequestValidatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRequestValidatorOutput, context: context)
        type = Types::GetRequestValidatorOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.validate_request_body = params[:validate_request_body]
        type.validate_request_parameters = params[:validate_request_parameters]
        type
      end
    end

    module GetRequestValidatorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRequestValidatorsInput, context: context)
        type = Types::GetRequestValidatorsInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetRequestValidatorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRequestValidatorsOutput, context: context)
        type = Types::GetRequestValidatorsOutput.new
        type.items = ListOfRequestValidator.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceInput, context: context)
        type = Types::GetResourceInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.embed = ListOfString.build(params[:embed], context: "#{context}[:embed]") unless params[:embed].nil?
        type
      end
    end

    module GetResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceOutput, context: context)
        type = Types::GetResourceOutput.new
        type.id = params[:id]
        type.parent_id = params[:parent_id]
        type.path_part = params[:path_part]
        type.path = params[:path]
        type.resource_methods = MapOfMethod.build(params[:resource_methods], context: "#{context}[:resource_methods]") unless params[:resource_methods].nil?
        type
      end
    end

    module GetResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcesInput, context: context)
        type = Types::GetResourcesInput.new
        type.rest_api_id = params[:rest_api_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type.embed = ListOfString.build(params[:embed], context: "#{context}[:embed]") unless params[:embed].nil?
        type
      end
    end

    module GetResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourcesOutput, context: context)
        type = Types::GetResourcesOutput.new
        type.items = ListOfResource.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetRestApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRestApiInput, context: context)
        type = Types::GetRestApiInput.new
        type.rest_api_id = params[:rest_api_id]
        type
      end
    end

    module GetRestApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRestApiOutput, context: context)
        type = Types::GetRestApiOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module GetRestApisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRestApisInput, context: context)
        type = Types::GetRestApisInput.new
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetRestApisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRestApisOutput, context: context)
        type = Types::GetRestApisOutput.new
        type.items = ListOfRestApi.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetSdkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSdkInput, context: context)
        type = Types::GetSdkInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type.sdk_type = params[:sdk_type]
        type.parameters = MapOfStringToString.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type
      end
    end

    module GetSdkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSdkOutput, context: context)
        type = Types::GetSdkOutput.new
        type.content_type = params[:content_type]
        type.content_disposition = params[:content_disposition]
        type.body = params[:body]
        type
      end
    end

    module GetSdkTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSdkTypeInput, context: context)
        type = Types::GetSdkTypeInput.new
        type.id = params[:id]
        type
      end
    end

    module GetSdkTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSdkTypeOutput, context: context)
        type = Types::GetSdkTypeOutput.new
        type.id = params[:id]
        type.friendly_name = params[:friendly_name]
        type.description = params[:description]
        type.configuration_properties = ListOfSdkConfigurationProperty.build(params[:configuration_properties], context: "#{context}[:configuration_properties]") unless params[:configuration_properties].nil?
        type
      end
    end

    module GetSdkTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSdkTypesInput, context: context)
        type = Types::GetSdkTypesInput.new
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetSdkTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSdkTypesOutput, context: context)
        type = Types::GetSdkTypesOutput.new
        type.items = ListOfSdkType.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type
      end
    end

    module GetStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageInput, context: context)
        type = Types::GetStageInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module GetStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageOutput, context: context)
        type = Types::GetStageOutput.new
        type.deployment_id = params[:deployment_id]
        type.client_certificate_id = params[:client_certificate_id]
        type.stage_name = params[:stage_name]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.cache_cluster_status = params[:cache_cluster_status]
        type.method_settings = MapOfMethodSettings.build(params[:method_settings], context: "#{context}[:method_settings]") unless params[:method_settings].nil?
        type.variables = MapOfStringToString.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.documentation_version = params[:documentation_version]
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.canary_settings = CanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type.web_acl_arn = params[:web_acl_arn]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type
      end
    end

    module GetStagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStagesInput, context: context)
        type = Types::GetStagesInput.new
        type.rest_api_id = params[:rest_api_id]
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module GetStagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStagesOutput, context: context)
        type = Types::GetStagesOutput.new
        type.item = ListOfStage.build(params[:item], context: "#{context}[:item]") unless params[:item].nil?
        type
      end
    end

    module GetTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsInput, context: context)
        type = Types::GetTagsInput.new
        type.resource_arn = params[:resource_arn]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsOutput, context: context)
        type = Types::GetTagsOutput.new
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageInput, context: context)
        type = Types::GetUsageInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.key_id = params[:key_id]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsageOutput, context: context)
        type = Types::GetUsageOutput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.items = MapOfKeyUsages.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetUsagePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlanInput, context: context)
        type = Types::GetUsagePlanInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type
      end
    end

    module GetUsagePlanKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlanKeyInput, context: context)
        type = Types::GetUsagePlanKeyInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.key_id = params[:key_id]
        type
      end
    end

    module GetUsagePlanKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlanKeyOutput, context: context)
        type = Types::GetUsagePlanKeyOutput.new
        type.id = params[:id]
        type.type = params[:type]
        type.value = params[:value]
        type.name = params[:name]
        type
      end
    end

    module GetUsagePlanKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlanKeysInput, context: context)
        type = Types::GetUsagePlanKeysInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.position = params[:position]
        type.limit = params[:limit]
        type.name_query = params[:name_query]
        type
      end
    end

    module GetUsagePlanKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlanKeysOutput, context: context)
        type = Types::GetUsagePlanKeysOutput.new
        type.items = ListOfUsagePlanKey.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetUsagePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlanOutput, context: context)
        type = Types::GetUsagePlanOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.api_stages = ListOfApiStage.build(params[:api_stages], context: "#{context}[:api_stages]") unless params[:api_stages].nil?
        type.throttle = ThrottleSettings.build(params[:throttle], context: "#{context}[:throttle]") unless params[:throttle].nil?
        type.quota = QuotaSettings.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type.product_code = params[:product_code]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetUsagePlansInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlansInput, context: context)
        type = Types::GetUsagePlansInput.new
        type.position = params[:position]
        type.key_id = params[:key_id]
        type.limit = params[:limit]
        type
      end
    end

    module GetUsagePlansOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetUsagePlansOutput, context: context)
        type = Types::GetUsagePlansOutput.new
        type.items = ListOfUsagePlan.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module GetVpcLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcLinkInput, context: context)
        type = Types::GetVpcLinkInput.new
        type.vpc_link_id = params[:vpc_link_id]
        type
      end
    end

    module GetVpcLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcLinkOutput, context: context)
        type = Types::GetVpcLinkOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.target_arns = ListOfString.build(params[:target_arns], context: "#{context}[:target_arns]") unless params[:target_arns].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetVpcLinksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcLinksInput, context: context)
        type = Types::GetVpcLinksInput.new
        type.position = params[:position]
        type.limit = params[:limit]
        type
      end
    end

    module GetVpcLinksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcLinksOutput, context: context)
        type = Types::GetVpcLinksOutput.new
        type.items = ListOfVpcLink.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module ImportApiKeysInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportApiKeysInput, context: context)
        type = Types::ImportApiKeysInput.new
        type.body = params[:body]
        type.format = params[:format]
        type.fail_on_warnings = params[:fail_on_warnings]
        type
      end
    end

    module ImportApiKeysOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportApiKeysOutput, context: context)
        type = Types::ImportApiKeysOutput.new
        type.ids = ListOfString.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module ImportDocumentationPartsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportDocumentationPartsInput, context: context)
        type = Types::ImportDocumentationPartsInput.new
        type.rest_api_id = params[:rest_api_id]
        type.mode = params[:mode]
        type.fail_on_warnings = params[:fail_on_warnings]
        type.body = params[:body]
        type
      end
    end

    module ImportDocumentationPartsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportDocumentationPartsOutput, context: context)
        type = Types::ImportDocumentationPartsOutput.new
        type.ids = ListOfString.build(params[:ids], context: "#{context}[:ids]") unless params[:ids].nil?
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module ImportRestApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportRestApiInput, context: context)
        type = Types::ImportRestApiInput.new
        type.fail_on_warnings = params[:fail_on_warnings]
        type.parameters = MapOfStringToString.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.body = params[:body]
        type
      end
    end

    module ImportRestApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportRestApiOutput, context: context)
        type = Types::ImportRestApiOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module Integration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Integration, context: context)
        type = Types::Integration.new
        type.type = params[:type]
        type.http_method = params[:http_method]
        type.uri = params[:uri]
        type.connection_type = params[:connection_type]
        type.connection_id = params[:connection_id]
        type.credentials = params[:credentials]
        type.request_parameters = MapOfStringToString.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = MapOfStringToString.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.passthrough_behavior = params[:passthrough_behavior]
        type.content_handling = params[:content_handling]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.cache_namespace = params[:cache_namespace]
        type.cache_key_parameters = ListOfString.build(params[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless params[:cache_key_parameters].nil?
        type.integration_responses = MapOfIntegrationResponse.build(params[:integration_responses], context: "#{context}[:integration_responses]") unless params[:integration_responses].nil?
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module IntegrationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegrationResponse, context: context)
        type = Types::IntegrationResponse.new
        type.status_code = params[:status_code]
        type.selection_pattern = params[:selection_pattern]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.content_handling = params[:content_handling]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module ListOfARNs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfApiKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApiKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfApiStage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApiStage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfAuthorizer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Authorizer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfBasePathMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BasePathMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfClientCertificate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClientCertificate.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Deployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDocumentationPart
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentationPart.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDocumentationVersion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentationVersion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfDomainName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainName.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfEndpointType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfGatewayResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GatewayResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfLong
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Model.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfPatchOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PatchOperation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRequestValidator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RequestValidator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfRestApi
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RestApi.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSdkConfigurationProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SdkConfigurationProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfSdkType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SdkType.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfStage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfStageKeys
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << StageKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ListOfUsage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListOfLong.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfUsagePlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsagePlan.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfUsagePlanKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UsagePlanKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListOfVpcLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcLink.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MapOfApiStageThrottleSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ThrottleSettings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfIntegrationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IntegrationResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfKeyUsages
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ListOfUsage.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMethod
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Method.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMethodResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MethodResponse.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMethodSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MethodSetting.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfMethodSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MethodSnapshot.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfStringToBoolean
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module MapOfStringToList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ListOfString.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module MapOfStringToString
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Method
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Method, context: context)
        type = Types::Method.new
        type.http_method = params[:http_method]
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.api_key_required = params[:api_key_required]
        type.request_validator_id = params[:request_validator_id]
        type.operation_name = params[:operation_name]
        type.request_parameters = MapOfStringToBoolean.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_models = MapOfStringToString.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.method_responses = MapOfMethodResponse.build(params[:method_responses], context: "#{context}[:method_responses]") unless params[:method_responses].nil?
        type.method_integration = Integration.build(params[:method_integration], context: "#{context}[:method_integration]") unless params[:method_integration].nil?
        type.authorization_scopes = ListOfString.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type
      end
    end

    module MethodResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MethodResponse, context: context)
        type = Types::MethodResponse.new
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToBoolean.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_models = MapOfStringToString.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type
      end
    end

    module MethodSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MethodSetting, context: context)
        type = Types::MethodSetting.new
        type.metrics_enabled = params[:metrics_enabled]
        type.logging_level = params[:logging_level]
        type.data_trace_enabled = params[:data_trace_enabled]
        type.throttling_burst_limit = params[:throttling_burst_limit]
        type.throttling_rate_limit = params[:throttling_rate_limit]
        type.caching_enabled = params[:caching_enabled]
        type.cache_ttl_in_seconds = params[:cache_ttl_in_seconds]
        type.cache_data_encrypted = params[:cache_data_encrypted]
        type.require_authorization_for_cache_control = params[:require_authorization_for_cache_control]
        type.unauthorized_cache_control_header_strategy = params[:unauthorized_cache_control_header_strategy]
        type
      end
    end

    module MethodSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MethodSnapshot, context: context)
        type = Types::MethodSnapshot.new
        type.authorization_type = params[:authorization_type]
        type.api_key_required = params[:api_key_required]
        type
      end
    end

    module Model
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Model, context: context)
        type = Types::Model.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.schema = params[:schema]
        type.content_type = params[:content_type]
        type
      end
    end

    module MutualTlsAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MutualTlsAuthentication, context: context)
        type = Types::MutualTlsAuthentication.new
        type.truststore_uri = params[:truststore_uri]
        type.truststore_version = params[:truststore_version]
        type.truststore_warnings = ListOfString.build(params[:truststore_warnings], context: "#{context}[:truststore_warnings]") unless params[:truststore_warnings].nil?
        type
      end
    end

    module MutualTlsAuthenticationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MutualTlsAuthenticationInput, context: context)
        type = Types::MutualTlsAuthenticationInput.new
        type.truststore_uri = params[:truststore_uri]
        type.truststore_version = params[:truststore_version]
        type
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module PatchOperation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PatchOperation, context: context)
        type = Types::PatchOperation.new
        type.op = params[:op]
        type.path = params[:path]
        type.value = params[:value]
        type.from = params[:from]
        type
      end
    end

    module PathToMapOfMethodSnapshot
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = MapOfMethodSnapshot.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PutGatewayResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGatewayResponseInput, context: context)
        type = Types::PutGatewayResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.response_type = params[:response_type]
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type
      end
    end

    module PutGatewayResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutGatewayResponseOutput, context: context)
        type = Types::PutGatewayResponseOutput.new
        type.response_type = params[:response_type]
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.default_response = params[:default_response]
        type
      end
    end

    module PutIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntegrationInput, context: context)
        type = Types::PutIntegrationInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.type = params[:type]
        type.integration_http_method = params[:integration_http_method]
        type.uri = params[:uri]
        type.connection_type = params[:connection_type]
        type.connection_id = params[:connection_id]
        type.credentials = params[:credentials]
        type.request_parameters = MapOfStringToString.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = MapOfStringToString.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.passthrough_behavior = params[:passthrough_behavior]
        type.cache_namespace = params[:cache_namespace]
        type.cache_key_parameters = ListOfString.build(params[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless params[:cache_key_parameters].nil?
        type.content_handling = params[:content_handling]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module PutIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntegrationOutput, context: context)
        type = Types::PutIntegrationOutput.new
        type.type = params[:type]
        type.http_method = params[:http_method]
        type.uri = params[:uri]
        type.connection_type = params[:connection_type]
        type.connection_id = params[:connection_id]
        type.credentials = params[:credentials]
        type.request_parameters = MapOfStringToString.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = MapOfStringToString.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.passthrough_behavior = params[:passthrough_behavior]
        type.content_handling = params[:content_handling]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.cache_namespace = params[:cache_namespace]
        type.cache_key_parameters = ListOfString.build(params[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless params[:cache_key_parameters].nil?
        type.integration_responses = MapOfIntegrationResponse.build(params[:integration_responses], context: "#{context}[:integration_responses]") unless params[:integration_responses].nil?
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module PutIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntegrationResponseInput, context: context)
        type = Types::PutIntegrationResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type.selection_pattern = params[:selection_pattern]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.content_handling = params[:content_handling]
        type
      end
    end

    module PutIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntegrationResponseOutput, context: context)
        type = Types::PutIntegrationResponseOutput.new
        type.status_code = params[:status_code]
        type.selection_pattern = params[:selection_pattern]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.content_handling = params[:content_handling]
        type
      end
    end

    module PutMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMethodInput, context: context)
        type = Types::PutMethodInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.api_key_required = params[:api_key_required]
        type.operation_name = params[:operation_name]
        type.request_parameters = MapOfStringToBoolean.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_models = MapOfStringToString.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_validator_id = params[:request_validator_id]
        type.authorization_scopes = ListOfString.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type
      end
    end

    module PutMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMethodOutput, context: context)
        type = Types::PutMethodOutput.new
        type.http_method = params[:http_method]
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.api_key_required = params[:api_key_required]
        type.request_validator_id = params[:request_validator_id]
        type.operation_name = params[:operation_name]
        type.request_parameters = MapOfStringToBoolean.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_models = MapOfStringToString.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.method_responses = MapOfMethodResponse.build(params[:method_responses], context: "#{context}[:method_responses]") unless params[:method_responses].nil?
        type.method_integration = Integration.build(params[:method_integration], context: "#{context}[:method_integration]") unless params[:method_integration].nil?
        type.authorization_scopes = ListOfString.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type
      end
    end

    module PutMethodResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMethodResponseInput, context: context)
        type = Types::PutMethodResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToBoolean.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_models = MapOfStringToString.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type
      end
    end

    module PutMethodResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutMethodResponseOutput, context: context)
        type = Types::PutMethodResponseOutput.new
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToBoolean.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_models = MapOfStringToString.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type
      end
    end

    module PutRestApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRestApiInput, context: context)
        type = Types::PutRestApiInput.new
        type.rest_api_id = params[:rest_api_id]
        type.mode = params[:mode]
        type.fail_on_warnings = params[:fail_on_warnings]
        type.parameters = MapOfStringToString.build(params[:parameters], context: "#{context}[:parameters]") unless params[:parameters].nil?
        type.body = params[:body]
        type
      end
    end

    module PutRestApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRestApiOutput, context: context)
        type = Types::PutRestApiOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module QuotaSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuotaSettings, context: context)
        type = Types::QuotaSettings.new
        type.limit = params[:limit]
        type.offset = params[:offset]
        type.period = params[:period]
        type
      end
    end

    module RequestValidator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestValidator, context: context)
        type = Types::RequestValidator.new
        type.id = params[:id]
        type.name = params[:name]
        type.validate_request_body = params[:validate_request_body]
        type.validate_request_parameters = params[:validate_request_parameters]
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.id = params[:id]
        type.parent_id = params[:parent_id]
        type.path_part = params[:path_part]
        type.path = params[:path]
        type.resource_methods = MapOfMethod.build(params[:resource_methods], context: "#{context}[:resource_methods]") unless params[:resource_methods].nil?
        type
      end
    end

    module RestApi
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestApi, context: context)
        type = Types::RestApi.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module SdkConfigurationProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SdkConfigurationProperty, context: context)
        type = Types::SdkConfigurationProperty.new
        type.name = params[:name]
        type.friendly_name = params[:friendly_name]
        type.description = params[:description]
        type.required = params[:required]
        type.default_value = params[:default_value]
        type
      end
    end

    module SdkType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SdkType, context: context)
        type = Types::SdkType.new
        type.id = params[:id]
        type.friendly_name = params[:friendly_name]
        type.description = params[:description]
        type.configuration_properties = ListOfSdkConfigurationProperty.build(params[:configuration_properties], context: "#{context}[:configuration_properties]") unless params[:configuration_properties].nil?
        type
      end
    end

    module ServiceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceUnavailableException, context: context)
        type = Types::ServiceUnavailableException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module Stage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stage, context: context)
        type = Types::Stage.new
        type.deployment_id = params[:deployment_id]
        type.client_certificate_id = params[:client_certificate_id]
        type.stage_name = params[:stage_name]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.cache_cluster_status = params[:cache_cluster_status]
        type.method_settings = MapOfMethodSettings.build(params[:method_settings], context: "#{context}[:method_settings]") unless params[:method_settings].nil?
        type.variables = MapOfStringToString.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.documentation_version = params[:documentation_version]
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.canary_settings = CanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type.web_acl_arn = params[:web_acl_arn]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type
      end
    end

    module StageKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StageKey, context: context)
        type = Types::StageKey.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TestInvokeAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestInvokeAuthorizerInput, context: context)
        type = Types::TestInvokeAuthorizerInput.new
        type.rest_api_id = params[:rest_api_id]
        type.authorizer_id = params[:authorizer_id]
        type.headers = MapOfStringToString.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.multi_value_headers = MapOfStringToList.build(params[:multi_value_headers], context: "#{context}[:multi_value_headers]") unless params[:multi_value_headers].nil?
        type.path_with_query_string = params[:path_with_query_string]
        type.body = params[:body]
        type.stage_variables = MapOfStringToString.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.additional_context = MapOfStringToString.build(params[:additional_context], context: "#{context}[:additional_context]") unless params[:additional_context].nil?
        type
      end
    end

    module TestInvokeAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestInvokeAuthorizerOutput, context: context)
        type = Types::TestInvokeAuthorizerOutput.new
        type.client_status = params[:client_status]
        type.log = params[:log]
        type.latency = params[:latency]
        type.principal_id = params[:principal_id]
        type.policy = params[:policy]
        type.authorization = MapOfStringToList.build(params[:authorization], context: "#{context}[:authorization]") unless params[:authorization].nil?
        type.claims = MapOfStringToString.build(params[:claims], context: "#{context}[:claims]") unless params[:claims].nil?
        type
      end
    end

    module TestInvokeMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestInvokeMethodInput, context: context)
        type = Types::TestInvokeMethodInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.path_with_query_string = params[:path_with_query_string]
        type.body = params[:body]
        type.headers = MapOfStringToString.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.multi_value_headers = MapOfStringToList.build(params[:multi_value_headers], context: "#{context}[:multi_value_headers]") unless params[:multi_value_headers].nil?
        type.client_certificate_id = params[:client_certificate_id]
        type.stage_variables = MapOfStringToString.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type
      end
    end

    module TestInvokeMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestInvokeMethodOutput, context: context)
        type = Types::TestInvokeMethodOutput.new
        type.status = params[:status]
        type.body = params[:body]
        type.headers = MapOfStringToString.build(params[:headers], context: "#{context}[:headers]") unless params[:headers].nil?
        type.multi_value_headers = MapOfStringToList.build(params[:multi_value_headers], context: "#{context}[:multi_value_headers]") unless params[:multi_value_headers].nil?
        type.log = params[:log]
        type.latency = params[:latency]
        type
      end
    end

    module ThrottleSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottleSettings, context: context)
        type = Types::ThrottleSettings.new
        type.burst_limit = params[:burst_limit]
        type.rate_limit = params[:rate_limit]
        type
      end
    end

    module TlsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsConfig, context: context)
        type = Types::TlsConfig.new
        type.insecure_skip_verification = params[:insecure_skip_verification]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.retry_after_seconds = params[:retry_after_seconds]
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = ListOfString.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountInput, context: context)
        type = Types::UpdateAccountInput.new
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAccountOutput, context: context)
        type = Types::UpdateAccountOutput.new
        type.cloudwatch_role_arn = params[:cloudwatch_role_arn]
        type.throttle_settings = ThrottleSettings.build(params[:throttle_settings], context: "#{context}[:throttle_settings]") unless params[:throttle_settings].nil?
        type.features = ListOfString.build(params[:features], context: "#{context}[:features]") unless params[:features].nil?
        type.api_key_version = params[:api_key_version]
        type
      end
    end

    module UpdateApiKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiKeyInput, context: context)
        type = Types::UpdateApiKeyInput.new
        type.api_key = params[:api_key]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateApiKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiKeyOutput, context: context)
        type = Types::UpdateApiKeyOutput.new
        type.id = params[:id]
        type.value = params[:value]
        type.name = params[:name]
        type.customer_id = params[:customer_id]
        type.description = params[:description]
        type.enabled = params[:enabled]
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type.stage_keys = ListOfString.build(params[:stage_keys], context: "#{context}[:stage_keys]") unless params[:stage_keys].nil?
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthorizerInput, context: context)
        type = Types::UpdateAuthorizerInput.new
        type.rest_api_id = params[:rest_api_id]
        type.authorizer_id = params[:authorizer_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthorizerOutput, context: context)
        type = Types::UpdateAuthorizerOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.type = params[:type]
        type.provider_ar_ns = ListOfARNs.build(params[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless params[:provider_ar_ns].nil?
        type.auth_type = params[:auth_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.authorizer_credentials = params[:authorizer_credentials]
        type.identity_source = params[:identity_source]
        type.identity_validation_expression = params[:identity_validation_expression]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type
      end
    end

    module UpdateBasePathMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBasePathMappingInput, context: context)
        type = Types::UpdateBasePathMappingInput.new
        type.domain_name = params[:domain_name]
        type.base_path = params[:base_path]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateBasePathMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBasePathMappingOutput, context: context)
        type = Types::UpdateBasePathMappingOutput.new
        type.base_path = params[:base_path]
        type.rest_api_id = params[:rest_api_id]
        type.stage = params[:stage]
        type
      end
    end

    module UpdateClientCertificateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClientCertificateInput, context: context)
        type = Types::UpdateClientCertificateInput.new
        type.client_certificate_id = params[:client_certificate_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateClientCertificateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClientCertificateOutput, context: context)
        type = Types::UpdateClientCertificateOutput.new
        type.client_certificate_id = params[:client_certificate_id]
        type.description = params[:description]
        type.pem_encoded_certificate = params[:pem_encoded_certificate]
        type.created_date = params[:created_date]
        type.expiration_date = params[:expiration_date]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentInput, context: context)
        type = Types::UpdateDeploymentInput.new
        type.rest_api_id = params[:rest_api_id]
        type.deployment_id = params[:deployment_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentOutput, context: context)
        type = Types::UpdateDeploymentOutput.new
        type.id = params[:id]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.api_summary = PathToMapOfMethodSnapshot.build(params[:api_summary], context: "#{context}[:api_summary]") unless params[:api_summary].nil?
        type
      end
    end

    module UpdateDocumentationPartInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentationPartInput, context: context)
        type = Types::UpdateDocumentationPartInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_part_id = params[:documentation_part_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateDocumentationPartOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentationPartOutput, context: context)
        type = Types::UpdateDocumentationPartOutput.new
        type.id = params[:id]
        type.location = DocumentationPartLocation.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.properties = params[:properties]
        type
      end
    end

    module UpdateDocumentationVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentationVersionInput, context: context)
        type = Types::UpdateDocumentationVersionInput.new
        type.rest_api_id = params[:rest_api_id]
        type.documentation_version = params[:documentation_version]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateDocumentationVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDocumentationVersionOutput, context: context)
        type = Types::UpdateDocumentationVersionOutput.new
        type.version = params[:version]
        type.created_date = params[:created_date]
        type.description = params[:description]
        type
      end
    end

    module UpdateDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameInput, context: context)
        type = Types::UpdateDomainNameInput.new
        type.domain_name = params[:domain_name]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameOutput, context: context)
        type = Types::UpdateDomainNameOutput.new
        type.domain_name = params[:domain_name]
        type.certificate_name = params[:certificate_name]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_upload_date = params[:certificate_upload_date]
        type.regional_domain_name = params[:regional_domain_name]
        type.regional_hosted_zone_id = params[:regional_hosted_zone_id]
        type.regional_certificate_name = params[:regional_certificate_name]
        type.regional_certificate_arn = params[:regional_certificate_arn]
        type.distribution_domain_name = params[:distribution_domain_name]
        type.distribution_hosted_zone_id = params[:distribution_hosted_zone_id]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.domain_name_status = params[:domain_name_status]
        type.domain_name_status_message = params[:domain_name_status_message]
        type.security_policy = params[:security_policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.ownership_verification_certificate_arn = params[:ownership_verification_certificate_arn]
        type
      end
    end

    module UpdateGatewayResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayResponseInput, context: context)
        type = Types::UpdateGatewayResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.response_type = params[:response_type]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateGatewayResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGatewayResponseOutput, context: context)
        type = Types::UpdateGatewayResponseOutput.new
        type.response_type = params[:response_type]
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.default_response = params[:default_response]
        type
      end
    end

    module UpdateIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationInput, context: context)
        type = Types::UpdateIntegrationInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationOutput, context: context)
        type = Types::UpdateIntegrationOutput.new
        type.type = params[:type]
        type.http_method = params[:http_method]
        type.uri = params[:uri]
        type.connection_type = params[:connection_type]
        type.connection_id = params[:connection_id]
        type.credentials = params[:credentials]
        type.request_parameters = MapOfStringToString.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = MapOfStringToString.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.passthrough_behavior = params[:passthrough_behavior]
        type.content_handling = params[:content_handling]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.cache_namespace = params[:cache_namespace]
        type.cache_key_parameters = ListOfString.build(params[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless params[:cache_key_parameters].nil?
        type.integration_responses = MapOfIntegrationResponse.build(params[:integration_responses], context: "#{context}[:integration_responses]") unless params[:integration_responses].nil?
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module UpdateIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationResponseInput, context: context)
        type = Types::UpdateIntegrationResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationResponseOutput, context: context)
        type = Types::UpdateIntegrationResponseOutput.new
        type.status_code = params[:status_code]
        type.selection_pattern = params[:selection_pattern]
        type.response_parameters = MapOfStringToString.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = MapOfStringToString.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.content_handling = params[:content_handling]
        type
      end
    end

    module UpdateMethodInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMethodInput, context: context)
        type = Types::UpdateMethodInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateMethodOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMethodOutput, context: context)
        type = Types::UpdateMethodOutput.new
        type.http_method = params[:http_method]
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.api_key_required = params[:api_key_required]
        type.request_validator_id = params[:request_validator_id]
        type.operation_name = params[:operation_name]
        type.request_parameters = MapOfStringToBoolean.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_models = MapOfStringToString.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.method_responses = MapOfMethodResponse.build(params[:method_responses], context: "#{context}[:method_responses]") unless params[:method_responses].nil?
        type.method_integration = Integration.build(params[:method_integration], context: "#{context}[:method_integration]") unless params[:method_integration].nil?
        type.authorization_scopes = ListOfString.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type
      end
    end

    module UpdateMethodResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMethodResponseInput, context: context)
        type = Types::UpdateMethodResponseInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.http_method = params[:http_method]
        type.status_code = params[:status_code]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateMethodResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMethodResponseOutput, context: context)
        type = Types::UpdateMethodResponseOutput.new
        type.status_code = params[:status_code]
        type.response_parameters = MapOfStringToBoolean.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_models = MapOfStringToString.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type
      end
    end

    module UpdateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelInput, context: context)
        type = Types::UpdateModelInput.new
        type.rest_api_id = params[:rest_api_id]
        type.model_name = params[:model_name]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelOutput, context: context)
        type = Types::UpdateModelOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.schema = params[:schema]
        type.content_type = params[:content_type]
        type
      end
    end

    module UpdateRequestValidatorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRequestValidatorInput, context: context)
        type = Types::UpdateRequestValidatorInput.new
        type.rest_api_id = params[:rest_api_id]
        type.request_validator_id = params[:request_validator_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateRequestValidatorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRequestValidatorOutput, context: context)
        type = Types::UpdateRequestValidatorOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.validate_request_body = params[:validate_request_body]
        type.validate_request_parameters = params[:validate_request_parameters]
        type
      end
    end

    module UpdateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceInput, context: context)
        type = Types::UpdateResourceInput.new
        type.rest_api_id = params[:rest_api_id]
        type.resource_id = params[:resource_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceOutput, context: context)
        type = Types::UpdateResourceOutput.new
        type.id = params[:id]
        type.parent_id = params[:parent_id]
        type.path_part = params[:path_part]
        type.path = params[:path]
        type.resource_methods = MapOfMethod.build(params[:resource_methods], context: "#{context}[:resource_methods]") unless params[:resource_methods].nil?
        type
      end
    end

    module UpdateRestApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRestApiInput, context: context)
        type = Types::UpdateRestApiInput.new
        type.rest_api_id = params[:rest_api_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateRestApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRestApiOutput, context: context)
        type = Types::UpdateRestApiOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_date = params[:created_date]
        type.version = params[:version]
        type.warnings = ListOfString.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.binary_media_types = ListOfString.build(params[:binary_media_types], context: "#{context}[:binary_media_types]") unless params[:binary_media_types].nil?
        type.minimum_compression_size = params[:minimum_compression_size]
        type.api_key_source = params[:api_key_source]
        type.endpoint_configuration = EndpointConfiguration.build(params[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless params[:endpoint_configuration].nil?
        type.policy = params[:policy]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type
      end
    end

    module UpdateStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStageInput, context: context)
        type = Types::UpdateStageInput.new
        type.rest_api_id = params[:rest_api_id]
        type.stage_name = params[:stage_name]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStageOutput, context: context)
        type = Types::UpdateStageOutput.new
        type.deployment_id = params[:deployment_id]
        type.client_certificate_id = params[:client_certificate_id]
        type.stage_name = params[:stage_name]
        type.description = params[:description]
        type.cache_cluster_enabled = params[:cache_cluster_enabled]
        type.cache_cluster_size = params[:cache_cluster_size]
        type.cache_cluster_status = params[:cache_cluster_status]
        type.method_settings = MapOfMethodSettings.build(params[:method_settings], context: "#{context}[:method_settings]") unless params[:method_settings].nil?
        type.variables = MapOfStringToString.build(params[:variables], context: "#{context}[:variables]") unless params[:variables].nil?
        type.documentation_version = params[:documentation_version]
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.canary_settings = CanarySettings.build(params[:canary_settings], context: "#{context}[:canary_settings]") unless params[:canary_settings].nil?
        type.tracing_enabled = params[:tracing_enabled]
        type.web_acl_arn = params[:web_acl_arn]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.created_date = params[:created_date]
        type.last_updated_date = params[:last_updated_date]
        type
      end
    end

    module UpdateUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUsageInput, context: context)
        type = Types::UpdateUsageInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.key_id = params[:key_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUsageOutput, context: context)
        type = Types::UpdateUsageOutput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.items = MapOfKeyUsages.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.position = params[:position]
        type
      end
    end

    module UpdateUsagePlanInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUsagePlanInput, context: context)
        type = Types::UpdateUsagePlanInput.new
        type.usage_plan_id = params[:usage_plan_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateUsagePlanOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateUsagePlanOutput, context: context)
        type = Types::UpdateUsagePlanOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.api_stages = ListOfApiStage.build(params[:api_stages], context: "#{context}[:api_stages]") unless params[:api_stages].nil?
        type.throttle = ThrottleSettings.build(params[:throttle], context: "#{context}[:throttle]") unless params[:throttle].nil?
        type.quota = QuotaSettings.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type.product_code = params[:product_code]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateVpcLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVpcLinkInput, context: context)
        type = Types::UpdateVpcLinkInput.new
        type.vpc_link_id = params[:vpc_link_id]
        type.patch_operations = ListOfPatchOperation.build(params[:patch_operations], context: "#{context}[:patch_operations]") unless params[:patch_operations].nil?
        type
      end
    end

    module UpdateVpcLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVpcLinkOutput, context: context)
        type = Types::UpdateVpcLinkOutput.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.target_arns = ListOfString.build(params[:target_arns], context: "#{context}[:target_arns]") unless params[:target_arns].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UsagePlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsagePlan, context: context)
        type = Types::UsagePlan.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.api_stages = ListOfApiStage.build(params[:api_stages], context: "#{context}[:api_stages]") unless params[:api_stages].nil?
        type.throttle = ThrottleSettings.build(params[:throttle], context: "#{context}[:throttle]") unless params[:throttle].nil?
        type.quota = QuotaSettings.build(params[:quota], context: "#{context}[:quota]") unless params[:quota].nil?
        type.product_code = params[:product_code]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UsagePlanKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UsagePlanKey, context: context)
        type = Types::UsagePlanKey.new
        type.id = params[:id]
        type.type = params[:type]
        type.value = params[:value]
        type.name = params[:name]
        type
      end
    end

    module VpcLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcLink, context: context)
        type = Types::VpcLink.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.target_arns = ListOfString.build(params[:target_arns], context: "#{context}[:target_arns]") unless params[:target_arns].nil?
        type.status = params[:status]
        type.status_message = params[:status_message]
        type.tags = MapOfStringToString.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

  end
end
