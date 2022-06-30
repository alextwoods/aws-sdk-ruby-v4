# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Appflow
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AggregationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AggregationConfig, context: context)
        type = Types::AggregationConfig.new
        type.aggregation_type = params[:aggregation_type]
        type
      end
    end

    module AmplitudeConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmplitudeConnectorProfileCredentials, context: context)
        type = Types::AmplitudeConnectorProfileCredentials.new
        type.api_key = params[:api_key]
        type.secret_key = params[:secret_key]
        type
      end
    end

    module AmplitudeConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmplitudeConnectorProfileProperties, context: context)
        type = Types::AmplitudeConnectorProfileProperties.new
        type
      end
    end

    module AmplitudeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmplitudeMetadata, context: context)
        type = Types::AmplitudeMetadata.new
        type
      end
    end

    module AmplitudeSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AmplitudeSourceProperties, context: context)
        type = Types::AmplitudeSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module ApiKeyCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApiKeyCredentials, context: context)
        type = Types::ApiKeyCredentials.new
        type.api_key = params[:api_key]
        type.api_secret_key = params[:api_secret_key]
        type
      end
    end

    module AuthCodeUrlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AuthParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthParameter, context: context)
        type = Types::AuthParameter.new
        type.key = params[:key]
        type.is_required = params[:is_required]
        type.label = params[:label]
        type.description = params[:description]
        type.is_sensitive_field = params[:is_sensitive_field]
        type.connector_supplied_values = ConnectorSuppliedValueList.build(params[:connector_supplied_values], context: "#{context}[:connector_supplied_values]") unless params[:connector_supplied_values].nil?
        type
      end
    end

    module AuthParameterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AuthParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthenticationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationConfig, context: context)
        type = Types::AuthenticationConfig.new
        type.is_basic_auth_supported = params[:is_basic_auth_supported]
        type.is_api_key_auth_supported = params[:is_api_key_auth_supported]
        type.is_o_auth2_supported = params[:is_o_auth2_supported]
        type.is_custom_auth_supported = params[:is_custom_auth_supported]
        type.o_auth2_defaults = OAuth2Defaults.build(params[:o_auth2_defaults], context: "#{context}[:o_auth2_defaults]") unless params[:o_auth2_defaults].nil?
        type.custom_auth_configs = CustomAuthConfigList.build(params[:custom_auth_configs], context: "#{context}[:custom_auth_configs]") unless params[:custom_auth_configs].nil?
        type
      end
    end

    module BasicAuthCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BasicAuthCredentials, context: context)
        type = Types::BasicAuthCredentials.new
        type.username = params[:username]
        type.password = params[:password]
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

    module ConnectorAuthenticationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorAuthenticationException, context: context)
        type = Types::ConnectorAuthenticationException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectorConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorConfiguration, context: context)
        type = Types::ConnectorConfiguration.new
        type.can_use_as_source = params[:can_use_as_source]
        type.can_use_as_destination = params[:can_use_as_destination]
        type.supported_destination_connectors = ConnectorTypeList.build(params[:supported_destination_connectors], context: "#{context}[:supported_destination_connectors]") unless params[:supported_destination_connectors].nil?
        type.supported_scheduling_frequencies = SchedulingFrequencyTypeList.build(params[:supported_scheduling_frequencies], context: "#{context}[:supported_scheduling_frequencies]") unless params[:supported_scheduling_frequencies].nil?
        type.is_private_link_enabled = params[:is_private_link_enabled]
        type.is_private_link_endpoint_url_required = params[:is_private_link_endpoint_url_required]
        type.supported_trigger_types = TriggerTypeList.build(params[:supported_trigger_types], context: "#{context}[:supported_trigger_types]") unless params[:supported_trigger_types].nil?
        type.connector_metadata = ConnectorMetadata.build(params[:connector_metadata], context: "#{context}[:connector_metadata]") unless params[:connector_metadata].nil?
        type.connector_type = params[:connector_type]
        type.connector_label = params[:connector_label]
        type.connector_description = params[:connector_description]
        type.connector_owner = params[:connector_owner]
        type.connector_name = params[:connector_name]
        type.connector_version = params[:connector_version]
        type.connector_arn = params[:connector_arn]
        type.connector_modes = ConnectorModeList.build(params[:connector_modes], context: "#{context}[:connector_modes]") unless params[:connector_modes].nil?
        type.authentication_config = AuthenticationConfig.build(params[:authentication_config], context: "#{context}[:authentication_config]") unless params[:authentication_config].nil?
        type.connector_runtime_settings = ConnectorRuntimeSettingList.build(params[:connector_runtime_settings], context: "#{context}[:connector_runtime_settings]") unless params[:connector_runtime_settings].nil?
        type.supported_api_versions = SupportedApiVersionList.build(params[:supported_api_versions], context: "#{context}[:supported_api_versions]") unless params[:supported_api_versions].nil?
        type.supported_operators = SupportedOperatorList.build(params[:supported_operators], context: "#{context}[:supported_operators]") unless params[:supported_operators].nil?
        type.supported_write_operations = SupportedWriteOperationList.build(params[:supported_write_operations], context: "#{context}[:supported_write_operations]") unless params[:supported_write_operations].nil?
        type.connector_provisioning_type = params[:connector_provisioning_type]
        type.connector_provisioning_config = ConnectorProvisioningConfig.build(params[:connector_provisioning_config], context: "#{context}[:connector_provisioning_config]") unless params[:connector_provisioning_config].nil?
        type.logo_url = params[:logo_url]
        type.registered_at = params[:registered_at]
        type.registered_by = params[:registered_by]
        type
      end
    end

    module ConnectorConfigurationsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ConnectorConfiguration.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ConnectorDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorDetail, context: context)
        type = Types::ConnectorDetail.new
        type.connector_description = params[:connector_description]
        type.connector_name = params[:connector_name]
        type.connector_owner = params[:connector_owner]
        type.connector_version = params[:connector_version]
        type.application_type = params[:application_type]
        type.connector_type = params[:connector_type]
        type.connector_label = params[:connector_label]
        type.registered_at = params[:registered_at]
        type.registered_by = params[:registered_by]
        type.connector_provisioning_type = params[:connector_provisioning_type]
        type.connector_modes = ConnectorModeList.build(params[:connector_modes], context: "#{context}[:connector_modes]") unless params[:connector_modes].nil?
        type
      end
    end

    module ConnectorEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorEntity, context: context)
        type = Types::ConnectorEntity.new
        type.name = params[:name]
        type.label = params[:label]
        type.has_nested_entities = params[:has_nested_entities]
        type
      end
    end

    module ConnectorEntityField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorEntityField, context: context)
        type = Types::ConnectorEntityField.new
        type.identifier = params[:identifier]
        type.parent_identifier = params[:parent_identifier]
        type.label = params[:label]
        type.is_primary_key = params[:is_primary_key]
        type.default_value = params[:default_value]
        type.is_deprecated = params[:is_deprecated]
        type.supported_field_type_details = SupportedFieldTypeDetails.build(params[:supported_field_type_details], context: "#{context}[:supported_field_type_details]") unless params[:supported_field_type_details].nil?
        type.description = params[:description]
        type.source_properties = SourceFieldProperties.build(params[:source_properties], context: "#{context}[:source_properties]") unless params[:source_properties].nil?
        type.destination_properties = DestinationFieldProperties.build(params[:destination_properties], context: "#{context}[:destination_properties]") unless params[:destination_properties].nil?
        type.custom_properties = CustomProperties.build(params[:custom_properties], context: "#{context}[:custom_properties]") unless params[:custom_properties].nil?
        type
      end
    end

    module ConnectorEntityFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectorEntityField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectorEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectorEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectorEntityMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ConnectorEntityList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ConnectorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectorDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectorMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorMetadata, context: context)
        type = Types::ConnectorMetadata.new
        type.amplitude = AmplitudeMetadata.build(params[:amplitude], context: "#{context}[:amplitude]") unless params[:amplitude].nil?
        type.datadog = DatadogMetadata.build(params[:datadog], context: "#{context}[:datadog]") unless params[:datadog].nil?
        type.dynatrace = DynatraceMetadata.build(params[:dynatrace], context: "#{context}[:dynatrace]") unless params[:dynatrace].nil?
        type.google_analytics = GoogleAnalyticsMetadata.build(params[:google_analytics], context: "#{context}[:google_analytics]") unless params[:google_analytics].nil?
        type.infor_nexus = InforNexusMetadata.build(params[:infor_nexus], context: "#{context}[:infor_nexus]") unless params[:infor_nexus].nil?
        type.marketo = MarketoMetadata.build(params[:marketo], context: "#{context}[:marketo]") unless params[:marketo].nil?
        type.redshift = RedshiftMetadata.build(params[:redshift], context: "#{context}[:redshift]") unless params[:redshift].nil?
        type.s3 = S3Metadata.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.salesforce = SalesforceMetadata.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.service_now = ServiceNowMetadata.build(params[:service_now], context: "#{context}[:service_now]") unless params[:service_now].nil?
        type.singular = SingularMetadata.build(params[:singular], context: "#{context}[:singular]") unless params[:singular].nil?
        type.slack = SlackMetadata.build(params[:slack], context: "#{context}[:slack]") unless params[:slack].nil?
        type.snowflake = SnowflakeMetadata.build(params[:snowflake], context: "#{context}[:snowflake]") unless params[:snowflake].nil?
        type.trendmicro = TrendmicroMetadata.build(params[:trendmicro], context: "#{context}[:trendmicro]") unless params[:trendmicro].nil?
        type.veeva = VeevaMetadata.build(params[:veeva], context: "#{context}[:veeva]") unless params[:veeva].nil?
        type.zendesk = ZendeskMetadata.build(params[:zendesk], context: "#{context}[:zendesk]") unless params[:zendesk].nil?
        type.event_bridge = EventBridgeMetadata.build(params[:event_bridge], context: "#{context}[:event_bridge]") unless params[:event_bridge].nil?
        type.upsolver = UpsolverMetadata.build(params[:upsolver], context: "#{context}[:upsolver]") unless params[:upsolver].nil?
        type.customer_profiles = CustomerProfilesMetadata.build(params[:customer_profiles], context: "#{context}[:customer_profiles]") unless params[:customer_profiles].nil?
        type.honeycode = HoneycodeMetadata.build(params[:honeycode], context: "#{context}[:honeycode]") unless params[:honeycode].nil?
        type.sapo_data = SAPODataMetadata.build(params[:sapo_data], context: "#{context}[:sapo_data]") unless params[:sapo_data].nil?
        type
      end
    end

    module ConnectorModeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectorOAuthRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorOAuthRequest, context: context)
        type = Types::ConnectorOAuthRequest.new
        type.auth_code = params[:auth_code]
        type.redirect_uri = params[:redirect_uri]
        type
      end
    end

    module ConnectorOperator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorOperator, context: context)
        type = Types::ConnectorOperator.new
        type.amplitude = params[:amplitude]
        type.datadog = params[:datadog]
        type.dynatrace = params[:dynatrace]
        type.google_analytics = params[:google_analytics]
        type.infor_nexus = params[:infor_nexus]
        type.marketo = params[:marketo]
        type.s3 = params[:s3]
        type.salesforce = params[:salesforce]
        type.service_now = params[:service_now]
        type.singular = params[:singular]
        type.slack = params[:slack]
        type.trendmicro = params[:trendmicro]
        type.veeva = params[:veeva]
        type.zendesk = params[:zendesk]
        type.sapo_data = params[:sapo_data]
        type.custom_connector = params[:custom_connector]
        type
      end
    end

    module ConnectorProfile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorProfile, context: context)
        type = Types::ConnectorProfile.new
        type.connector_profile_arn = params[:connector_profile_arn]
        type.connector_profile_name = params[:connector_profile_name]
        type.connector_type = params[:connector_type]
        type.connector_label = params[:connector_label]
        type.connection_mode = params[:connection_mode]
        type.credentials_arn = params[:credentials_arn]
        type.connector_profile_properties = ConnectorProfileProperties.build(params[:connector_profile_properties], context: "#{context}[:connector_profile_properties]") unless params[:connector_profile_properties].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.private_connection_provisioning_state = PrivateConnectionProvisioningState.build(params[:private_connection_provisioning_state], context: "#{context}[:private_connection_provisioning_state]") unless params[:private_connection_provisioning_state].nil?
        type
      end
    end

    module ConnectorProfileConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorProfileConfig, context: context)
        type = Types::ConnectorProfileConfig.new
        type.connector_profile_properties = ConnectorProfileProperties.build(params[:connector_profile_properties], context: "#{context}[:connector_profile_properties]") unless params[:connector_profile_properties].nil?
        type.connector_profile_credentials = ConnectorProfileCredentials.build(params[:connector_profile_credentials], context: "#{context}[:connector_profile_credentials]") unless params[:connector_profile_credentials].nil?
        type
      end
    end

    module ConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorProfileCredentials, context: context)
        type = Types::ConnectorProfileCredentials.new
        type.amplitude = AmplitudeConnectorProfileCredentials.build(params[:amplitude], context: "#{context}[:amplitude]") unless params[:amplitude].nil?
        type.datadog = DatadogConnectorProfileCredentials.build(params[:datadog], context: "#{context}[:datadog]") unless params[:datadog].nil?
        type.dynatrace = DynatraceConnectorProfileCredentials.build(params[:dynatrace], context: "#{context}[:dynatrace]") unless params[:dynatrace].nil?
        type.google_analytics = GoogleAnalyticsConnectorProfileCredentials.build(params[:google_analytics], context: "#{context}[:google_analytics]") unless params[:google_analytics].nil?
        type.honeycode = HoneycodeConnectorProfileCredentials.build(params[:honeycode], context: "#{context}[:honeycode]") unless params[:honeycode].nil?
        type.infor_nexus = InforNexusConnectorProfileCredentials.build(params[:infor_nexus], context: "#{context}[:infor_nexus]") unless params[:infor_nexus].nil?
        type.marketo = MarketoConnectorProfileCredentials.build(params[:marketo], context: "#{context}[:marketo]") unless params[:marketo].nil?
        type.redshift = RedshiftConnectorProfileCredentials.build(params[:redshift], context: "#{context}[:redshift]") unless params[:redshift].nil?
        type.salesforce = SalesforceConnectorProfileCredentials.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.service_now = ServiceNowConnectorProfileCredentials.build(params[:service_now], context: "#{context}[:service_now]") unless params[:service_now].nil?
        type.singular = SingularConnectorProfileCredentials.build(params[:singular], context: "#{context}[:singular]") unless params[:singular].nil?
        type.slack = SlackConnectorProfileCredentials.build(params[:slack], context: "#{context}[:slack]") unless params[:slack].nil?
        type.snowflake = SnowflakeConnectorProfileCredentials.build(params[:snowflake], context: "#{context}[:snowflake]") unless params[:snowflake].nil?
        type.trendmicro = TrendmicroConnectorProfileCredentials.build(params[:trendmicro], context: "#{context}[:trendmicro]") unless params[:trendmicro].nil?
        type.veeva = VeevaConnectorProfileCredentials.build(params[:veeva], context: "#{context}[:veeva]") unless params[:veeva].nil?
        type.zendesk = ZendeskConnectorProfileCredentials.build(params[:zendesk], context: "#{context}[:zendesk]") unless params[:zendesk].nil?
        type.sapo_data = SAPODataConnectorProfileCredentials.build(params[:sapo_data], context: "#{context}[:sapo_data]") unless params[:sapo_data].nil?
        type.custom_connector = CustomConnectorProfileCredentials.build(params[:custom_connector], context: "#{context}[:custom_connector]") unless params[:custom_connector].nil?
        type
      end
    end

    module ConnectorProfileDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectorProfile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectorProfileNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorProfileProperties, context: context)
        type = Types::ConnectorProfileProperties.new
        type.amplitude = AmplitudeConnectorProfileProperties.build(params[:amplitude], context: "#{context}[:amplitude]") unless params[:amplitude].nil?
        type.datadog = DatadogConnectorProfileProperties.build(params[:datadog], context: "#{context}[:datadog]") unless params[:datadog].nil?
        type.dynatrace = DynatraceConnectorProfileProperties.build(params[:dynatrace], context: "#{context}[:dynatrace]") unless params[:dynatrace].nil?
        type.google_analytics = GoogleAnalyticsConnectorProfileProperties.build(params[:google_analytics], context: "#{context}[:google_analytics]") unless params[:google_analytics].nil?
        type.honeycode = HoneycodeConnectorProfileProperties.build(params[:honeycode], context: "#{context}[:honeycode]") unless params[:honeycode].nil?
        type.infor_nexus = InforNexusConnectorProfileProperties.build(params[:infor_nexus], context: "#{context}[:infor_nexus]") unless params[:infor_nexus].nil?
        type.marketo = MarketoConnectorProfileProperties.build(params[:marketo], context: "#{context}[:marketo]") unless params[:marketo].nil?
        type.redshift = RedshiftConnectorProfileProperties.build(params[:redshift], context: "#{context}[:redshift]") unless params[:redshift].nil?
        type.salesforce = SalesforceConnectorProfileProperties.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.service_now = ServiceNowConnectorProfileProperties.build(params[:service_now], context: "#{context}[:service_now]") unless params[:service_now].nil?
        type.singular = SingularConnectorProfileProperties.build(params[:singular], context: "#{context}[:singular]") unless params[:singular].nil?
        type.slack = SlackConnectorProfileProperties.build(params[:slack], context: "#{context}[:slack]") unless params[:slack].nil?
        type.snowflake = SnowflakeConnectorProfileProperties.build(params[:snowflake], context: "#{context}[:snowflake]") unless params[:snowflake].nil?
        type.trendmicro = TrendmicroConnectorProfileProperties.build(params[:trendmicro], context: "#{context}[:trendmicro]") unless params[:trendmicro].nil?
        type.veeva = VeevaConnectorProfileProperties.build(params[:veeva], context: "#{context}[:veeva]") unless params[:veeva].nil?
        type.zendesk = ZendeskConnectorProfileProperties.build(params[:zendesk], context: "#{context}[:zendesk]") unless params[:zendesk].nil?
        type.sapo_data = SAPODataConnectorProfileProperties.build(params[:sapo_data], context: "#{context}[:sapo_data]") unless params[:sapo_data].nil?
        type.custom_connector = CustomConnectorProfileProperties.build(params[:custom_connector], context: "#{context}[:custom_connector]") unless params[:custom_connector].nil?
        type
      end
    end

    module ConnectorProvisioningConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorProvisioningConfig, context: context)
        type = Types::ConnectorProvisioningConfig.new
        type.lambda = LambdaConnectorProvisioningConfig.build(params[:lambda], context: "#{context}[:lambda]") unless params[:lambda].nil?
        type
      end
    end

    module ConnectorRuntimeSetting
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorRuntimeSetting, context: context)
        type = Types::ConnectorRuntimeSetting.new
        type.key = params[:key]
        type.data_type = params[:data_type]
        type.is_required = params[:is_required]
        type.label = params[:label]
        type.description = params[:description]
        type.scope = params[:scope]
        type.connector_supplied_value_options = ConnectorSuppliedValueOptionList.build(params[:connector_supplied_value_options], context: "#{context}[:connector_supplied_value_options]") unless params[:connector_supplied_value_options].nil?
        type
      end
    end

    module ConnectorRuntimeSettingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConnectorRuntimeSetting.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConnectorServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorServerException, context: context)
        type = Types::ConnectorServerException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectorSuppliedValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectorSuppliedValueOptionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConnectorTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateConnectorProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorProfileInput, context: context)
        type = Types::CreateConnectorProfileInput.new
        type.connector_profile_name = params[:connector_profile_name]
        type.kms_arn = params[:kms_arn]
        type.connector_type = params[:connector_type]
        type.connector_label = params[:connector_label]
        type.connection_mode = params[:connection_mode]
        type.connector_profile_config = ConnectorProfileConfig.build(params[:connector_profile_config], context: "#{context}[:connector_profile_config]") unless params[:connector_profile_config].nil?
        type
      end
    end

    module CreateConnectorProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateConnectorProfileOutput, context: context)
        type = Types::CreateConnectorProfileOutput.new
        type.connector_profile_arn = params[:connector_profile_arn]
        type
      end
    end

    module CreateFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowInput, context: context)
        type = Types::CreateFlowInput.new
        type.flow_name = params[:flow_name]
        type.description = params[:description]
        type.kms_arn = params[:kms_arn]
        type.trigger_config = TriggerConfig.build(params[:trigger_config], context: "#{context}[:trigger_config]") unless params[:trigger_config].nil?
        type.source_flow_config = SourceFlowConfig.build(params[:source_flow_config], context: "#{context}[:source_flow_config]") unless params[:source_flow_config].nil?
        type.destination_flow_config_list = DestinationFlowConfigList.build(params[:destination_flow_config_list], context: "#{context}[:destination_flow_config_list]") unless params[:destination_flow_config_list].nil?
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFlowOutput, context: context)
        type = Types::CreateFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.flow_status = params[:flow_status]
        type
      end
    end

    module CredentialsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CustomAuthConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomAuthConfig, context: context)
        type = Types::CustomAuthConfig.new
        type.custom_authentication_type = params[:custom_authentication_type]
        type.auth_parameters = AuthParameterList.build(params[:auth_parameters], context: "#{context}[:auth_parameters]") unless params[:auth_parameters].nil?
        type
      end
    end

    module CustomAuthConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CustomAuthConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CustomAuthCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomAuthCredentials, context: context)
        type = Types::CustomAuthCredentials.new
        type.custom_authentication_type = params[:custom_authentication_type]
        type.credentials_map = CredentialsMap.build(params[:credentials_map], context: "#{context}[:credentials_map]") unless params[:credentials_map].nil?
        type
      end
    end

    module CustomConnectorDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomConnectorDestinationProperties, context: context)
        type = Types::CustomConnectorDestinationProperties.new
        type.entity_name = params[:entity_name]
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type.write_operation_type = params[:write_operation_type]
        type.id_field_names = IdFieldNameList.build(params[:id_field_names], context: "#{context}[:id_field_names]") unless params[:id_field_names].nil?
        type.custom_properties = CustomProperties.build(params[:custom_properties], context: "#{context}[:custom_properties]") unless params[:custom_properties].nil?
        type
      end
    end

    module CustomConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomConnectorProfileCredentials, context: context)
        type = Types::CustomConnectorProfileCredentials.new
        type.authentication_type = params[:authentication_type]
        type.basic = BasicAuthCredentials.build(params[:basic], context: "#{context}[:basic]") unless params[:basic].nil?
        type.oauth2 = OAuth2Credentials.build(params[:oauth2], context: "#{context}[:oauth2]") unless params[:oauth2].nil?
        type.api_key = ApiKeyCredentials.build(params[:api_key], context: "#{context}[:api_key]") unless params[:api_key].nil?
        type.custom = CustomAuthCredentials.build(params[:custom], context: "#{context}[:custom]") unless params[:custom].nil?
        type
      end
    end

    module CustomConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomConnectorProfileProperties, context: context)
        type = Types::CustomConnectorProfileProperties.new
        type.profile_properties = ProfilePropertiesMap.build(params[:profile_properties], context: "#{context}[:profile_properties]") unless params[:profile_properties].nil?
        type.o_auth2_properties = OAuth2Properties.build(params[:o_auth2_properties], context: "#{context}[:o_auth2_properties]") unless params[:o_auth2_properties].nil?
        type
      end
    end

    module CustomConnectorSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomConnectorSourceProperties, context: context)
        type = Types::CustomConnectorSourceProperties.new
        type.entity_name = params[:entity_name]
        type.custom_properties = CustomProperties.build(params[:custom_properties], context: "#{context}[:custom_properties]") unless params[:custom_properties].nil?
        type
      end
    end

    module CustomProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CustomerProfilesDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerProfilesDestinationProperties, context: context)
        type = Types::CustomerProfilesDestinationProperties.new
        type.domain_name = params[:domain_name]
        type.object_type_name = params[:object_type_name]
        type
      end
    end

    module CustomerProfilesMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomerProfilesMetadata, context: context)
        type = Types::CustomerProfilesMetadata.new
        type
      end
    end

    module DatadogConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatadogConnectorProfileCredentials, context: context)
        type = Types::DatadogConnectorProfileCredentials.new
        type.api_key = params[:api_key]
        type.application_key = params[:application_key]
        type
      end
    end

    module DatadogConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatadogConnectorProfileProperties, context: context)
        type = Types::DatadogConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module DatadogMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatadogMetadata, context: context)
        type = Types::DatadogMetadata.new
        type
      end
    end

    module DatadogSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatadogSourceProperties, context: context)
        type = Types::DatadogSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module DeleteConnectorProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectorProfileInput, context: context)
        type = Types::DeleteConnectorProfileInput.new
        type.connector_profile_name = params[:connector_profile_name]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteConnectorProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteConnectorProfileOutput, context: context)
        type = Types::DeleteConnectorProfileOutput.new
        type
      end
    end

    module DeleteFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowInput, context: context)
        type = Types::DeleteFlowInput.new
        type.flow_name = params[:flow_name]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module DeleteFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFlowOutput, context: context)
        type = Types::DeleteFlowOutput.new
        type
      end
    end

    module DescribeConnectorEntityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorEntityInput, context: context)
        type = Types::DescribeConnectorEntityInput.new
        type.connector_entity_name = params[:connector_entity_name]
        type.connector_type = params[:connector_type]
        type.connector_profile_name = params[:connector_profile_name]
        type.api_version = params[:api_version]
        type
      end
    end

    module DescribeConnectorEntityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorEntityOutput, context: context)
        type = Types::DescribeConnectorEntityOutput.new
        type.connector_entity_fields = ConnectorEntityFieldList.build(params[:connector_entity_fields], context: "#{context}[:connector_entity_fields]") unless params[:connector_entity_fields].nil?
        type
      end
    end

    module DescribeConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorInput, context: context)
        type = Types::DescribeConnectorInput.new
        type.connector_type = params[:connector_type]
        type.connector_label = params[:connector_label]
        type
      end
    end

    module DescribeConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorOutput, context: context)
        type = Types::DescribeConnectorOutput.new
        type.connector_configuration = ConnectorConfiguration.build(params[:connector_configuration], context: "#{context}[:connector_configuration]") unless params[:connector_configuration].nil?
        type
      end
    end

    module DescribeConnectorProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorProfilesInput, context: context)
        type = Types::DescribeConnectorProfilesInput.new
        type.connector_profile_names = ConnectorProfileNameList.build(params[:connector_profile_names], context: "#{context}[:connector_profile_names]") unless params[:connector_profile_names].nil?
        type.connector_type = params[:connector_type]
        type.connector_label = params[:connector_label]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConnectorProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorProfilesOutput, context: context)
        type = Types::DescribeConnectorProfilesOutput.new
        type.connector_profile_details = ConnectorProfileDetailList.build(params[:connector_profile_details], context: "#{context}[:connector_profile_details]") unless params[:connector_profile_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConnectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorsInput, context: context)
        type = Types::DescribeConnectorsInput.new
        type.connector_types = ConnectorTypeList.build(params[:connector_types], context: "#{context}[:connector_types]") unless params[:connector_types].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeConnectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeConnectorsOutput, context: context)
        type = Types::DescribeConnectorsOutput.new
        type.connector_configurations = ConnectorConfigurationsMap.build(params[:connector_configurations], context: "#{context}[:connector_configurations]") unless params[:connector_configurations].nil?
        type.connectors = ConnectorList.build(params[:connectors], context: "#{context}[:connectors]") unless params[:connectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFlowExecutionRecordsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowExecutionRecordsInput, context: context)
        type = Types::DescribeFlowExecutionRecordsInput.new
        type.flow_name = params[:flow_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFlowExecutionRecordsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowExecutionRecordsOutput, context: context)
        type = Types::DescribeFlowExecutionRecordsOutput.new
        type.flow_executions = FlowExecutionList.build(params[:flow_executions], context: "#{context}[:flow_executions]") unless params[:flow_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowInput, context: context)
        type = Types::DescribeFlowInput.new
        type.flow_name = params[:flow_name]
        type
      end
    end

    module DescribeFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFlowOutput, context: context)
        type = Types::DescribeFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.description = params[:description]
        type.flow_name = params[:flow_name]
        type.kms_arn = params[:kms_arn]
        type.flow_status = params[:flow_status]
        type.flow_status_message = params[:flow_status_message]
        type.source_flow_config = SourceFlowConfig.build(params[:source_flow_config], context: "#{context}[:source_flow_config]") unless params[:source_flow_config].nil?
        type.destination_flow_config_list = DestinationFlowConfigList.build(params[:destination_flow_config_list], context: "#{context}[:destination_flow_config_list]") unless params[:destination_flow_config_list].nil?
        type.last_run_execution_details = ExecutionDetails.build(params[:last_run_execution_details], context: "#{context}[:last_run_execution_details]") unless params[:last_run_execution_details].nil?
        type.trigger_config = TriggerConfig.build(params[:trigger_config], context: "#{context}[:trigger_config]") unless params[:trigger_config].nil?
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.created_by = params[:created_by]
        type.last_updated_by = params[:last_updated_by]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DestinationConnectorProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationConnectorProperties, context: context)
        type = Types::DestinationConnectorProperties.new
        type.redshift = RedshiftDestinationProperties.build(params[:redshift], context: "#{context}[:redshift]") unless params[:redshift].nil?
        type.s3 = S3DestinationProperties.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.salesforce = SalesforceDestinationProperties.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.snowflake = SnowflakeDestinationProperties.build(params[:snowflake], context: "#{context}[:snowflake]") unless params[:snowflake].nil?
        type.event_bridge = EventBridgeDestinationProperties.build(params[:event_bridge], context: "#{context}[:event_bridge]") unless params[:event_bridge].nil?
        type.lookout_metrics = LookoutMetricsDestinationProperties.build(params[:lookout_metrics], context: "#{context}[:lookout_metrics]") unless params[:lookout_metrics].nil?
        type.upsolver = UpsolverDestinationProperties.build(params[:upsolver], context: "#{context}[:upsolver]") unless params[:upsolver].nil?
        type.honeycode = HoneycodeDestinationProperties.build(params[:honeycode], context: "#{context}[:honeycode]") unless params[:honeycode].nil?
        type.customer_profiles = CustomerProfilesDestinationProperties.build(params[:customer_profiles], context: "#{context}[:customer_profiles]") unless params[:customer_profiles].nil?
        type.zendesk = ZendeskDestinationProperties.build(params[:zendesk], context: "#{context}[:zendesk]") unless params[:zendesk].nil?
        type.marketo = MarketoDestinationProperties.build(params[:marketo], context: "#{context}[:marketo]") unless params[:marketo].nil?
        type.custom_connector = CustomConnectorDestinationProperties.build(params[:custom_connector], context: "#{context}[:custom_connector]") unless params[:custom_connector].nil?
        type.sapo_data = SAPODataDestinationProperties.build(params[:sapo_data], context: "#{context}[:sapo_data]") unless params[:sapo_data].nil?
        type
      end
    end

    module DestinationFieldProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationFieldProperties, context: context)
        type = Types::DestinationFieldProperties.new
        type.is_creatable = params[:is_creatable]
        type.is_nullable = params[:is_nullable]
        type.is_upsertable = params[:is_upsertable]
        type.is_updatable = params[:is_updatable]
        type.is_defaulted_on_create = params[:is_defaulted_on_create]
        type.supported_write_operations = SupportedWriteOperationList.build(params[:supported_write_operations], context: "#{context}[:supported_write_operations]") unless params[:supported_write_operations].nil?
        type
      end
    end

    module DestinationFlowConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationFlowConfig, context: context)
        type = Types::DestinationFlowConfig.new
        type.connector_type = params[:connector_type]
        type.api_version = params[:api_version]
        type.connector_profile_name = params[:connector_profile_name]
        type.destination_connector_properties = DestinationConnectorProperties.build(params[:destination_connector_properties], context: "#{context}[:destination_connector_properties]") unless params[:destination_connector_properties].nil?
        type
      end
    end

    module DestinationFlowConfigList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DestinationFlowConfig.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DynatraceConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynatraceConnectorProfileCredentials, context: context)
        type = Types::DynatraceConnectorProfileCredentials.new
        type.api_token = params[:api_token]
        type
      end
    end

    module DynatraceConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynatraceConnectorProfileProperties, context: context)
        type = Types::DynatraceConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module DynatraceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynatraceMetadata, context: context)
        type = Types::DynatraceMetadata.new
        type
      end
    end

    module DynatraceSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DynatraceSourceProperties, context: context)
        type = Types::DynatraceSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module ErrorHandlingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorHandlingConfig, context: context)
        type = Types::ErrorHandlingConfig.new
        type.fail_on_first_destination_error = params[:fail_on_first_destination_error]
        type.bucket_prefix = params[:bucket_prefix]
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module ErrorInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ErrorInfo, context: context)
        type = Types::ErrorInfo.new
        type.put_failures_count = params[:put_failures_count]
        type.execution_message = params[:execution_message]
        type
      end
    end

    module EventBridgeDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventBridgeDestinationProperties, context: context)
        type = Types::EventBridgeDestinationProperties.new
        type.object = params[:object]
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type
      end
    end

    module EventBridgeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventBridgeMetadata, context: context)
        type = Types::EventBridgeMetadata.new
        type
      end
    end

    module ExecutionDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionDetails, context: context)
        type = Types::ExecutionDetails.new
        type.most_recent_execution_message = params[:most_recent_execution_message]
        type.most_recent_execution_time = params[:most_recent_execution_time]
        type.most_recent_execution_status = params[:most_recent_execution_status]
        type
      end
    end

    module ExecutionRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionRecord, context: context)
        type = Types::ExecutionRecord.new
        type.execution_id = params[:execution_id]
        type.execution_status = params[:execution_status]
        type.execution_result = ExecutionResult.build(params[:execution_result], context: "#{context}[:execution_result]") unless params[:execution_result].nil?
        type.started_at = params[:started_at]
        type.last_updated_at = params[:last_updated_at]
        type.data_pull_start_time = params[:data_pull_start_time]
        type.data_pull_end_time = params[:data_pull_end_time]
        type
      end
    end

    module ExecutionResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExecutionResult, context: context)
        type = Types::ExecutionResult.new
        type.error_info = ErrorInfo.build(params[:error_info], context: "#{context}[:error_info]") unless params[:error_info].nil?
        type.bytes_processed = params[:bytes_processed]
        type.bytes_written = params[:bytes_written]
        type.records_processed = params[:records_processed]
        type
      end
    end

    module FieldTypeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldTypeDetails, context: context)
        type = Types::FieldTypeDetails.new
        type.field_type = params[:field_type]
        type.filter_operators = FilterOperatorList.build(params[:filter_operators], context: "#{context}[:filter_operators]") unless params[:filter_operators].nil?
        type.supported_values = SupportedValueList.build(params[:supported_values], context: "#{context}[:supported_values]") unless params[:supported_values].nil?
        type.value_regex_pattern = params[:value_regex_pattern]
        type.supported_date_format = params[:supported_date_format]
        type.field_value_range = Range.build(params[:field_value_range], context: "#{context}[:field_value_range]") unless params[:field_value_range].nil?
        type.field_length_range = Range.build(params[:field_length_range], context: "#{context}[:field_length_range]") unless params[:field_length_range].nil?
        type
      end
    end

    module FilterOperatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FlowDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowDefinition, context: context)
        type = Types::FlowDefinition.new
        type.flow_arn = params[:flow_arn]
        type.description = params[:description]
        type.flow_name = params[:flow_name]
        type.flow_status = params[:flow_status]
        type.source_connector_type = params[:source_connector_type]
        type.source_connector_label = params[:source_connector_label]
        type.destination_connector_type = params[:destination_connector_type]
        type.destination_connector_label = params[:destination_connector_label]
        type.trigger_type = params[:trigger_type]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.created_by = params[:created_by]
        type.last_updated_by = params[:last_updated_by]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.last_run_execution_details = ExecutionDetails.build(params[:last_run_execution_details], context: "#{context}[:last_run_execution_details]") unless params[:last_run_execution_details].nil?
        type
      end
    end

    module FlowExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExecutionRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FlowList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FlowDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GoogleAnalyticsConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoogleAnalyticsConnectorProfileCredentials, context: context)
        type = Types::GoogleAnalyticsConnectorProfileCredentials.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.access_token = params[:access_token]
        type.refresh_token = params[:refresh_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module GoogleAnalyticsConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoogleAnalyticsConnectorProfileProperties, context: context)
        type = Types::GoogleAnalyticsConnectorProfileProperties.new
        type
      end
    end

    module GoogleAnalyticsMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoogleAnalyticsMetadata, context: context)
        type = Types::GoogleAnalyticsMetadata.new
        type.o_auth_scopes = OAuthScopeList.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type
      end
    end

    module GoogleAnalyticsSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoogleAnalyticsSourceProperties, context: context)
        type = Types::GoogleAnalyticsSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module HoneycodeConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoneycodeConnectorProfileCredentials, context: context)
        type = Types::HoneycodeConnectorProfileCredentials.new
        type.access_token = params[:access_token]
        type.refresh_token = params[:refresh_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module HoneycodeConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoneycodeConnectorProfileProperties, context: context)
        type = Types::HoneycodeConnectorProfileProperties.new
        type
      end
    end

    module HoneycodeDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoneycodeDestinationProperties, context: context)
        type = Types::HoneycodeDestinationProperties.new
        type.object = params[:object]
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type
      end
    end

    module HoneycodeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HoneycodeMetadata, context: context)
        type = Types::HoneycodeMetadata.new
        type.o_auth_scopes = OAuthScopeList.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type
      end
    end

    module IdFieldNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IncrementalPullConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncrementalPullConfig, context: context)
        type = Types::IncrementalPullConfig.new
        type.datetime_type_field_name = params[:datetime_type_field_name]
        type
      end
    end

    module InforNexusConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InforNexusConnectorProfileCredentials, context: context)
        type = Types::InforNexusConnectorProfileCredentials.new
        type.access_key_id = params[:access_key_id]
        type.user_id = params[:user_id]
        type.secret_access_key = params[:secret_access_key]
        type.datakey = params[:datakey]
        type
      end
    end

    module InforNexusConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InforNexusConnectorProfileProperties, context: context)
        type = Types::InforNexusConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module InforNexusMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InforNexusMetadata, context: context)
        type = Types::InforNexusMetadata.new
        type
      end
    end

    module InforNexusSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InforNexusSourceProperties, context: context)
        type = Types::InforNexusSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module LambdaConnectorProvisioningConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaConnectorProvisioningConfig, context: context)
        type = Types::LambdaConnectorProvisioningConfig.new
        type.lambda_arn = params[:lambda_arn]
        type
      end
    end

    module ListConnectorEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorEntitiesInput, context: context)
        type = Types::ListConnectorEntitiesInput.new
        type.connector_profile_name = params[:connector_profile_name]
        type.connector_type = params[:connector_type]
        type.entities_path = params[:entities_path]
        type.api_version = params[:api_version]
        type
      end
    end

    module ListConnectorEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorEntitiesOutput, context: context)
        type = Types::ListConnectorEntitiesOutput.new
        type.connector_entity_map = ConnectorEntityMap.build(params[:connector_entity_map], context: "#{context}[:connector_entity_map]") unless params[:connector_entity_map].nil?
        type
      end
    end

    module ListConnectorsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorsInput, context: context)
        type = Types::ListConnectorsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListConnectorsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListConnectorsOutput, context: context)
        type = Types::ListConnectorsOutput.new
        type.connectors = ConnectorList.build(params[:connectors], context: "#{context}[:connectors]") unless params[:connectors].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFlowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowsInput, context: context)
        type = Types::ListFlowsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFlowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFlowsOutput, context: context)
        type = Types::ListFlowsOutput.new
        type.flows = FlowList.build(params[:flows], context: "#{context}[:flows]") unless params[:flows].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LookoutMetricsDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LookoutMetricsDestinationProperties, context: context)
        type = Types::LookoutMetricsDestinationProperties.new
        type
      end
    end

    module MarketoConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketoConnectorProfileCredentials, context: context)
        type = Types::MarketoConnectorProfileCredentials.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.access_token = params[:access_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module MarketoConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketoConnectorProfileProperties, context: context)
        type = Types::MarketoConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module MarketoDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketoDestinationProperties, context: context)
        type = Types::MarketoDestinationProperties.new
        type.object = params[:object]
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type
      end
    end

    module MarketoMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketoMetadata, context: context)
        type = Types::MarketoMetadata.new
        type
      end
    end

    module MarketoSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketoSourceProperties, context: context)
        type = Types::MarketoSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module OAuth2Credentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuth2Credentials, context: context)
        type = Types::OAuth2Credentials.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.access_token = params[:access_token]
        type.refresh_token = params[:refresh_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module OAuth2CustomParameter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuth2CustomParameter, context: context)
        type = Types::OAuth2CustomParameter.new
        type.key = params[:key]
        type.is_required = params[:is_required]
        type.label = params[:label]
        type.description = params[:description]
        type.is_sensitive_field = params[:is_sensitive_field]
        type.connector_supplied_values = ConnectorSuppliedValueList.build(params[:connector_supplied_values], context: "#{context}[:connector_supplied_values]") unless params[:connector_supplied_values].nil?
        type.type = params[:type]
        type
      end
    end

    module OAuth2CustomPropertiesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << OAuth2CustomParameter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OAuth2Defaults
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuth2Defaults, context: context)
        type = Types::OAuth2Defaults.new
        type.oauth_scopes = OAuthScopeList.build(params[:oauth_scopes], context: "#{context}[:oauth_scopes]") unless params[:oauth_scopes].nil?
        type.token_urls = TokenUrlList.build(params[:token_urls], context: "#{context}[:token_urls]") unless params[:token_urls].nil?
        type.auth_code_urls = AuthCodeUrlList.build(params[:auth_code_urls], context: "#{context}[:auth_code_urls]") unless params[:auth_code_urls].nil?
        type.oauth2_grant_types_supported = OAuth2GrantTypeSupportedList.build(params[:oauth2_grant_types_supported], context: "#{context}[:oauth2_grant_types_supported]") unless params[:oauth2_grant_types_supported].nil?
        type.oauth2_custom_properties = OAuth2CustomPropertiesList.build(params[:oauth2_custom_properties], context: "#{context}[:oauth2_custom_properties]") unless params[:oauth2_custom_properties].nil?
        type
      end
    end

    module OAuth2GrantTypeSupportedList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OAuth2Properties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuth2Properties, context: context)
        type = Types::OAuth2Properties.new
        type.token_url = params[:token_url]
        type.o_auth2_grant_type = params[:o_auth2_grant_type]
        type.token_url_custom_properties = TokenUrlCustomProperties.build(params[:token_url_custom_properties], context: "#{context}[:token_url_custom_properties]") unless params[:token_url_custom_properties].nil?
        type
      end
    end

    module OAuthCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuthCredentials, context: context)
        type = Types::OAuthCredentials.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.access_token = params[:access_token]
        type.refresh_token = params[:refresh_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module OAuthProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OAuthProperties, context: context)
        type = Types::OAuthProperties.new
        type.token_url = params[:token_url]
        type.auth_code_url = params[:auth_code_url]
        type.o_auth_scopes = OAuthScopeList.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type
      end
    end

    module OAuthScopeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PrefixConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrefixConfig, context: context)
        type = Types::PrefixConfig.new
        type.prefix_type = params[:prefix_type]
        type.prefix_format = params[:prefix_format]
        type
      end
    end

    module PrivateConnectionProvisioningState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateConnectionProvisioningState, context: context)
        type = Types::PrivateConnectionProvisioningState.new
        type.status = params[:status]
        type.failure_message = params[:failure_message]
        type.failure_cause = params[:failure_cause]
        type
      end
    end

    module ProfilePropertiesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Range
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Range, context: context)
        type = Types::Range.new
        type.maximum = params[:maximum]
        type.minimum = params[:minimum]
        type
      end
    end

    module RedshiftConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftConnectorProfileCredentials, context: context)
        type = Types::RedshiftConnectorProfileCredentials.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module RedshiftConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftConnectorProfileProperties, context: context)
        type = Types::RedshiftConnectorProfileProperties.new
        type.database_url = params[:database_url]
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module RedshiftDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftDestinationProperties, context: context)
        type = Types::RedshiftDestinationProperties.new
        type.object = params[:object]
        type.intermediate_bucket_name = params[:intermediate_bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type
      end
    end

    module RedshiftMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RedshiftMetadata, context: context)
        type = Types::RedshiftMetadata.new
        type
      end
    end

    module RegionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterConnectorInput, context: context)
        type = Types::RegisterConnectorInput.new
        type.connector_label = params[:connector_label]
        type.description = params[:description]
        type.connector_provisioning_type = params[:connector_provisioning_type]
        type.connector_provisioning_config = ConnectorProvisioningConfig.build(params[:connector_provisioning_config], context: "#{context}[:connector_provisioning_config]") unless params[:connector_provisioning_config].nil?
        type
      end
    end

    module RegisterConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterConnectorOutput, context: context)
        type = Types::RegisterConnectorOutput.new
        type.connector_arn = params[:connector_arn]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module S3DestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DestinationProperties, context: context)
        type = Types::S3DestinationProperties.new
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.s3_output_format_config = S3OutputFormatConfig.build(params[:s3_output_format_config], context: "#{context}[:s3_output_format_config]") unless params[:s3_output_format_config].nil?
        type
      end
    end

    module S3InputFormatConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3InputFormatConfig, context: context)
        type = Types::S3InputFormatConfig.new
        type.s3_input_file_type = params[:s3_input_file_type]
        type
      end
    end

    module S3Metadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Metadata, context: context)
        type = Types::S3Metadata.new
        type
      end
    end

    module S3OutputFormatConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3OutputFormatConfig, context: context)
        type = Types::S3OutputFormatConfig.new
        type.file_type = params[:file_type]
        type.prefix_config = PrefixConfig.build(params[:prefix_config], context: "#{context}[:prefix_config]") unless params[:prefix_config].nil?
        type.aggregation_config = AggregationConfig.build(params[:aggregation_config], context: "#{context}[:aggregation_config]") unless params[:aggregation_config].nil?
        type.preserve_source_data_typing = params[:preserve_source_data_typing]
        type
      end
    end

    module S3SourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SourceProperties, context: context)
        type = Types::S3SourceProperties.new
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.s3_input_format_config = S3InputFormatConfig.build(params[:s3_input_format_config], context: "#{context}[:s3_input_format_config]") unless params[:s3_input_format_config].nil?
        type
      end
    end

    module SAPODataConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAPODataConnectorProfileCredentials, context: context)
        type = Types::SAPODataConnectorProfileCredentials.new
        type.basic_auth_credentials = BasicAuthCredentials.build(params[:basic_auth_credentials], context: "#{context}[:basic_auth_credentials]") unless params[:basic_auth_credentials].nil?
        type.o_auth_credentials = OAuthCredentials.build(params[:o_auth_credentials], context: "#{context}[:o_auth_credentials]") unless params[:o_auth_credentials].nil?
        type
      end
    end

    module SAPODataConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAPODataConnectorProfileProperties, context: context)
        type = Types::SAPODataConnectorProfileProperties.new
        type.application_host_url = params[:application_host_url]
        type.application_service_path = params[:application_service_path]
        type.port_number = params[:port_number]
        type.client_number = params[:client_number]
        type.logon_language = params[:logon_language]
        type.private_link_service_name = params[:private_link_service_name]
        type.o_auth_properties = OAuthProperties.build(params[:o_auth_properties], context: "#{context}[:o_auth_properties]") unless params[:o_auth_properties].nil?
        type
      end
    end

    module SAPODataDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAPODataDestinationProperties, context: context)
        type = Types::SAPODataDestinationProperties.new
        type.object_path = params[:object_path]
        type.success_response_handling_config = SuccessResponseHandlingConfig.build(params[:success_response_handling_config], context: "#{context}[:success_response_handling_config]") unless params[:success_response_handling_config].nil?
        type.id_field_names = IdFieldNameList.build(params[:id_field_names], context: "#{context}[:id_field_names]") unless params[:id_field_names].nil?
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type.write_operation_type = params[:write_operation_type]
        type
      end
    end

    module SAPODataMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAPODataMetadata, context: context)
        type = Types::SAPODataMetadata.new
        type
      end
    end

    module SAPODataSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SAPODataSourceProperties, context: context)
        type = Types::SAPODataSourceProperties.new
        type.object_path = params[:object_path]
        type
      end
    end

    module SalesforceConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceConnectorProfileCredentials, context: context)
        type = Types::SalesforceConnectorProfileCredentials.new
        type.access_token = params[:access_token]
        type.refresh_token = params[:refresh_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type.client_credentials_arn = params[:client_credentials_arn]
        type
      end
    end

    module SalesforceConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceConnectorProfileProperties, context: context)
        type = Types::SalesforceConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type.is_sandbox_environment = params[:is_sandbox_environment]
        type
      end
    end

    module SalesforceDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceDestinationProperties, context: context)
        type = Types::SalesforceDestinationProperties.new
        type.object = params[:object]
        type.id_field_names = IdFieldNameList.build(params[:id_field_names], context: "#{context}[:id_field_names]") unless params[:id_field_names].nil?
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type.write_operation_type = params[:write_operation_type]
        type
      end
    end

    module SalesforceMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceMetadata, context: context)
        type = Types::SalesforceMetadata.new
        type.o_auth_scopes = OAuthScopeList.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type
      end
    end

    module SalesforceSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceSourceProperties, context: context)
        type = Types::SalesforceSourceProperties.new
        type.object = params[:object]
        type.enable_dynamic_field_update = params[:enable_dynamic_field_update]
        type.include_deleted_records = params[:include_deleted_records]
        type
      end
    end

    module ScheduledTriggerProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledTriggerProperties, context: context)
        type = Types::ScheduledTriggerProperties.new
        type.schedule_expression = params[:schedule_expression]
        type.data_pull_mode = params[:data_pull_mode]
        type.schedule_start_time = params[:schedule_start_time]
        type.schedule_end_time = params[:schedule_end_time]
        type.timezone = params[:timezone]
        type.schedule_offset = params[:schedule_offset]
        type.first_execution_from = params[:first_execution_from]
        type.flow_error_deactivation_threshold = params[:flow_error_deactivation_threshold]
        type
      end
    end

    module SchedulingFrequencyTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceNowConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowConnectorProfileCredentials, context: context)
        type = Types::ServiceNowConnectorProfileCredentials.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module ServiceNowConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowConnectorProfileProperties, context: context)
        type = Types::ServiceNowConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module ServiceNowMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowMetadata, context: context)
        type = Types::ServiceNowMetadata.new
        type
      end
    end

    module ServiceNowSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowSourceProperties, context: context)
        type = Types::ServiceNowSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module SingularConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingularConnectorProfileCredentials, context: context)
        type = Types::SingularConnectorProfileCredentials.new
        type.api_key = params[:api_key]
        type
      end
    end

    module SingularConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingularConnectorProfileProperties, context: context)
        type = Types::SingularConnectorProfileProperties.new
        type
      end
    end

    module SingularMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingularMetadata, context: context)
        type = Types::SingularMetadata.new
        type
      end
    end

    module SingularSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SingularSourceProperties, context: context)
        type = Types::SingularSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module SlackConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlackConnectorProfileCredentials, context: context)
        type = Types::SlackConnectorProfileCredentials.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.access_token = params[:access_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module SlackConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlackConnectorProfileProperties, context: context)
        type = Types::SlackConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module SlackMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlackMetadata, context: context)
        type = Types::SlackMetadata.new
        type.o_auth_scopes = OAuthScopeList.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type
      end
    end

    module SlackSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlackSourceProperties, context: context)
        type = Types::SlackSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module SnowflakeConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnowflakeConnectorProfileCredentials, context: context)
        type = Types::SnowflakeConnectorProfileCredentials.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module SnowflakeConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnowflakeConnectorProfileProperties, context: context)
        type = Types::SnowflakeConnectorProfileProperties.new
        type.warehouse = params[:warehouse]
        type.stage = params[:stage]
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.private_link_service_name = params[:private_link_service_name]
        type.account_name = params[:account_name]
        type.region = params[:region]
        type
      end
    end

    module SnowflakeDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnowflakeDestinationProperties, context: context)
        type = Types::SnowflakeDestinationProperties.new
        type.object = params[:object]
        type.intermediate_bucket_name = params[:intermediate_bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type
      end
    end

    module SnowflakeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnowflakeMetadata, context: context)
        type = Types::SnowflakeMetadata.new
        type.supported_regions = RegionList.build(params[:supported_regions], context: "#{context}[:supported_regions]") unless params[:supported_regions].nil?
        type
      end
    end

    module SourceConnectorProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConnectorProperties, context: context)
        type = Types::SourceConnectorProperties.new
        type.amplitude = AmplitudeSourceProperties.build(params[:amplitude], context: "#{context}[:amplitude]") unless params[:amplitude].nil?
        type.datadog = DatadogSourceProperties.build(params[:datadog], context: "#{context}[:datadog]") unless params[:datadog].nil?
        type.dynatrace = DynatraceSourceProperties.build(params[:dynatrace], context: "#{context}[:dynatrace]") unless params[:dynatrace].nil?
        type.google_analytics = GoogleAnalyticsSourceProperties.build(params[:google_analytics], context: "#{context}[:google_analytics]") unless params[:google_analytics].nil?
        type.infor_nexus = InforNexusSourceProperties.build(params[:infor_nexus], context: "#{context}[:infor_nexus]") unless params[:infor_nexus].nil?
        type.marketo = MarketoSourceProperties.build(params[:marketo], context: "#{context}[:marketo]") unless params[:marketo].nil?
        type.s3 = S3SourceProperties.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.salesforce = SalesforceSourceProperties.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.service_now = ServiceNowSourceProperties.build(params[:service_now], context: "#{context}[:service_now]") unless params[:service_now].nil?
        type.singular = SingularSourceProperties.build(params[:singular], context: "#{context}[:singular]") unless params[:singular].nil?
        type.slack = SlackSourceProperties.build(params[:slack], context: "#{context}[:slack]") unless params[:slack].nil?
        type.trendmicro = TrendmicroSourceProperties.build(params[:trendmicro], context: "#{context}[:trendmicro]") unless params[:trendmicro].nil?
        type.veeva = VeevaSourceProperties.build(params[:veeva], context: "#{context}[:veeva]") unless params[:veeva].nil?
        type.zendesk = ZendeskSourceProperties.build(params[:zendesk], context: "#{context}[:zendesk]") unless params[:zendesk].nil?
        type.sapo_data = SAPODataSourceProperties.build(params[:sapo_data], context: "#{context}[:sapo_data]") unless params[:sapo_data].nil?
        type.custom_connector = CustomConnectorSourceProperties.build(params[:custom_connector], context: "#{context}[:custom_connector]") unless params[:custom_connector].nil?
        type
      end
    end

    module SourceFieldProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceFieldProperties, context: context)
        type = Types::SourceFieldProperties.new
        type.is_retrievable = params[:is_retrievable]
        type.is_queryable = params[:is_queryable]
        type.is_timestamp_field_for_incremental_queries = params[:is_timestamp_field_for_incremental_queries]
        type
      end
    end

    module SourceFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceFlowConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceFlowConfig, context: context)
        type = Types::SourceFlowConfig.new
        type.connector_type = params[:connector_type]
        type.api_version = params[:api_version]
        type.connector_profile_name = params[:connector_profile_name]
        type.source_connector_properties = SourceConnectorProperties.build(params[:source_connector_properties], context: "#{context}[:source_connector_properties]") unless params[:source_connector_properties].nil?
        type.incremental_pull_config = IncrementalPullConfig.build(params[:incremental_pull_config], context: "#{context}[:incremental_pull_config]") unless params[:incremental_pull_config].nil?
        type
      end
    end

    module StartFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFlowInput, context: context)
        type = Types::StartFlowInput.new
        type.flow_name = params[:flow_name]
        type
      end
    end

    module StartFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFlowOutput, context: context)
        type = Types::StartFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.flow_status = params[:flow_status]
        type.execution_id = params[:execution_id]
        type
      end
    end

    module StopFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFlowInput, context: context)
        type = Types::StopFlowInput.new
        type.flow_name = params[:flow_name]
        type
      end
    end

    module StopFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFlowOutput, context: context)
        type = Types::StopFlowOutput.new
        type.flow_arn = params[:flow_arn]
        type.flow_status = params[:flow_status]
        type
      end
    end

    module SuccessResponseHandlingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuccessResponseHandlingConfig, context: context)
        type = Types::SuccessResponseHandlingConfig.new
        type.bucket_prefix = params[:bucket_prefix]
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module SupportedApiVersionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedFieldTypeDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SupportedFieldTypeDetails, context: context)
        type = Types::SupportedFieldTypeDetails.new
        type.v1 = FieldTypeDetails.build(params[:v1], context: "#{context}[:v1]") unless params[:v1].nil?
        type
      end
    end

    module SupportedOperatorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SupportedWriteOperationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Task
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Task, context: context)
        type = Types::Task.new
        type.source_fields = SourceFields.build(params[:source_fields], context: "#{context}[:source_fields]") unless params[:source_fields].nil?
        type.connector_operator = ConnectorOperator.build(params[:connector_operator], context: "#{context}[:connector_operator]") unless params[:connector_operator].nil?
        type.destination_field = params[:destination_field]
        type.task_type = params[:task_type]
        type.task_properties = TaskPropertiesMap.build(params[:task_properties], context: "#{context}[:task_properties]") unless params[:task_properties].nil?
        type
      end
    end

    module TaskPropertiesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Tasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Task.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TokenUrlCustomProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TokenUrlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TrendmicroConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrendmicroConnectorProfileCredentials, context: context)
        type = Types::TrendmicroConnectorProfileCredentials.new
        type.api_secret_key = params[:api_secret_key]
        type
      end
    end

    module TrendmicroConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrendmicroConnectorProfileProperties, context: context)
        type = Types::TrendmicroConnectorProfileProperties.new
        type
      end
    end

    module TrendmicroMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrendmicroMetadata, context: context)
        type = Types::TrendmicroMetadata.new
        type
      end
    end

    module TrendmicroSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TrendmicroSourceProperties, context: context)
        type = Types::TrendmicroSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module TriggerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerConfig, context: context)
        type = Types::TriggerConfig.new
        type.trigger_type = params[:trigger_type]
        type.trigger_properties = TriggerProperties.build(params[:trigger_properties], context: "#{context}[:trigger_properties]") unless params[:trigger_properties].nil?
        type
      end
    end

    module TriggerProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerProperties, context: context)
        type = Types::TriggerProperties.new
        type.scheduled = ScheduledTriggerProperties.build(params[:scheduled], context: "#{context}[:scheduled]") unless params[:scheduled].nil?
        type
      end
    end

    module TriggerTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module UnregisterConnectorInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnregisterConnectorInput, context: context)
        type = Types::UnregisterConnectorInput.new
        type.connector_label = params[:connector_label]
        type.force_delete = params[:force_delete]
        type
      end
    end

    module UnregisterConnectorOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnregisterConnectorOutput, context: context)
        type = Types::UnregisterConnectorOutput.new
        type
      end
    end

    module UnsupportedOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedOperationException, context: context)
        type = Types::UnsupportedOperationException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateConnectorProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectorProfileInput, context: context)
        type = Types::UpdateConnectorProfileInput.new
        type.connector_profile_name = params[:connector_profile_name]
        type.connection_mode = params[:connection_mode]
        type.connector_profile_config = ConnectorProfileConfig.build(params[:connector_profile_config], context: "#{context}[:connector_profile_config]") unless params[:connector_profile_config].nil?
        type
      end
    end

    module UpdateConnectorProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateConnectorProfileOutput, context: context)
        type = Types::UpdateConnectorProfileOutput.new
        type.connector_profile_arn = params[:connector_profile_arn]
        type
      end
    end

    module UpdateFlowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowInput, context: context)
        type = Types::UpdateFlowInput.new
        type.flow_name = params[:flow_name]
        type.description = params[:description]
        type.trigger_config = TriggerConfig.build(params[:trigger_config], context: "#{context}[:trigger_config]") unless params[:trigger_config].nil?
        type.source_flow_config = SourceFlowConfig.build(params[:source_flow_config], context: "#{context}[:source_flow_config]") unless params[:source_flow_config].nil?
        type.destination_flow_config_list = DestinationFlowConfigList.build(params[:destination_flow_config_list], context: "#{context}[:destination_flow_config_list]") unless params[:destination_flow_config_list].nil?
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type
      end
    end

    module UpdateFlowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFlowOutput, context: context)
        type = Types::UpdateFlowOutput.new
        type.flow_status = params[:flow_status]
        type
      end
    end

    module UpsolverDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpsolverDestinationProperties, context: context)
        type = Types::UpsolverDestinationProperties.new
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type.s3_output_format_config = UpsolverS3OutputFormatConfig.build(params[:s3_output_format_config], context: "#{context}[:s3_output_format_config]") unless params[:s3_output_format_config].nil?
        type
      end
    end

    module UpsolverMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpsolverMetadata, context: context)
        type = Types::UpsolverMetadata.new
        type
      end
    end

    module UpsolverS3OutputFormatConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpsolverS3OutputFormatConfig, context: context)
        type = Types::UpsolverS3OutputFormatConfig.new
        type.file_type = params[:file_type]
        type.prefix_config = PrefixConfig.build(params[:prefix_config], context: "#{context}[:prefix_config]") unless params[:prefix_config].nil?
        type.aggregation_config = AggregationConfig.build(params[:aggregation_config], context: "#{context}[:aggregation_config]") unless params[:aggregation_config].nil?
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module VeevaConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VeevaConnectorProfileCredentials, context: context)
        type = Types::VeevaConnectorProfileCredentials.new
        type.username = params[:username]
        type.password = params[:password]
        type
      end
    end

    module VeevaConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VeevaConnectorProfileProperties, context: context)
        type = Types::VeevaConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module VeevaMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VeevaMetadata, context: context)
        type = Types::VeevaMetadata.new
        type
      end
    end

    module VeevaSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VeevaSourceProperties, context: context)
        type = Types::VeevaSourceProperties.new
        type.object = params[:object]
        type.document_type = params[:document_type]
        type.include_source_files = params[:include_source_files]
        type.include_renditions = params[:include_renditions]
        type.include_all_versions = params[:include_all_versions]
        type
      end
    end

    module ZendeskConnectorProfileCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZendeskConnectorProfileCredentials, context: context)
        type = Types::ZendeskConnectorProfileCredentials.new
        type.client_id = params[:client_id]
        type.client_secret = params[:client_secret]
        type.access_token = params[:access_token]
        type.o_auth_request = ConnectorOAuthRequest.build(params[:o_auth_request], context: "#{context}[:o_auth_request]") unless params[:o_auth_request].nil?
        type
      end
    end

    module ZendeskConnectorProfileProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZendeskConnectorProfileProperties, context: context)
        type = Types::ZendeskConnectorProfileProperties.new
        type.instance_url = params[:instance_url]
        type
      end
    end

    module ZendeskDestinationProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZendeskDestinationProperties, context: context)
        type = Types::ZendeskDestinationProperties.new
        type.object = params[:object]
        type.id_field_names = IdFieldNameList.build(params[:id_field_names], context: "#{context}[:id_field_names]") unless params[:id_field_names].nil?
        type.error_handling_config = ErrorHandlingConfig.build(params[:error_handling_config], context: "#{context}[:error_handling_config]") unless params[:error_handling_config].nil?
        type.write_operation_type = params[:write_operation_type]
        type
      end
    end

    module ZendeskMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZendeskMetadata, context: context)
        type = Types::ZendeskMetadata.new
        type.o_auth_scopes = OAuthScopeList.build(params[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless params[:o_auth_scopes].nil?
        type
      end
    end

    module ZendeskSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZendeskSourceProperties, context: context)
        type = Types::ZendeskSourceProperties.new
        type.object = params[:object]
        type
      end
    end

  end
end
