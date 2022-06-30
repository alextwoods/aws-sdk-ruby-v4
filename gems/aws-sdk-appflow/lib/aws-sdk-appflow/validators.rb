# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Appflow
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AggregationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AggregationConfig, context: context)
        Hearth::Validator.validate!(input[:aggregation_type], ::String, context: "#{context}[:aggregation_type]")
      end
    end

    class AmplitudeConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmplitudeConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:secret_key], ::String, context: "#{context}[:secret_key]")
      end
    end

    class AmplitudeConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmplitudeConnectorProfileProperties, context: context)
      end
    end

    class AmplitudeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmplitudeMetadata, context: context)
      end
    end

    class AmplitudeSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AmplitudeSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class ApiKeyCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApiKeyCredentials, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:api_secret_key], ::String, context: "#{context}[:api_secret_key]")
      end
    end

    class AuthCodeUrlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AuthParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:is_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_required]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_sensitive_field], ::TrueClass, ::FalseClass, context: "#{context}[:is_sensitive_field]")
        Validators::ConnectorSuppliedValueList.validate!(input[:connector_supplied_values], context: "#{context}[:connector_supplied_values]") unless input[:connector_supplied_values].nil?
      end
    end

    class AuthParameterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AuthParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthenticationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationConfig, context: context)
        Hearth::Validator.validate!(input[:is_basic_auth_supported], ::TrueClass, ::FalseClass, context: "#{context}[:is_basic_auth_supported]")
        Hearth::Validator.validate!(input[:is_api_key_auth_supported], ::TrueClass, ::FalseClass, context: "#{context}[:is_api_key_auth_supported]")
        Hearth::Validator.validate!(input[:is_o_auth2_supported], ::TrueClass, ::FalseClass, context: "#{context}[:is_o_auth2_supported]")
        Hearth::Validator.validate!(input[:is_custom_auth_supported], ::TrueClass, ::FalseClass, context: "#{context}[:is_custom_auth_supported]")
        Validators::OAuth2Defaults.validate!(input[:o_auth2_defaults], context: "#{context}[:o_auth2_defaults]") unless input[:o_auth2_defaults].nil?
        Validators::CustomAuthConfigList.validate!(input[:custom_auth_configs], context: "#{context}[:custom_auth_configs]") unless input[:custom_auth_configs].nil?
      end
    end

    class BasicAuthCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BasicAuthCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectorAuthenticationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorAuthenticationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectorConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorConfiguration, context: context)
        Hearth::Validator.validate!(input[:can_use_as_source], ::TrueClass, ::FalseClass, context: "#{context}[:can_use_as_source]")
        Hearth::Validator.validate!(input[:can_use_as_destination], ::TrueClass, ::FalseClass, context: "#{context}[:can_use_as_destination]")
        Validators::ConnectorTypeList.validate!(input[:supported_destination_connectors], context: "#{context}[:supported_destination_connectors]") unless input[:supported_destination_connectors].nil?
        Validators::SchedulingFrequencyTypeList.validate!(input[:supported_scheduling_frequencies], context: "#{context}[:supported_scheduling_frequencies]") unless input[:supported_scheduling_frequencies].nil?
        Hearth::Validator.validate!(input[:is_private_link_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_private_link_enabled]")
        Hearth::Validator.validate!(input[:is_private_link_endpoint_url_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_private_link_endpoint_url_required]")
        Validators::TriggerTypeList.validate!(input[:supported_trigger_types], context: "#{context}[:supported_trigger_types]") unless input[:supported_trigger_types].nil?
        Validators::ConnectorMetadata.validate!(input[:connector_metadata], context: "#{context}[:connector_metadata]") unless input[:connector_metadata].nil?
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:connector_description], ::String, context: "#{context}[:connector_description]")
        Hearth::Validator.validate!(input[:connector_owner], ::String, context: "#{context}[:connector_owner]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connector_version], ::String, context: "#{context}[:connector_version]")
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
        Validators::ConnectorModeList.validate!(input[:connector_modes], context: "#{context}[:connector_modes]") unless input[:connector_modes].nil?
        Validators::AuthenticationConfig.validate!(input[:authentication_config], context: "#{context}[:authentication_config]") unless input[:authentication_config].nil?
        Validators::ConnectorRuntimeSettingList.validate!(input[:connector_runtime_settings], context: "#{context}[:connector_runtime_settings]") unless input[:connector_runtime_settings].nil?
        Validators::SupportedApiVersionList.validate!(input[:supported_api_versions], context: "#{context}[:supported_api_versions]") unless input[:supported_api_versions].nil?
        Validators::SupportedOperatorList.validate!(input[:supported_operators], context: "#{context}[:supported_operators]") unless input[:supported_operators].nil?
        Validators::SupportedWriteOperationList.validate!(input[:supported_write_operations], context: "#{context}[:supported_write_operations]") unless input[:supported_write_operations].nil?
        Hearth::Validator.validate!(input[:connector_provisioning_type], ::String, context: "#{context}[:connector_provisioning_type]")
        Validators::ConnectorProvisioningConfig.validate!(input[:connector_provisioning_config], context: "#{context}[:connector_provisioning_config]") unless input[:connector_provisioning_config].nil?
        Hearth::Validator.validate!(input[:logo_url], ::String, context: "#{context}[:logo_url]")
        Hearth::Validator.validate!(input[:registered_at], ::Time, context: "#{context}[:registered_at]")
        Hearth::Validator.validate!(input[:registered_by], ::String, context: "#{context}[:registered_by]")
      end
    end

    class ConnectorConfigurationsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ConnectorConfiguration.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConnectorDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorDetail, context: context)
        Hearth::Validator.validate!(input[:connector_description], ::String, context: "#{context}[:connector_description]")
        Hearth::Validator.validate!(input[:connector_name], ::String, context: "#{context}[:connector_name]")
        Hearth::Validator.validate!(input[:connector_owner], ::String, context: "#{context}[:connector_owner]")
        Hearth::Validator.validate!(input[:connector_version], ::String, context: "#{context}[:connector_version]")
        Hearth::Validator.validate!(input[:application_type], ::String, context: "#{context}[:application_type]")
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:registered_at], ::Time, context: "#{context}[:registered_at]")
        Hearth::Validator.validate!(input[:registered_by], ::String, context: "#{context}[:registered_by]")
        Hearth::Validator.validate!(input[:connector_provisioning_type], ::String, context: "#{context}[:connector_provisioning_type]")
        Validators::ConnectorModeList.validate!(input[:connector_modes], context: "#{context}[:connector_modes]") unless input[:connector_modes].nil?
      end
    end

    class ConnectorEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorEntity, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:has_nested_entities], ::TrueClass, ::FalseClass, context: "#{context}[:has_nested_entities]")
      end
    end

    class ConnectorEntityField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorEntityField, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:parent_identifier], ::String, context: "#{context}[:parent_identifier]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:is_primary_key], ::TrueClass, ::FalseClass, context: "#{context}[:is_primary_key]")
        Hearth::Validator.validate!(input[:default_value], ::String, context: "#{context}[:default_value]")
        Hearth::Validator.validate!(input[:is_deprecated], ::TrueClass, ::FalseClass, context: "#{context}[:is_deprecated]")
        Validators::SupportedFieldTypeDetails.validate!(input[:supported_field_type_details], context: "#{context}[:supported_field_type_details]") unless input[:supported_field_type_details].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::SourceFieldProperties.validate!(input[:source_properties], context: "#{context}[:source_properties]") unless input[:source_properties].nil?
        Validators::DestinationFieldProperties.validate!(input[:destination_properties], context: "#{context}[:destination_properties]") unless input[:destination_properties].nil?
        Validators::CustomProperties.validate!(input[:custom_properties], context: "#{context}[:custom_properties]") unless input[:custom_properties].nil?
      end
    end

    class ConnectorEntityFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectorEntityField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectorEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectorEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectorEntityMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ConnectorEntityList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ConnectorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectorDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectorMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorMetadata, context: context)
        Validators::AmplitudeMetadata.validate!(input[:amplitude], context: "#{context}[:amplitude]") unless input[:amplitude].nil?
        Validators::DatadogMetadata.validate!(input[:datadog], context: "#{context}[:datadog]") unless input[:datadog].nil?
        Validators::DynatraceMetadata.validate!(input[:dynatrace], context: "#{context}[:dynatrace]") unless input[:dynatrace].nil?
        Validators::GoogleAnalyticsMetadata.validate!(input[:google_analytics], context: "#{context}[:google_analytics]") unless input[:google_analytics].nil?
        Validators::InforNexusMetadata.validate!(input[:infor_nexus], context: "#{context}[:infor_nexus]") unless input[:infor_nexus].nil?
        Validators::MarketoMetadata.validate!(input[:marketo], context: "#{context}[:marketo]") unless input[:marketo].nil?
        Validators::RedshiftMetadata.validate!(input[:redshift], context: "#{context}[:redshift]") unless input[:redshift].nil?
        Validators::S3Metadata.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Validators::SalesforceMetadata.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::ServiceNowMetadata.validate!(input[:service_now], context: "#{context}[:service_now]") unless input[:service_now].nil?
        Validators::SingularMetadata.validate!(input[:singular], context: "#{context}[:singular]") unless input[:singular].nil?
        Validators::SlackMetadata.validate!(input[:slack], context: "#{context}[:slack]") unless input[:slack].nil?
        Validators::SnowflakeMetadata.validate!(input[:snowflake], context: "#{context}[:snowflake]") unless input[:snowflake].nil?
        Validators::TrendmicroMetadata.validate!(input[:trendmicro], context: "#{context}[:trendmicro]") unless input[:trendmicro].nil?
        Validators::VeevaMetadata.validate!(input[:veeva], context: "#{context}[:veeva]") unless input[:veeva].nil?
        Validators::ZendeskMetadata.validate!(input[:zendesk], context: "#{context}[:zendesk]") unless input[:zendesk].nil?
        Validators::EventBridgeMetadata.validate!(input[:event_bridge], context: "#{context}[:event_bridge]") unless input[:event_bridge].nil?
        Validators::UpsolverMetadata.validate!(input[:upsolver], context: "#{context}[:upsolver]") unless input[:upsolver].nil?
        Validators::CustomerProfilesMetadata.validate!(input[:customer_profiles], context: "#{context}[:customer_profiles]") unless input[:customer_profiles].nil?
        Validators::HoneycodeMetadata.validate!(input[:honeycode], context: "#{context}[:honeycode]") unless input[:honeycode].nil?
        Validators::SAPODataMetadata.validate!(input[:sapo_data], context: "#{context}[:sapo_data]") unless input[:sapo_data].nil?
      end
    end

    class ConnectorModeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectorOAuthRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorOAuthRequest, context: context)
        Hearth::Validator.validate!(input[:auth_code], ::String, context: "#{context}[:auth_code]")
        Hearth::Validator.validate!(input[:redirect_uri], ::String, context: "#{context}[:redirect_uri]")
      end
    end

    class ConnectorOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorOperator, context: context)
        Hearth::Validator.validate!(input[:amplitude], ::String, context: "#{context}[:amplitude]")
        Hearth::Validator.validate!(input[:datadog], ::String, context: "#{context}[:datadog]")
        Hearth::Validator.validate!(input[:dynatrace], ::String, context: "#{context}[:dynatrace]")
        Hearth::Validator.validate!(input[:google_analytics], ::String, context: "#{context}[:google_analytics]")
        Hearth::Validator.validate!(input[:infor_nexus], ::String, context: "#{context}[:infor_nexus]")
        Hearth::Validator.validate!(input[:marketo], ::String, context: "#{context}[:marketo]")
        Hearth::Validator.validate!(input[:s3], ::String, context: "#{context}[:s3]")
        Hearth::Validator.validate!(input[:salesforce], ::String, context: "#{context}[:salesforce]")
        Hearth::Validator.validate!(input[:service_now], ::String, context: "#{context}[:service_now]")
        Hearth::Validator.validate!(input[:singular], ::String, context: "#{context}[:singular]")
        Hearth::Validator.validate!(input[:slack], ::String, context: "#{context}[:slack]")
        Hearth::Validator.validate!(input[:trendmicro], ::String, context: "#{context}[:trendmicro]")
        Hearth::Validator.validate!(input[:veeva], ::String, context: "#{context}[:veeva]")
        Hearth::Validator.validate!(input[:zendesk], ::String, context: "#{context}[:zendesk]")
        Hearth::Validator.validate!(input[:sapo_data], ::String, context: "#{context}[:sapo_data]")
        Hearth::Validator.validate!(input[:custom_connector], ::String, context: "#{context}[:custom_connector]")
      end
    end

    class ConnectorProfile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorProfile, context: context)
        Hearth::Validator.validate!(input[:connector_profile_arn], ::String, context: "#{context}[:connector_profile_arn]")
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:connection_mode], ::String, context: "#{context}[:connection_mode]")
        Hearth::Validator.validate!(input[:credentials_arn], ::String, context: "#{context}[:credentials_arn]")
        Validators::ConnectorProfileProperties.validate!(input[:connector_profile_properties], context: "#{context}[:connector_profile_properties]") unless input[:connector_profile_properties].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::PrivateConnectionProvisioningState.validate!(input[:private_connection_provisioning_state], context: "#{context}[:private_connection_provisioning_state]") unless input[:private_connection_provisioning_state].nil?
      end
    end

    class ConnectorProfileConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorProfileConfig, context: context)
        Validators::ConnectorProfileProperties.validate!(input[:connector_profile_properties], context: "#{context}[:connector_profile_properties]") unless input[:connector_profile_properties].nil?
        Validators::ConnectorProfileCredentials.validate!(input[:connector_profile_credentials], context: "#{context}[:connector_profile_credentials]") unless input[:connector_profile_credentials].nil?
      end
    end

    class ConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorProfileCredentials, context: context)
        Validators::AmplitudeConnectorProfileCredentials.validate!(input[:amplitude], context: "#{context}[:amplitude]") unless input[:amplitude].nil?
        Validators::DatadogConnectorProfileCredentials.validate!(input[:datadog], context: "#{context}[:datadog]") unless input[:datadog].nil?
        Validators::DynatraceConnectorProfileCredentials.validate!(input[:dynatrace], context: "#{context}[:dynatrace]") unless input[:dynatrace].nil?
        Validators::GoogleAnalyticsConnectorProfileCredentials.validate!(input[:google_analytics], context: "#{context}[:google_analytics]") unless input[:google_analytics].nil?
        Validators::HoneycodeConnectorProfileCredentials.validate!(input[:honeycode], context: "#{context}[:honeycode]") unless input[:honeycode].nil?
        Validators::InforNexusConnectorProfileCredentials.validate!(input[:infor_nexus], context: "#{context}[:infor_nexus]") unless input[:infor_nexus].nil?
        Validators::MarketoConnectorProfileCredentials.validate!(input[:marketo], context: "#{context}[:marketo]") unless input[:marketo].nil?
        Validators::RedshiftConnectorProfileCredentials.validate!(input[:redshift], context: "#{context}[:redshift]") unless input[:redshift].nil?
        Validators::SalesforceConnectorProfileCredentials.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::ServiceNowConnectorProfileCredentials.validate!(input[:service_now], context: "#{context}[:service_now]") unless input[:service_now].nil?
        Validators::SingularConnectorProfileCredentials.validate!(input[:singular], context: "#{context}[:singular]") unless input[:singular].nil?
        Validators::SlackConnectorProfileCredentials.validate!(input[:slack], context: "#{context}[:slack]") unless input[:slack].nil?
        Validators::SnowflakeConnectorProfileCredentials.validate!(input[:snowflake], context: "#{context}[:snowflake]") unless input[:snowflake].nil?
        Validators::TrendmicroConnectorProfileCredentials.validate!(input[:trendmicro], context: "#{context}[:trendmicro]") unless input[:trendmicro].nil?
        Validators::VeevaConnectorProfileCredentials.validate!(input[:veeva], context: "#{context}[:veeva]") unless input[:veeva].nil?
        Validators::ZendeskConnectorProfileCredentials.validate!(input[:zendesk], context: "#{context}[:zendesk]") unless input[:zendesk].nil?
        Validators::SAPODataConnectorProfileCredentials.validate!(input[:sapo_data], context: "#{context}[:sapo_data]") unless input[:sapo_data].nil?
        Validators::CustomConnectorProfileCredentials.validate!(input[:custom_connector], context: "#{context}[:custom_connector]") unless input[:custom_connector].nil?
      end
    end

    class ConnectorProfileDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectorProfile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectorProfileNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorProfileProperties, context: context)
        Validators::AmplitudeConnectorProfileProperties.validate!(input[:amplitude], context: "#{context}[:amplitude]") unless input[:amplitude].nil?
        Validators::DatadogConnectorProfileProperties.validate!(input[:datadog], context: "#{context}[:datadog]") unless input[:datadog].nil?
        Validators::DynatraceConnectorProfileProperties.validate!(input[:dynatrace], context: "#{context}[:dynatrace]") unless input[:dynatrace].nil?
        Validators::GoogleAnalyticsConnectorProfileProperties.validate!(input[:google_analytics], context: "#{context}[:google_analytics]") unless input[:google_analytics].nil?
        Validators::HoneycodeConnectorProfileProperties.validate!(input[:honeycode], context: "#{context}[:honeycode]") unless input[:honeycode].nil?
        Validators::InforNexusConnectorProfileProperties.validate!(input[:infor_nexus], context: "#{context}[:infor_nexus]") unless input[:infor_nexus].nil?
        Validators::MarketoConnectorProfileProperties.validate!(input[:marketo], context: "#{context}[:marketo]") unless input[:marketo].nil?
        Validators::RedshiftConnectorProfileProperties.validate!(input[:redshift], context: "#{context}[:redshift]") unless input[:redshift].nil?
        Validators::SalesforceConnectorProfileProperties.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::ServiceNowConnectorProfileProperties.validate!(input[:service_now], context: "#{context}[:service_now]") unless input[:service_now].nil?
        Validators::SingularConnectorProfileProperties.validate!(input[:singular], context: "#{context}[:singular]") unless input[:singular].nil?
        Validators::SlackConnectorProfileProperties.validate!(input[:slack], context: "#{context}[:slack]") unless input[:slack].nil?
        Validators::SnowflakeConnectorProfileProperties.validate!(input[:snowflake], context: "#{context}[:snowflake]") unless input[:snowflake].nil?
        Validators::TrendmicroConnectorProfileProperties.validate!(input[:trendmicro], context: "#{context}[:trendmicro]") unless input[:trendmicro].nil?
        Validators::VeevaConnectorProfileProperties.validate!(input[:veeva], context: "#{context}[:veeva]") unless input[:veeva].nil?
        Validators::ZendeskConnectorProfileProperties.validate!(input[:zendesk], context: "#{context}[:zendesk]") unless input[:zendesk].nil?
        Validators::SAPODataConnectorProfileProperties.validate!(input[:sapo_data], context: "#{context}[:sapo_data]") unless input[:sapo_data].nil?
        Validators::CustomConnectorProfileProperties.validate!(input[:custom_connector], context: "#{context}[:custom_connector]") unless input[:custom_connector].nil?
      end
    end

    class ConnectorProvisioningConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorProvisioningConfig, context: context)
        Validators::LambdaConnectorProvisioningConfig.validate!(input[:lambda], context: "#{context}[:lambda]") unless input[:lambda].nil?
      end
    end

    class ConnectorRuntimeSetting
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorRuntimeSetting, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:data_type], ::String, context: "#{context}[:data_type]")
        Hearth::Validator.validate!(input[:is_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_required]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:scope], ::String, context: "#{context}[:scope]")
        Validators::ConnectorSuppliedValueOptionList.validate!(input[:connector_supplied_value_options], context: "#{context}[:connector_supplied_value_options]") unless input[:connector_supplied_value_options].nil?
      end
    end

    class ConnectorRuntimeSettingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConnectorRuntimeSetting.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConnectorServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectorSuppliedValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectorSuppliedValueOptionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConnectorTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateConnectorProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorProfileInput, context: context)
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:kms_arn], ::String, context: "#{context}[:kms_arn]")
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:connection_mode], ::String, context: "#{context}[:connection_mode]")
        Validators::ConnectorProfileConfig.validate!(input[:connector_profile_config], context: "#{context}[:connector_profile_config]") unless input[:connector_profile_config].nil?
      end
    end

    class CreateConnectorProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateConnectorProfileOutput, context: context)
        Hearth::Validator.validate!(input[:connector_profile_arn], ::String, context: "#{context}[:connector_profile_arn]")
      end
    end

    class CreateFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_arn], ::String, context: "#{context}[:kms_arn]")
        Validators::TriggerConfig.validate!(input[:trigger_config], context: "#{context}[:trigger_config]") unless input[:trigger_config].nil?
        Validators::SourceFlowConfig.validate!(input[:source_flow_config], context: "#{context}[:source_flow_config]") unless input[:source_flow_config].nil?
        Validators::DestinationFlowConfigList.validate!(input[:destination_flow_config_list], context: "#{context}[:destination_flow_config_list]") unless input[:destination_flow_config_list].nil?
        Validators::Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:flow_status], ::String, context: "#{context}[:flow_status]")
      end
    end

    class CredentialsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CustomAuthConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomAuthConfig, context: context)
        Hearth::Validator.validate!(input[:custom_authentication_type], ::String, context: "#{context}[:custom_authentication_type]")
        Validators::AuthParameterList.validate!(input[:auth_parameters], context: "#{context}[:auth_parameters]") unless input[:auth_parameters].nil?
      end
    end

    class CustomAuthConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CustomAuthConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CustomAuthCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomAuthCredentials, context: context)
        Hearth::Validator.validate!(input[:custom_authentication_type], ::String, context: "#{context}[:custom_authentication_type]")
        Validators::CredentialsMap.validate!(input[:credentials_map], context: "#{context}[:credentials_map]") unless input[:credentials_map].nil?
      end
    end

    class CustomConnectorDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomConnectorDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
        Hearth::Validator.validate!(input[:write_operation_type], ::String, context: "#{context}[:write_operation_type]")
        Validators::IdFieldNameList.validate!(input[:id_field_names], context: "#{context}[:id_field_names]") unless input[:id_field_names].nil?
        Validators::CustomProperties.validate!(input[:custom_properties], context: "#{context}[:custom_properties]") unless input[:custom_properties].nil?
      end
    end

    class CustomConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Validators::BasicAuthCredentials.validate!(input[:basic], context: "#{context}[:basic]") unless input[:basic].nil?
        Validators::OAuth2Credentials.validate!(input[:oauth2], context: "#{context}[:oauth2]") unless input[:oauth2].nil?
        Validators::ApiKeyCredentials.validate!(input[:api_key], context: "#{context}[:api_key]") unless input[:api_key].nil?
        Validators::CustomAuthCredentials.validate!(input[:custom], context: "#{context}[:custom]") unless input[:custom].nil?
      end
    end

    class CustomConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomConnectorProfileProperties, context: context)
        Validators::ProfilePropertiesMap.validate!(input[:profile_properties], context: "#{context}[:profile_properties]") unless input[:profile_properties].nil?
        Validators::OAuth2Properties.validate!(input[:o_auth2_properties], context: "#{context}[:o_auth2_properties]") unless input[:o_auth2_properties].nil?
      end
    end

    class CustomConnectorSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomConnectorSourceProperties, context: context)
        Hearth::Validator.validate!(input[:entity_name], ::String, context: "#{context}[:entity_name]")
        Validators::CustomProperties.validate!(input[:custom_properties], context: "#{context}[:custom_properties]") unless input[:custom_properties].nil?
      end
    end

    class CustomProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CustomerProfilesDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerProfilesDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
      end
    end

    class CustomerProfilesMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomerProfilesMetadata, context: context)
      end
    end

    class DatadogConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatadogConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
        Hearth::Validator.validate!(input[:application_key], ::String, context: "#{context}[:application_key]")
      end
    end

    class DatadogConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatadogConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class DatadogMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatadogMetadata, context: context)
      end
    end

    class DatadogSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatadogSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class DeleteConnectorProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectorProfileInput, context: context)
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteConnectorProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteConnectorProfileOutput, context: context)
      end
    end

    class DeleteFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class DeleteFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFlowOutput, context: context)
      end
    end

    class DescribeConnectorEntityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorEntityInput, context: context)
        Hearth::Validator.validate!(input[:connector_entity_name], ::String, context: "#{context}[:connector_entity_name]")
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:api_version], ::String, context: "#{context}[:api_version]")
      end
    end

    class DescribeConnectorEntityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorEntityOutput, context: context)
        Validators::ConnectorEntityFieldList.validate!(input[:connector_entity_fields], context: "#{context}[:connector_entity_fields]") unless input[:connector_entity_fields].nil?
      end
    end

    class DescribeConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorInput, context: context)
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
      end
    end

    class DescribeConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorOutput, context: context)
        Validators::ConnectorConfiguration.validate!(input[:connector_configuration], context: "#{context}[:connector_configuration]") unless input[:connector_configuration].nil?
      end
    end

    class DescribeConnectorProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorProfilesInput, context: context)
        Validators::ConnectorProfileNameList.validate!(input[:connector_profile_names], context: "#{context}[:connector_profile_names]") unless input[:connector_profile_names].nil?
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConnectorProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorProfilesOutput, context: context)
        Validators::ConnectorProfileDetailList.validate!(input[:connector_profile_details], context: "#{context}[:connector_profile_details]") unless input[:connector_profile_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConnectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorsInput, context: context)
        Validators::ConnectorTypeList.validate!(input[:connector_types], context: "#{context}[:connector_types]") unless input[:connector_types].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeConnectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeConnectorsOutput, context: context)
        Validators::ConnectorConfigurationsMap.validate!(input[:connector_configurations], context: "#{context}[:connector_configurations]") unless input[:connector_configurations].nil?
        Validators::ConnectorList.validate!(input[:connectors], context: "#{context}[:connectors]") unless input[:connectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFlowExecutionRecordsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowExecutionRecordsInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFlowExecutionRecordsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowExecutionRecordsOutput, context: context)
        Validators::FlowExecutionList.validate!(input[:flow_executions], context: "#{context}[:flow_executions]") unless input[:flow_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
      end
    end

    class DescribeFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:kms_arn], ::String, context: "#{context}[:kms_arn]")
        Hearth::Validator.validate!(input[:flow_status], ::String, context: "#{context}[:flow_status]")
        Hearth::Validator.validate!(input[:flow_status_message], ::String, context: "#{context}[:flow_status_message]")
        Validators::SourceFlowConfig.validate!(input[:source_flow_config], context: "#{context}[:source_flow_config]") unless input[:source_flow_config].nil?
        Validators::DestinationFlowConfigList.validate!(input[:destination_flow_config_list], context: "#{context}[:destination_flow_config_list]") unless input[:destination_flow_config_list].nil?
        Validators::ExecutionDetails.validate!(input[:last_run_execution_details], context: "#{context}[:last_run_execution_details]") unless input[:last_run_execution_details].nil?
        Validators::TriggerConfig.validate!(input[:trigger_config], context: "#{context}[:trigger_config]") unless input[:trigger_config].nil?
        Validators::Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DestinationConnectorProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationConnectorProperties, context: context)
        Validators::RedshiftDestinationProperties.validate!(input[:redshift], context: "#{context}[:redshift]") unless input[:redshift].nil?
        Validators::S3DestinationProperties.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Validators::SalesforceDestinationProperties.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::SnowflakeDestinationProperties.validate!(input[:snowflake], context: "#{context}[:snowflake]") unless input[:snowflake].nil?
        Validators::EventBridgeDestinationProperties.validate!(input[:event_bridge], context: "#{context}[:event_bridge]") unless input[:event_bridge].nil?
        Validators::LookoutMetricsDestinationProperties.validate!(input[:lookout_metrics], context: "#{context}[:lookout_metrics]") unless input[:lookout_metrics].nil?
        Validators::UpsolverDestinationProperties.validate!(input[:upsolver], context: "#{context}[:upsolver]") unless input[:upsolver].nil?
        Validators::HoneycodeDestinationProperties.validate!(input[:honeycode], context: "#{context}[:honeycode]") unless input[:honeycode].nil?
        Validators::CustomerProfilesDestinationProperties.validate!(input[:customer_profiles], context: "#{context}[:customer_profiles]") unless input[:customer_profiles].nil?
        Validators::ZendeskDestinationProperties.validate!(input[:zendesk], context: "#{context}[:zendesk]") unless input[:zendesk].nil?
        Validators::MarketoDestinationProperties.validate!(input[:marketo], context: "#{context}[:marketo]") unless input[:marketo].nil?
        Validators::CustomConnectorDestinationProperties.validate!(input[:custom_connector], context: "#{context}[:custom_connector]") unless input[:custom_connector].nil?
        Validators::SAPODataDestinationProperties.validate!(input[:sapo_data], context: "#{context}[:sapo_data]") unless input[:sapo_data].nil?
      end
    end

    class DestinationFieldProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationFieldProperties, context: context)
        Hearth::Validator.validate!(input[:is_creatable], ::TrueClass, ::FalseClass, context: "#{context}[:is_creatable]")
        Hearth::Validator.validate!(input[:is_nullable], ::TrueClass, ::FalseClass, context: "#{context}[:is_nullable]")
        Hearth::Validator.validate!(input[:is_upsertable], ::TrueClass, ::FalseClass, context: "#{context}[:is_upsertable]")
        Hearth::Validator.validate!(input[:is_updatable], ::TrueClass, ::FalseClass, context: "#{context}[:is_updatable]")
        Hearth::Validator.validate!(input[:is_defaulted_on_create], ::TrueClass, ::FalseClass, context: "#{context}[:is_defaulted_on_create]")
        Validators::SupportedWriteOperationList.validate!(input[:supported_write_operations], context: "#{context}[:supported_write_operations]") unless input[:supported_write_operations].nil?
      end
    end

    class DestinationFlowConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationFlowConfig, context: context)
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:api_version], ::String, context: "#{context}[:api_version]")
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Validators::DestinationConnectorProperties.validate!(input[:destination_connector_properties], context: "#{context}[:destination_connector_properties]") unless input[:destination_connector_properties].nil?
      end
    end

    class DestinationFlowConfigList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DestinationFlowConfig.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DynatraceConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynatraceConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:api_token], ::String, context: "#{context}[:api_token]")
      end
    end

    class DynatraceConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynatraceConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class DynatraceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynatraceMetadata, context: context)
      end
    end

    class DynatraceSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DynatraceSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class ErrorHandlingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorHandlingConfig, context: context)
        Hearth::Validator.validate!(input[:fail_on_first_destination_error], ::TrueClass, ::FalseClass, context: "#{context}[:fail_on_first_destination_error]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class ErrorInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ErrorInfo, context: context)
        Hearth::Validator.validate!(input[:put_failures_count], ::Integer, context: "#{context}[:put_failures_count]")
        Hearth::Validator.validate!(input[:execution_message], ::String, context: "#{context}[:execution_message]")
      end
    end

    class EventBridgeDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventBridgeDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
      end
    end

    class EventBridgeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventBridgeMetadata, context: context)
      end
    end

    class ExecutionDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionDetails, context: context)
        Hearth::Validator.validate!(input[:most_recent_execution_message], ::String, context: "#{context}[:most_recent_execution_message]")
        Hearth::Validator.validate!(input[:most_recent_execution_time], ::Time, context: "#{context}[:most_recent_execution_time]")
        Hearth::Validator.validate!(input[:most_recent_execution_status], ::String, context: "#{context}[:most_recent_execution_status]")
      end
    end

    class ExecutionRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionRecord, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:execution_status], ::String, context: "#{context}[:execution_status]")
        Validators::ExecutionResult.validate!(input[:execution_result], context: "#{context}[:execution_result]") unless input[:execution_result].nil?
        Hearth::Validator.validate!(input[:started_at], ::Time, context: "#{context}[:started_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:data_pull_start_time], ::Time, context: "#{context}[:data_pull_start_time]")
        Hearth::Validator.validate!(input[:data_pull_end_time], ::Time, context: "#{context}[:data_pull_end_time]")
      end
    end

    class ExecutionResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExecutionResult, context: context)
        Validators::ErrorInfo.validate!(input[:error_info], context: "#{context}[:error_info]") unless input[:error_info].nil?
        Hearth::Validator.validate!(input[:bytes_processed], ::Integer, context: "#{context}[:bytes_processed]")
        Hearth::Validator.validate!(input[:bytes_written], ::Integer, context: "#{context}[:bytes_written]")
        Hearth::Validator.validate!(input[:records_processed], ::Integer, context: "#{context}[:records_processed]")
      end
    end

    class FieldTypeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldTypeDetails, context: context)
        Hearth::Validator.validate!(input[:field_type], ::String, context: "#{context}[:field_type]")
        Validators::FilterOperatorList.validate!(input[:filter_operators], context: "#{context}[:filter_operators]") unless input[:filter_operators].nil?
        Validators::SupportedValueList.validate!(input[:supported_values], context: "#{context}[:supported_values]") unless input[:supported_values].nil?
        Hearth::Validator.validate!(input[:value_regex_pattern], ::String, context: "#{context}[:value_regex_pattern]")
        Hearth::Validator.validate!(input[:supported_date_format], ::String, context: "#{context}[:supported_date_format]")
        Validators::Range.validate!(input[:field_value_range], context: "#{context}[:field_value_range]") unless input[:field_value_range].nil?
        Validators::Range.validate!(input[:field_length_range], context: "#{context}[:field_length_range]") unless input[:field_length_range].nil?
      end
    end

    class FilterOperatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FlowDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowDefinition, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:flow_status], ::String, context: "#{context}[:flow_status]")
        Hearth::Validator.validate!(input[:source_connector_type], ::String, context: "#{context}[:source_connector_type]")
        Hearth::Validator.validate!(input[:source_connector_label], ::String, context: "#{context}[:source_connector_label]")
        Hearth::Validator.validate!(input[:destination_connector_type], ::String, context: "#{context}[:destination_connector_type]")
        Hearth::Validator.validate!(input[:destination_connector_label], ::String, context: "#{context}[:destination_connector_label]")
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:created_by], ::String, context: "#{context}[:created_by]")
        Hearth::Validator.validate!(input[:last_updated_by], ::String, context: "#{context}[:last_updated_by]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ExecutionDetails.validate!(input[:last_run_execution_details], context: "#{context}[:last_run_execution_details]") unless input[:last_run_execution_details].nil?
      end
    end

    class FlowExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExecutionRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FlowList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FlowDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GoogleAnalyticsConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoogleAnalyticsConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class GoogleAnalyticsConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoogleAnalyticsConnectorProfileProperties, context: context)
      end
    end

    class GoogleAnalyticsMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoogleAnalyticsMetadata, context: context)
        Validators::OAuthScopeList.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
      end
    end

    class GoogleAnalyticsSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoogleAnalyticsSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class HoneycodeConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoneycodeConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class HoneycodeConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoneycodeConnectorProfileProperties, context: context)
      end
    end

    class HoneycodeDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoneycodeDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
      end
    end

    class HoneycodeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HoneycodeMetadata, context: context)
        Validators::OAuthScopeList.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
      end
    end

    class IdFieldNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IncrementalPullConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncrementalPullConfig, context: context)
        Hearth::Validator.validate!(input[:datetime_type_field_name], ::String, context: "#{context}[:datetime_type_field_name]")
      end
    end

    class InforNexusConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InforNexusConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:datakey], ::String, context: "#{context}[:datakey]")
      end
    end

    class InforNexusConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InforNexusConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class InforNexusMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InforNexusMetadata, context: context)
      end
    end

    class InforNexusSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InforNexusSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LambdaConnectorProvisioningConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaConnectorProvisioningConfig, context: context)
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
      end
    end

    class ListConnectorEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:entities_path], ::String, context: "#{context}[:entities_path]")
        Hearth::Validator.validate!(input[:api_version], ::String, context: "#{context}[:api_version]")
      end
    end

    class ListConnectorEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorEntitiesOutput, context: context)
        Validators::ConnectorEntityMap.validate!(input[:connector_entity_map], context: "#{context}[:connector_entity_map]") unless input[:connector_entity_map].nil?
      end
    end

    class ListConnectorsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListConnectorsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListConnectorsOutput, context: context)
        Validators::ConnectorList.validate!(input[:connectors], context: "#{context}[:connectors]") unless input[:connectors].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFlowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFlowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFlowsOutput, context: context)
        Validators::FlowList.validate!(input[:flows], context: "#{context}[:flows]") unless input[:flows].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LookoutMetricsDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LookoutMetricsDestinationProperties, context: context)
      end
    end

    class MarketoConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketoConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class MarketoConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketoConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class MarketoDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketoDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
      end
    end

    class MarketoMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketoMetadata, context: context)
      end
    end

    class MarketoSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketoSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class OAuth2Credentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuth2Credentials, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class OAuth2CustomParameter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuth2CustomParameter, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:is_required], ::TrueClass, ::FalseClass, context: "#{context}[:is_required]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:is_sensitive_field], ::TrueClass, ::FalseClass, context: "#{context}[:is_sensitive_field]")
        Validators::ConnectorSuppliedValueList.validate!(input[:connector_supplied_values], context: "#{context}[:connector_supplied_values]") unless input[:connector_supplied_values].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class OAuth2CustomPropertiesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::OAuth2CustomParameter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OAuth2Defaults
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuth2Defaults, context: context)
        Validators::OAuthScopeList.validate!(input[:oauth_scopes], context: "#{context}[:oauth_scopes]") unless input[:oauth_scopes].nil?
        Validators::TokenUrlList.validate!(input[:token_urls], context: "#{context}[:token_urls]") unless input[:token_urls].nil?
        Validators::AuthCodeUrlList.validate!(input[:auth_code_urls], context: "#{context}[:auth_code_urls]") unless input[:auth_code_urls].nil?
        Validators::OAuth2GrantTypeSupportedList.validate!(input[:oauth2_grant_types_supported], context: "#{context}[:oauth2_grant_types_supported]") unless input[:oauth2_grant_types_supported].nil?
        Validators::OAuth2CustomPropertiesList.validate!(input[:oauth2_custom_properties], context: "#{context}[:oauth2_custom_properties]") unless input[:oauth2_custom_properties].nil?
      end
    end

    class OAuth2GrantTypeSupportedList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OAuth2Properties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuth2Properties, context: context)
        Hearth::Validator.validate!(input[:token_url], ::String, context: "#{context}[:token_url]")
        Hearth::Validator.validate!(input[:o_auth2_grant_type], ::String, context: "#{context}[:o_auth2_grant_type]")
        Validators::TokenUrlCustomProperties.validate!(input[:token_url_custom_properties], context: "#{context}[:token_url_custom_properties]") unless input[:token_url_custom_properties].nil?
      end
    end

    class OAuthCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuthCredentials, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class OAuthProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OAuthProperties, context: context)
        Hearth::Validator.validate!(input[:token_url], ::String, context: "#{context}[:token_url]")
        Hearth::Validator.validate!(input[:auth_code_url], ::String, context: "#{context}[:auth_code_url]")
        Validators::OAuthScopeList.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
      end
    end

    class OAuthScopeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PrefixConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrefixConfig, context: context)
        Hearth::Validator.validate!(input[:prefix_type], ::String, context: "#{context}[:prefix_type]")
        Hearth::Validator.validate!(input[:prefix_format], ::String, context: "#{context}[:prefix_format]")
      end
    end

    class PrivateConnectionProvisioningState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateConnectionProvisioningState, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
        Hearth::Validator.validate!(input[:failure_cause], ::String, context: "#{context}[:failure_cause]")
      end
    end

    class ProfilePropertiesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Range
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Range, context: context)
        Hearth::Validator.validate!(input[:maximum], ::Float, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:minimum], ::Float, context: "#{context}[:minimum]")
      end
    end

    class RedshiftConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class RedshiftConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:database_url], ::String, context: "#{context}[:database_url]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class RedshiftDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:intermediate_bucket_name], ::String, context: "#{context}[:intermediate_bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
      end
    end

    class RedshiftMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RedshiftMetadata, context: context)
      end
    end

    class RegionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterConnectorInput, context: context)
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:connector_provisioning_type], ::String, context: "#{context}[:connector_provisioning_type]")
        Validators::ConnectorProvisioningConfig.validate!(input[:connector_provisioning_config], context: "#{context}[:connector_provisioning_config]") unless input[:connector_provisioning_config].nil?
      end
    end

    class RegisterConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterConnectorOutput, context: context)
        Hearth::Validator.validate!(input[:connector_arn], ::String, context: "#{context}[:connector_arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3DestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DestinationProperties, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Validators::S3OutputFormatConfig.validate!(input[:s3_output_format_config], context: "#{context}[:s3_output_format_config]") unless input[:s3_output_format_config].nil?
      end
    end

    class S3InputFormatConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3InputFormatConfig, context: context)
        Hearth::Validator.validate!(input[:s3_input_file_type], ::String, context: "#{context}[:s3_input_file_type]")
      end
    end

    class S3Metadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Metadata, context: context)
      end
    end

    class S3OutputFormatConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3OutputFormatConfig, context: context)
        Hearth::Validator.validate!(input[:file_type], ::String, context: "#{context}[:file_type]")
        Validators::PrefixConfig.validate!(input[:prefix_config], context: "#{context}[:prefix_config]") unless input[:prefix_config].nil?
        Validators::AggregationConfig.validate!(input[:aggregation_config], context: "#{context}[:aggregation_config]") unless input[:aggregation_config].nil?
        Hearth::Validator.validate!(input[:preserve_source_data_typing], ::TrueClass, ::FalseClass, context: "#{context}[:preserve_source_data_typing]")
      end
    end

    class S3SourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SourceProperties, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Validators::S3InputFormatConfig.validate!(input[:s3_input_format_config], context: "#{context}[:s3_input_format_config]") unless input[:s3_input_format_config].nil?
      end
    end

    class SAPODataConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAPODataConnectorProfileCredentials, context: context)
        Validators::BasicAuthCredentials.validate!(input[:basic_auth_credentials], context: "#{context}[:basic_auth_credentials]") unless input[:basic_auth_credentials].nil?
        Validators::OAuthCredentials.validate!(input[:o_auth_credentials], context: "#{context}[:o_auth_credentials]") unless input[:o_auth_credentials].nil?
      end
    end

    class SAPODataConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAPODataConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:application_host_url], ::String, context: "#{context}[:application_host_url]")
        Hearth::Validator.validate!(input[:application_service_path], ::String, context: "#{context}[:application_service_path]")
        Hearth::Validator.validate!(input[:port_number], ::Integer, context: "#{context}[:port_number]")
        Hearth::Validator.validate!(input[:client_number], ::String, context: "#{context}[:client_number]")
        Hearth::Validator.validate!(input[:logon_language], ::String, context: "#{context}[:logon_language]")
        Hearth::Validator.validate!(input[:private_link_service_name], ::String, context: "#{context}[:private_link_service_name]")
        Validators::OAuthProperties.validate!(input[:o_auth_properties], context: "#{context}[:o_auth_properties]") unless input[:o_auth_properties].nil?
      end
    end

    class SAPODataDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAPODataDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object_path], ::String, context: "#{context}[:object_path]")
        Validators::SuccessResponseHandlingConfig.validate!(input[:success_response_handling_config], context: "#{context}[:success_response_handling_config]") unless input[:success_response_handling_config].nil?
        Validators::IdFieldNameList.validate!(input[:id_field_names], context: "#{context}[:id_field_names]") unless input[:id_field_names].nil?
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
        Hearth::Validator.validate!(input[:write_operation_type], ::String, context: "#{context}[:write_operation_type]")
      end
    end

    class SAPODataMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAPODataMetadata, context: context)
      end
    end

    class SAPODataSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SAPODataSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object_path], ::String, context: "#{context}[:object_path]")
      end
    end

    class SalesforceConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Hearth::Validator.validate!(input[:refresh_token], ::String, context: "#{context}[:refresh_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
        Hearth::Validator.validate!(input[:client_credentials_arn], ::String, context: "#{context}[:client_credentials_arn]")
      end
    end

    class SalesforceConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
        Hearth::Validator.validate!(input[:is_sandbox_environment], ::TrueClass, ::FalseClass, context: "#{context}[:is_sandbox_environment]")
      end
    end

    class SalesforceDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Validators::IdFieldNameList.validate!(input[:id_field_names], context: "#{context}[:id_field_names]") unless input[:id_field_names].nil?
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
        Hearth::Validator.validate!(input[:write_operation_type], ::String, context: "#{context}[:write_operation_type]")
      end
    end

    class SalesforceMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceMetadata, context: context)
        Validators::OAuthScopeList.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
      end
    end

    class SalesforceSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:enable_dynamic_field_update], ::TrueClass, ::FalseClass, context: "#{context}[:enable_dynamic_field_update]")
        Hearth::Validator.validate!(input[:include_deleted_records], ::TrueClass, ::FalseClass, context: "#{context}[:include_deleted_records]")
      end
    end

    class ScheduledTriggerProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledTriggerProperties, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:data_pull_mode], ::String, context: "#{context}[:data_pull_mode]")
        Hearth::Validator.validate!(input[:schedule_start_time], ::Time, context: "#{context}[:schedule_start_time]")
        Hearth::Validator.validate!(input[:schedule_end_time], ::Time, context: "#{context}[:schedule_end_time]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:first_execution_from], ::Time, context: "#{context}[:first_execution_from]")
        Hearth::Validator.validate!(input[:flow_error_deactivation_threshold], ::Integer, context: "#{context}[:flow_error_deactivation_threshold]")
      end
    end

    class SchedulingFrequencyTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceNowConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class ServiceNowConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class ServiceNowMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowMetadata, context: context)
      end
    end

    class ServiceNowSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SingularConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingularConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:api_key], ::String, context: "#{context}[:api_key]")
      end
    end

    class SingularConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingularConnectorProfileProperties, context: context)
      end
    end

    class SingularMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingularMetadata, context: context)
      end
    end

    class SingularSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SingularSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class SlackConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlackConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class SlackConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlackConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class SlackMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlackMetadata, context: context)
        Validators::OAuthScopeList.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
      end
    end

    class SlackSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlackSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class SnowflakeConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnowflakeConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class SnowflakeConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnowflakeConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:warehouse], ::String, context: "#{context}[:warehouse]")
        Hearth::Validator.validate!(input[:stage], ::String, context: "#{context}[:stage]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Hearth::Validator.validate!(input[:private_link_service_name], ::String, context: "#{context}[:private_link_service_name]")
        Hearth::Validator.validate!(input[:account_name], ::String, context: "#{context}[:account_name]")
        Hearth::Validator.validate!(input[:region], ::String, context: "#{context}[:region]")
      end
    end

    class SnowflakeDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnowflakeDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:intermediate_bucket_name], ::String, context: "#{context}[:intermediate_bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
      end
    end

    class SnowflakeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnowflakeMetadata, context: context)
        Validators::RegionList.validate!(input[:supported_regions], context: "#{context}[:supported_regions]") unless input[:supported_regions].nil?
      end
    end

    class SourceConnectorProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConnectorProperties, context: context)
        Validators::AmplitudeSourceProperties.validate!(input[:amplitude], context: "#{context}[:amplitude]") unless input[:amplitude].nil?
        Validators::DatadogSourceProperties.validate!(input[:datadog], context: "#{context}[:datadog]") unless input[:datadog].nil?
        Validators::DynatraceSourceProperties.validate!(input[:dynatrace], context: "#{context}[:dynatrace]") unless input[:dynatrace].nil?
        Validators::GoogleAnalyticsSourceProperties.validate!(input[:google_analytics], context: "#{context}[:google_analytics]") unless input[:google_analytics].nil?
        Validators::InforNexusSourceProperties.validate!(input[:infor_nexus], context: "#{context}[:infor_nexus]") unless input[:infor_nexus].nil?
        Validators::MarketoSourceProperties.validate!(input[:marketo], context: "#{context}[:marketo]") unless input[:marketo].nil?
        Validators::S3SourceProperties.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Validators::SalesforceSourceProperties.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::ServiceNowSourceProperties.validate!(input[:service_now], context: "#{context}[:service_now]") unless input[:service_now].nil?
        Validators::SingularSourceProperties.validate!(input[:singular], context: "#{context}[:singular]") unless input[:singular].nil?
        Validators::SlackSourceProperties.validate!(input[:slack], context: "#{context}[:slack]") unless input[:slack].nil?
        Validators::TrendmicroSourceProperties.validate!(input[:trendmicro], context: "#{context}[:trendmicro]") unless input[:trendmicro].nil?
        Validators::VeevaSourceProperties.validate!(input[:veeva], context: "#{context}[:veeva]") unless input[:veeva].nil?
        Validators::ZendeskSourceProperties.validate!(input[:zendesk], context: "#{context}[:zendesk]") unless input[:zendesk].nil?
        Validators::SAPODataSourceProperties.validate!(input[:sapo_data], context: "#{context}[:sapo_data]") unless input[:sapo_data].nil?
        Validators::CustomConnectorSourceProperties.validate!(input[:custom_connector], context: "#{context}[:custom_connector]") unless input[:custom_connector].nil?
      end
    end

    class SourceFieldProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceFieldProperties, context: context)
        Hearth::Validator.validate!(input[:is_retrievable], ::TrueClass, ::FalseClass, context: "#{context}[:is_retrievable]")
        Hearth::Validator.validate!(input[:is_queryable], ::TrueClass, ::FalseClass, context: "#{context}[:is_queryable]")
        Hearth::Validator.validate!(input[:is_timestamp_field_for_incremental_queries], ::TrueClass, ::FalseClass, context: "#{context}[:is_timestamp_field_for_incremental_queries]")
      end
    end

    class SourceFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceFlowConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceFlowConfig, context: context)
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Hearth::Validator.validate!(input[:api_version], ::String, context: "#{context}[:api_version]")
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Validators::SourceConnectorProperties.validate!(input[:source_connector_properties], context: "#{context}[:source_connector_properties]") unless input[:source_connector_properties].nil?
        Validators::IncrementalPullConfig.validate!(input[:incremental_pull_config], context: "#{context}[:incremental_pull_config]") unless input[:incremental_pull_config].nil?
      end
    end

    class StartFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
      end
    end

    class StartFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:flow_status], ::String, context: "#{context}[:flow_status]")
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
      end
    end

    class StopFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
      end
    end

    class StopFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_arn], ::String, context: "#{context}[:flow_arn]")
        Hearth::Validator.validate!(input[:flow_status], ::String, context: "#{context}[:flow_status]")
      end
    end

    class SuccessResponseHandlingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuccessResponseHandlingConfig, context: context)
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class SupportedApiVersionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedFieldTypeDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SupportedFieldTypeDetails, context: context)
        Validators::FieldTypeDetails.validate!(input[:v1], context: "#{context}[:v1]") unless input[:v1].nil?
      end
    end

    class SupportedOperatorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SupportedWriteOperationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Task
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Task, context: context)
        Validators::SourceFields.validate!(input[:source_fields], context: "#{context}[:source_fields]") unless input[:source_fields].nil?
        Validators::ConnectorOperator.validate!(input[:connector_operator], context: "#{context}[:connector_operator]") unless input[:connector_operator].nil?
        Hearth::Validator.validate!(input[:destination_field], ::String, context: "#{context}[:destination_field]")
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
        Validators::TaskPropertiesMap.validate!(input[:task_properties], context: "#{context}[:task_properties]") unless input[:task_properties].nil?
      end
    end

    class TaskPropertiesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Tasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Task.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TokenUrlCustomProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TokenUrlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TrendmicroConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrendmicroConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:api_secret_key], ::String, context: "#{context}[:api_secret_key]")
      end
    end

    class TrendmicroConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrendmicroConnectorProfileProperties, context: context)
      end
    end

    class TrendmicroMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrendmicroMetadata, context: context)
      end
    end

    class TrendmicroSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TrendmicroSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class TriggerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerConfig, context: context)
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
        Validators::TriggerProperties.validate!(input[:trigger_properties], context: "#{context}[:trigger_properties]") unless input[:trigger_properties].nil?
      end
    end

    class TriggerProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerProperties, context: context)
        Validators::ScheduledTriggerProperties.validate!(input[:scheduled], context: "#{context}[:scheduled]") unless input[:scheduled].nil?
      end
    end

    class TriggerTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class UnregisterConnectorInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnregisterConnectorInput, context: context)
        Hearth::Validator.validate!(input[:connector_label], ::String, context: "#{context}[:connector_label]")
        Hearth::Validator.validate!(input[:force_delete], ::TrueClass, ::FalseClass, context: "#{context}[:force_delete]")
      end
    end

    class UnregisterConnectorOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnregisterConnectorOutput, context: context)
      end
    end

    class UnsupportedOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateConnectorProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectorProfileInput, context: context)
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:connection_mode], ::String, context: "#{context}[:connection_mode]")
        Validators::ConnectorProfileConfig.validate!(input[:connector_profile_config], context: "#{context}[:connector_profile_config]") unless input[:connector_profile_config].nil?
      end
    end

    class UpdateConnectorProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateConnectorProfileOutput, context: context)
        Hearth::Validator.validate!(input[:connector_profile_arn], ::String, context: "#{context}[:connector_profile_arn]")
      end
    end

    class UpdateFlowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowInput, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TriggerConfig.validate!(input[:trigger_config], context: "#{context}[:trigger_config]") unless input[:trigger_config].nil?
        Validators::SourceFlowConfig.validate!(input[:source_flow_config], context: "#{context}[:source_flow_config]") unless input[:source_flow_config].nil?
        Validators::DestinationFlowConfigList.validate!(input[:destination_flow_config_list], context: "#{context}[:destination_flow_config_list]") unless input[:destination_flow_config_list].nil?
        Validators::Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
      end
    end

    class UpdateFlowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFlowOutput, context: context)
        Hearth::Validator.validate!(input[:flow_status], ::String, context: "#{context}[:flow_status]")
      end
    end

    class UpsolverDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpsolverDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
        Validators::UpsolverS3OutputFormatConfig.validate!(input[:s3_output_format_config], context: "#{context}[:s3_output_format_config]") unless input[:s3_output_format_config].nil?
      end
    end

    class UpsolverMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpsolverMetadata, context: context)
      end
    end

    class UpsolverS3OutputFormatConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpsolverS3OutputFormatConfig, context: context)
        Hearth::Validator.validate!(input[:file_type], ::String, context: "#{context}[:file_type]")
        Validators::PrefixConfig.validate!(input[:prefix_config], context: "#{context}[:prefix_config]") unless input[:prefix_config].nil?
        Validators::AggregationConfig.validate!(input[:aggregation_config], context: "#{context}[:aggregation_config]") unless input[:aggregation_config].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VeevaConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VeevaConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:username], ::String, context: "#{context}[:username]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class VeevaConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VeevaConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class VeevaMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VeevaMetadata, context: context)
      end
    end

    class VeevaSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VeevaSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:document_type], ::String, context: "#{context}[:document_type]")
        Hearth::Validator.validate!(input[:include_source_files], ::TrueClass, ::FalseClass, context: "#{context}[:include_source_files]")
        Hearth::Validator.validate!(input[:include_renditions], ::TrueClass, ::FalseClass, context: "#{context}[:include_renditions]")
        Hearth::Validator.validate!(input[:include_all_versions], ::TrueClass, ::FalseClass, context: "#{context}[:include_all_versions]")
      end
    end

    class ZendeskConnectorProfileCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZendeskConnectorProfileCredentials, context: context)
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:client_secret], ::String, context: "#{context}[:client_secret]")
        Hearth::Validator.validate!(input[:access_token], ::String, context: "#{context}[:access_token]")
        Validators::ConnectorOAuthRequest.validate!(input[:o_auth_request], context: "#{context}[:o_auth_request]") unless input[:o_auth_request].nil?
      end
    end

    class ZendeskConnectorProfileProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZendeskConnectorProfileProperties, context: context)
        Hearth::Validator.validate!(input[:instance_url], ::String, context: "#{context}[:instance_url]")
      end
    end

    class ZendeskDestinationProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZendeskDestinationProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Validators::IdFieldNameList.validate!(input[:id_field_names], context: "#{context}[:id_field_names]") unless input[:id_field_names].nil?
        Validators::ErrorHandlingConfig.validate!(input[:error_handling_config], context: "#{context}[:error_handling_config]") unless input[:error_handling_config].nil?
        Hearth::Validator.validate!(input[:write_operation_type], ::String, context: "#{context}[:write_operation_type]")
      end
    end

    class ZendeskMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZendeskMetadata, context: context)
        Validators::OAuthScopeList.validate!(input[:o_auth_scopes], context: "#{context}[:o_auth_scopes]") unless input[:o_auth_scopes].nil?
      end
    end

    class ZendeskSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZendeskSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

  end
end
