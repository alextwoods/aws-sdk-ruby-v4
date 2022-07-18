# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::APIGateway
  module Validators

    class AccessLogSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessLogSettings, context: context)
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
      end
    end

    class ApiKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiKey, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:customer_id], ::String, context: "#{context}[:customer_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        ListOfString.validate!(input[:stage_keys], context: "#{context}[:stage_keys]") unless input[:stage_keys].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ApiStage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiStage, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        MapOfApiStageThrottleSettings.validate!(input[:throttle], context: "#{context}[:throttle]") unless input[:throttle].nil?
      end
    end

    class Authorizer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Authorizer, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ListOfARNs.validate!(input[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless input[:provider_ar_ns].nil?
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:authorizer_credentials], ::String, context: "#{context}[:authorizer_credentials]")
        Hearth::Validator.validate!(input[:identity_source], ::String, context: "#{context}[:identity_source]")
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BasePathMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BasePathMapping, context: context)
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class CanarySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CanarySettings, context: context)
        Hearth::Validator.validate!(input[:percent_traffic], ::Float, context: "#{context}[:percent_traffic]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        MapOfStringToString.validate!(input[:stage_variable_overrides], context: "#{context}[:stage_variable_overrides]") unless input[:stage_variable_overrides].nil?
        Hearth::Validator.validate!(input[:use_stage_cache], ::TrueClass, ::FalseClass, context: "#{context}[:use_stage_cache]")
      end
    end

    class ClientCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientCertificate, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pem_encoded_certificate], ::String, context: "#{context}[:pem_encoded_certificate]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:generate_distinct_id], ::TrueClass, ::FalseClass, context: "#{context}[:generate_distinct_id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        ListOfStageKeys.validate!(input[:stage_keys], context: "#{context}[:stage_keys]") unless input[:stage_keys].nil?
        Hearth::Validator.validate!(input[:customer_id], ::String, context: "#{context}[:customer_id]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiKeyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:customer_id], ::String, context: "#{context}[:customer_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        ListOfString.validate!(input[:stage_keys], context: "#{context}[:stage_keys]") unless input[:stage_keys].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ListOfARNs.validate!(input[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless input[:provider_ar_ns].nil?
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:authorizer_credentials], ::String, context: "#{context}[:authorizer_credentials]")
        Hearth::Validator.validate!(input[:identity_source], ::String, context: "#{context}[:identity_source]")
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
      end
    end

    class CreateAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ListOfARNs.validate!(input[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless input[:provider_ar_ns].nil?
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:authorizer_credentials], ::String, context: "#{context}[:authorizer_credentials]")
        Hearth::Validator.validate!(input[:identity_source], ::String, context: "#{context}[:identity_source]")
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
      end
    end

    class CreateBasePathMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBasePathMappingInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class CreateBasePathMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBasePathMappingOutput, context: context)
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:stage_description], ::String, context: "#{context}[:stage_description]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        MapOfStringToString.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        DeploymentCanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        PathToMapOfMethodSnapshot.validate!(input[:api_summary], context: "#{context}[:api_summary]") unless input[:api_summary].nil?
      end
    end

    class CreateDocumentationPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentationPartInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        DocumentationPartLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class CreateDocumentationPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentationPartOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        DocumentationPartLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class CreateDocumentationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentationVersionInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateDocumentationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDocumentationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_body], ::String, context: "#{context}[:certificate_body]")
        Hearth::Validator.validate!(input[:certificate_private_key], ::String, context: "#{context}[:certificate_private_key]")
        Hearth::Validator.validate!(input[:certificate_chain], ::String, context: "#{context}[:certificate_chain]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:regional_certificate_name], ::String, context: "#{context}[:regional_certificate_name]")
        Hearth::Validator.validate!(input[:regional_certificate_arn], ::String, context: "#{context}[:regional_certificate_arn]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:security_policy], ::String, context: "#{context}[:security_policy]")
        MutualTlsAuthenticationInput.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Hearth::Validator.validate!(input[:ownership_verification_certificate_arn], ::String, context: "#{context}[:ownership_verification_certificate_arn]")
      end
    end

    class CreateDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainNameOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_upload_date], ::Time, context: "#{context}[:certificate_upload_date]")
        Hearth::Validator.validate!(input[:regional_domain_name], ::String, context: "#{context}[:regional_domain_name]")
        Hearth::Validator.validate!(input[:regional_hosted_zone_id], ::String, context: "#{context}[:regional_hosted_zone_id]")
        Hearth::Validator.validate!(input[:regional_certificate_name], ::String, context: "#{context}[:regional_certificate_name]")
        Hearth::Validator.validate!(input[:regional_certificate_arn], ::String, context: "#{context}[:regional_certificate_arn]")
        Hearth::Validator.validate!(input[:distribution_domain_name], ::String, context: "#{context}[:distribution_domain_name]")
        Hearth::Validator.validate!(input[:distribution_hosted_zone_id], ::String, context: "#{context}[:distribution_hosted_zone_id]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:domain_name_status], ::String, context: "#{context}[:domain_name_status]")
        Hearth::Validator.validate!(input[:domain_name_status_message], ::String, context: "#{context}[:domain_name_status_message]")
        Hearth::Validator.validate!(input[:security_policy], ::String, context: "#{context}[:security_policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Hearth::Validator.validate!(input[:ownership_verification_certificate_arn], ::String, context: "#{context}[:ownership_verification_certificate_arn]")
      end
    end

    class CreateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class CreateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class CreateRequestValidatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRequestValidatorInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:validate_request_body], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_body]")
        Hearth::Validator.validate!(input[:validate_request_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_parameters]")
      end
    end

    class CreateRequestValidatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRequestValidatorOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:validate_request_body], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_body]")
        Hearth::Validator.validate!(input[:validate_request_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_parameters]")
      end
    end

    class CreateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:path_part], ::String, context: "#{context}[:path_part]")
      end
    end

    class CreateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:path_part], ::String, context: "#{context}[:path_part]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        MapOfMethod.validate!(input[:resource_methods], context: "#{context}[:resource_methods]") unless input[:resource_methods].nil?
      end
    end

    class CreateRestApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRestApiInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:clone_from], ::String, context: "#{context}[:clone_from]")
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class CreateRestApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRestApiOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class CreateStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStageInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        MapOfStringToString.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        CanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStageOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        Hearth::Validator.validate!(input[:cache_cluster_status], ::String, context: "#{context}[:cache_cluster_status]")
        MapOfMethodSettings.validate!(input[:method_settings], context: "#{context}[:method_settings]") unless input[:method_settings].nil?
        MapOfStringToString.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        CanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
      end
    end

    class CreateUsagePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsagePlanInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfApiStage.validate!(input[:api_stages], context: "#{context}[:api_stages]") unless input[:api_stages].nil?
        ThrottleSettings.validate!(input[:throttle], context: "#{context}[:throttle]") unless input[:throttle].nil?
        QuotaSettings.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateUsagePlanKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsagePlanKeyInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:key_type], ::String, context: "#{context}[:key_type]")
      end
    end

    class CreateUsagePlanKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsagePlanKeyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateUsagePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUsagePlanOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfApiStage.validate!(input[:api_stages], context: "#{context}[:api_stages]") unless input[:api_stages].nil?
        ThrottleSettings.validate!(input[:throttle], context: "#{context}[:throttle]") unless input[:throttle].nil?
        QuotaSettings.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVpcLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcLinkInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfString.validate!(input[:target_arns], context: "#{context}[:target_arns]") unless input[:target_arns].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVpcLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcLinkOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfString.validate!(input[:target_arns], context: "#{context}[:target_arns]") unless input[:target_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DeleteApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
      end
    end

    class DeleteApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiKeyOutput, context: context)
      end
    end

    class DeleteAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
      end
    end

    class DeleteAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthorizerOutput, context: context)
      end
    end

    class DeleteBasePathMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBasePathMappingInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
      end
    end

    class DeleteBasePathMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBasePathMappingOutput, context: context)
      end
    end

    class DeleteClientCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClientCertificateInput, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
      end
    end

    class DeleteClientCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClientCertificateOutput, context: context)
      end
    end

    class DeleteDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class DeleteDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentOutput, context: context)
      end
    end

    class DeleteDocumentationPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentationPartInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_part_id], ::String, context: "#{context}[:documentation_part_id]")
      end
    end

    class DeleteDocumentationPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentationPartOutput, context: context)
      end
    end

    class DeleteDocumentationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentationVersionInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
      end
    end

    class DeleteDocumentationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDocumentationVersionOutput, context: context)
      end
    end

    class DeleteDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainNameOutput, context: context)
      end
    end

    class DeleteGatewayResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
      end
    end

    class DeleteGatewayResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGatewayResponseOutput, context: context)
      end
    end

    class DeleteIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
      end
    end

    class DeleteIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationOutput, context: context)
      end
    end

    class DeleteIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class DeleteIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationResponseOutput, context: context)
      end
    end

    class DeleteMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMethodInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
      end
    end

    class DeleteMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMethodOutput, context: context)
      end
    end

    class DeleteMethodResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMethodResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class DeleteMethodResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMethodResponseOutput, context: context)
      end
    end

    class DeleteModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class DeleteModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelOutput, context: context)
      end
    end

    class DeleteRequestValidatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRequestValidatorInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
      end
    end

    class DeleteRequestValidatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRequestValidatorOutput, context: context)
      end
    end

    class DeleteResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
      end
    end

    class DeleteResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceOutput, context: context)
      end
    end

    class DeleteRestApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRestApiInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
      end
    end

    class DeleteRestApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRestApiOutput, context: context)
      end
    end

    class DeleteStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStageInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class DeleteStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStageOutput, context: context)
      end
    end

    class DeleteUsagePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsagePlanInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
      end
    end

    class DeleteUsagePlanKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsagePlanKeyInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class DeleteUsagePlanKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsagePlanKeyOutput, context: context)
      end
    end

    class DeleteUsagePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteUsagePlanOutput, context: context)
      end
    end

    class DeleteVpcLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcLinkInput, context: context)
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
      end
    end

    class DeleteVpcLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcLinkOutput, context: context)
      end
    end

    class Deployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Deployment, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        PathToMapOfMethodSnapshot.validate!(input[:api_summary], context: "#{context}[:api_summary]") unless input[:api_summary].nil?
      end
    end

    class DeploymentCanarySettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeploymentCanarySettings, context: context)
        Hearth::Validator.validate!(input[:percent_traffic], ::Float, context: "#{context}[:percent_traffic]")
        MapOfStringToString.validate!(input[:stage_variable_overrides], context: "#{context}[:stage_variable_overrides]") unless input[:stage_variable_overrides].nil?
        Hearth::Validator.validate!(input[:use_stage_cache], ::TrueClass, ::FalseClass, context: "#{context}[:use_stage_cache]")
      end
    end

    class DocumentationPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentationPart, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        DocumentationPartLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class DocumentationPartLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentationPartLocation, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:member_method], ::String, context: "#{context}[:member_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DocumentationVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentationVersion, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class DomainName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainName, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_upload_date], ::Time, context: "#{context}[:certificate_upload_date]")
        Hearth::Validator.validate!(input[:regional_domain_name], ::String, context: "#{context}[:regional_domain_name]")
        Hearth::Validator.validate!(input[:regional_hosted_zone_id], ::String, context: "#{context}[:regional_hosted_zone_id]")
        Hearth::Validator.validate!(input[:regional_certificate_name], ::String, context: "#{context}[:regional_certificate_name]")
        Hearth::Validator.validate!(input[:regional_certificate_arn], ::String, context: "#{context}[:regional_certificate_arn]")
        Hearth::Validator.validate!(input[:distribution_domain_name], ::String, context: "#{context}[:distribution_domain_name]")
        Hearth::Validator.validate!(input[:distribution_hosted_zone_id], ::String, context: "#{context}[:distribution_hosted_zone_id]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:domain_name_status], ::String, context: "#{context}[:domain_name_status]")
        Hearth::Validator.validate!(input[:domain_name_status_message], ::String, context: "#{context}[:domain_name_status_message]")
        Hearth::Validator.validate!(input[:security_policy], ::String, context: "#{context}[:security_policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Hearth::Validator.validate!(input[:ownership_verification_certificate_arn], ::String, context: "#{context}[:ownership_verification_certificate_arn]")
      end
    end

    class EndpointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EndpointConfiguration, context: context)
        ListOfEndpointType.validate!(input[:types], context: "#{context}[:types]") unless input[:types].nil?
        ListOfString.validate!(input[:vpc_endpoint_ids], context: "#{context}[:vpc_endpoint_ids]") unless input[:vpc_endpoint_ids].nil?
      end
    end

    class FlushStageAuthorizersCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlushStageAuthorizersCacheInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class FlushStageAuthorizersCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlushStageAuthorizersCacheOutput, context: context)
      end
    end

    class FlushStageCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlushStageCacheInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class FlushStageCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlushStageCacheOutput, context: context)
      end
    end

    class GatewayResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GatewayResponse, context: context)
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:default_response], ::TrueClass, ::FalseClass, context: "#{context}[:default_response]")
      end
    end

    class GenerateClientCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateClientCertificateInput, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GenerateClientCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GenerateClientCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pem_encoded_certificate], ::String, context: "#{context}[:pem_encoded_certificate]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountInput, context: context)
      end
    end

    class GetAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAccountOutput, context: context)
        Hearth::Validator.validate!(input[:cloudwatch_role_arn], ::String, context: "#{context}[:cloudwatch_role_arn]")
        ThrottleSettings.validate!(input[:throttle_settings], context: "#{context}[:throttle_settings]") unless input[:throttle_settings].nil?
        ListOfString.validate!(input[:features], context: "#{context}[:features]") unless input[:features].nil?
        Hearth::Validator.validate!(input[:api_key_version], ::String, context: "#{context}[:api_key_version]")
      end
    end

    class GetApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:include_value], ::TrueClass, ::FalseClass, context: "#{context}[:include_value]")
      end
    end

    class GetApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiKeyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:customer_id], ::String, context: "#{context}[:customer_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        ListOfString.validate!(input[:stage_keys], context: "#{context}[:stage_keys]") unless input[:stage_keys].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetApiKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiKeysInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:name_query], ::String, context: "#{context}[:name_query]")
        Hearth::Validator.validate!(input[:customer_id], ::String, context: "#{context}[:customer_id]")
        Hearth::Validator.validate!(input[:include_values], ::TrueClass, ::FalseClass, context: "#{context}[:include_values]")
      end
    end

    class GetApiKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiKeysOutput, context: context)
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfApiKey.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
      end
    end

    class GetAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ListOfARNs.validate!(input[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless input[:provider_ar_ns].nil?
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:authorizer_credentials], ::String, context: "#{context}[:authorizer_credentials]")
        Hearth::Validator.validate!(input[:identity_source], ::String, context: "#{context}[:identity_source]")
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
      end
    end

    class GetAuthorizersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizersInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetAuthorizersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizersOutput, context: context)
        ListOfAuthorizer.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetBasePathMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBasePathMappingInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
      end
    end

    class GetBasePathMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBasePathMappingOutput, context: context)
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class GetBasePathMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBasePathMappingsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetBasePathMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBasePathMappingsOutput, context: context)
        ListOfBasePathMapping.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetClientCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClientCertificateInput, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
      end
    end

    class GetClientCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClientCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pem_encoded_certificate], ::String, context: "#{context}[:pem_encoded_certificate]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetClientCertificatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClientCertificatesInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetClientCertificatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetClientCertificatesOutput, context: context)
        ListOfClientCertificate.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        ListOfString.validate!(input[:embed], context: "#{context}[:embed]") unless input[:embed].nil?
      end
    end

    class GetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        PathToMapOfMethodSnapshot.validate!(input[:api_summary], context: "#{context}[:api_summary]") unless input[:api_summary].nil?
      end
    end

    class GetDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentsOutput, context: context)
        ListOfDeployment.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetDocumentationPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationPartInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_part_id], ::String, context: "#{context}[:documentation_part_id]")
      end
    end

    class GetDocumentationPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationPartOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        DocumentationPartLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class GetDocumentationPartsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationPartsInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:name_query], ::String, context: "#{context}[:name_query]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:location_status], ::String, context: "#{context}[:location_status]")
      end
    end

    class GetDocumentationPartsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationPartsOutput, context: context)
        ListOfDocumentationPart.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetDocumentationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationVersionInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
      end
    end

    class GetDocumentationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GetDocumentationVersionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationVersionsInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetDocumentationVersionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDocumentationVersionsOutput, context: context)
        ListOfDocumentationVersion.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNameOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_upload_date], ::Time, context: "#{context}[:certificate_upload_date]")
        Hearth::Validator.validate!(input[:regional_domain_name], ::String, context: "#{context}[:regional_domain_name]")
        Hearth::Validator.validate!(input[:regional_hosted_zone_id], ::String, context: "#{context}[:regional_hosted_zone_id]")
        Hearth::Validator.validate!(input[:regional_certificate_name], ::String, context: "#{context}[:regional_certificate_name]")
        Hearth::Validator.validate!(input[:regional_certificate_arn], ::String, context: "#{context}[:regional_certificate_arn]")
        Hearth::Validator.validate!(input[:distribution_domain_name], ::String, context: "#{context}[:distribution_domain_name]")
        Hearth::Validator.validate!(input[:distribution_hosted_zone_id], ::String, context: "#{context}[:distribution_hosted_zone_id]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:domain_name_status], ::String, context: "#{context}[:domain_name_status]")
        Hearth::Validator.validate!(input[:domain_name_status_message], ::String, context: "#{context}[:domain_name_status_message]")
        Hearth::Validator.validate!(input[:security_policy], ::String, context: "#{context}[:security_policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Hearth::Validator.validate!(input[:ownership_verification_certificate_arn], ::String, context: "#{context}[:ownership_verification_certificate_arn]")
      end
    end

    class GetDomainNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNamesInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetDomainNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNamesOutput, context: context)
        ListOfDomainName.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetExportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:export_type], ::String, context: "#{context}[:export_type]")
        MapOfStringToString.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:accepts], ::String, context: "#{context}[:accepts]")
      end
    end

    class GetExportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetExportOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class GetGatewayResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
      end
    end

    class GetGatewayResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayResponseOutput, context: context)
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:default_response], ::TrueClass, ::FalseClass, context: "#{context}[:default_response]")
      end
    end

    class GetGatewayResponsesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayResponsesInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetGatewayResponsesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGatewayResponsesOutput, context: context)
        ListOfGatewayResponse.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
      end
    end

    class GetIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
        MapOfStringToString.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        Hearth::Validator.validate!(input[:cache_namespace], ::String, context: "#{context}[:cache_namespace]")
        ListOfString.validate!(input[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless input[:cache_key_parameters].nil?
        MapOfIntegrationResponse.validate!(input[:integration_responses], context: "#{context}[:integration_responses]") unless input[:integration_responses].nil?
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class GetIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class GetIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationResponseOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:selection_pattern], ::String, context: "#{context}[:selection_pattern]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
      end
    end

    class GetMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMethodInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
      end
    end

    class GetMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMethodOutput, context: context)
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        MapOfStringToBoolean.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        MapOfMethodResponse.validate!(input[:method_responses], context: "#{context}[:method_responses]") unless input[:method_responses].nil?
        Integration.validate!(input[:method_integration], context: "#{context}[:method_integration]") unless input[:method_integration].nil?
        ListOfString.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
      end
    end

    class GetMethodResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMethodResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
      end
    end

    class GetMethodResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMethodResponseOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToBoolean.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
      end
    end

    class GetModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        Hearth::Validator.validate!(input[:flatten], ::TrueClass, ::FalseClass, context: "#{context}[:flatten]")
      end
    end

    class GetModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class GetModelTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelTemplateInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
      end
    end

    class GetModelTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class GetModelsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelsInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelsOutput, context: context)
        ListOfModel.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetRequestValidatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRequestValidatorInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
      end
    end

    class GetRequestValidatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRequestValidatorOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:validate_request_body], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_body]")
        Hearth::Validator.validate!(input[:validate_request_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_parameters]")
      end
    end

    class GetRequestValidatorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRequestValidatorsInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetRequestValidatorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRequestValidatorsOutput, context: context)
        ListOfRequestValidator.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        ListOfString.validate!(input[:embed], context: "#{context}[:embed]") unless input[:embed].nil?
      end
    end

    class GetResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:path_part], ::String, context: "#{context}[:path_part]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        MapOfMethod.validate!(input[:resource_methods], context: "#{context}[:resource_methods]") unless input[:resource_methods].nil?
      end
    end

    class GetResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcesInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        ListOfString.validate!(input[:embed], context: "#{context}[:embed]") unless input[:embed].nil?
      end
    end

    class GetResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourcesOutput, context: context)
        ListOfResource.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetRestApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRestApiInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
      end
    end

    class GetRestApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRestApiOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class GetRestApisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRestApisInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetRestApisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRestApisOutput, context: context)
        ListOfRestApi.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetSdkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSdkInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:sdk_type], ::String, context: "#{context}[:sdk_type]")
        MapOfStringToString.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
      end
    end

    class GetSdkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSdkOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content_disposition], ::String, context: "#{context}[:content_disposition]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class GetSdkTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSdkTypeInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class GetSdkTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSdkTypeOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:friendly_name], ::String, context: "#{context}[:friendly_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfSdkConfigurationProperty.validate!(input[:configuration_properties], context: "#{context}[:configuration_properties]") unless input[:configuration_properties].nil?
      end
    end

    class GetSdkTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSdkTypesInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetSdkTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSdkTypesOutput, context: context)
        ListOfSdkType.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
      end
    end

    class GetStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class GetStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        Hearth::Validator.validate!(input[:cache_cluster_status], ::String, context: "#{context}[:cache_cluster_status]")
        MapOfMethodSettings.validate!(input[:method_settings], context: "#{context}[:method_settings]") unless input[:method_settings].nil?
        MapOfStringToString.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        CanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
      end
    end

    class GetStagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStagesInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class GetStagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStagesOutput, context: context)
        ListOfStage.validate!(input[:item], context: "#{context}[:item]") unless input[:item].nil?
      end
    end

    class GetTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsOutput, context: context)
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsageOutput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        MapOfKeyUsages.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetUsagePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlanInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
      end
    end

    class GetUsagePlanKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlanKeyInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
      end
    end

    class GetUsagePlanKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlanKeyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetUsagePlanKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlanKeysInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:name_query], ::String, context: "#{context}[:name_query]")
      end
    end

    class GetUsagePlanKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlanKeysOutput, context: context)
        ListOfUsagePlanKey.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetUsagePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlanOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfApiStage.validate!(input[:api_stages], context: "#{context}[:api_stages]") unless input[:api_stages].nil?
        ThrottleSettings.validate!(input[:throttle], context: "#{context}[:throttle]") unless input[:throttle].nil?
        QuotaSettings.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetUsagePlansInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlansInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetUsagePlansOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetUsagePlansOutput, context: context)
        ListOfUsagePlan.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class GetVpcLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcLinkInput, context: context)
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
      end
    end

    class GetVpcLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcLinkOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfString.validate!(input[:target_arns], context: "#{context}[:target_arns]") unless input[:target_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetVpcLinksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcLinksInput, context: context)
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
      end
    end

    class GetVpcLinksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcLinksOutput, context: context)
        ListOfVpcLink.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class ImportApiKeysInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportApiKeysInput, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
        Hearth::Validator.validate!(input[:fail_on_warnings], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_warnings]")
      end
    end

    class ImportApiKeysOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportApiKeysOutput, context: context)
        ListOfString.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class ImportDocumentationPartsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportDocumentationPartsInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:fail_on_warnings], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_warnings]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class ImportDocumentationPartsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportDocumentationPartsOutput, context: context)
        ListOfString.validate!(input[:ids], context: "#{context}[:ids]") unless input[:ids].nil?
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class ImportRestApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportRestApiInput, context: context)
        Hearth::Validator.validate!(input[:fail_on_warnings], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_warnings]")
        MapOfStringToString.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class ImportRestApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportRestApiOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class Integration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Integration, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
        MapOfStringToString.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        Hearth::Validator.validate!(input[:cache_namespace], ::String, context: "#{context}[:cache_namespace]")
        ListOfString.validate!(input[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless input[:cache_key_parameters].nil?
        MapOfIntegrationResponse.validate!(input[:integration_responses], context: "#{context}[:integration_responses]") unless input[:integration_responses].nil?
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class IntegrationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegrationResponse, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:selection_pattern], ::String, context: "#{context}[:selection_pattern]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListOfARNs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfApiKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApiKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfApiStage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApiStage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfAuthorizer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Authorizer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfBasePathMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          BasePathMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfClientCertificate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClientCertificate.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Deployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDocumentationPart
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentationPart.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDocumentationVersion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DocumentationVersion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfDomainName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainName.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfEndpointType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfGatewayResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GatewayResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfLong
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::Integer, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Model.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfPatchOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PatchOperation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRequestValidator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RequestValidator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfRestApi
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RestApi.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSdkConfigurationProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SdkConfigurationProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfSdkType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SdkType.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfStage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Stage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfStageKeys
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          StageKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ListOfUsage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListOfLong.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfUsagePlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsagePlan.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfUsagePlanKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          UsagePlanKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListOfVpcLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VpcLink.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MapOfApiStageThrottleSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ThrottleSettings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfIntegrationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          IntegrationResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfKeyUsages
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ListOfUsage.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMethod
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Method.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMethodResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MethodResponse.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMethodSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MethodSetting.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfMethodSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MethodSnapshot.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfStringToBoolean
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::TrueClass, ::FalseClass, context: "#{context}[:#{key}]")
        end
      end
    end

    class MapOfStringToList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ListOfString.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class MapOfStringToString
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Method
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Method, context: context)
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        MapOfStringToBoolean.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        MapOfMethodResponse.validate!(input[:method_responses], context: "#{context}[:method_responses]") unless input[:method_responses].nil?
        Integration.validate!(input[:method_integration], context: "#{context}[:method_integration]") unless input[:method_integration].nil?
        ListOfString.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
      end
    end

    class MethodResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MethodResponse, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToBoolean.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
      end
    end

    class MethodSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MethodSetting, context: context)
        Hearth::Validator.validate!(input[:metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:metrics_enabled]")
        Hearth::Validator.validate!(input[:logging_level], ::String, context: "#{context}[:logging_level]")
        Hearth::Validator.validate!(input[:data_trace_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:data_trace_enabled]")
        Hearth::Validator.validate!(input[:throttling_burst_limit], ::Integer, context: "#{context}[:throttling_burst_limit]")
        Hearth::Validator.validate!(input[:throttling_rate_limit], ::Float, context: "#{context}[:throttling_rate_limit]")
        Hearth::Validator.validate!(input[:caching_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:caching_enabled]")
        Hearth::Validator.validate!(input[:cache_ttl_in_seconds], ::Integer, context: "#{context}[:cache_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:cache_data_encrypted], ::TrueClass, ::FalseClass, context: "#{context}[:cache_data_encrypted]")
        Hearth::Validator.validate!(input[:require_authorization_for_cache_control], ::TrueClass, ::FalseClass, context: "#{context}[:require_authorization_for_cache_control]")
        Hearth::Validator.validate!(input[:unauthorized_cache_control_header_strategy], ::String, context: "#{context}[:unauthorized_cache_control_header_strategy]")
      end
    end

    class MethodSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MethodSnapshot, context: context)
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
      end
    end

    class Model
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Model, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class MutualTlsAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MutualTlsAuthentication, context: context)
        Hearth::Validator.validate!(input[:truststore_uri], ::String, context: "#{context}[:truststore_uri]")
        Hearth::Validator.validate!(input[:truststore_version], ::String, context: "#{context}[:truststore_version]")
        ListOfString.validate!(input[:truststore_warnings], context: "#{context}[:truststore_warnings]") unless input[:truststore_warnings].nil?
      end
    end

    class MutualTlsAuthenticationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MutualTlsAuthenticationInput, context: context)
        Hearth::Validator.validate!(input[:truststore_uri], ::String, context: "#{context}[:truststore_uri]")
        Hearth::Validator.validate!(input[:truststore_version], ::String, context: "#{context}[:truststore_version]")
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PatchOperation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PatchOperation, context: context)
        Hearth::Validator.validate!(input[:op], ::String, context: "#{context}[:op]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:from], ::String, context: "#{context}[:from]")
      end
    end

    class PathToMapOfMethodSnapshot
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          MapOfMethodSnapshot.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PutGatewayResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGatewayResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
      end
    end

    class PutGatewayResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutGatewayResponseOutput, context: context)
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:default_response], ::TrueClass, ::FalseClass, context: "#{context}[:default_response]")
      end
    end

    class PutIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:integration_http_method], ::String, context: "#{context}[:integration_http_method]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
        MapOfStringToString.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:cache_namespace], ::String, context: "#{context}[:cache_namespace]")
        ListOfString.validate!(input[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless input[:cache_key_parameters].nil?
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class PutIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
        MapOfStringToString.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        Hearth::Validator.validate!(input[:cache_namespace], ::String, context: "#{context}[:cache_namespace]")
        ListOfString.validate!(input[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless input[:cache_key_parameters].nil?
        MapOfIntegrationResponse.validate!(input[:integration_responses], context: "#{context}[:integration_responses]") unless input[:integration_responses].nil?
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class PutIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:selection_pattern], ::String, context: "#{context}[:selection_pattern]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
      end
    end

    class PutIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntegrationResponseOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:selection_pattern], ::String, context: "#{context}[:selection_pattern]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
      end
    end

    class PutMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMethodInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        MapOfStringToBoolean.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
        ListOfString.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
      end
    end

    class PutMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMethodOutput, context: context)
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        MapOfStringToBoolean.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        MapOfMethodResponse.validate!(input[:method_responses], context: "#{context}[:method_responses]") unless input[:method_responses].nil?
        Integration.validate!(input[:method_integration], context: "#{context}[:method_integration]") unless input[:method_integration].nil?
        ListOfString.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
      end
    end

    class PutMethodResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMethodResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToBoolean.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
      end
    end

    class PutMethodResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutMethodResponseOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToBoolean.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
      end
    end

    class PutRestApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRestApiInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:fail_on_warnings], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_warnings]")
        MapOfStringToString.validate!(input[:parameters], context: "#{context}[:parameters]") unless input[:parameters].nil?
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class PutRestApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRestApiOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class QuotaSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuotaSettings, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:offset], ::Integer, context: "#{context}[:offset]")
        Hearth::Validator.validate!(input[:period], ::String, context: "#{context}[:period]")
      end
    end

    class RequestValidator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestValidator, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:validate_request_body], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_body]")
        Hearth::Validator.validate!(input[:validate_request_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_parameters]")
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:path_part], ::String, context: "#{context}[:path_part]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        MapOfMethod.validate!(input[:resource_methods], context: "#{context}[:resource_methods]") unless input[:resource_methods].nil?
      end
    end

    class RestApi
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestApi, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class SdkConfigurationProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SdkConfigurationProperty, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:friendly_name], ::String, context: "#{context}[:friendly_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:required], ::TrueClass, ::FalseClass, context: "#{context}[:required]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
      end
    end

    class SdkType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SdkType, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:friendly_name], ::String, context: "#{context}[:friendly_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfSdkConfigurationProperty.validate!(input[:configuration_properties], context: "#{context}[:configuration_properties]") unless input[:configuration_properties].nil?
      end
    end

    class ServiceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Stage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stage, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        Hearth::Validator.validate!(input[:cache_cluster_status], ::String, context: "#{context}[:cache_cluster_status]")
        MapOfMethodSettings.validate!(input[:method_settings], context: "#{context}[:method_settings]") unless input[:method_settings].nil?
        MapOfStringToString.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        CanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
      end
    end

    class StageKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StageKey, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TestInvokeAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestInvokeAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        MapOfStringToString.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        MapOfStringToList.validate!(input[:multi_value_headers], context: "#{context}[:multi_value_headers]") unless input[:multi_value_headers].nil?
        Hearth::Validator.validate!(input[:path_with_query_string], ::String, context: "#{context}[:path_with_query_string]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        MapOfStringToString.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        MapOfStringToString.validate!(input[:additional_context], context: "#{context}[:additional_context]") unless input[:additional_context].nil?
      end
    end

    class TestInvokeAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestInvokeAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:client_status], ::Integer, context: "#{context}[:client_status]")
        Hearth::Validator.validate!(input[:log], ::String, context: "#{context}[:log]")
        Hearth::Validator.validate!(input[:latency], ::Integer, context: "#{context}[:latency]")
        Hearth::Validator.validate!(input[:principal_id], ::String, context: "#{context}[:principal_id]")
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToList.validate!(input[:authorization], context: "#{context}[:authorization]") unless input[:authorization].nil?
        MapOfStringToString.validate!(input[:claims], context: "#{context}[:claims]") unless input[:claims].nil?
      end
    end

    class TestInvokeMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestInvokeMethodInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:path_with_query_string], ::String, context: "#{context}[:path_with_query_string]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        MapOfStringToString.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        MapOfStringToList.validate!(input[:multi_value_headers], context: "#{context}[:multi_value_headers]") unless input[:multi_value_headers].nil?
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        MapOfStringToString.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
      end
    end

    class TestInvokeMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestInvokeMethodOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::Integer, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        MapOfStringToString.validate!(input[:headers], context: "#{context}[:headers]") unless input[:headers].nil?
        MapOfStringToList.validate!(input[:multi_value_headers], context: "#{context}[:multi_value_headers]") unless input[:multi_value_headers].nil?
        Hearth::Validator.validate!(input[:log], ::String, context: "#{context}[:log]")
        Hearth::Validator.validate!(input[:latency], ::Integer, context: "#{context}[:latency]")
      end
    end

    class ThrottleSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottleSettings, context: context)
        Hearth::Validator.validate!(input[:burst_limit], ::Integer, context: "#{context}[:burst_limit]")
        Hearth::Validator.validate!(input[:rate_limit], ::Float, context: "#{context}[:rate_limit]")
      end
    end

    class TlsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsConfig, context: context)
        Hearth::Validator.validate!(input[:insecure_skip_verification], ::TrueClass, ::FalseClass, context: "#{context}[:insecure_skip_verification]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:retry_after_seconds], ::String, context: "#{context}[:retry_after_seconds]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        ListOfString.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountInput, context: context)
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAccountOutput, context: context)
        Hearth::Validator.validate!(input[:cloudwatch_role_arn], ::String, context: "#{context}[:cloudwatch_role_arn]")
        ThrottleSettings.validate!(input[:throttle_settings], context: "#{context}[:throttle_settings]") unless input[:throttle_settings].nil?
        ListOfString.validate!(input[:features], context: "#{context}[:features]") unless input[:features].nil?
        Hearth::Validator.validate!(input[:api_key_version], ::String, context: "#{context}[:api_key_version]")
      end
    end

    class UpdateApiKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiKeyInput, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateApiKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiKeyOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:customer_id], ::String, context: "#{context}[:customer_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        ListOfString.validate!(input[:stage_keys], context: "#{context}[:stage_keys]") unless input[:stage_keys].nil?
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        ListOfARNs.validate!(input[:provider_ar_ns], context: "#{context}[:provider_ar_ns]") unless input[:provider_ar_ns].nil?
        Hearth::Validator.validate!(input[:auth_type], ::String, context: "#{context}[:auth_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:authorizer_credentials], ::String, context: "#{context}[:authorizer_credentials]")
        Hearth::Validator.validate!(input[:identity_source], ::String, context: "#{context}[:identity_source]")
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
      end
    end

    class UpdateBasePathMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBasePathMappingInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateBasePathMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBasePathMappingOutput, context: context)
        Hearth::Validator.validate!(input[:base_path], ::String, context: "#{context}[:base_path]")
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class UpdateClientCertificateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClientCertificateInput, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateClientCertificateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClientCertificateOutput, context: context)
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:pem_encoded_certificate], ::String, context: "#{context}[:pem_encoded_certificate]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        PathToMapOfMethodSnapshot.validate!(input[:api_summary], context: "#{context}[:api_summary]") unless input[:api_summary].nil?
      end
    end

    class UpdateDocumentationPartInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentationPartInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_part_id], ::String, context: "#{context}[:documentation_part_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateDocumentationPartOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentationPartOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        DocumentationPartLocation.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class UpdateDocumentationVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentationVersionInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateDocumentationVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDocumentationVersionOutput, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_upload_date], ::Time, context: "#{context}[:certificate_upload_date]")
        Hearth::Validator.validate!(input[:regional_domain_name], ::String, context: "#{context}[:regional_domain_name]")
        Hearth::Validator.validate!(input[:regional_hosted_zone_id], ::String, context: "#{context}[:regional_hosted_zone_id]")
        Hearth::Validator.validate!(input[:regional_certificate_name], ::String, context: "#{context}[:regional_certificate_name]")
        Hearth::Validator.validate!(input[:regional_certificate_arn], ::String, context: "#{context}[:regional_certificate_arn]")
        Hearth::Validator.validate!(input[:distribution_domain_name], ::String, context: "#{context}[:distribution_domain_name]")
        Hearth::Validator.validate!(input[:distribution_hosted_zone_id], ::String, context: "#{context}[:distribution_hosted_zone_id]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:domain_name_status], ::String, context: "#{context}[:domain_name_status]")
        Hearth::Validator.validate!(input[:domain_name_status_message], ::String, context: "#{context}[:domain_name_status_message]")
        Hearth::Validator.validate!(input[:security_policy], ::String, context: "#{context}[:security_policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Hearth::Validator.validate!(input[:ownership_verification_certificate_arn], ::String, context: "#{context}[:ownership_verification_certificate_arn]")
      end
    end

    class UpdateGatewayResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateGatewayResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGatewayResponseOutput, context: context)
        Hearth::Validator.validate!(input[:response_type], ::String, context: "#{context}[:response_type]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:default_response], ::TrueClass, ::FalseClass, context: "#{context}[:default_response]")
      end
    end

    class UpdateIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
        MapOfStringToString.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        Hearth::Validator.validate!(input[:cache_namespace], ::String, context: "#{context}[:cache_namespace]")
        ListOfString.validate!(input[:cache_key_parameters], context: "#{context}[:cache_key_parameters]") unless input[:cache_key_parameters].nil?
        MapOfIntegrationResponse.validate!(input[:integration_responses], context: "#{context}[:integration_responses]") unless input[:integration_responses].nil?
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class UpdateIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationResponseOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        Hearth::Validator.validate!(input[:selection_pattern], ::String, context: "#{context}[:selection_pattern]")
        MapOfStringToString.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:content_handling], ::String, context: "#{context}[:content_handling]")
      end
    end

    class UpdateMethodInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMethodInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateMethodOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMethodOutput, context: context)
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        MapOfStringToBoolean.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        MapOfStringToString.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        MapOfMethodResponse.validate!(input[:method_responses], context: "#{context}[:method_responses]") unless input[:method_responses].nil?
        Integration.validate!(input[:method_integration], context: "#{context}[:method_integration]") unless input[:method_integration].nil?
        ListOfString.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
      end
    end

    class UpdateMethodResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMethodResponseInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:http_method], ::String, context: "#{context}[:http_method]")
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateMethodResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMethodResponseOutput, context: context)
        Hearth::Validator.validate!(input[:status_code], ::String, context: "#{context}[:status_code]")
        MapOfStringToBoolean.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        MapOfStringToString.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
      end
    end

    class UpdateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:model_name], ::String, context: "#{context}[:model_name]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class UpdateRequestValidatorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRequestValidatorInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:request_validator_id], ::String, context: "#{context}[:request_validator_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateRequestValidatorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRequestValidatorOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:validate_request_body], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_body]")
        Hearth::Validator.validate!(input[:validate_request_parameters], ::TrueClass, ::FalseClass, context: "#{context}[:validate_request_parameters]")
      end
    end

    class UpdateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:parent_id], ::String, context: "#{context}[:parent_id]")
        Hearth::Validator.validate!(input[:path_part], ::String, context: "#{context}[:path_part]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        MapOfMethod.validate!(input[:resource_methods], context: "#{context}[:resource_methods]") unless input[:resource_methods].nil?
      end
    end

    class UpdateRestApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRestApiInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateRestApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRestApiOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        ListOfString.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        ListOfString.validate!(input[:binary_media_types], context: "#{context}[:binary_media_types]") unless input[:binary_media_types].nil?
        Hearth::Validator.validate!(input[:minimum_compression_size], ::Integer, context: "#{context}[:minimum_compression_size]")
        Hearth::Validator.validate!(input[:api_key_source], ::String, context: "#{context}[:api_key_source]")
        EndpointConfiguration.validate!(input[:endpoint_configuration], context: "#{context}[:endpoint_configuration]") unless input[:endpoint_configuration].nil?
        Hearth::Validator.validate!(input[:policy], ::String, context: "#{context}[:policy]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
      end
    end

    class UpdateStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStageInput, context: context)
        Hearth::Validator.validate!(input[:rest_api_id], ::String, context: "#{context}[:rest_api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStageOutput, context: context)
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:cache_cluster_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:cache_cluster_enabled]")
        Hearth::Validator.validate!(input[:cache_cluster_size], ::String, context: "#{context}[:cache_cluster_size]")
        Hearth::Validator.validate!(input[:cache_cluster_status], ::String, context: "#{context}[:cache_cluster_status]")
        MapOfMethodSettings.validate!(input[:method_settings], context: "#{context}[:method_settings]") unless input[:method_settings].nil?
        MapOfStringToString.validate!(input[:variables], context: "#{context}[:variables]") unless input[:variables].nil?
        Hearth::Validator.validate!(input[:documentation_version], ::String, context: "#{context}[:documentation_version]")
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        CanarySettings.validate!(input[:canary_settings], context: "#{context}[:canary_settings]") unless input[:canary_settings].nil?
        Hearth::Validator.validate!(input[:tracing_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:tracing_enabled]")
        Hearth::Validator.validate!(input[:web_acl_arn], ::String, context: "#{context}[:web_acl_arn]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
      end
    end

    class UpdateUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUsageInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:key_id], ::String, context: "#{context}[:key_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUsageOutput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        MapOfKeyUsages.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:position], ::String, context: "#{context}[:position]")
      end
    end

    class UpdateUsagePlanInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUsagePlanInput, context: context)
        Hearth::Validator.validate!(input[:usage_plan_id], ::String, context: "#{context}[:usage_plan_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateUsagePlanOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateUsagePlanOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfApiStage.validate!(input[:api_stages], context: "#{context}[:api_stages]") unless input[:api_stages].nil?
        ThrottleSettings.validate!(input[:throttle], context: "#{context}[:throttle]") unless input[:throttle].nil?
        QuotaSettings.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateVpcLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVpcLinkInput, context: context)
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        ListOfPatchOperation.validate!(input[:patch_operations], context: "#{context}[:patch_operations]") unless input[:patch_operations].nil?
      end
    end

    class UpdateVpcLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVpcLinkOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfString.validate!(input[:target_arns], context: "#{context}[:target_arns]") unless input[:target_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UsagePlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsagePlan, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfApiStage.validate!(input[:api_stages], context: "#{context}[:api_stages]") unless input[:api_stages].nil?
        ThrottleSettings.validate!(input[:throttle], context: "#{context}[:throttle]") unless input[:throttle].nil?
        QuotaSettings.validate!(input[:quota], context: "#{context}[:quota]") unless input[:quota].nil?
        Hearth::Validator.validate!(input[:product_code], ::String, context: "#{context}[:product_code]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UsagePlanKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UsagePlanKey, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class VpcLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcLink, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ListOfString.validate!(input[:target_arns], context: "#{context}[:target_arns]") unless input[:target_arns].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        MapOfStringToString.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

  end
end
