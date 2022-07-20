# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ApiGatewayV2
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AccessLogSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessLogSettings, context: context)
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:format], ::String, context: "#{context}[:format]")
      end
    end

    class Api
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Api, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        List____listOf__string.validate!(input[:import_info], context: "#{context}[:import_info]") unless input[:import_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        List____listOf__string.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class ApiMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiMapping, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:api_mapping_key], ::String, context: "#{context}[:api_mapping_key]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class AuthorizationScopes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Authorizer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Authorizer, context: context)
        Hearth::Validator.validate!(input[:authorizer_credentials_arn], ::String, context: "#{context}[:authorizer_credentials_arn]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:authorizer_payload_format_version], ::String, context: "#{context}[:authorizer_payload_format_version]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_type], ::String, context: "#{context}[:authorizer_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:enable_simple_responses], ::TrueClass, ::FalseClass, context: "#{context}[:enable_simple_responses]")
        IdentitySourceList.validate!(input[:identity_source], context: "#{context}[:identity_source]") unless input[:identity_source].nil?
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        JWTConfiguration.validate!(input[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless input[:jwt_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Cors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cors, context: context)
        Hearth::Validator.validate!(input[:allow_credentials], ::TrueClass, ::FalseClass, context: "#{context}[:allow_credentials]")
        CorsHeaderList.validate!(input[:allow_headers], context: "#{context}[:allow_headers]") unless input[:allow_headers].nil?
        CorsMethodList.validate!(input[:allow_methods], context: "#{context}[:allow_methods]") unless input[:allow_methods].nil?
        CorsOriginList.validate!(input[:allow_origins], context: "#{context}[:allow_origins]") unless input[:allow_origins].nil?
        CorsHeaderList.validate!(input[:expose_headers], context: "#{context}[:expose_headers]") unless input[:expose_headers].nil?
        Hearth::Validator.validate!(input[:max_age], ::Integer, context: "#{context}[:max_age]")
      end
    end

    class CorsHeaderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CorsMethodList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CorsOriginList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiInput, context: context)
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class CreateApiMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiMappingInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_mapping_key], ::String, context: "#{context}[:api_mapping_key]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class CreateApiMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiMappingOutput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:api_mapping_key], ::String, context: "#{context}[:api_mapping_key]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class CreateApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApiOutput, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        List____listOf__string.validate!(input[:import_info], context: "#{context}[:import_info]") unless input[:import_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        List____listOf__string.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class CreateAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:authorizer_credentials_arn], ::String, context: "#{context}[:authorizer_credentials_arn]")
        Hearth::Validator.validate!(input[:authorizer_payload_format_version], ::String, context: "#{context}[:authorizer_payload_format_version]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_type], ::String, context: "#{context}[:authorizer_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:enable_simple_responses], ::TrueClass, ::FalseClass, context: "#{context}[:enable_simple_responses]")
        IdentitySourceList.validate!(input[:identity_source], context: "#{context}[:identity_source]") unless input[:identity_source].nil?
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        JWTConfiguration.validate!(input[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless input[:jwt_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:authorizer_credentials_arn], ::String, context: "#{context}[:authorizer_credentials_arn]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:authorizer_payload_format_version], ::String, context: "#{context}[:authorizer_payload_format_version]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_type], ::String, context: "#{context}[:authorizer_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:enable_simple_responses], ::TrueClass, ::FalseClass, context: "#{context}[:enable_simple_responses]")
        IdentitySourceList.validate!(input[:identity_source], context: "#{context}[:identity_source]") unless input[:identity_source].nil?
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        JWTConfiguration.validate!(input[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless input[:jwt_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CreateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class CreateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:auto_deployed], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deployed]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class CreateDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainNameConfigurations.validate!(input[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless input[:domain_name_configurations].nil?
        MutualTlsAuthenticationInput.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainNameOutput, context: context)
        Hearth::Validator.validate!(input[:api_mapping_selection_expression], ::String, context: "#{context}[:api_mapping_selection_expression]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainNameConfigurations.validate!(input[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless input[:domain_name_configurations].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:integration_method], ::String, context: "#{context}[:integration_method]")
        Hearth::Validator.validate!(input[:integration_subtype], ::String, context: "#{context}[:integration_subtype]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_uri], ::String, context: "#{context}[:integration_uri]")
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:payload_format_version], ::String, context: "#{context}[:payload_format_version]")
        IntegrationParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        TemplateMap.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        ResponseParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfigInput.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class CreateIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_method], ::String, context: "#{context}[:integration_method]")
        Hearth::Validator.validate!(input[:integration_response_selection_expression], ::String, context: "#{context}[:integration_response_selection_expression]")
        Hearth::Validator.validate!(input[:integration_subtype], ::String, context: "#{context}[:integration_subtype]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_uri], ::String, context: "#{context}[:integration_uri]")
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:payload_format_version], ::String, context: "#{context}[:payload_format_version]")
        IntegrationParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        TemplateMap.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        ResponseParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class CreateIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_response_key], ::String, context: "#{context}[:integration_response_key]")
        IntegrationParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        TemplateMap.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
      end
    end

    class CreateIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationResponseOutput, context: context)
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
        Hearth::Validator.validate!(input[:integration_response_key], ::String, context: "#{context}[:integration_response_key]")
        IntegrationParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        TemplateMap.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
      end
    end

    class CreateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class CreateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateModelOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class CreateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        AuthorizationScopes.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        RouteModels.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        RouteParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_response_selection_expression], ::String, context: "#{context}[:route_response_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class CreateRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteOutput, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        AuthorizationScopes.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        RouteModels.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        RouteParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_response_selection_expression], ::String, context: "#{context}[:route_response_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class CreateRouteResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        RouteModels.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
        RouteParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_response_key], ::String, context: "#{context}[:route_response_key]")
      end
    end

    class CreateRouteResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRouteResponseOutput, context: context)
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        RouteModels.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
        RouteParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
        Hearth::Validator.validate!(input[:route_response_key], ::String, context: "#{context}[:route_response_key]")
      end
    end

    class CreateStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStageInput, context: context)
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RouteSettingsMap.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageVariablesMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateStageOutput, context: context)
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_deployment_status_message], ::String, context: "#{context}[:last_deployment_status_message]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        RouteSettingsMap.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageVariablesMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVpcLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcLinkInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateVpcLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcLinkOutput, context: context)
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        Hearth::Validator.validate!(input[:vpc_link_status], ::String, context: "#{context}[:vpc_link_status]")
        Hearth::Validator.validate!(input[:vpc_link_status_message], ::String, context: "#{context}[:vpc_link_status_message]")
        Hearth::Validator.validate!(input[:vpc_link_version], ::String, context: "#{context}[:vpc_link_version]")
      end
    end

    class DeleteAccessLogSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessLogSettingsInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class DeleteAccessLogSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAccessLogSettingsOutput, context: context)
      end
    end

    class DeleteApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class DeleteApiMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiMappingInput, context: context)
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteApiMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiMappingOutput, context: context)
      end
    end

    class DeleteApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApiOutput, context: context)
      end
    end

    class DeleteAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
      end
    end

    class DeleteAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAuthorizerOutput, context: context)
      end
    end

    class DeleteCorsConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCorsConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class DeleteCorsConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCorsConfigurationOutput, context: context)
      end
    end

    class DeleteDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class DeleteDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDeploymentOutput, context: context)
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

    class DeleteIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
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
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
      end
    end

    class DeleteIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationResponseOutput, context: context)
      end
    end

    class DeleteModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
      end
    end

    class DeleteModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteModelOutput, context: context)
      end
    end

    class DeleteRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
      end
    end

    class DeleteRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteOutput, context: context)
      end
    end

    class DeleteRouteRequestParameterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteRequestParameterInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:request_parameter_key], ::String, context: "#{context}[:request_parameter_key]")
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
      end
    end

    class DeleteRouteRequestParameterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteRequestParameterOutput, context: context)
      end
    end

    class DeleteRouteResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
      end
    end

    class DeleteRouteResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteResponseOutput, context: context)
      end
    end

    class DeleteRouteSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteSettingsInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class DeleteRouteSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRouteSettingsOutput, context: context)
      end
    end

    class DeleteStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStageInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class DeleteStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteStageOutput, context: context)
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
        Hearth::Validator.validate!(input[:auto_deployed], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deployed]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class DomainName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainName, context: context)
        Hearth::Validator.validate!(input[:api_mapping_selection_expression], ::String, context: "#{context}[:api_mapping_selection_expression]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainNameConfigurations.validate!(input[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless input[:domain_name_configurations].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DomainNameConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainNameConfiguration, context: context)
        Hearth::Validator.validate!(input[:api_gateway_domain_name], ::String, context: "#{context}[:api_gateway_domain_name]")
        Hearth::Validator.validate!(input[:certificate_arn], ::String, context: "#{context}[:certificate_arn]")
        Hearth::Validator.validate!(input[:certificate_name], ::String, context: "#{context}[:certificate_name]")
        Hearth::Validator.validate!(input[:certificate_upload_date], ::Time, context: "#{context}[:certificate_upload_date]")
        Hearth::Validator.validate!(input[:domain_name_status], ::String, context: "#{context}[:domain_name_status]")
        Hearth::Validator.validate!(input[:domain_name_status_message], ::String, context: "#{context}[:domain_name_status_message]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:hosted_zone_id], ::String, context: "#{context}[:hosted_zone_id]")
        Hearth::Validator.validate!(input[:security_policy], ::String, context: "#{context}[:security_policy]")
        Hearth::Validator.validate!(input[:ownership_verification_certificate_arn], ::String, context: "#{context}[:ownership_verification_certificate_arn]")
      end
    end

    class DomainNameConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainNameConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExportApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:export_version], ::String, context: "#{context}[:export_version]")
        Hearth::Validator.validate!(input[:include_extensions], ::TrueClass, ::FalseClass, context: "#{context}[:include_extensions]")
        Hearth::Validator.validate!(input[:output_type], ::String, context: "#{context}[:output_type]")
        Hearth::Validator.validate!(input[:specification], ::String, context: "#{context}[:specification]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class ExportApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportApiOutput, context: context)
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
      end
    end

    class GetApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
      end
    end

    class GetApiMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiMappingInput, context: context)
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetApiMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiMappingOutput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:api_mapping_key], ::String, context: "#{context}[:api_mapping_key]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class GetApiMappingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiMappingsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetApiMappingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiMappingsOutput, context: context)
        List____listOfApiMapping.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApiOutput, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        List____listOf__string.validate!(input[:import_info], context: "#{context}[:import_info]") unless input[:import_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        List____listOf__string.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class GetApisInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApisInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetApisOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApisOutput, context: context)
        List____listOfApi.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
      end
    end

    class GetAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:authorizer_credentials_arn], ::String, context: "#{context}[:authorizer_credentials_arn]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:authorizer_payload_format_version], ::String, context: "#{context}[:authorizer_payload_format_version]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_type], ::String, context: "#{context}[:authorizer_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:enable_simple_responses], ::TrueClass, ::FalseClass, context: "#{context}[:enable_simple_responses]")
        IdentitySourceList.validate!(input[:identity_source], context: "#{context}[:identity_source]") unless input[:identity_source].nil?
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        JWTConfiguration.validate!(input[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless input[:jwt_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetAuthorizersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizersInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetAuthorizersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAuthorizersOutput, context: context)
        List____listOfAuthorizer.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
      end
    end

    class GetDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:auto_deployed], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deployed]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class GetDeploymentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentsInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDeploymentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDeploymentsOutput, context: context)
        List____listOfDeployment.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
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
        Hearth::Validator.validate!(input[:api_mapping_selection_expression], ::String, context: "#{context}[:api_mapping_selection_expression]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainNameConfigurations.validate!(input[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless input[:domain_name_configurations].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetDomainNamesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNamesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDomainNamesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainNamesOutput, context: context)
        List____listOfDomainName.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
      end
    end

    class GetIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_method], ::String, context: "#{context}[:integration_method]")
        Hearth::Validator.validate!(input[:integration_response_selection_expression], ::String, context: "#{context}[:integration_response_selection_expression]")
        Hearth::Validator.validate!(input[:integration_subtype], ::String, context: "#{context}[:integration_subtype]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_uri], ::String, context: "#{context}[:integration_uri]")
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:payload_format_version], ::String, context: "#{context}[:payload_format_version]")
        IntegrationParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        TemplateMap.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        ResponseParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class GetIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
      end
    end

    class GetIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationResponseOutput, context: context)
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
        Hearth::Validator.validate!(input[:integration_response_key], ::String, context: "#{context}[:integration_response_key]")
        IntegrationParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        TemplateMap.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
      end
    end

    class GetIntegrationResponsesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationResponsesInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIntegrationResponsesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationResponsesOutput, context: context)
        List____listOfIntegrationResponse.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIntegrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationsInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetIntegrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationsOutput, context: context)
        List____listOfIntegration.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
      end
    end

    class GetModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class GetModelTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelTemplateInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
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
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetModelsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetModelsOutput, context: context)
        List____listOfModel.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
      end
    end

    class GetRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteOutput, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        AuthorizationScopes.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        RouteModels.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        RouteParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_response_selection_expression], ::String, context: "#{context}[:route_response_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class GetRouteResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
      end
    end

    class GetRouteResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteResponseOutput, context: context)
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        RouteModels.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
        RouteParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
        Hearth::Validator.validate!(input[:route_response_key], ::String, context: "#{context}[:route_response_key]")
      end
    end

    class GetRouteResponsesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteResponsesInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
      end
    end

    class GetRouteResponsesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRouteResponsesOutput, context: context)
        List____listOfRouteResponse.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetRoutesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoutesInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetRoutesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRoutesOutput, context: context)
        List____listOfRoute.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class GetStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStageOutput, context: context)
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_deployment_status_message], ::String, context: "#{context}[:last_deployment_status_message]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        RouteSettingsMap.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageVariablesMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetStagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStagesInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetStagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetStagesOutput, context: context)
        List____listOfStage.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class GetTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTagsOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        Hearth::Validator.validate!(input[:vpc_link_status], ::String, context: "#{context}[:vpc_link_status]")
        Hearth::Validator.validate!(input[:vpc_link_status_message], ::String, context: "#{context}[:vpc_link_status_message]")
        Hearth::Validator.validate!(input[:vpc_link_version], ::String, context: "#{context}[:vpc_link_version]")
      end
    end

    class GetVpcLinksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcLinksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::String, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetVpcLinksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetVpcLinksOutput, context: context)
        List____listOfVpcLink.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class IdentitySourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ImportApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportApiInput, context: context)
        Hearth::Validator.validate!(input[:basepath], ::String, context: "#{context}[:basepath]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:fail_on_warnings], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_warnings]")
      end
    end

    class ImportApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportApiOutput, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        List____listOf__string.validate!(input[:import_info], context: "#{context}[:import_info]") unless input[:import_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        List____listOf__string.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class Integration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Integration, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_method], ::String, context: "#{context}[:integration_method]")
        Hearth::Validator.validate!(input[:integration_response_selection_expression], ::String, context: "#{context}[:integration_response_selection_expression]")
        Hearth::Validator.validate!(input[:integration_subtype], ::String, context: "#{context}[:integration_subtype]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_uri], ::String, context: "#{context}[:integration_uri]")
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:payload_format_version], ::String, context: "#{context}[:payload_format_version]")
        IntegrationParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        TemplateMap.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        ResponseParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class IntegrationParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class IntegrationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegrationResponse, context: context)
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
        Hearth::Validator.validate!(input[:integration_response_key], ::String, context: "#{context}[:integration_response_key]")
        IntegrationParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        TemplateMap.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
      end
    end

    class JWTConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JWTConfiguration, context: context)
        List____listOf__string.validate!(input[:audience], context: "#{context}[:audience]") unless input[:audience].nil?
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
      end
    end

    class Model
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Model, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class MutualTlsAuthentication
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MutualTlsAuthentication, context: context)
        Hearth::Validator.validate!(input[:truststore_uri], ::String, context: "#{context}[:truststore_uri]")
        Hearth::Validator.validate!(input[:truststore_version], ::String, context: "#{context}[:truststore_version]")
        List____listOf__string.validate!(input[:truststore_warnings], context: "#{context}[:truststore_warnings]") unless input[:truststore_warnings].nil?
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
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ParameterConstraints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParameterConstraints, context: context)
        Hearth::Validator.validate!(input[:required], ::TrueClass, ::FalseClass, context: "#{context}[:required]")
      end
    end

    class ReimportApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReimportApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:basepath], ::String, context: "#{context}[:basepath]")
        Hearth::Validator.validate!(input[:body], ::String, context: "#{context}[:body]")
        Hearth::Validator.validate!(input[:fail_on_warnings], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_warnings]")
      end
    end

    class ReimportApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReimportApiOutput, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        List____listOf__string.validate!(input[:import_info], context: "#{context}[:import_info]") unless input[:import_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        List____listOf__string.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class ResetAuthorizersCacheInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetAuthorizersCacheInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
      end
    end

    class ResetAuthorizersCacheOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResetAuthorizersCacheOutput, context: context)
      end
    end

    class ResponseParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          IntegrationParameters.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Route
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Route, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        AuthorizationScopes.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        RouteModels.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        RouteParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_response_selection_expression], ::String, context: "#{context}[:route_response_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class RouteModels
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class RouteParameters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          ParameterConstraints.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class RouteResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteResponse, context: context)
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        RouteModels.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
        RouteParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
        Hearth::Validator.validate!(input[:route_response_key], ::String, context: "#{context}[:route_response_key]")
      end
    end

    class RouteSettings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RouteSettings, context: context)
        Hearth::Validator.validate!(input[:data_trace_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:data_trace_enabled]")
        Hearth::Validator.validate!(input[:detailed_metrics_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:detailed_metrics_enabled]")
        Hearth::Validator.validate!(input[:logging_level], ::String, context: "#{context}[:logging_level]")
        Hearth::Validator.validate!(input[:throttling_burst_limit], ::Integer, context: "#{context}[:throttling_burst_limit]")
        Hearth::Validator.validate!(input[:throttling_rate_limit], ::Float, context: "#{context}[:throttling_rate_limit]")
      end
    end

    class RouteSettingsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          RouteSettings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Stage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Stage, context: context)
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_deployment_status_message], ::String, context: "#{context}[:last_deployment_status_message]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        RouteSettingsMap.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageVariablesMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class StageVariablesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TemplateMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TlsConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsConfig, context: context)
        Hearth::Validator.validate!(input[:server_name_to_verify], ::String, context: "#{context}[:server_name_to_verify]")
      end
    end

    class TlsConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TlsConfigInput, context: context)
        Hearth::Validator.validate!(input[:server_name_to_verify], ::String, context: "#{context}[:server_name_to_verify]")
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:limit_type], ::String, context: "#{context}[:limit_type]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApiInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdateApiMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiMappingInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:api_mapping_key], ::String, context: "#{context}[:api_mapping_key]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class UpdateApiMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiMappingOutput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_mapping_id], ::String, context: "#{context}[:api_mapping_id]")
        Hearth::Validator.validate!(input[:api_mapping_key], ::String, context: "#{context}[:api_mapping_key]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
      end
    end

    class UpdateApiOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApiOutput, context: context)
        Hearth::Validator.validate!(input[:api_endpoint], ::String, context: "#{context}[:api_endpoint]")
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_selection_expression], ::String, context: "#{context}[:api_key_selection_expression]")
        Cors.validate!(input[:cors_configuration], context: "#{context}[:cors_configuration]") unless input[:cors_configuration].nil?
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:disable_schema_validation], ::TrueClass, ::FalseClass, context: "#{context}[:disable_schema_validation]")
        Hearth::Validator.validate!(input[:disable_execute_api_endpoint], ::TrueClass, ::FalseClass, context: "#{context}[:disable_execute_api_endpoint]")
        List____listOf__string.validate!(input[:import_info], context: "#{context}[:import_info]") unless input[:import_info].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:protocol_type], ::String, context: "#{context}[:protocol_type]")
        Hearth::Validator.validate!(input[:route_selection_expression], ::String, context: "#{context}[:route_selection_expression]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        List____listOf__string.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
      end
    end

    class UpdateAuthorizerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthorizerInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:authorizer_credentials_arn], ::String, context: "#{context}[:authorizer_credentials_arn]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:authorizer_payload_format_version], ::String, context: "#{context}[:authorizer_payload_format_version]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_type], ::String, context: "#{context}[:authorizer_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:enable_simple_responses], ::TrueClass, ::FalseClass, context: "#{context}[:enable_simple_responses]")
        IdentitySourceList.validate!(input[:identity_source], context: "#{context}[:identity_source]") unless input[:identity_source].nil?
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        JWTConfiguration.validate!(input[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless input[:jwt_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateAuthorizerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAuthorizerOutput, context: context)
        Hearth::Validator.validate!(input[:authorizer_credentials_arn], ::String, context: "#{context}[:authorizer_credentials_arn]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:authorizer_payload_format_version], ::String, context: "#{context}[:authorizer_payload_format_version]")
        Hearth::Validator.validate!(input[:authorizer_result_ttl_in_seconds], ::Integer, context: "#{context}[:authorizer_result_ttl_in_seconds]")
        Hearth::Validator.validate!(input[:authorizer_type], ::String, context: "#{context}[:authorizer_type]")
        Hearth::Validator.validate!(input[:authorizer_uri], ::String, context: "#{context}[:authorizer_uri]")
        Hearth::Validator.validate!(input[:enable_simple_responses], ::TrueClass, ::FalseClass, context: "#{context}[:enable_simple_responses]")
        IdentitySourceList.validate!(input[:identity_source], context: "#{context}[:identity_source]") unless input[:identity_source].nil?
        Hearth::Validator.validate!(input[:identity_validation_expression], ::String, context: "#{context}[:identity_validation_expression]")
        JWTConfiguration.validate!(input[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless input[:jwt_configuration].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateDeploymentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDeploymentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDeploymentOutput, context: context)
        Hearth::Validator.validate!(input[:auto_deployed], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deployed]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:deployment_status], ::String, context: "#{context}[:deployment_status]")
        Hearth::Validator.validate!(input[:deployment_status_message], ::String, context: "#{context}[:deployment_status_message]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDomainNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainNameConfigurations.validate!(input[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless input[:domain_name_configurations].nil?
        MutualTlsAuthenticationInput.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
      end
    end

    class UpdateDomainNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainNameOutput, context: context)
        Hearth::Validator.validate!(input[:api_mapping_selection_expression], ::String, context: "#{context}[:api_mapping_selection_expression]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        DomainNameConfigurations.validate!(input[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless input[:domain_name_configurations].nil?
        MutualTlsAuthentication.validate!(input[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless input[:mutual_tls_authentication].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_method], ::String, context: "#{context}[:integration_method]")
        Hearth::Validator.validate!(input[:integration_subtype], ::String, context: "#{context}[:integration_subtype]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_uri], ::String, context: "#{context}[:integration_uri]")
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:payload_format_version], ::String, context: "#{context}[:payload_format_version]")
        IntegrationParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        TemplateMap.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        ResponseParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfigInput.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class UpdateIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:connection_id], ::String, context: "#{context}[:connection_id]")
        Hearth::Validator.validate!(input[:connection_type], ::String, context: "#{context}[:connection_type]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_method], ::String, context: "#{context}[:integration_method]")
        Hearth::Validator.validate!(input[:integration_response_selection_expression], ::String, context: "#{context}[:integration_response_selection_expression]")
        Hearth::Validator.validate!(input[:integration_subtype], ::String, context: "#{context}[:integration_subtype]")
        Hearth::Validator.validate!(input[:integration_type], ::String, context: "#{context}[:integration_type]")
        Hearth::Validator.validate!(input[:integration_uri], ::String, context: "#{context}[:integration_uri]")
        Hearth::Validator.validate!(input[:passthrough_behavior], ::String, context: "#{context}[:passthrough_behavior]")
        Hearth::Validator.validate!(input[:payload_format_version], ::String, context: "#{context}[:payload_format_version]")
        IntegrationParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        TemplateMap.validate!(input[:request_templates], context: "#{context}[:request_templates]") unless input[:request_templates].nil?
        ResponseParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
        Hearth::Validator.validate!(input[:timeout_in_millis], ::Integer, context: "#{context}[:timeout_in_millis]")
        TlsConfig.validate!(input[:tls_config], context: "#{context}[:tls_config]") unless input[:tls_config].nil?
      end
    end

    class UpdateIntegrationResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:integration_id], ::String, context: "#{context}[:integration_id]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
        Hearth::Validator.validate!(input[:integration_response_key], ::String, context: "#{context}[:integration_response_key]")
        IntegrationParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        TemplateMap.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
      end
    end

    class UpdateIntegrationResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIntegrationResponseOutput, context: context)
        Hearth::Validator.validate!(input[:content_handling_strategy], ::String, context: "#{context}[:content_handling_strategy]")
        Hearth::Validator.validate!(input[:integration_response_id], ::String, context: "#{context}[:integration_response_id]")
        Hearth::Validator.validate!(input[:integration_response_key], ::String, context: "#{context}[:integration_response_key]")
        IntegrationParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        TemplateMap.validate!(input[:response_templates], context: "#{context}[:response_templates]") unless input[:response_templates].nil?
        Hearth::Validator.validate!(input[:template_selection_expression], ::String, context: "#{context}[:template_selection_expression]")
      end
    end

    class UpdateModelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class UpdateModelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateModelOutput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:model_id], ::String, context: "#{context}[:model_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:schema], ::String, context: "#{context}[:schema]")
      end
    end

    class UpdateRouteInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        AuthorizationScopes.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        RouteModels.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        RouteParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_response_selection_expression], ::String, context: "#{context}[:route_response_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class UpdateRouteOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteOutput, context: context)
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:api_key_required], ::TrueClass, ::FalseClass, context: "#{context}[:api_key_required]")
        AuthorizationScopes.validate!(input[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless input[:authorization_scopes].nil?
        Hearth::Validator.validate!(input[:authorization_type], ::String, context: "#{context}[:authorization_type]")
        Hearth::Validator.validate!(input[:authorizer_id], ::String, context: "#{context}[:authorizer_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        Hearth::Validator.validate!(input[:operation_name], ::String, context: "#{context}[:operation_name]")
        RouteModels.validate!(input[:request_models], context: "#{context}[:request_models]") unless input[:request_models].nil?
        RouteParameters.validate!(input[:request_parameters], context: "#{context}[:request_parameters]") unless input[:request_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_key], ::String, context: "#{context}[:route_key]")
        Hearth::Validator.validate!(input[:route_response_selection_expression], ::String, context: "#{context}[:route_response_selection_expression]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
      end
    end

    class UpdateRouteResponseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteResponseInput, context: context)
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        RouteModels.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
        RouteParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:route_id], ::String, context: "#{context}[:route_id]")
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
        Hearth::Validator.validate!(input[:route_response_key], ::String, context: "#{context}[:route_response_key]")
      end
    end

    class UpdateRouteResponseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRouteResponseOutput, context: context)
        Hearth::Validator.validate!(input[:model_selection_expression], ::String, context: "#{context}[:model_selection_expression]")
        RouteModels.validate!(input[:response_models], context: "#{context}[:response_models]") unless input[:response_models].nil?
        RouteParameters.validate!(input[:response_parameters], context: "#{context}[:response_parameters]") unless input[:response_parameters].nil?
        Hearth::Validator.validate!(input[:route_response_id], ::String, context: "#{context}[:route_response_id]")
        Hearth::Validator.validate!(input[:route_response_key], ::String, context: "#{context}[:route_response_key]")
      end
    end

    class UpdateStageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStageInput, context: context)
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:api_id], ::String, context: "#{context}[:api_id]")
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RouteSettingsMap.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageVariablesMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
      end
    end

    class UpdateStageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateStageOutput, context: context)
        AccessLogSettings.validate!(input[:access_log_settings], context: "#{context}[:access_log_settings]") unless input[:access_log_settings].nil?
        Hearth::Validator.validate!(input[:api_gateway_managed], ::TrueClass, ::FalseClass, context: "#{context}[:api_gateway_managed]")
        Hearth::Validator.validate!(input[:auto_deploy], ::TrueClass, ::FalseClass, context: "#{context}[:auto_deploy]")
        Hearth::Validator.validate!(input[:client_certificate_id], ::String, context: "#{context}[:client_certificate_id]")
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        RouteSettings.validate!(input[:default_route_settings], context: "#{context}[:default_route_settings]") unless input[:default_route_settings].nil?
        Hearth::Validator.validate!(input[:deployment_id], ::String, context: "#{context}[:deployment_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_deployment_status_message], ::String, context: "#{context}[:last_deployment_status_message]")
        Hearth::Validator.validate!(input[:last_updated_date], ::Time, context: "#{context}[:last_updated_date]")
        RouteSettingsMap.validate!(input[:route_settings], context: "#{context}[:route_settings]") unless input[:route_settings].nil?
        Hearth::Validator.validate!(input[:stage_name], ::String, context: "#{context}[:stage_name]")
        StageVariablesMap.validate!(input[:stage_variables], context: "#{context}[:stage_variables]") unless input[:stage_variables].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateVpcLinkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVpcLinkInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
      end
    end

    class UpdateVpcLinkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateVpcLinkOutput, context: context)
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        Hearth::Validator.validate!(input[:vpc_link_status], ::String, context: "#{context}[:vpc_link_status]")
        Hearth::Validator.validate!(input[:vpc_link_status_message], ::String, context: "#{context}[:vpc_link_status_message]")
        Hearth::Validator.validate!(input[:vpc_link_version], ::String, context: "#{context}[:vpc_link_version]")
      end
    end

    class VpcLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcLink, context: context)
        Hearth::Validator.validate!(input[:created_date], ::Time, context: "#{context}[:created_date]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
        SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vpc_link_id], ::String, context: "#{context}[:vpc_link_id]")
        Hearth::Validator.validate!(input[:vpc_link_status], ::String, context: "#{context}[:vpc_link_status]")
        Hearth::Validator.validate!(input[:vpc_link_status_message], ::String, context: "#{context}[:vpc_link_status_message]")
        Hearth::Validator.validate!(input[:vpc_link_version], ::String, context: "#{context}[:vpc_link_version]")
      end
    end

    class List____listOfApi
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Api.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfApiMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ApiMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfAuthorizer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Authorizer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDeployment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Deployment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfDomainName
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DomainName.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfIntegration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Integration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfIntegrationResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IntegrationResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfModel
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Model.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRoute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Route.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRouteResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RouteResponse.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfStage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Stage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfVpcLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VpcLink.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
