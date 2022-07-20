# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Appflow
  module Parsers

    # Operation Parser for CreateConnectorProfile
    class CreateConnectorProfile
      def self.parse(http_resp)
        data = Types::CreateConnectorProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_profile_arn = map['connectorProfileArn']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
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

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConnectorAuthenticationException
    class ConnectorAuthenticationException
      def self.parse(http_resp)
        data = Types::ConnectorAuthenticationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateFlow
    class CreateFlow
      def self.parse(http_resp)
        data = Types::CreateFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.flow_status = map['flowStatus']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConnectorServerException
    class ConnectorServerException
      def self.parse(http_resp)
        data = Types::ConnectorServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for DeleteConnectorProfile
    class DeleteConnectorProfile
      def self.parse(http_resp)
        data = Types::DeleteConnectorProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteFlow
    class DeleteFlow
      def self.parse(http_resp)
        data = Types::DeleteFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DescribeConnector
    class DescribeConnector
      def self.parse(http_resp)
        data = Types::DescribeConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_configuration = (Parsers::ConnectorConfiguration.parse(map['connectorConfiguration']) unless map['connectorConfiguration'].nil?)
        data
      end
    end

    class ConnectorConfiguration
      def self.parse(map)
        data = Types::ConnectorConfiguration.new
        data.can_use_as_source = map['canUseAsSource']
        data.can_use_as_destination = map['canUseAsDestination']
        data.supported_destination_connectors = (Parsers::ConnectorTypeList.parse(map['supportedDestinationConnectors']) unless map['supportedDestinationConnectors'].nil?)
        data.supported_scheduling_frequencies = (Parsers::SchedulingFrequencyTypeList.parse(map['supportedSchedulingFrequencies']) unless map['supportedSchedulingFrequencies'].nil?)
        data.is_private_link_enabled = map['isPrivateLinkEnabled']
        data.is_private_link_endpoint_url_required = map['isPrivateLinkEndpointUrlRequired']
        data.supported_trigger_types = (Parsers::TriggerTypeList.parse(map['supportedTriggerTypes']) unless map['supportedTriggerTypes'].nil?)
        data.connector_metadata = (Parsers::ConnectorMetadata.parse(map['connectorMetadata']) unless map['connectorMetadata'].nil?)
        data.connector_type = map['connectorType']
        data.connector_label = map['connectorLabel']
        data.connector_description = map['connectorDescription']
        data.connector_owner = map['connectorOwner']
        data.connector_name = map['connectorName']
        data.connector_version = map['connectorVersion']
        data.connector_arn = map['connectorArn']
        data.connector_modes = (Parsers::ConnectorModeList.parse(map['connectorModes']) unless map['connectorModes'].nil?)
        data.authentication_config = (Parsers::AuthenticationConfig.parse(map['authenticationConfig']) unless map['authenticationConfig'].nil?)
        data.connector_runtime_settings = (Parsers::ConnectorRuntimeSettingList.parse(map['connectorRuntimeSettings']) unless map['connectorRuntimeSettings'].nil?)
        data.supported_api_versions = (Parsers::SupportedApiVersionList.parse(map['supportedApiVersions']) unless map['supportedApiVersions'].nil?)
        data.supported_operators = (Parsers::SupportedOperatorList.parse(map['supportedOperators']) unless map['supportedOperators'].nil?)
        data.supported_write_operations = (Parsers::SupportedWriteOperationList.parse(map['supportedWriteOperations']) unless map['supportedWriteOperations'].nil?)
        data.connector_provisioning_type = map['connectorProvisioningType']
        data.connector_provisioning_config = (Parsers::ConnectorProvisioningConfig.parse(map['connectorProvisioningConfig']) unless map['connectorProvisioningConfig'].nil?)
        data.logo_url = map['logoURL']
        data.registered_at = Time.at(map['registeredAt'].to_i) if map['registeredAt']
        data.registered_by = map['registeredBy']
        return data
      end
    end

    class ConnectorProvisioningConfig
      def self.parse(map)
        data = Types::ConnectorProvisioningConfig.new
        data.lambda = (Parsers::LambdaConnectorProvisioningConfig.parse(map['lambda']) unless map['lambda'].nil?)
        return data
      end
    end

    class LambdaConnectorProvisioningConfig
      def self.parse(map)
        data = Types::LambdaConnectorProvisioningConfig.new
        data.lambda_arn = map['lambdaArn']
        return data
      end
    end

    class SupportedWriteOperationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SupportedOperatorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SupportedApiVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ConnectorRuntimeSettingList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectorRuntimeSetting.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorRuntimeSetting
      def self.parse(map)
        data = Types::ConnectorRuntimeSetting.new
        data.key = map['key']
        data.data_type = map['dataType']
        data.is_required = map['isRequired']
        data.label = map['label']
        data.description = map['description']
        data.scope = map['scope']
        data.connector_supplied_value_options = (Parsers::ConnectorSuppliedValueOptionList.parse(map['connectorSuppliedValueOptions']) unless map['connectorSuppliedValueOptions'].nil?)
        return data
      end
    end

    class ConnectorSuppliedValueOptionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AuthenticationConfig
      def self.parse(map)
        data = Types::AuthenticationConfig.new
        data.is_basic_auth_supported = map['isBasicAuthSupported']
        data.is_api_key_auth_supported = map['isApiKeyAuthSupported']
        data.is_o_auth2_supported = map['isOAuth2Supported']
        data.is_custom_auth_supported = map['isCustomAuthSupported']
        data.o_auth2_defaults = (Parsers::OAuth2Defaults.parse(map['oAuth2Defaults']) unless map['oAuth2Defaults'].nil?)
        data.custom_auth_configs = (Parsers::CustomAuthConfigList.parse(map['customAuthConfigs']) unless map['customAuthConfigs'].nil?)
        return data
      end
    end

    class CustomAuthConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CustomAuthConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class CustomAuthConfig
      def self.parse(map)
        data = Types::CustomAuthConfig.new
        data.custom_authentication_type = map['customAuthenticationType']
        data.auth_parameters = (Parsers::AuthParameterList.parse(map['authParameters']) unless map['authParameters'].nil?)
        return data
      end
    end

    class AuthParameterList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AuthParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class AuthParameter
      def self.parse(map)
        data = Types::AuthParameter.new
        data.key = map['key']
        data.is_required = map['isRequired']
        data.label = map['label']
        data.description = map['description']
        data.is_sensitive_field = map['isSensitiveField']
        data.connector_supplied_values = (Parsers::ConnectorSuppliedValueList.parse(map['connectorSuppliedValues']) unless map['connectorSuppliedValues'].nil?)
        return data
      end
    end

    class ConnectorSuppliedValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class OAuth2Defaults
      def self.parse(map)
        data = Types::OAuth2Defaults.new
        data.oauth_scopes = (Parsers::OAuthScopeList.parse(map['oauthScopes']) unless map['oauthScopes'].nil?)
        data.token_urls = (Parsers::TokenUrlList.parse(map['tokenUrls']) unless map['tokenUrls'].nil?)
        data.auth_code_urls = (Parsers::AuthCodeUrlList.parse(map['authCodeUrls']) unless map['authCodeUrls'].nil?)
        data.oauth2_grant_types_supported = (Parsers::OAuth2GrantTypeSupportedList.parse(map['oauth2GrantTypesSupported']) unless map['oauth2GrantTypesSupported'].nil?)
        data.oauth2_custom_properties = (Parsers::OAuth2CustomPropertiesList.parse(map['oauth2CustomProperties']) unless map['oauth2CustomProperties'].nil?)
        return data
      end
    end

    class OAuth2CustomPropertiesList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::OAuth2CustomParameter.parse(value) unless value.nil?
        end
        data
      end
    end

    class OAuth2CustomParameter
      def self.parse(map)
        data = Types::OAuth2CustomParameter.new
        data.key = map['key']
        data.is_required = map['isRequired']
        data.label = map['label']
        data.description = map['description']
        data.is_sensitive_field = map['isSensitiveField']
        data.connector_supplied_values = (Parsers::ConnectorSuppliedValueList.parse(map['connectorSuppliedValues']) unless map['connectorSuppliedValues'].nil?)
        data.type = map['type']
        return data
      end
    end

    class OAuth2GrantTypeSupportedList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class AuthCodeUrlList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TokenUrlList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class OAuthScopeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ConnectorModeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ConnectorMetadata
      def self.parse(map)
        data = Types::ConnectorMetadata.new
        data.amplitude = (Parsers::AmplitudeMetadata.parse(map['Amplitude']) unless map['Amplitude'].nil?)
        data.datadog = (Parsers::DatadogMetadata.parse(map['Datadog']) unless map['Datadog'].nil?)
        data.dynatrace = (Parsers::DynatraceMetadata.parse(map['Dynatrace']) unless map['Dynatrace'].nil?)
        data.google_analytics = (Parsers::GoogleAnalyticsMetadata.parse(map['GoogleAnalytics']) unless map['GoogleAnalytics'].nil?)
        data.infor_nexus = (Parsers::InforNexusMetadata.parse(map['InforNexus']) unless map['InforNexus'].nil?)
        data.marketo = (Parsers::MarketoMetadata.parse(map['Marketo']) unless map['Marketo'].nil?)
        data.redshift = (Parsers::RedshiftMetadata.parse(map['Redshift']) unless map['Redshift'].nil?)
        data.s3 = (Parsers::S3Metadata.parse(map['S3']) unless map['S3'].nil?)
        data.salesforce = (Parsers::SalesforceMetadata.parse(map['Salesforce']) unless map['Salesforce'].nil?)
        data.service_now = (Parsers::ServiceNowMetadata.parse(map['ServiceNow']) unless map['ServiceNow'].nil?)
        data.singular = (Parsers::SingularMetadata.parse(map['Singular']) unless map['Singular'].nil?)
        data.slack = (Parsers::SlackMetadata.parse(map['Slack']) unless map['Slack'].nil?)
        data.snowflake = (Parsers::SnowflakeMetadata.parse(map['Snowflake']) unless map['Snowflake'].nil?)
        data.trendmicro = (Parsers::TrendmicroMetadata.parse(map['Trendmicro']) unless map['Trendmicro'].nil?)
        data.veeva = (Parsers::VeevaMetadata.parse(map['Veeva']) unless map['Veeva'].nil?)
        data.zendesk = (Parsers::ZendeskMetadata.parse(map['Zendesk']) unless map['Zendesk'].nil?)
        data.event_bridge = (Parsers::EventBridgeMetadata.parse(map['EventBridge']) unless map['EventBridge'].nil?)
        data.upsolver = (Parsers::UpsolverMetadata.parse(map['Upsolver']) unless map['Upsolver'].nil?)
        data.customer_profiles = (Parsers::CustomerProfilesMetadata.parse(map['CustomerProfiles']) unless map['CustomerProfiles'].nil?)
        data.honeycode = (Parsers::HoneycodeMetadata.parse(map['Honeycode']) unless map['Honeycode'].nil?)
        data.sapo_data = (Parsers::SAPODataMetadata.parse(map['SAPOData']) unless map['SAPOData'].nil?)
        return data
      end
    end

    class SAPODataMetadata
      def self.parse(map)
        data = Types::SAPODataMetadata.new
        return data
      end
    end

    class HoneycodeMetadata
      def self.parse(map)
        data = Types::HoneycodeMetadata.new
        data.o_auth_scopes = (Parsers::OAuthScopeList.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        return data
      end
    end

    class CustomerProfilesMetadata
      def self.parse(map)
        data = Types::CustomerProfilesMetadata.new
        return data
      end
    end

    class UpsolverMetadata
      def self.parse(map)
        data = Types::UpsolverMetadata.new
        return data
      end
    end

    class EventBridgeMetadata
      def self.parse(map)
        data = Types::EventBridgeMetadata.new
        return data
      end
    end

    class ZendeskMetadata
      def self.parse(map)
        data = Types::ZendeskMetadata.new
        data.o_auth_scopes = (Parsers::OAuthScopeList.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        return data
      end
    end

    class VeevaMetadata
      def self.parse(map)
        data = Types::VeevaMetadata.new
        return data
      end
    end

    class TrendmicroMetadata
      def self.parse(map)
        data = Types::TrendmicroMetadata.new
        return data
      end
    end

    class SnowflakeMetadata
      def self.parse(map)
        data = Types::SnowflakeMetadata.new
        data.supported_regions = (Parsers::RegionList.parse(map['supportedRegions']) unless map['supportedRegions'].nil?)
        return data
      end
    end

    class RegionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SlackMetadata
      def self.parse(map)
        data = Types::SlackMetadata.new
        data.o_auth_scopes = (Parsers::OAuthScopeList.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        return data
      end
    end

    class SingularMetadata
      def self.parse(map)
        data = Types::SingularMetadata.new
        return data
      end
    end

    class ServiceNowMetadata
      def self.parse(map)
        data = Types::ServiceNowMetadata.new
        return data
      end
    end

    class SalesforceMetadata
      def self.parse(map)
        data = Types::SalesforceMetadata.new
        data.o_auth_scopes = (Parsers::OAuthScopeList.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        return data
      end
    end

    class S3Metadata
      def self.parse(map)
        data = Types::S3Metadata.new
        return data
      end
    end

    class RedshiftMetadata
      def self.parse(map)
        data = Types::RedshiftMetadata.new
        return data
      end
    end

    class MarketoMetadata
      def self.parse(map)
        data = Types::MarketoMetadata.new
        return data
      end
    end

    class InforNexusMetadata
      def self.parse(map)
        data = Types::InforNexusMetadata.new
        return data
      end
    end

    class GoogleAnalyticsMetadata
      def self.parse(map)
        data = Types::GoogleAnalyticsMetadata.new
        data.o_auth_scopes = (Parsers::OAuthScopeList.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        return data
      end
    end

    class DynatraceMetadata
      def self.parse(map)
        data = Types::DynatraceMetadata.new
        return data
      end
    end

    class DatadogMetadata
      def self.parse(map)
        data = Types::DatadogMetadata.new
        return data
      end
    end

    class AmplitudeMetadata
      def self.parse(map)
        data = Types::AmplitudeMetadata.new
        return data
      end
    end

    class TriggerTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SchedulingFrequencyTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class ConnectorTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeConnectorEntity
    class DescribeConnectorEntity
      def self.parse(http_resp)
        data = Types::DescribeConnectorEntityOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_entity_fields = (Parsers::ConnectorEntityFieldList.parse(map['connectorEntityFields']) unless map['connectorEntityFields'].nil?)
        data
      end
    end

    class ConnectorEntityFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectorEntityField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorEntityField
      def self.parse(map)
        data = Types::ConnectorEntityField.new
        data.identifier = map['identifier']
        data.parent_identifier = map['parentIdentifier']
        data.label = map['label']
        data.is_primary_key = map['isPrimaryKey']
        data.default_value = map['defaultValue']
        data.is_deprecated = map['isDeprecated']
        data.supported_field_type_details = (Parsers::SupportedFieldTypeDetails.parse(map['supportedFieldTypeDetails']) unless map['supportedFieldTypeDetails'].nil?)
        data.description = map['description']
        data.source_properties = (Parsers::SourceFieldProperties.parse(map['sourceProperties']) unless map['sourceProperties'].nil?)
        data.destination_properties = (Parsers::DestinationFieldProperties.parse(map['destinationProperties']) unless map['destinationProperties'].nil?)
        data.custom_properties = (Parsers::CustomProperties.parse(map['customProperties']) unless map['customProperties'].nil?)
        return data
      end
    end

    class CustomProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class DestinationFieldProperties
      def self.parse(map)
        data = Types::DestinationFieldProperties.new
        data.is_creatable = map['isCreatable']
        data.is_nullable = map['isNullable']
        data.is_upsertable = map['isUpsertable']
        data.is_updatable = map['isUpdatable']
        data.is_defaulted_on_create = map['isDefaultedOnCreate']
        data.supported_write_operations = (Parsers::SupportedWriteOperationList.parse(map['supportedWriteOperations']) unless map['supportedWriteOperations'].nil?)
        return data
      end
    end

    class SourceFieldProperties
      def self.parse(map)
        data = Types::SourceFieldProperties.new
        data.is_retrievable = map['isRetrievable']
        data.is_queryable = map['isQueryable']
        data.is_timestamp_field_for_incremental_queries = map['isTimestampFieldForIncrementalQueries']
        return data
      end
    end

    class SupportedFieldTypeDetails
      def self.parse(map)
        data = Types::SupportedFieldTypeDetails.new
        data.v1 = (Parsers::FieldTypeDetails.parse(map['v1']) unless map['v1'].nil?)
        return data
      end
    end

    class FieldTypeDetails
      def self.parse(map)
        data = Types::FieldTypeDetails.new
        data.field_type = map['fieldType']
        data.filter_operators = (Parsers::FilterOperatorList.parse(map['filterOperators']) unless map['filterOperators'].nil?)
        data.supported_values = (Parsers::SupportedValueList.parse(map['supportedValues']) unless map['supportedValues'].nil?)
        data.value_regex_pattern = map['valueRegexPattern']
        data.supported_date_format = map['supportedDateFormat']
        data.field_value_range = (Parsers::Range.parse(map['fieldValueRange']) unless map['fieldValueRange'].nil?)
        data.field_length_range = (Parsers::Range.parse(map['fieldLengthRange']) unless map['fieldLengthRange'].nil?)
        return data
      end
    end

    class Range
      def self.parse(map)
        data = Types::Range.new
        data.maximum = Hearth::NumberHelper.deserialize(map['maximum'])
        data.minimum = Hearth::NumberHelper.deserialize(map['minimum'])
        return data
      end
    end

    class SupportedValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class FilterOperatorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeConnectorProfiles
    class DescribeConnectorProfiles
      def self.parse(http_resp)
        data = Types::DescribeConnectorProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_profile_details = (Parsers::ConnectorProfileDetailList.parse(map['connectorProfileDetails']) unless map['connectorProfileDetails'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ConnectorProfileDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectorProfile.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorProfile
      def self.parse(map)
        data = Types::ConnectorProfile.new
        data.connector_profile_arn = map['connectorProfileArn']
        data.connector_profile_name = map['connectorProfileName']
        data.connector_type = map['connectorType']
        data.connector_label = map['connectorLabel']
        data.connection_mode = map['connectionMode']
        data.credentials_arn = map['credentialsArn']
        data.connector_profile_properties = (Parsers::ConnectorProfileProperties.parse(map['connectorProfileProperties']) unless map['connectorProfileProperties'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.private_connection_provisioning_state = (Parsers::PrivateConnectionProvisioningState.parse(map['privateConnectionProvisioningState']) unless map['privateConnectionProvisioningState'].nil?)
        return data
      end
    end

    class PrivateConnectionProvisioningState
      def self.parse(map)
        data = Types::PrivateConnectionProvisioningState.new
        data.status = map['status']
        data.failure_message = map['failureMessage']
        data.failure_cause = map['failureCause']
        return data
      end
    end

    class ConnectorProfileProperties
      def self.parse(map)
        data = Types::ConnectorProfileProperties.new
        data.amplitude = (Parsers::AmplitudeConnectorProfileProperties.parse(map['Amplitude']) unless map['Amplitude'].nil?)
        data.datadog = (Parsers::DatadogConnectorProfileProperties.parse(map['Datadog']) unless map['Datadog'].nil?)
        data.dynatrace = (Parsers::DynatraceConnectorProfileProperties.parse(map['Dynatrace']) unless map['Dynatrace'].nil?)
        data.google_analytics = (Parsers::GoogleAnalyticsConnectorProfileProperties.parse(map['GoogleAnalytics']) unless map['GoogleAnalytics'].nil?)
        data.honeycode = (Parsers::HoneycodeConnectorProfileProperties.parse(map['Honeycode']) unless map['Honeycode'].nil?)
        data.infor_nexus = (Parsers::InforNexusConnectorProfileProperties.parse(map['InforNexus']) unless map['InforNexus'].nil?)
        data.marketo = (Parsers::MarketoConnectorProfileProperties.parse(map['Marketo']) unless map['Marketo'].nil?)
        data.redshift = (Parsers::RedshiftConnectorProfileProperties.parse(map['Redshift']) unless map['Redshift'].nil?)
        data.salesforce = (Parsers::SalesforceConnectorProfileProperties.parse(map['Salesforce']) unless map['Salesforce'].nil?)
        data.service_now = (Parsers::ServiceNowConnectorProfileProperties.parse(map['ServiceNow']) unless map['ServiceNow'].nil?)
        data.singular = (Parsers::SingularConnectorProfileProperties.parse(map['Singular']) unless map['Singular'].nil?)
        data.slack = (Parsers::SlackConnectorProfileProperties.parse(map['Slack']) unless map['Slack'].nil?)
        data.snowflake = (Parsers::SnowflakeConnectorProfileProperties.parse(map['Snowflake']) unless map['Snowflake'].nil?)
        data.trendmicro = (Parsers::TrendmicroConnectorProfileProperties.parse(map['Trendmicro']) unless map['Trendmicro'].nil?)
        data.veeva = (Parsers::VeevaConnectorProfileProperties.parse(map['Veeva']) unless map['Veeva'].nil?)
        data.zendesk = (Parsers::ZendeskConnectorProfileProperties.parse(map['Zendesk']) unless map['Zendesk'].nil?)
        data.sapo_data = (Parsers::SAPODataConnectorProfileProperties.parse(map['SAPOData']) unless map['SAPOData'].nil?)
        data.custom_connector = (Parsers::CustomConnectorProfileProperties.parse(map['CustomConnector']) unless map['CustomConnector'].nil?)
        return data
      end
    end

    class CustomConnectorProfileProperties
      def self.parse(map)
        data = Types::CustomConnectorProfileProperties.new
        data.profile_properties = (Parsers::ProfilePropertiesMap.parse(map['profileProperties']) unless map['profileProperties'].nil?)
        data.o_auth2_properties = (Parsers::OAuth2Properties.parse(map['oAuth2Properties']) unless map['oAuth2Properties'].nil?)
        return data
      end
    end

    class OAuth2Properties
      def self.parse(map)
        data = Types::OAuth2Properties.new
        data.token_url = map['tokenUrl']
        data.o_auth2_grant_type = map['oAuth2GrantType']
        data.token_url_custom_properties = (Parsers::TokenUrlCustomProperties.parse(map['tokenUrlCustomProperties']) unless map['tokenUrlCustomProperties'].nil?)
        return data
      end
    end

    class TokenUrlCustomProperties
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ProfilePropertiesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class SAPODataConnectorProfileProperties
      def self.parse(map)
        data = Types::SAPODataConnectorProfileProperties.new
        data.application_host_url = map['applicationHostUrl']
        data.application_service_path = map['applicationServicePath']
        data.port_number = map['portNumber']
        data.client_number = map['clientNumber']
        data.logon_language = map['logonLanguage']
        data.private_link_service_name = map['privateLinkServiceName']
        data.o_auth_properties = (Parsers::OAuthProperties.parse(map['oAuthProperties']) unless map['oAuthProperties'].nil?)
        return data
      end
    end

    class OAuthProperties
      def self.parse(map)
        data = Types::OAuthProperties.new
        data.token_url = map['tokenUrl']
        data.auth_code_url = map['authCodeUrl']
        data.o_auth_scopes = (Parsers::OAuthScopeList.parse(map['oAuthScopes']) unless map['oAuthScopes'].nil?)
        return data
      end
    end

    class ZendeskConnectorProfileProperties
      def self.parse(map)
        data = Types::ZendeskConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class VeevaConnectorProfileProperties
      def self.parse(map)
        data = Types::VeevaConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class TrendmicroConnectorProfileProperties
      def self.parse(map)
        data = Types::TrendmicroConnectorProfileProperties.new
        return data
      end
    end

    class SnowflakeConnectorProfileProperties
      def self.parse(map)
        data = Types::SnowflakeConnectorProfileProperties.new
        data.warehouse = map['warehouse']
        data.stage = map['stage']
        data.bucket_name = map['bucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.private_link_service_name = map['privateLinkServiceName']
        data.account_name = map['accountName']
        data.region = map['region']
        return data
      end
    end

    class SlackConnectorProfileProperties
      def self.parse(map)
        data = Types::SlackConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class SingularConnectorProfileProperties
      def self.parse(map)
        data = Types::SingularConnectorProfileProperties.new
        return data
      end
    end

    class ServiceNowConnectorProfileProperties
      def self.parse(map)
        data = Types::ServiceNowConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class SalesforceConnectorProfileProperties
      def self.parse(map)
        data = Types::SalesforceConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        data.is_sandbox_environment = map['isSandboxEnvironment']
        return data
      end
    end

    class RedshiftConnectorProfileProperties
      def self.parse(map)
        data = Types::RedshiftConnectorProfileProperties.new
        data.database_url = map['databaseUrl']
        data.bucket_name = map['bucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.role_arn = map['roleArn']
        return data
      end
    end

    class MarketoConnectorProfileProperties
      def self.parse(map)
        data = Types::MarketoConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class InforNexusConnectorProfileProperties
      def self.parse(map)
        data = Types::InforNexusConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class HoneycodeConnectorProfileProperties
      def self.parse(map)
        data = Types::HoneycodeConnectorProfileProperties.new
        return data
      end
    end

    class GoogleAnalyticsConnectorProfileProperties
      def self.parse(map)
        data = Types::GoogleAnalyticsConnectorProfileProperties.new
        return data
      end
    end

    class DynatraceConnectorProfileProperties
      def self.parse(map)
        data = Types::DynatraceConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class DatadogConnectorProfileProperties
      def self.parse(map)
        data = Types::DatadogConnectorProfileProperties.new
        data.instance_url = map['instanceUrl']
        return data
      end
    end

    class AmplitudeConnectorProfileProperties
      def self.parse(map)
        data = Types::AmplitudeConnectorProfileProperties.new
        return data
      end
    end

    # Operation Parser for DescribeConnectors
    class DescribeConnectors
      def self.parse(http_resp)
        data = Types::DescribeConnectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_configurations = (Parsers::ConnectorConfigurationsMap.parse(map['connectorConfigurations']) unless map['connectorConfigurations'].nil?)
        data.connectors = (Parsers::ConnectorList.parse(map['connectors']) unless map['connectors'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ConnectorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectorDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorDetail
      def self.parse(map)
        data = Types::ConnectorDetail.new
        data.connector_description = map['connectorDescription']
        data.connector_name = map['connectorName']
        data.connector_owner = map['connectorOwner']
        data.connector_version = map['connectorVersion']
        data.application_type = map['applicationType']
        data.connector_type = map['connectorType']
        data.connector_label = map['connectorLabel']
        data.registered_at = Time.at(map['registeredAt'].to_i) if map['registeredAt']
        data.registered_by = map['registeredBy']
        data.connector_provisioning_type = map['connectorProvisioningType']
        data.connector_modes = (Parsers::ConnectorModeList.parse(map['connectorModes']) unless map['connectorModes'].nil?)
        return data
      end
    end

    class ConnectorConfigurationsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ConnectorConfiguration.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeFlow
    class DescribeFlow
      def self.parse(http_resp)
        data = Types::DescribeFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.description = map['description']
        data.flow_name = map['flowName']
        data.kms_arn = map['kmsArn']
        data.flow_status = map['flowStatus']
        data.flow_status_message = map['flowStatusMessage']
        data.source_flow_config = (Parsers::SourceFlowConfig.parse(map['sourceFlowConfig']) unless map['sourceFlowConfig'].nil?)
        data.destination_flow_config_list = (Parsers::DestinationFlowConfigList.parse(map['destinationFlowConfigList']) unless map['destinationFlowConfigList'].nil?)
        data.last_run_execution_details = (Parsers::ExecutionDetails.parse(map['lastRunExecutionDetails']) unless map['lastRunExecutionDetails'].nil?)
        data.trigger_config = (Parsers::TriggerConfig.parse(map['triggerConfig']) unless map['triggerConfig'].nil?)
        data.tasks = (Parsers::Tasks.parse(map['tasks']) unless map['tasks'].nil?)
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.created_by = map['createdBy']
        data.last_updated_by = map['lastUpdatedBy']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class Tasks
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Task.parse(value) unless value.nil?
        end
        data
      end
    end

    class Task
      def self.parse(map)
        data = Types::Task.new
        data.source_fields = (Parsers::SourceFields.parse(map['sourceFields']) unless map['sourceFields'].nil?)
        data.connector_operator = (Parsers::ConnectorOperator.parse(map['connectorOperator']) unless map['connectorOperator'].nil?)
        data.destination_field = map['destinationField']
        data.task_type = map['taskType']
        data.task_properties = (Parsers::TaskPropertiesMap.parse(map['taskProperties']) unless map['taskProperties'].nil?)
        return data
      end
    end

    class TaskPropertiesMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ConnectorOperator
      def self.parse(map)
        data = Types::ConnectorOperator.new
        data.amplitude = map['Amplitude']
        data.datadog = map['Datadog']
        data.dynatrace = map['Dynatrace']
        data.google_analytics = map['GoogleAnalytics']
        data.infor_nexus = map['InforNexus']
        data.marketo = map['Marketo']
        data.s3 = map['S3']
        data.salesforce = map['Salesforce']
        data.service_now = map['ServiceNow']
        data.singular = map['Singular']
        data.slack = map['Slack']
        data.trendmicro = map['Trendmicro']
        data.veeva = map['Veeva']
        data.zendesk = map['Zendesk']
        data.sapo_data = map['SAPOData']
        data.custom_connector = map['CustomConnector']
        return data
      end
    end

    class SourceFields
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class TriggerConfig
      def self.parse(map)
        data = Types::TriggerConfig.new
        data.trigger_type = map['triggerType']
        data.trigger_properties = (Parsers::TriggerProperties.parse(map['triggerProperties']) unless map['triggerProperties'].nil?)
        return data
      end
    end

    class TriggerProperties
      def self.parse(map)
        data = Types::TriggerProperties.new
        data.scheduled = (Parsers::ScheduledTriggerProperties.parse(map['Scheduled']) unless map['Scheduled'].nil?)
        return data
      end
    end

    class ScheduledTriggerProperties
      def self.parse(map)
        data = Types::ScheduledTriggerProperties.new
        data.schedule_expression = map['scheduleExpression']
        data.data_pull_mode = map['dataPullMode']
        data.schedule_start_time = Time.at(map['scheduleStartTime'].to_i) if map['scheduleStartTime']
        data.schedule_end_time = Time.at(map['scheduleEndTime'].to_i) if map['scheduleEndTime']
        data.timezone = map['timezone']
        data.schedule_offset = map['scheduleOffset']
        data.first_execution_from = Time.at(map['firstExecutionFrom'].to_i) if map['firstExecutionFrom']
        data.flow_error_deactivation_threshold = map['flowErrorDeactivationThreshold']
        return data
      end
    end

    class ExecutionDetails
      def self.parse(map)
        data = Types::ExecutionDetails.new
        data.most_recent_execution_message = map['mostRecentExecutionMessage']
        data.most_recent_execution_time = Time.at(map['mostRecentExecutionTime'].to_i) if map['mostRecentExecutionTime']
        data.most_recent_execution_status = map['mostRecentExecutionStatus']
        return data
      end
    end

    class DestinationFlowConfigList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::DestinationFlowConfig.parse(value) unless value.nil?
        end
        data
      end
    end

    class DestinationFlowConfig
      def self.parse(map)
        data = Types::DestinationFlowConfig.new
        data.connector_type = map['connectorType']
        data.api_version = map['apiVersion']
        data.connector_profile_name = map['connectorProfileName']
        data.destination_connector_properties = (Parsers::DestinationConnectorProperties.parse(map['destinationConnectorProperties']) unless map['destinationConnectorProperties'].nil?)
        return data
      end
    end

    class DestinationConnectorProperties
      def self.parse(map)
        data = Types::DestinationConnectorProperties.new
        data.redshift = (Parsers::RedshiftDestinationProperties.parse(map['Redshift']) unless map['Redshift'].nil?)
        data.s3 = (Parsers::S3DestinationProperties.parse(map['S3']) unless map['S3'].nil?)
        data.salesforce = (Parsers::SalesforceDestinationProperties.parse(map['Salesforce']) unless map['Salesforce'].nil?)
        data.snowflake = (Parsers::SnowflakeDestinationProperties.parse(map['Snowflake']) unless map['Snowflake'].nil?)
        data.event_bridge = (Parsers::EventBridgeDestinationProperties.parse(map['EventBridge']) unless map['EventBridge'].nil?)
        data.lookout_metrics = (Parsers::LookoutMetricsDestinationProperties.parse(map['LookoutMetrics']) unless map['LookoutMetrics'].nil?)
        data.upsolver = (Parsers::UpsolverDestinationProperties.parse(map['Upsolver']) unless map['Upsolver'].nil?)
        data.honeycode = (Parsers::HoneycodeDestinationProperties.parse(map['Honeycode']) unless map['Honeycode'].nil?)
        data.customer_profiles = (Parsers::CustomerProfilesDestinationProperties.parse(map['CustomerProfiles']) unless map['CustomerProfiles'].nil?)
        data.zendesk = (Parsers::ZendeskDestinationProperties.parse(map['Zendesk']) unless map['Zendesk'].nil?)
        data.marketo = (Parsers::MarketoDestinationProperties.parse(map['Marketo']) unless map['Marketo'].nil?)
        data.custom_connector = (Parsers::CustomConnectorDestinationProperties.parse(map['CustomConnector']) unless map['CustomConnector'].nil?)
        data.sapo_data = (Parsers::SAPODataDestinationProperties.parse(map['SAPOData']) unless map['SAPOData'].nil?)
        return data
      end
    end

    class SAPODataDestinationProperties
      def self.parse(map)
        data = Types::SAPODataDestinationProperties.new
        data.object_path = map['objectPath']
        data.success_response_handling_config = (Parsers::SuccessResponseHandlingConfig.parse(map['successResponseHandlingConfig']) unless map['successResponseHandlingConfig'].nil?)
        data.id_field_names = (Parsers::IdFieldNameList.parse(map['idFieldNames']) unless map['idFieldNames'].nil?)
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        data.write_operation_type = map['writeOperationType']
        return data
      end
    end

    class ErrorHandlingConfig
      def self.parse(map)
        data = Types::ErrorHandlingConfig.new
        data.fail_on_first_destination_error = map['failOnFirstDestinationError']
        data.bucket_prefix = map['bucketPrefix']
        data.bucket_name = map['bucketName']
        return data
      end
    end

    class IdFieldNameList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class SuccessResponseHandlingConfig
      def self.parse(map)
        data = Types::SuccessResponseHandlingConfig.new
        data.bucket_prefix = map['bucketPrefix']
        data.bucket_name = map['bucketName']
        return data
      end
    end

    class CustomConnectorDestinationProperties
      def self.parse(map)
        data = Types::CustomConnectorDestinationProperties.new
        data.entity_name = map['entityName']
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        data.write_operation_type = map['writeOperationType']
        data.id_field_names = (Parsers::IdFieldNameList.parse(map['idFieldNames']) unless map['idFieldNames'].nil?)
        data.custom_properties = (Parsers::CustomProperties.parse(map['customProperties']) unless map['customProperties'].nil?)
        return data
      end
    end

    class MarketoDestinationProperties
      def self.parse(map)
        data = Types::MarketoDestinationProperties.new
        data.object = map['object']
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        return data
      end
    end

    class ZendeskDestinationProperties
      def self.parse(map)
        data = Types::ZendeskDestinationProperties.new
        data.object = map['object']
        data.id_field_names = (Parsers::IdFieldNameList.parse(map['idFieldNames']) unless map['idFieldNames'].nil?)
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        data.write_operation_type = map['writeOperationType']
        return data
      end
    end

    class CustomerProfilesDestinationProperties
      def self.parse(map)
        data = Types::CustomerProfilesDestinationProperties.new
        data.domain_name = map['domainName']
        data.object_type_name = map['objectTypeName']
        return data
      end
    end

    class HoneycodeDestinationProperties
      def self.parse(map)
        data = Types::HoneycodeDestinationProperties.new
        data.object = map['object']
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        return data
      end
    end

    class UpsolverDestinationProperties
      def self.parse(map)
        data = Types::UpsolverDestinationProperties.new
        data.bucket_name = map['bucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.s3_output_format_config = (Parsers::UpsolverS3OutputFormatConfig.parse(map['s3OutputFormatConfig']) unless map['s3OutputFormatConfig'].nil?)
        return data
      end
    end

    class UpsolverS3OutputFormatConfig
      def self.parse(map)
        data = Types::UpsolverS3OutputFormatConfig.new
        data.file_type = map['fileType']
        data.prefix_config = (Parsers::PrefixConfig.parse(map['prefixConfig']) unless map['prefixConfig'].nil?)
        data.aggregation_config = (Parsers::AggregationConfig.parse(map['aggregationConfig']) unless map['aggregationConfig'].nil?)
        return data
      end
    end

    class AggregationConfig
      def self.parse(map)
        data = Types::AggregationConfig.new
        data.aggregation_type = map['aggregationType']
        return data
      end
    end

    class PrefixConfig
      def self.parse(map)
        data = Types::PrefixConfig.new
        data.prefix_type = map['prefixType']
        data.prefix_format = map['prefixFormat']
        return data
      end
    end

    class LookoutMetricsDestinationProperties
      def self.parse(map)
        data = Types::LookoutMetricsDestinationProperties.new
        return data
      end
    end

    class EventBridgeDestinationProperties
      def self.parse(map)
        data = Types::EventBridgeDestinationProperties.new
        data.object = map['object']
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        return data
      end
    end

    class SnowflakeDestinationProperties
      def self.parse(map)
        data = Types::SnowflakeDestinationProperties.new
        data.object = map['object']
        data.intermediate_bucket_name = map['intermediateBucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        return data
      end
    end

    class SalesforceDestinationProperties
      def self.parse(map)
        data = Types::SalesforceDestinationProperties.new
        data.object = map['object']
        data.id_field_names = (Parsers::IdFieldNameList.parse(map['idFieldNames']) unless map['idFieldNames'].nil?)
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        data.write_operation_type = map['writeOperationType']
        return data
      end
    end

    class S3DestinationProperties
      def self.parse(map)
        data = Types::S3DestinationProperties.new
        data.bucket_name = map['bucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.s3_output_format_config = (Parsers::S3OutputFormatConfig.parse(map['s3OutputFormatConfig']) unless map['s3OutputFormatConfig'].nil?)
        return data
      end
    end

    class S3OutputFormatConfig
      def self.parse(map)
        data = Types::S3OutputFormatConfig.new
        data.file_type = map['fileType']
        data.prefix_config = (Parsers::PrefixConfig.parse(map['prefixConfig']) unless map['prefixConfig'].nil?)
        data.aggregation_config = (Parsers::AggregationConfig.parse(map['aggregationConfig']) unless map['aggregationConfig'].nil?)
        data.preserve_source_data_typing = map['preserveSourceDataTyping']
        return data
      end
    end

    class RedshiftDestinationProperties
      def self.parse(map)
        data = Types::RedshiftDestinationProperties.new
        data.object = map['object']
        data.intermediate_bucket_name = map['intermediateBucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.error_handling_config = (Parsers::ErrorHandlingConfig.parse(map['errorHandlingConfig']) unless map['errorHandlingConfig'].nil?)
        return data
      end
    end

    class SourceFlowConfig
      def self.parse(map)
        data = Types::SourceFlowConfig.new
        data.connector_type = map['connectorType']
        data.api_version = map['apiVersion']
        data.connector_profile_name = map['connectorProfileName']
        data.source_connector_properties = (Parsers::SourceConnectorProperties.parse(map['sourceConnectorProperties']) unless map['sourceConnectorProperties'].nil?)
        data.incremental_pull_config = (Parsers::IncrementalPullConfig.parse(map['incrementalPullConfig']) unless map['incrementalPullConfig'].nil?)
        return data
      end
    end

    class IncrementalPullConfig
      def self.parse(map)
        data = Types::IncrementalPullConfig.new
        data.datetime_type_field_name = map['datetimeTypeFieldName']
        return data
      end
    end

    class SourceConnectorProperties
      def self.parse(map)
        data = Types::SourceConnectorProperties.new
        data.amplitude = (Parsers::AmplitudeSourceProperties.parse(map['Amplitude']) unless map['Amplitude'].nil?)
        data.datadog = (Parsers::DatadogSourceProperties.parse(map['Datadog']) unless map['Datadog'].nil?)
        data.dynatrace = (Parsers::DynatraceSourceProperties.parse(map['Dynatrace']) unless map['Dynatrace'].nil?)
        data.google_analytics = (Parsers::GoogleAnalyticsSourceProperties.parse(map['GoogleAnalytics']) unless map['GoogleAnalytics'].nil?)
        data.infor_nexus = (Parsers::InforNexusSourceProperties.parse(map['InforNexus']) unless map['InforNexus'].nil?)
        data.marketo = (Parsers::MarketoSourceProperties.parse(map['Marketo']) unless map['Marketo'].nil?)
        data.s3 = (Parsers::S3SourceProperties.parse(map['S3']) unless map['S3'].nil?)
        data.salesforce = (Parsers::SalesforceSourceProperties.parse(map['Salesforce']) unless map['Salesforce'].nil?)
        data.service_now = (Parsers::ServiceNowSourceProperties.parse(map['ServiceNow']) unless map['ServiceNow'].nil?)
        data.singular = (Parsers::SingularSourceProperties.parse(map['Singular']) unless map['Singular'].nil?)
        data.slack = (Parsers::SlackSourceProperties.parse(map['Slack']) unless map['Slack'].nil?)
        data.trendmicro = (Parsers::TrendmicroSourceProperties.parse(map['Trendmicro']) unless map['Trendmicro'].nil?)
        data.veeva = (Parsers::VeevaSourceProperties.parse(map['Veeva']) unless map['Veeva'].nil?)
        data.zendesk = (Parsers::ZendeskSourceProperties.parse(map['Zendesk']) unless map['Zendesk'].nil?)
        data.sapo_data = (Parsers::SAPODataSourceProperties.parse(map['SAPOData']) unless map['SAPOData'].nil?)
        data.custom_connector = (Parsers::CustomConnectorSourceProperties.parse(map['CustomConnector']) unless map['CustomConnector'].nil?)
        return data
      end
    end

    class CustomConnectorSourceProperties
      def self.parse(map)
        data = Types::CustomConnectorSourceProperties.new
        data.entity_name = map['entityName']
        data.custom_properties = (Parsers::CustomProperties.parse(map['customProperties']) unless map['customProperties'].nil?)
        return data
      end
    end

    class SAPODataSourceProperties
      def self.parse(map)
        data = Types::SAPODataSourceProperties.new
        data.object_path = map['objectPath']
        return data
      end
    end

    class ZendeskSourceProperties
      def self.parse(map)
        data = Types::ZendeskSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class VeevaSourceProperties
      def self.parse(map)
        data = Types::VeevaSourceProperties.new
        data.object = map['object']
        data.document_type = map['documentType']
        data.include_source_files = map['includeSourceFiles']
        data.include_renditions = map['includeRenditions']
        data.include_all_versions = map['includeAllVersions']
        return data
      end
    end

    class TrendmicroSourceProperties
      def self.parse(map)
        data = Types::TrendmicroSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class SlackSourceProperties
      def self.parse(map)
        data = Types::SlackSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class SingularSourceProperties
      def self.parse(map)
        data = Types::SingularSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class ServiceNowSourceProperties
      def self.parse(map)
        data = Types::ServiceNowSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class SalesforceSourceProperties
      def self.parse(map)
        data = Types::SalesforceSourceProperties.new
        data.object = map['object']
        data.enable_dynamic_field_update = map['enableDynamicFieldUpdate']
        data.include_deleted_records = map['includeDeletedRecords']
        return data
      end
    end

    class S3SourceProperties
      def self.parse(map)
        data = Types::S3SourceProperties.new
        data.bucket_name = map['bucketName']
        data.bucket_prefix = map['bucketPrefix']
        data.s3_input_format_config = (Parsers::S3InputFormatConfig.parse(map['s3InputFormatConfig']) unless map['s3InputFormatConfig'].nil?)
        return data
      end
    end

    class S3InputFormatConfig
      def self.parse(map)
        data = Types::S3InputFormatConfig.new
        data.s3_input_file_type = map['s3InputFileType']
        return data
      end
    end

    class MarketoSourceProperties
      def self.parse(map)
        data = Types::MarketoSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class InforNexusSourceProperties
      def self.parse(map)
        data = Types::InforNexusSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class GoogleAnalyticsSourceProperties
      def self.parse(map)
        data = Types::GoogleAnalyticsSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class DynatraceSourceProperties
      def self.parse(map)
        data = Types::DynatraceSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class DatadogSourceProperties
      def self.parse(map)
        data = Types::DatadogSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    class AmplitudeSourceProperties
      def self.parse(map)
        data = Types::AmplitudeSourceProperties.new
        data.object = map['object']
        return data
      end
    end

    # Operation Parser for DescribeFlowExecutionRecords
    class DescribeFlowExecutionRecords
      def self.parse(http_resp)
        data = Types::DescribeFlowExecutionRecordsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_executions = (Parsers::FlowExecutionList.parse(map['flowExecutions']) unless map['flowExecutions'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FlowExecutionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ExecutionRecord.parse(value) unless value.nil?
        end
        data
      end
    end

    class ExecutionRecord
      def self.parse(map)
        data = Types::ExecutionRecord.new
        data.execution_id = map['executionId']
        data.execution_status = map['executionStatus']
        data.execution_result = (Parsers::ExecutionResult.parse(map['executionResult']) unless map['executionResult'].nil?)
        data.started_at = Time.at(map['startedAt'].to_i) if map['startedAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.data_pull_start_time = Time.at(map['dataPullStartTime'].to_i) if map['dataPullStartTime']
        data.data_pull_end_time = Time.at(map['dataPullEndTime'].to_i) if map['dataPullEndTime']
        return data
      end
    end

    class ExecutionResult
      def self.parse(map)
        data = Types::ExecutionResult.new
        data.error_info = (Parsers::ErrorInfo.parse(map['errorInfo']) unless map['errorInfo'].nil?)
        data.bytes_processed = map['bytesProcessed']
        data.bytes_written = map['bytesWritten']
        data.records_processed = map['recordsProcessed']
        return data
      end
    end

    class ErrorInfo
      def self.parse(map)
        data = Types::ErrorInfo.new
        data.put_failures_count = map['putFailuresCount']
        data.execution_message = map['executionMessage']
        return data
      end
    end

    # Operation Parser for ListConnectorEntities
    class ListConnectorEntities
      def self.parse(http_resp)
        data = Types::ListConnectorEntitiesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_entity_map = (Parsers::ConnectorEntityMap.parse(map['connectorEntityMap']) unless map['connectorEntityMap'].nil?)
        data
      end
    end

    class ConnectorEntityMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::ConnectorEntityList.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorEntityList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ConnectorEntity.parse(value) unless value.nil?
        end
        data
      end
    end

    class ConnectorEntity
      def self.parse(map)
        data = Types::ConnectorEntity.new
        data.name = map['name']
        data.label = map['label']
        data.has_nested_entities = map['hasNestedEntities']
        return data
      end
    end

    # Operation Parser for ListConnectors
    class ListConnectors
      def self.parse(http_resp)
        data = Types::ListConnectorsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connectors = (Parsers::ConnectorList.parse(map['connectors']) unless map['connectors'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListFlows
    class ListFlows
      def self.parse(http_resp)
        data = Types::ListFlowsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flows = (Parsers::FlowList.parse(map['flows']) unless map['flows'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class FlowList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::FlowDefinition.parse(value) unless value.nil?
        end
        data
      end
    end

    class FlowDefinition
      def self.parse(map)
        data = Types::FlowDefinition.new
        data.flow_arn = map['flowArn']
        data.description = map['description']
        data.flow_name = map['flowName']
        data.flow_status = map['flowStatus']
        data.source_connector_type = map['sourceConnectorType']
        data.source_connector_label = map['sourceConnectorLabel']
        data.destination_connector_type = map['destinationConnectorType']
        data.destination_connector_label = map['destinationConnectorLabel']
        data.trigger_type = map['triggerType']
        data.created_at = Time.at(map['createdAt'].to_i) if map['createdAt']
        data.last_updated_at = Time.at(map['lastUpdatedAt'].to_i) if map['lastUpdatedAt']
        data.created_by = map['createdBy']
        data.last_updated_by = map['lastUpdatedBy']
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data.last_run_execution_details = (Parsers::ExecutionDetails.parse(map['lastRunExecutionDetails']) unless map['lastRunExecutionDetails'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for RegisterConnector
    class RegisterConnector
      def self.parse(http_resp)
        data = Types::RegisterConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_arn = map['connectorArn']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for StartFlow
    class StartFlow
      def self.parse(http_resp)
        data = Types::StartFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.flow_status = map['flowStatus']
        data.execution_id = map['executionId']
        data
      end
    end

    # Operation Parser for StopFlow
    class StopFlow
      def self.parse(http_resp)
        data = Types::StopFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_arn = map['flowArn']
        data.flow_status = map['flowStatus']
        data
      end
    end

    # Error Parser for UnsupportedOperationException
    class UnsupportedOperationException
      def self.parse(http_resp)
        data = Types::UnsupportedOperationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
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

    # Operation Parser for UnregisterConnector
    class UnregisterConnector
      def self.parse(http_resp)
        data = Types::UnregisterConnectorOutput.new
        map = Hearth::JSON.load(http_resp.body)
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

    # Operation Parser for UpdateConnectorProfile
    class UpdateConnectorProfile
      def self.parse(http_resp)
        data = Types::UpdateConnectorProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.connector_profile_arn = map['connectorProfileArn']
        data
      end
    end

    # Operation Parser for UpdateFlow
    class UpdateFlow
      def self.parse(http_resp)
        data = Types::UpdateFlowOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.flow_status = map['flowStatus']
        data
      end
    end
  end
end
