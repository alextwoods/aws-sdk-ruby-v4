# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ApiGatewayV2
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AccessLogSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessLogSettings, context: context)
        type = Types::AccessLogSettings.new
        type.destination_arn = params[:destination_arn]
        type.format = params[:format]
        type
      end
    end

    module Api
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Api, context: context)
        type = Types::Api.new
        type.api_endpoint = params[:api_endpoint]
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.import_info = List____listOf__string.build(params[:import_info], context: "#{context}[:import_info]") unless params[:import_info].nil?
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type.warnings = List____listOf__string.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module ApiMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiMapping, context: context)
        type = Types::ApiMapping.new
        type.api_id = params[:api_id]
        type.api_mapping_id = params[:api_mapping_id]
        type.api_mapping_key = params[:api_mapping_key]
        type.stage = params[:stage]
        type
      end
    end

    module AuthorizationScopes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Authorizer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Authorizer, context: context)
        type = Types::Authorizer.new
        type.authorizer_credentials_arn = params[:authorizer_credentials_arn]
        type.authorizer_id = params[:authorizer_id]
        type.authorizer_payload_format_version = params[:authorizer_payload_format_version]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_type = params[:authorizer_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.enable_simple_responses = params[:enable_simple_responses]
        type.identity_source = IdentitySourceList.build(params[:identity_source], context: "#{context}[:identity_source]") unless params[:identity_source].nil?
        type.identity_validation_expression = params[:identity_validation_expression]
        type.jwt_configuration = JWTConfiguration.build(params[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless params[:jwt_configuration].nil?
        type.name = params[:name]
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

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module Cors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cors, context: context)
        type = Types::Cors.new
        type.allow_credentials = params[:allow_credentials]
        type.allow_headers = CorsHeaderList.build(params[:allow_headers], context: "#{context}[:allow_headers]") unless params[:allow_headers].nil?
        type.allow_methods = CorsMethodList.build(params[:allow_methods], context: "#{context}[:allow_methods]") unless params[:allow_methods].nil?
        type.allow_origins = CorsOriginList.build(params[:allow_origins], context: "#{context}[:allow_origins]") unless params[:allow_origins].nil?
        type.expose_headers = CorsHeaderList.build(params[:expose_headers], context: "#{context}[:expose_headers]") unless params[:expose_headers].nil?
        type.max_age = params[:max_age]
        type
      end
    end

    module CorsHeaderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CorsMethodList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CorsOriginList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiInput, context: context)
        type = Types::CreateApiInput.new
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_key = params[:route_key]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.target = params[:target]
        type.version = params[:version]
        type
      end
    end

    module CreateApiMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiMappingInput, context: context)
        type = Types::CreateApiMappingInput.new
        type.api_id = params[:api_id]
        type.api_mapping_key = params[:api_mapping_key]
        type.domain_name = params[:domain_name]
        type.stage = params[:stage]
        type
      end
    end

    module CreateApiMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiMappingOutput, context: context)
        type = Types::CreateApiMappingOutput.new
        type.api_id = params[:api_id]
        type.api_mapping_id = params[:api_mapping_id]
        type.api_mapping_key = params[:api_mapping_key]
        type.stage = params[:stage]
        type
      end
    end

    module CreateApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApiOutput, context: context)
        type = Types::CreateApiOutput.new
        type.api_endpoint = params[:api_endpoint]
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.import_info = List____listOf__string.build(params[:import_info], context: "#{context}[:import_info]") unless params[:import_info].nil?
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type.warnings = List____listOf__string.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module CreateAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthorizerInput, context: context)
        type = Types::CreateAuthorizerInput.new
        type.api_id = params[:api_id]
        type.authorizer_credentials_arn = params[:authorizer_credentials_arn]
        type.authorizer_payload_format_version = params[:authorizer_payload_format_version]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_type = params[:authorizer_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.enable_simple_responses = params[:enable_simple_responses]
        type.identity_source = IdentitySourceList.build(params[:identity_source], context: "#{context}[:identity_source]") unless params[:identity_source].nil?
        type.identity_validation_expression = params[:identity_validation_expression]
        type.jwt_configuration = JWTConfiguration.build(params[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless params[:jwt_configuration].nil?
        type.name = params[:name]
        type
      end
    end

    module CreateAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAuthorizerOutput, context: context)
        type = Types::CreateAuthorizerOutput.new
        type.authorizer_credentials_arn = params[:authorizer_credentials_arn]
        type.authorizer_id = params[:authorizer_id]
        type.authorizer_payload_format_version = params[:authorizer_payload_format_version]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_type = params[:authorizer_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.enable_simple_responses = params[:enable_simple_responses]
        type.identity_source = IdentitySourceList.build(params[:identity_source], context: "#{context}[:identity_source]") unless params[:identity_source].nil?
        type.identity_validation_expression = params[:identity_validation_expression]
        type.jwt_configuration = JWTConfiguration.build(params[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless params[:jwt_configuration].nil?
        type.name = params[:name]
        type
      end
    end

    module CreateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentInput, context: context)
        type = Types::CreateDeploymentInput.new
        type.api_id = params[:api_id]
        type.description = params[:description]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module CreateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDeploymentOutput, context: context)
        type = Types::CreateDeploymentOutput.new
        type.auto_deployed = params[:auto_deployed]
        type.created_date = params[:created_date]
        type.deployment_id = params[:deployment_id]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.description = params[:description]
        type
      end
    end

    module CreateDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainNameInput, context: context)
        type = Types::CreateDomainNameInput.new
        type.domain_name = params[:domain_name]
        type.domain_name_configurations = DomainNameConfigurations.build(params[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless params[:domain_name_configurations].nil?
        type.mutual_tls_authentication = MutualTlsAuthenticationInput.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainNameOutput, context: context)
        type = Types::CreateDomainNameOutput.new
        type.api_mapping_selection_expression = params[:api_mapping_selection_expression]
        type.domain_name = params[:domain_name]
        type.domain_name_configurations = DomainNameConfigurations.build(params[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless params[:domain_name_configurations].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationInput, context: context)
        type = Types::CreateIntegrationInput.new
        type.api_id = params[:api_id]
        type.connection_id = params[:connection_id]
        type.connection_type = params[:connection_type]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.integration_method = params[:integration_method]
        type.integration_subtype = params[:integration_subtype]
        type.integration_type = params[:integration_type]
        type.integration_uri = params[:integration_uri]
        type.passthrough_behavior = params[:passthrough_behavior]
        type.payload_format_version = params[:payload_format_version]
        type.request_parameters = IntegrationParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = TemplateMap.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.response_parameters = ResponseParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfigInput.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module CreateIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationOutput, context: context)
        type = Types::CreateIntegrationOutput.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.connection_id = params[:connection_id]
        type.connection_type = params[:connection_type]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.integration_id = params[:integration_id]
        type.integration_method = params[:integration_method]
        type.integration_response_selection_expression = params[:integration_response_selection_expression]
        type.integration_subtype = params[:integration_subtype]
        type.integration_type = params[:integration_type]
        type.integration_uri = params[:integration_uri]
        type.passthrough_behavior = params[:passthrough_behavior]
        type.payload_format_version = params[:payload_format_version]
        type.request_parameters = IntegrationParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = TemplateMap.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.response_parameters = ResponseParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module CreateIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationResponseInput, context: context)
        type = Types::CreateIntegrationResponseInput.new
        type.api_id = params[:api_id]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.integration_id = params[:integration_id]
        type.integration_response_key = params[:integration_response_key]
        type.response_parameters = IntegrationParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = TemplateMap.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type
      end
    end

    module CreateIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationResponseOutput, context: context)
        type = Types::CreateIntegrationResponseOutput.new
        type.content_handling_strategy = params[:content_handling_strategy]
        type.integration_response_id = params[:integration_response_id]
        type.integration_response_key = params[:integration_response_key]
        type.response_parameters = IntegrationParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = TemplateMap.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type
      end
    end

    module CreateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelInput, context: context)
        type = Types::CreateModelInput.new
        type.api_id = params[:api_id]
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.name = params[:name]
        type.schema = params[:schema]
        type
      end
    end

    module CreateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateModelOutput, context: context)
        type = Types::CreateModelOutput.new
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.model_id = params[:model_id]
        type.name = params[:name]
        type.schema = params[:schema]
        type
      end
    end

    module CreateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteInput, context: context)
        type = Types::CreateRouteInput.new
        type.api_id = params[:api_id]
        type.api_key_required = params[:api_key_required]
        type.authorization_scopes = AuthorizationScopes.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.operation_name = params[:operation_name]
        type.request_models = RouteModels.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_parameters = RouteParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.route_key = params[:route_key]
        type.route_response_selection_expression = params[:route_response_selection_expression]
        type.target = params[:target]
        type
      end
    end

    module CreateRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteOutput, context: context)
        type = Types::CreateRouteOutput.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_key_required = params[:api_key_required]
        type.authorization_scopes = AuthorizationScopes.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.operation_name = params[:operation_name]
        type.request_models = RouteModels.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_parameters = RouteParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.route_id = params[:route_id]
        type.route_key = params[:route_key]
        type.route_response_selection_expression = params[:route_response_selection_expression]
        type.target = params[:target]
        type
      end
    end

    module CreateRouteResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteResponseInput, context: context)
        type = Types::CreateRouteResponseInput.new
        type.api_id = params[:api_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.response_models = RouteModels.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type.response_parameters = RouteParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.route_id = params[:route_id]
        type.route_response_key = params[:route_response_key]
        type
      end
    end

    module CreateRouteResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRouteResponseOutput, context: context)
        type = Types::CreateRouteResponseOutput.new
        type.model_selection_expression = params[:model_selection_expression]
        type.response_models = RouteModels.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type.response_parameters = RouteParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.route_response_id = params[:route_response_id]
        type.route_response_key = params[:route_response_key]
        type
      end
    end

    module CreateStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStageInput, context: context)
        type = Types::CreateStageInput.new
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.api_id = params[:api_id]
        type.auto_deploy = params[:auto_deploy]
        type.client_certificate_id = params[:client_certificate_id]
        type.default_route_settings = RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.route_settings = RouteSettingsMap.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = StageVariablesMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateStageOutput, context: context)
        type = Types::CreateStageOutput.new
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.api_gateway_managed = params[:api_gateway_managed]
        type.auto_deploy = params[:auto_deploy]
        type.client_certificate_id = params[:client_certificate_id]
        type.created_date = params[:created_date]
        type.default_route_settings = RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.last_deployment_status_message = params[:last_deployment_status_message]
        type.last_updated_date = params[:last_updated_date]
        type.route_settings = RouteSettingsMap.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = StageVariablesMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVpcLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcLinkInput, context: context)
        type = Types::CreateVpcLinkInput.new
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateVpcLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcLinkOutput, context: context)
        type = Types::CreateVpcLinkOutput.new
        type.created_date = params[:created_date]
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_link_id = params[:vpc_link_id]
        type.vpc_link_status = params[:vpc_link_status]
        type.vpc_link_status_message = params[:vpc_link_status_message]
        type.vpc_link_version = params[:vpc_link_version]
        type
      end
    end

    module DeleteAccessLogSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessLogSettingsInput, context: context)
        type = Types::DeleteAccessLogSettingsInput.new
        type.api_id = params[:api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module DeleteAccessLogSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAccessLogSettingsOutput, context: context)
        type = Types::DeleteAccessLogSettingsOutput.new
        type
      end
    end

    module DeleteApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiInput, context: context)
        type = Types::DeleteApiInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module DeleteApiMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiMappingInput, context: context)
        type = Types::DeleteApiMappingInput.new
        type.api_mapping_id = params[:api_mapping_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteApiMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiMappingOutput, context: context)
        type = Types::DeleteApiMappingOutput.new
        type
      end
    end

    module DeleteApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApiOutput, context: context)
        type = Types::DeleteApiOutput.new
        type
      end
    end

    module DeleteAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAuthorizerInput, context: context)
        type = Types::DeleteAuthorizerInput.new
        type.api_id = params[:api_id]
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

    module DeleteCorsConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCorsConfigurationInput, context: context)
        type = Types::DeleteCorsConfigurationInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module DeleteCorsConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCorsConfigurationOutput, context: context)
        type = Types::DeleteCorsConfigurationOutput.new
        type
      end
    end

    module DeleteDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDeploymentInput, context: context)
        type = Types::DeleteDeploymentInput.new
        type.api_id = params[:api_id]
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

    module DeleteIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationInput, context: context)
        type = Types::DeleteIntegrationInput.new
        type.api_id = params[:api_id]
        type.integration_id = params[:integration_id]
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
        type.api_id = params[:api_id]
        type.integration_id = params[:integration_id]
        type.integration_response_id = params[:integration_response_id]
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

    module DeleteModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteModelInput, context: context)
        type = Types::DeleteModelInput.new
        type.api_id = params[:api_id]
        type.model_id = params[:model_id]
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

    module DeleteRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteInput, context: context)
        type = Types::DeleteRouteInput.new
        type.api_id = params[:api_id]
        type.route_id = params[:route_id]
        type
      end
    end

    module DeleteRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteOutput, context: context)
        type = Types::DeleteRouteOutput.new
        type
      end
    end

    module DeleteRouteRequestParameterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteRequestParameterInput, context: context)
        type = Types::DeleteRouteRequestParameterInput.new
        type.api_id = params[:api_id]
        type.request_parameter_key = params[:request_parameter_key]
        type.route_id = params[:route_id]
        type
      end
    end

    module DeleteRouteRequestParameterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteRequestParameterOutput, context: context)
        type = Types::DeleteRouteRequestParameterOutput.new
        type
      end
    end

    module DeleteRouteResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteResponseInput, context: context)
        type = Types::DeleteRouteResponseInput.new
        type.api_id = params[:api_id]
        type.route_id = params[:route_id]
        type.route_response_id = params[:route_response_id]
        type
      end
    end

    module DeleteRouteResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteResponseOutput, context: context)
        type = Types::DeleteRouteResponseOutput.new
        type
      end
    end

    module DeleteRouteSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteSettingsInput, context: context)
        type = Types::DeleteRouteSettingsInput.new
        type.api_id = params[:api_id]
        type.route_key = params[:route_key]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module DeleteRouteSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRouteSettingsOutput, context: context)
        type = Types::DeleteRouteSettingsOutput.new
        type
      end
    end

    module DeleteStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteStageInput, context: context)
        type = Types::DeleteStageInput.new
        type.api_id = params[:api_id]
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
        type.auto_deployed = params[:auto_deployed]
        type.created_date = params[:created_date]
        type.deployment_id = params[:deployment_id]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.description = params[:description]
        type
      end
    end

    module DomainName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainName, context: context)
        type = Types::DomainName.new
        type.api_mapping_selection_expression = params[:api_mapping_selection_expression]
        type.domain_name = params[:domain_name]
        type.domain_name_configurations = DomainNameConfigurations.build(params[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless params[:domain_name_configurations].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DomainNameConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainNameConfiguration, context: context)
        type = Types::DomainNameConfiguration.new
        type.api_gateway_domain_name = params[:api_gateway_domain_name]
        type.certificate_arn = params[:certificate_arn]
        type.certificate_name = params[:certificate_name]
        type.certificate_upload_date = params[:certificate_upload_date]
        type.domain_name_status = params[:domain_name_status]
        type.domain_name_status_message = params[:domain_name_status_message]
        type.endpoint_type = params[:endpoint_type]
        type.hosted_zone_id = params[:hosted_zone_id]
        type.security_policy = params[:security_policy]
        type.ownership_verification_certificate_arn = params[:ownership_verification_certificate_arn]
        type
      end
    end

    module DomainNameConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainNameConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExportApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportApiInput, context: context)
        type = Types::ExportApiInput.new
        type.api_id = params[:api_id]
        type.export_version = params[:export_version]
        type.include_extensions = params[:include_extensions]
        type.output_type = params[:output_type]
        type.specification = params[:specification]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module ExportApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportApiOutput, context: context)
        type = Types::ExportApiOutput.new
        type.body = params[:body]
        type
      end
    end

    module GetApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiInput, context: context)
        type = Types::GetApiInput.new
        type.api_id = params[:api_id]
        type
      end
    end

    module GetApiMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiMappingInput, context: context)
        type = Types::GetApiMappingInput.new
        type.api_mapping_id = params[:api_mapping_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetApiMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiMappingOutput, context: context)
        type = Types::GetApiMappingOutput.new
        type.api_id = params[:api_id]
        type.api_mapping_id = params[:api_mapping_id]
        type.api_mapping_key = params[:api_mapping_key]
        type.stage = params[:stage]
        type
      end
    end

    module GetApiMappingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiMappingsInput, context: context)
        type = Types::GetApiMappingsInput.new
        type.domain_name = params[:domain_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetApiMappingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiMappingsOutput, context: context)
        type = Types::GetApiMappingsOutput.new
        type.items = List____listOfApiMapping.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApiOutput, context: context)
        type = Types::GetApiOutput.new
        type.api_endpoint = params[:api_endpoint]
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.import_info = List____listOf__string.build(params[:import_info], context: "#{context}[:import_info]") unless params[:import_info].nil?
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type.warnings = List____listOf__string.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module GetApisInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApisInput, context: context)
        type = Types::GetApisInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetApisOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApisOutput, context: context)
        type = Types::GetApisOutput.new
        type.items = List____listOfApi.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizerInput, context: context)
        type = Types::GetAuthorizerInput.new
        type.api_id = params[:api_id]
        type.authorizer_id = params[:authorizer_id]
        type
      end
    end

    module GetAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizerOutput, context: context)
        type = Types::GetAuthorizerOutput.new
        type.authorizer_credentials_arn = params[:authorizer_credentials_arn]
        type.authorizer_id = params[:authorizer_id]
        type.authorizer_payload_format_version = params[:authorizer_payload_format_version]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_type = params[:authorizer_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.enable_simple_responses = params[:enable_simple_responses]
        type.identity_source = IdentitySourceList.build(params[:identity_source], context: "#{context}[:identity_source]") unless params[:identity_source].nil?
        type.identity_validation_expression = params[:identity_validation_expression]
        type.jwt_configuration = JWTConfiguration.build(params[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless params[:jwt_configuration].nil?
        type.name = params[:name]
        type
      end
    end

    module GetAuthorizersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizersInput, context: context)
        type = Types::GetAuthorizersInput.new
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetAuthorizersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAuthorizersOutput, context: context)
        type = Types::GetAuthorizersOutput.new
        type.items = List____listOfAuthorizer.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentInput, context: context)
        type = Types::GetDeploymentInput.new
        type.api_id = params[:api_id]
        type.deployment_id = params[:deployment_id]
        type
      end
    end

    module GetDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentOutput, context: context)
        type = Types::GetDeploymentOutput.new
        type.auto_deployed = params[:auto_deployed]
        type.created_date = params[:created_date]
        type.deployment_id = params[:deployment_id]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.description = params[:description]
        type
      end
    end

    module GetDeploymentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentsInput, context: context)
        type = Types::GetDeploymentsInput.new
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDeploymentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDeploymentsOutput, context: context)
        type = Types::GetDeploymentsOutput.new
        type.items = List____listOfDeployment.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
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
        type.api_mapping_selection_expression = params[:api_mapping_selection_expression]
        type.domain_name = params[:domain_name]
        type.domain_name_configurations = DomainNameConfigurations.build(params[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless params[:domain_name_configurations].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetDomainNamesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNamesInput, context: context)
        type = Types::GetDomainNamesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDomainNamesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainNamesOutput, context: context)
        type = Types::GetDomainNamesOutput.new
        type.items = List____listOfDomainName.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationInput, context: context)
        type = Types::GetIntegrationInput.new
        type.api_id = params[:api_id]
        type.integration_id = params[:integration_id]
        type
      end
    end

    module GetIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationOutput, context: context)
        type = Types::GetIntegrationOutput.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.connection_id = params[:connection_id]
        type.connection_type = params[:connection_type]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.integration_id = params[:integration_id]
        type.integration_method = params[:integration_method]
        type.integration_response_selection_expression = params[:integration_response_selection_expression]
        type.integration_subtype = params[:integration_subtype]
        type.integration_type = params[:integration_type]
        type.integration_uri = params[:integration_uri]
        type.passthrough_behavior = params[:passthrough_behavior]
        type.payload_format_version = params[:payload_format_version]
        type.request_parameters = IntegrationParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = TemplateMap.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.response_parameters = ResponseParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module GetIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationResponseInput, context: context)
        type = Types::GetIntegrationResponseInput.new
        type.api_id = params[:api_id]
        type.integration_id = params[:integration_id]
        type.integration_response_id = params[:integration_response_id]
        type
      end
    end

    module GetIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationResponseOutput, context: context)
        type = Types::GetIntegrationResponseOutput.new
        type.content_handling_strategy = params[:content_handling_strategy]
        type.integration_response_id = params[:integration_response_id]
        type.integration_response_key = params[:integration_response_key]
        type.response_parameters = IntegrationParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = TemplateMap.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type
      end
    end

    module GetIntegrationResponsesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationResponsesInput, context: context)
        type = Types::GetIntegrationResponsesInput.new
        type.api_id = params[:api_id]
        type.integration_id = params[:integration_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIntegrationResponsesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationResponsesOutput, context: context)
        type = Types::GetIntegrationResponsesOutput.new
        type.items = List____listOfIntegrationResponse.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIntegrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationsInput, context: context)
        type = Types::GetIntegrationsInput.new
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetIntegrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationsOutput, context: context)
        type = Types::GetIntegrationsOutput.new
        type.items = List____listOfIntegration.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelInput, context: context)
        type = Types::GetModelInput.new
        type.api_id = params[:api_id]
        type.model_id = params[:model_id]
        type
      end
    end

    module GetModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelOutput, context: context)
        type = Types::GetModelOutput.new
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.model_id = params[:model_id]
        type.name = params[:name]
        type.schema = params[:schema]
        type
      end
    end

    module GetModelTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelTemplateInput, context: context)
        type = Types::GetModelTemplateInput.new
        type.api_id = params[:api_id]
        type.model_id = params[:model_id]
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
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetModelsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetModelsOutput, context: context)
        type = Types::GetModelsOutput.new
        type.items = List____listOfModel.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteInput, context: context)
        type = Types::GetRouteInput.new
        type.api_id = params[:api_id]
        type.route_id = params[:route_id]
        type
      end
    end

    module GetRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteOutput, context: context)
        type = Types::GetRouteOutput.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_key_required = params[:api_key_required]
        type.authorization_scopes = AuthorizationScopes.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.operation_name = params[:operation_name]
        type.request_models = RouteModels.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_parameters = RouteParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.route_id = params[:route_id]
        type.route_key = params[:route_key]
        type.route_response_selection_expression = params[:route_response_selection_expression]
        type.target = params[:target]
        type
      end
    end

    module GetRouteResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteResponseInput, context: context)
        type = Types::GetRouteResponseInput.new
        type.api_id = params[:api_id]
        type.route_id = params[:route_id]
        type.route_response_id = params[:route_response_id]
        type
      end
    end

    module GetRouteResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteResponseOutput, context: context)
        type = Types::GetRouteResponseOutput.new
        type.model_selection_expression = params[:model_selection_expression]
        type.response_models = RouteModels.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type.response_parameters = RouteParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.route_response_id = params[:route_response_id]
        type.route_response_key = params[:route_response_key]
        type
      end
    end

    module GetRouteResponsesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteResponsesInput, context: context)
        type = Types::GetRouteResponsesInput.new
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.route_id = params[:route_id]
        type
      end
    end

    module GetRouteResponsesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRouteResponsesOutput, context: context)
        type = Types::GetRouteResponsesOutput.new
        type.items = List____listOfRouteResponse.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetRoutesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoutesInput, context: context)
        type = Types::GetRoutesInput.new
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetRoutesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRoutesOutput, context: context)
        type = Types::GetRoutesOutput.new
        type.items = List____listOfRoute.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageInput, context: context)
        type = Types::GetStageInput.new
        type.api_id = params[:api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module GetStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStageOutput, context: context)
        type = Types::GetStageOutput.new
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.api_gateway_managed = params[:api_gateway_managed]
        type.auto_deploy = params[:auto_deploy]
        type.client_certificate_id = params[:client_certificate_id]
        type.created_date = params[:created_date]
        type.default_route_settings = RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.last_deployment_status_message = params[:last_deployment_status_message]
        type.last_updated_date = params[:last_updated_date]
        type.route_settings = RouteSettingsMap.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = StageVariablesMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetStagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStagesInput, context: context)
        type = Types::GetStagesInput.new
        type.api_id = params[:api_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetStagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetStagesOutput, context: context)
        type = Types::GetStagesOutput.new
        type.items = List____listOfStage.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsInput, context: context)
        type = Types::GetTagsInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module GetTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTagsOutput, context: context)
        type = Types::GetTagsOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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
        type.created_date = params[:created_date]
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_link_id = params[:vpc_link_id]
        type.vpc_link_status = params[:vpc_link_status]
        type.vpc_link_status_message = params[:vpc_link_status_message]
        type.vpc_link_version = params[:vpc_link_version]
        type
      end
    end

    module GetVpcLinksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcLinksInput, context: context)
        type = Types::GetVpcLinksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetVpcLinksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetVpcLinksOutput, context: context)
        type = Types::GetVpcLinksOutput.new
        type.items = List____listOfVpcLink.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module IdentitySourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ImportApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportApiInput, context: context)
        type = Types::ImportApiInput.new
        type.basepath = params[:basepath]
        type.body = params[:body]
        type.fail_on_warnings = params[:fail_on_warnings]
        type
      end
    end

    module ImportApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportApiOutput, context: context)
        type = Types::ImportApiOutput.new
        type.api_endpoint = params[:api_endpoint]
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.import_info = List____listOf__string.build(params[:import_info], context: "#{context}[:import_info]") unless params[:import_info].nil?
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type.warnings = List____listOf__string.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module Integration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Integration, context: context)
        type = Types::Integration.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.connection_id = params[:connection_id]
        type.connection_type = params[:connection_type]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.integration_id = params[:integration_id]
        type.integration_method = params[:integration_method]
        type.integration_response_selection_expression = params[:integration_response_selection_expression]
        type.integration_subtype = params[:integration_subtype]
        type.integration_type = params[:integration_type]
        type.integration_uri = params[:integration_uri]
        type.passthrough_behavior = params[:passthrough_behavior]
        type.payload_format_version = params[:payload_format_version]
        type.request_parameters = IntegrationParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = TemplateMap.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.response_parameters = ResponseParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module IntegrationParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module IntegrationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegrationResponse, context: context)
        type = Types::IntegrationResponse.new
        type.content_handling_strategy = params[:content_handling_strategy]
        type.integration_response_id = params[:integration_response_id]
        type.integration_response_key = params[:integration_response_key]
        type.response_parameters = IntegrationParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = TemplateMap.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type
      end
    end

    module JWTConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JWTConfiguration, context: context)
        type = Types::JWTConfiguration.new
        type.audience = List____listOf__string.build(params[:audience], context: "#{context}[:audience]") unless params[:audience].nil?
        type.issuer = params[:issuer]
        type
      end
    end

    module Model
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Model, context: context)
        type = Types::Model.new
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.model_id = params[:model_id]
        type.name = params[:name]
        type.schema = params[:schema]
        type
      end
    end

    module MutualTlsAuthentication
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MutualTlsAuthentication, context: context)
        type = Types::MutualTlsAuthentication.new
        type.truststore_uri = params[:truststore_uri]
        type.truststore_version = params[:truststore_version]
        type.truststore_warnings = List____listOf__string.build(params[:truststore_warnings], context: "#{context}[:truststore_warnings]") unless params[:truststore_warnings].nil?
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
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ParameterConstraints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParameterConstraints, context: context)
        type = Types::ParameterConstraints.new
        type.required = params[:required]
        type
      end
    end

    module ReimportApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReimportApiInput, context: context)
        type = Types::ReimportApiInput.new
        type.api_id = params[:api_id]
        type.basepath = params[:basepath]
        type.body = params[:body]
        type.fail_on_warnings = params[:fail_on_warnings]
        type
      end
    end

    module ReimportApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReimportApiOutput, context: context)
        type = Types::ReimportApiOutput.new
        type.api_endpoint = params[:api_endpoint]
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.import_info = List____listOf__string.build(params[:import_info], context: "#{context}[:import_info]") unless params[:import_info].nil?
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type.warnings = List____listOf__string.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module ResetAuthorizersCacheInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetAuthorizersCacheInput, context: context)
        type = Types::ResetAuthorizersCacheInput.new
        type.api_id = params[:api_id]
        type.stage_name = params[:stage_name]
        type
      end
    end

    module ResetAuthorizersCacheOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResetAuthorizersCacheOutput, context: context)
        type = Types::ResetAuthorizersCacheOutput.new
        type
      end
    end

    module ResponseParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = IntegrationParameters.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Route
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Route, context: context)
        type = Types::Route.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_key_required = params[:api_key_required]
        type.authorization_scopes = AuthorizationScopes.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.operation_name = params[:operation_name]
        type.request_models = RouteModels.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_parameters = RouteParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.route_id = params[:route_id]
        type.route_key = params[:route_key]
        type.route_response_selection_expression = params[:route_response_selection_expression]
        type.target = params[:target]
        type
      end
    end

    module RouteModels
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module RouteParameters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ParameterConstraints.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module RouteResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteResponse, context: context)
        type = Types::RouteResponse.new
        type.model_selection_expression = params[:model_selection_expression]
        type.response_models = RouteModels.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type.response_parameters = RouteParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.route_response_id = params[:route_response_id]
        type.route_response_key = params[:route_response_key]
        type
      end
    end

    module RouteSettings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RouteSettings, context: context)
        type = Types::RouteSettings.new
        type.data_trace_enabled = params[:data_trace_enabled]
        type.detailed_metrics_enabled = params[:detailed_metrics_enabled]
        type.logging_level = params[:logging_level]
        type.throttling_burst_limit = params[:throttling_burst_limit]
        type.throttling_rate_limit = params[:throttling_rate_limit]
        type
      end
    end

    module RouteSettingsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = RouteSettings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Stage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Stage, context: context)
        type = Types::Stage.new
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.api_gateway_managed = params[:api_gateway_managed]
        type.auto_deploy = params[:auto_deploy]
        type.client_certificate_id = params[:client_certificate_id]
        type.created_date = params[:created_date]
        type.default_route_settings = RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.last_deployment_status_message = params[:last_deployment_status_message]
        type.last_updated_date = params[:last_updated_date]
        type.route_settings = RouteSettingsMap.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = StageVariablesMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module StageVariablesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TemplateMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TlsConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsConfig, context: context)
        type = Types::TlsConfig.new
        type.server_name_to_verify = params[:server_name_to_verify]
        type
      end
    end

    module TlsConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TlsConfigInput, context: context)
        type = Types::TlsConfigInput.new
        type.server_name_to_verify = params[:server_name_to_verify]
        type
      end
    end

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.limit_type = params[:limit_type]
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateApiInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiInput, context: context)
        type = Types::UpdateApiInput.new
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.name = params[:name]
        type.route_key = params[:route_key]
        type.route_selection_expression = params[:route_selection_expression]
        type.target = params[:target]
        type.version = params[:version]
        type
      end
    end

    module UpdateApiMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiMappingInput, context: context)
        type = Types::UpdateApiMappingInput.new
        type.api_id = params[:api_id]
        type.api_mapping_id = params[:api_mapping_id]
        type.api_mapping_key = params[:api_mapping_key]
        type.domain_name = params[:domain_name]
        type.stage = params[:stage]
        type
      end
    end

    module UpdateApiMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiMappingOutput, context: context)
        type = Types::UpdateApiMappingOutput.new
        type.api_id = params[:api_id]
        type.api_mapping_id = params[:api_mapping_id]
        type.api_mapping_key = params[:api_mapping_key]
        type.stage = params[:stage]
        type
      end
    end

    module UpdateApiOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApiOutput, context: context)
        type = Types::UpdateApiOutput.new
        type.api_endpoint = params[:api_endpoint]
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_id = params[:api_id]
        type.api_key_selection_expression = params[:api_key_selection_expression]
        type.cors_configuration = Cors.build(params[:cors_configuration], context: "#{context}[:cors_configuration]") unless params[:cors_configuration].nil?
        type.created_date = params[:created_date]
        type.description = params[:description]
        type.disable_schema_validation = params[:disable_schema_validation]
        type.disable_execute_api_endpoint = params[:disable_execute_api_endpoint]
        type.import_info = List____listOf__string.build(params[:import_info], context: "#{context}[:import_info]") unless params[:import_info].nil?
        type.name = params[:name]
        type.protocol_type = params[:protocol_type]
        type.route_selection_expression = params[:route_selection_expression]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.version = params[:version]
        type.warnings = List____listOf__string.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type
      end
    end

    module UpdateAuthorizerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthorizerInput, context: context)
        type = Types::UpdateAuthorizerInput.new
        type.api_id = params[:api_id]
        type.authorizer_credentials_arn = params[:authorizer_credentials_arn]
        type.authorizer_id = params[:authorizer_id]
        type.authorizer_payload_format_version = params[:authorizer_payload_format_version]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_type = params[:authorizer_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.enable_simple_responses = params[:enable_simple_responses]
        type.identity_source = IdentitySourceList.build(params[:identity_source], context: "#{context}[:identity_source]") unless params[:identity_source].nil?
        type.identity_validation_expression = params[:identity_validation_expression]
        type.jwt_configuration = JWTConfiguration.build(params[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless params[:jwt_configuration].nil?
        type.name = params[:name]
        type
      end
    end

    module UpdateAuthorizerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAuthorizerOutput, context: context)
        type = Types::UpdateAuthorizerOutput.new
        type.authorizer_credentials_arn = params[:authorizer_credentials_arn]
        type.authorizer_id = params[:authorizer_id]
        type.authorizer_payload_format_version = params[:authorizer_payload_format_version]
        type.authorizer_result_ttl_in_seconds = params[:authorizer_result_ttl_in_seconds]
        type.authorizer_type = params[:authorizer_type]
        type.authorizer_uri = params[:authorizer_uri]
        type.enable_simple_responses = params[:enable_simple_responses]
        type.identity_source = IdentitySourceList.build(params[:identity_source], context: "#{context}[:identity_source]") unless params[:identity_source].nil?
        type.identity_validation_expression = params[:identity_validation_expression]
        type.jwt_configuration = JWTConfiguration.build(params[:jwt_configuration], context: "#{context}[:jwt_configuration]") unless params[:jwt_configuration].nil?
        type.name = params[:name]
        type
      end
    end

    module UpdateDeploymentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentInput, context: context)
        type = Types::UpdateDeploymentInput.new
        type.api_id = params[:api_id]
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type
      end
    end

    module UpdateDeploymentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDeploymentOutput, context: context)
        type = Types::UpdateDeploymentOutput.new
        type.auto_deployed = params[:auto_deployed]
        type.created_date = params[:created_date]
        type.deployment_id = params[:deployment_id]
        type.deployment_status = params[:deployment_status]
        type.deployment_status_message = params[:deployment_status_message]
        type.description = params[:description]
        type
      end
    end

    module UpdateDomainNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameInput, context: context)
        type = Types::UpdateDomainNameInput.new
        type.domain_name = params[:domain_name]
        type.domain_name_configurations = DomainNameConfigurations.build(params[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless params[:domain_name_configurations].nil?
        type.mutual_tls_authentication = MutualTlsAuthenticationInput.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type
      end
    end

    module UpdateDomainNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainNameOutput, context: context)
        type = Types::UpdateDomainNameOutput.new
        type.api_mapping_selection_expression = params[:api_mapping_selection_expression]
        type.domain_name = params[:domain_name]
        type.domain_name_configurations = DomainNameConfigurations.build(params[:domain_name_configurations], context: "#{context}[:domain_name_configurations]") unless params[:domain_name_configurations].nil?
        type.mutual_tls_authentication = MutualTlsAuthentication.build(params[:mutual_tls_authentication], context: "#{context}[:mutual_tls_authentication]") unless params[:mutual_tls_authentication].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationInput, context: context)
        type = Types::UpdateIntegrationInput.new
        type.api_id = params[:api_id]
        type.connection_id = params[:connection_id]
        type.connection_type = params[:connection_type]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.integration_id = params[:integration_id]
        type.integration_method = params[:integration_method]
        type.integration_subtype = params[:integration_subtype]
        type.integration_type = params[:integration_type]
        type.integration_uri = params[:integration_uri]
        type.passthrough_behavior = params[:passthrough_behavior]
        type.payload_format_version = params[:payload_format_version]
        type.request_parameters = IntegrationParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = TemplateMap.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.response_parameters = ResponseParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfigInput.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module UpdateIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationOutput, context: context)
        type = Types::UpdateIntegrationOutput.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.connection_id = params[:connection_id]
        type.connection_type = params[:connection_type]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.credentials_arn = params[:credentials_arn]
        type.description = params[:description]
        type.integration_id = params[:integration_id]
        type.integration_method = params[:integration_method]
        type.integration_response_selection_expression = params[:integration_response_selection_expression]
        type.integration_subtype = params[:integration_subtype]
        type.integration_type = params[:integration_type]
        type.integration_uri = params[:integration_uri]
        type.passthrough_behavior = params[:passthrough_behavior]
        type.payload_format_version = params[:payload_format_version]
        type.request_parameters = IntegrationParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.request_templates = TemplateMap.build(params[:request_templates], context: "#{context}[:request_templates]") unless params[:request_templates].nil?
        type.response_parameters = ResponseParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type.timeout_in_millis = params[:timeout_in_millis]
        type.tls_config = TlsConfig.build(params[:tls_config], context: "#{context}[:tls_config]") unless params[:tls_config].nil?
        type
      end
    end

    module UpdateIntegrationResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationResponseInput, context: context)
        type = Types::UpdateIntegrationResponseInput.new
        type.api_id = params[:api_id]
        type.content_handling_strategy = params[:content_handling_strategy]
        type.integration_id = params[:integration_id]
        type.integration_response_id = params[:integration_response_id]
        type.integration_response_key = params[:integration_response_key]
        type.response_parameters = IntegrationParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = TemplateMap.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type
      end
    end

    module UpdateIntegrationResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIntegrationResponseOutput, context: context)
        type = Types::UpdateIntegrationResponseOutput.new
        type.content_handling_strategy = params[:content_handling_strategy]
        type.integration_response_id = params[:integration_response_id]
        type.integration_response_key = params[:integration_response_key]
        type.response_parameters = IntegrationParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.response_templates = TemplateMap.build(params[:response_templates], context: "#{context}[:response_templates]") unless params[:response_templates].nil?
        type.template_selection_expression = params[:template_selection_expression]
        type
      end
    end

    module UpdateModelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelInput, context: context)
        type = Types::UpdateModelInput.new
        type.api_id = params[:api_id]
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.model_id = params[:model_id]
        type.name = params[:name]
        type.schema = params[:schema]
        type
      end
    end

    module UpdateModelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateModelOutput, context: context)
        type = Types::UpdateModelOutput.new
        type.content_type = params[:content_type]
        type.description = params[:description]
        type.model_id = params[:model_id]
        type.name = params[:name]
        type.schema = params[:schema]
        type
      end
    end

    module UpdateRouteInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteInput, context: context)
        type = Types::UpdateRouteInput.new
        type.api_id = params[:api_id]
        type.api_key_required = params[:api_key_required]
        type.authorization_scopes = AuthorizationScopes.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.operation_name = params[:operation_name]
        type.request_models = RouteModels.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_parameters = RouteParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.route_id = params[:route_id]
        type.route_key = params[:route_key]
        type.route_response_selection_expression = params[:route_response_selection_expression]
        type.target = params[:target]
        type
      end
    end

    module UpdateRouteOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteOutput, context: context)
        type = Types::UpdateRouteOutput.new
        type.api_gateway_managed = params[:api_gateway_managed]
        type.api_key_required = params[:api_key_required]
        type.authorization_scopes = AuthorizationScopes.build(params[:authorization_scopes], context: "#{context}[:authorization_scopes]") unless params[:authorization_scopes].nil?
        type.authorization_type = params[:authorization_type]
        type.authorizer_id = params[:authorizer_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.operation_name = params[:operation_name]
        type.request_models = RouteModels.build(params[:request_models], context: "#{context}[:request_models]") unless params[:request_models].nil?
        type.request_parameters = RouteParameters.build(params[:request_parameters], context: "#{context}[:request_parameters]") unless params[:request_parameters].nil?
        type.route_id = params[:route_id]
        type.route_key = params[:route_key]
        type.route_response_selection_expression = params[:route_response_selection_expression]
        type.target = params[:target]
        type
      end
    end

    module UpdateRouteResponseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteResponseInput, context: context)
        type = Types::UpdateRouteResponseInput.new
        type.api_id = params[:api_id]
        type.model_selection_expression = params[:model_selection_expression]
        type.response_models = RouteModels.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type.response_parameters = RouteParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.route_id = params[:route_id]
        type.route_response_id = params[:route_response_id]
        type.route_response_key = params[:route_response_key]
        type
      end
    end

    module UpdateRouteResponseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRouteResponseOutput, context: context)
        type = Types::UpdateRouteResponseOutput.new
        type.model_selection_expression = params[:model_selection_expression]
        type.response_models = RouteModels.build(params[:response_models], context: "#{context}[:response_models]") unless params[:response_models].nil?
        type.response_parameters = RouteParameters.build(params[:response_parameters], context: "#{context}[:response_parameters]") unless params[:response_parameters].nil?
        type.route_response_id = params[:route_response_id]
        type.route_response_key = params[:route_response_key]
        type
      end
    end

    module UpdateStageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStageInput, context: context)
        type = Types::UpdateStageInput.new
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.api_id = params[:api_id]
        type.auto_deploy = params[:auto_deploy]
        type.client_certificate_id = params[:client_certificate_id]
        type.default_route_settings = RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.route_settings = RouteSettingsMap.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = StageVariablesMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type
      end
    end

    module UpdateStageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateStageOutput, context: context)
        type = Types::UpdateStageOutput.new
        type.access_log_settings = AccessLogSettings.build(params[:access_log_settings], context: "#{context}[:access_log_settings]") unless params[:access_log_settings].nil?
        type.api_gateway_managed = params[:api_gateway_managed]
        type.auto_deploy = params[:auto_deploy]
        type.client_certificate_id = params[:client_certificate_id]
        type.created_date = params[:created_date]
        type.default_route_settings = RouteSettings.build(params[:default_route_settings], context: "#{context}[:default_route_settings]") unless params[:default_route_settings].nil?
        type.deployment_id = params[:deployment_id]
        type.description = params[:description]
        type.last_deployment_status_message = params[:last_deployment_status_message]
        type.last_updated_date = params[:last_updated_date]
        type.route_settings = RouteSettingsMap.build(params[:route_settings], context: "#{context}[:route_settings]") unless params[:route_settings].nil?
        type.stage_name = params[:stage_name]
        type.stage_variables = StageVariablesMap.build(params[:stage_variables], context: "#{context}[:stage_variables]") unless params[:stage_variables].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateVpcLinkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVpcLinkInput, context: context)
        type = Types::UpdateVpcLinkInput.new
        type.name = params[:name]
        type.vpc_link_id = params[:vpc_link_id]
        type
      end
    end

    module UpdateVpcLinkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateVpcLinkOutput, context: context)
        type = Types::UpdateVpcLinkOutput.new
        type.created_date = params[:created_date]
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_link_id = params[:vpc_link_id]
        type.vpc_link_status = params[:vpc_link_status]
        type.vpc_link_status_message = params[:vpc_link_status_message]
        type.vpc_link_version = params[:vpc_link_version]
        type
      end
    end

    module VpcLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcLink, context: context)
        type = Types::VpcLink.new
        type.created_date = params[:created_date]
        type.name = params[:name]
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_link_id = params[:vpc_link_id]
        type.vpc_link_status = params[:vpc_link_status]
        type.vpc_link_status_message = params[:vpc_link_status_message]
        type.vpc_link_version = params[:vpc_link_version]
        type
      end
    end

    module List____listOfApi
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Api.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfApiMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApiMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfAuthorizer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Authorizer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDeployment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Deployment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfDomainName
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DomainName.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfIntegration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Integration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfIntegrationResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IntegrationResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfModel
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Model.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRoute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Route.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRouteResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RouteResponse.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfStage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Stage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfVpcLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcLink.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
