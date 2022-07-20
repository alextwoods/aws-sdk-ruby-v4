# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Appflow
  module Stubs

    # Operation Stubber for CreateConnectorProfile
    class CreateConnectorProfile
      def self.default(visited=[])
        {
          connector_profile_arn: 'connector_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorProfileArn'] = stub[:connector_profile_arn] unless stub[:connector_profile_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateFlow
    class CreateFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          flow_status: 'flow_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['flowStatus'] = stub[:flow_status] unless stub[:flow_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteConnectorProfile
    class DeleteConnectorProfile
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFlow
    class DeleteFlow
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeConnector
    class DescribeConnector
      def self.default(visited=[])
        {
          connector_configuration: ConnectorConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorConfiguration'] = ConnectorConfiguration.stub(stub[:connector_configuration]) unless stub[:connector_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectorConfiguration
    class ConnectorConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConnectorConfiguration')
        visited = visited + ['ConnectorConfiguration']
        {
          can_use_as_source: false,
          can_use_as_destination: false,
          supported_destination_connectors: ConnectorTypeList.default(visited),
          supported_scheduling_frequencies: SchedulingFrequencyTypeList.default(visited),
          is_private_link_enabled: false,
          is_private_link_endpoint_url_required: false,
          supported_trigger_types: TriggerTypeList.default(visited),
          connector_metadata: ConnectorMetadata.default(visited),
          connector_type: 'connector_type',
          connector_label: 'connector_label',
          connector_description: 'connector_description',
          connector_owner: 'connector_owner',
          connector_name: 'connector_name',
          connector_version: 'connector_version',
          connector_arn: 'connector_arn',
          connector_modes: ConnectorModeList.default(visited),
          authentication_config: AuthenticationConfig.default(visited),
          connector_runtime_settings: ConnectorRuntimeSettingList.default(visited),
          supported_api_versions: SupportedApiVersionList.default(visited),
          supported_operators: SupportedOperatorList.default(visited),
          supported_write_operations: SupportedWriteOperationList.default(visited),
          connector_provisioning_type: 'connector_provisioning_type',
          connector_provisioning_config: ConnectorProvisioningConfig.default(visited),
          logo_url: 'logo_url',
          registered_at: Time.now,
          registered_by: 'registered_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorConfiguration.new
        data = {}
        data['canUseAsSource'] = stub[:can_use_as_source] unless stub[:can_use_as_source].nil?
        data['canUseAsDestination'] = stub[:can_use_as_destination] unless stub[:can_use_as_destination].nil?
        data['supportedDestinationConnectors'] = ConnectorTypeList.stub(stub[:supported_destination_connectors]) unless stub[:supported_destination_connectors].nil?
        data['supportedSchedulingFrequencies'] = SchedulingFrequencyTypeList.stub(stub[:supported_scheduling_frequencies]) unless stub[:supported_scheduling_frequencies].nil?
        data['isPrivateLinkEnabled'] = stub[:is_private_link_enabled] unless stub[:is_private_link_enabled].nil?
        data['isPrivateLinkEndpointUrlRequired'] = stub[:is_private_link_endpoint_url_required] unless stub[:is_private_link_endpoint_url_required].nil?
        data['supportedTriggerTypes'] = TriggerTypeList.stub(stub[:supported_trigger_types]) unless stub[:supported_trigger_types].nil?
        data['connectorMetadata'] = ConnectorMetadata.stub(stub[:connector_metadata]) unless stub[:connector_metadata].nil?
        data['connectorType'] = stub[:connector_type] unless stub[:connector_type].nil?
        data['connectorLabel'] = stub[:connector_label] unless stub[:connector_label].nil?
        data['connectorDescription'] = stub[:connector_description] unless stub[:connector_description].nil?
        data['connectorOwner'] = stub[:connector_owner] unless stub[:connector_owner].nil?
        data['connectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['connectorVersion'] = stub[:connector_version] unless stub[:connector_version].nil?
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        data['connectorModes'] = ConnectorModeList.stub(stub[:connector_modes]) unless stub[:connector_modes].nil?
        data['authenticationConfig'] = AuthenticationConfig.stub(stub[:authentication_config]) unless stub[:authentication_config].nil?
        data['connectorRuntimeSettings'] = ConnectorRuntimeSettingList.stub(stub[:connector_runtime_settings]) unless stub[:connector_runtime_settings].nil?
        data['supportedApiVersions'] = SupportedApiVersionList.stub(stub[:supported_api_versions]) unless stub[:supported_api_versions].nil?
        data['supportedOperators'] = SupportedOperatorList.stub(stub[:supported_operators]) unless stub[:supported_operators].nil?
        data['supportedWriteOperations'] = SupportedWriteOperationList.stub(stub[:supported_write_operations]) unless stub[:supported_write_operations].nil?
        data['connectorProvisioningType'] = stub[:connector_provisioning_type] unless stub[:connector_provisioning_type].nil?
        data['connectorProvisioningConfig'] = ConnectorProvisioningConfig.stub(stub[:connector_provisioning_config]) unless stub[:connector_provisioning_config].nil?
        data['logoURL'] = stub[:logo_url] unless stub[:logo_url].nil?
        data['registeredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_at]).to_i unless stub[:registered_at].nil?
        data['registeredBy'] = stub[:registered_by] unless stub[:registered_by].nil?
        data
      end
    end

    # Structure Stubber for ConnectorProvisioningConfig
    class ConnectorProvisioningConfig
      def self.default(visited=[])
        return nil if visited.include?('ConnectorProvisioningConfig')
        visited = visited + ['ConnectorProvisioningConfig']
        {
          lambda: LambdaConnectorProvisioningConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorProvisioningConfig.new
        data = {}
        data['lambda'] = LambdaConnectorProvisioningConfig.stub(stub[:lambda]) unless stub[:lambda].nil?
        data
      end
    end

    # Structure Stubber for LambdaConnectorProvisioningConfig
    class LambdaConnectorProvisioningConfig
      def self.default(visited=[])
        return nil if visited.include?('LambdaConnectorProvisioningConfig')
        visited = visited + ['LambdaConnectorProvisioningConfig']
        {
          lambda_arn: 'lambda_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LambdaConnectorProvisioningConfig.new
        data = {}
        data['lambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data
      end
    end

    # List Stubber for SupportedWriteOperationList
    class SupportedWriteOperationList
      def self.default(visited=[])
        return nil if visited.include?('SupportedWriteOperationList')
        visited = visited + ['SupportedWriteOperationList']
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

    # List Stubber for SupportedOperatorList
    class SupportedOperatorList
      def self.default(visited=[])
        return nil if visited.include?('SupportedOperatorList')
        visited = visited + ['SupportedOperatorList']
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

    # List Stubber for SupportedApiVersionList
    class SupportedApiVersionList
      def self.default(visited=[])
        return nil if visited.include?('SupportedApiVersionList')
        visited = visited + ['SupportedApiVersionList']
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

    # List Stubber for ConnectorRuntimeSettingList
    class ConnectorRuntimeSettingList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorRuntimeSettingList')
        visited = visited + ['ConnectorRuntimeSettingList']
        [
          ConnectorRuntimeSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectorRuntimeSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectorRuntimeSetting
    class ConnectorRuntimeSetting
      def self.default(visited=[])
        return nil if visited.include?('ConnectorRuntimeSetting')
        visited = visited + ['ConnectorRuntimeSetting']
        {
          key: 'key',
          data_type: 'data_type',
          is_required: false,
          label: 'label',
          description: 'description',
          scope: 'scope',
          connector_supplied_value_options: ConnectorSuppliedValueOptionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorRuntimeSetting.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['dataType'] = stub[:data_type] unless stub[:data_type].nil?
        data['isRequired'] = stub[:is_required] unless stub[:is_required].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['scope'] = stub[:scope] unless stub[:scope].nil?
        data['connectorSuppliedValueOptions'] = ConnectorSuppliedValueOptionList.stub(stub[:connector_supplied_value_options]) unless stub[:connector_supplied_value_options].nil?
        data
      end
    end

    # List Stubber for ConnectorSuppliedValueOptionList
    class ConnectorSuppliedValueOptionList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorSuppliedValueOptionList')
        visited = visited + ['ConnectorSuppliedValueOptionList']
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

    # Structure Stubber for AuthenticationConfig
    class AuthenticationConfig
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationConfig')
        visited = visited + ['AuthenticationConfig']
        {
          is_basic_auth_supported: false,
          is_api_key_auth_supported: false,
          is_o_auth2_supported: false,
          is_custom_auth_supported: false,
          o_auth2_defaults: OAuth2Defaults.default(visited),
          custom_auth_configs: CustomAuthConfigList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationConfig.new
        data = {}
        data['isBasicAuthSupported'] = stub[:is_basic_auth_supported] unless stub[:is_basic_auth_supported].nil?
        data['isApiKeyAuthSupported'] = stub[:is_api_key_auth_supported] unless stub[:is_api_key_auth_supported].nil?
        data['isOAuth2Supported'] = stub[:is_o_auth2_supported] unless stub[:is_o_auth2_supported].nil?
        data['isCustomAuthSupported'] = stub[:is_custom_auth_supported] unless stub[:is_custom_auth_supported].nil?
        data['oAuth2Defaults'] = OAuth2Defaults.stub(stub[:o_auth2_defaults]) unless stub[:o_auth2_defaults].nil?
        data['customAuthConfigs'] = CustomAuthConfigList.stub(stub[:custom_auth_configs]) unless stub[:custom_auth_configs].nil?
        data
      end
    end

    # List Stubber for CustomAuthConfigList
    class CustomAuthConfigList
      def self.default(visited=[])
        return nil if visited.include?('CustomAuthConfigList')
        visited = visited + ['CustomAuthConfigList']
        [
          CustomAuthConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CustomAuthConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CustomAuthConfig
    class CustomAuthConfig
      def self.default(visited=[])
        return nil if visited.include?('CustomAuthConfig')
        visited = visited + ['CustomAuthConfig']
        {
          custom_authentication_type: 'custom_authentication_type',
          auth_parameters: AuthParameterList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomAuthConfig.new
        data = {}
        data['customAuthenticationType'] = stub[:custom_authentication_type] unless stub[:custom_authentication_type].nil?
        data['authParameters'] = AuthParameterList.stub(stub[:auth_parameters]) unless stub[:auth_parameters].nil?
        data
      end
    end

    # List Stubber for AuthParameterList
    class AuthParameterList
      def self.default(visited=[])
        return nil if visited.include?('AuthParameterList')
        visited = visited + ['AuthParameterList']
        [
          AuthParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AuthParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AuthParameter
    class AuthParameter
      def self.default(visited=[])
        return nil if visited.include?('AuthParameter')
        visited = visited + ['AuthParameter']
        {
          key: 'key',
          is_required: false,
          label: 'label',
          description: 'description',
          is_sensitive_field: false,
          connector_supplied_values: ConnectorSuppliedValueList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthParameter.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['isRequired'] = stub[:is_required] unless stub[:is_required].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['isSensitiveField'] = stub[:is_sensitive_field] unless stub[:is_sensitive_field].nil?
        data['connectorSuppliedValues'] = ConnectorSuppliedValueList.stub(stub[:connector_supplied_values]) unless stub[:connector_supplied_values].nil?
        data
      end
    end

    # List Stubber for ConnectorSuppliedValueList
    class ConnectorSuppliedValueList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorSuppliedValueList')
        visited = visited + ['ConnectorSuppliedValueList']
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

    # Structure Stubber for OAuth2Defaults
    class OAuth2Defaults
      def self.default(visited=[])
        return nil if visited.include?('OAuth2Defaults')
        visited = visited + ['OAuth2Defaults']
        {
          oauth_scopes: OAuthScopeList.default(visited),
          token_urls: TokenUrlList.default(visited),
          auth_code_urls: AuthCodeUrlList.default(visited),
          oauth2_grant_types_supported: OAuth2GrantTypeSupportedList.default(visited),
          oauth2_custom_properties: OAuth2CustomPropertiesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OAuth2Defaults.new
        data = {}
        data['oauthScopes'] = OAuthScopeList.stub(stub[:oauth_scopes]) unless stub[:oauth_scopes].nil?
        data['tokenUrls'] = TokenUrlList.stub(stub[:token_urls]) unless stub[:token_urls].nil?
        data['authCodeUrls'] = AuthCodeUrlList.stub(stub[:auth_code_urls]) unless stub[:auth_code_urls].nil?
        data['oauth2GrantTypesSupported'] = OAuth2GrantTypeSupportedList.stub(stub[:oauth2_grant_types_supported]) unless stub[:oauth2_grant_types_supported].nil?
        data['oauth2CustomProperties'] = OAuth2CustomPropertiesList.stub(stub[:oauth2_custom_properties]) unless stub[:oauth2_custom_properties].nil?
        data
      end
    end

    # List Stubber for OAuth2CustomPropertiesList
    class OAuth2CustomPropertiesList
      def self.default(visited=[])
        return nil if visited.include?('OAuth2CustomPropertiesList')
        visited = visited + ['OAuth2CustomPropertiesList']
        [
          OAuth2CustomParameter.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << OAuth2CustomParameter.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for OAuth2CustomParameter
    class OAuth2CustomParameter
      def self.default(visited=[])
        return nil if visited.include?('OAuth2CustomParameter')
        visited = visited + ['OAuth2CustomParameter']
        {
          key: 'key',
          is_required: false,
          label: 'label',
          description: 'description',
          is_sensitive_field: false,
          connector_supplied_values: ConnectorSuppliedValueList.default(visited),
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::OAuth2CustomParameter.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['isRequired'] = stub[:is_required] unless stub[:is_required].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['isSensitiveField'] = stub[:is_sensitive_field] unless stub[:is_sensitive_field].nil?
        data['connectorSuppliedValues'] = ConnectorSuppliedValueList.stub(stub[:connector_supplied_values]) unless stub[:connector_supplied_values].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for OAuth2GrantTypeSupportedList
    class OAuth2GrantTypeSupportedList
      def self.default(visited=[])
        return nil if visited.include?('OAuth2GrantTypeSupportedList')
        visited = visited + ['OAuth2GrantTypeSupportedList']
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

    # List Stubber for AuthCodeUrlList
    class AuthCodeUrlList
      def self.default(visited=[])
        return nil if visited.include?('AuthCodeUrlList')
        visited = visited + ['AuthCodeUrlList']
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

    # List Stubber for TokenUrlList
    class TokenUrlList
      def self.default(visited=[])
        return nil if visited.include?('TokenUrlList')
        visited = visited + ['TokenUrlList']
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

    # List Stubber for OAuthScopeList
    class OAuthScopeList
      def self.default(visited=[])
        return nil if visited.include?('OAuthScopeList')
        visited = visited + ['OAuthScopeList']
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

    # List Stubber for ConnectorModeList
    class ConnectorModeList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorModeList')
        visited = visited + ['ConnectorModeList']
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

    # Structure Stubber for ConnectorMetadata
    class ConnectorMetadata
      def self.default(visited=[])
        return nil if visited.include?('ConnectorMetadata')
        visited = visited + ['ConnectorMetadata']
        {
          amplitude: AmplitudeMetadata.default(visited),
          datadog: DatadogMetadata.default(visited),
          dynatrace: DynatraceMetadata.default(visited),
          google_analytics: GoogleAnalyticsMetadata.default(visited),
          infor_nexus: InforNexusMetadata.default(visited),
          marketo: MarketoMetadata.default(visited),
          redshift: RedshiftMetadata.default(visited),
          s3: S3Metadata.default(visited),
          salesforce: SalesforceMetadata.default(visited),
          service_now: ServiceNowMetadata.default(visited),
          singular: SingularMetadata.default(visited),
          slack: SlackMetadata.default(visited),
          snowflake: SnowflakeMetadata.default(visited),
          trendmicro: TrendmicroMetadata.default(visited),
          veeva: VeevaMetadata.default(visited),
          zendesk: ZendeskMetadata.default(visited),
          event_bridge: EventBridgeMetadata.default(visited),
          upsolver: UpsolverMetadata.default(visited),
          customer_profiles: CustomerProfilesMetadata.default(visited),
          honeycode: HoneycodeMetadata.default(visited),
          sapo_data: SAPODataMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorMetadata.new
        data = {}
        data['Amplitude'] = AmplitudeMetadata.stub(stub[:amplitude]) unless stub[:amplitude].nil?
        data['Datadog'] = DatadogMetadata.stub(stub[:datadog]) unless stub[:datadog].nil?
        data['Dynatrace'] = DynatraceMetadata.stub(stub[:dynatrace]) unless stub[:dynatrace].nil?
        data['GoogleAnalytics'] = GoogleAnalyticsMetadata.stub(stub[:google_analytics]) unless stub[:google_analytics].nil?
        data['InforNexus'] = InforNexusMetadata.stub(stub[:infor_nexus]) unless stub[:infor_nexus].nil?
        data['Marketo'] = MarketoMetadata.stub(stub[:marketo]) unless stub[:marketo].nil?
        data['Redshift'] = RedshiftMetadata.stub(stub[:redshift]) unless stub[:redshift].nil?
        data['S3'] = S3Metadata.stub(stub[:s3]) unless stub[:s3].nil?
        data['Salesforce'] = SalesforceMetadata.stub(stub[:salesforce]) unless stub[:salesforce].nil?
        data['ServiceNow'] = ServiceNowMetadata.stub(stub[:service_now]) unless stub[:service_now].nil?
        data['Singular'] = SingularMetadata.stub(stub[:singular]) unless stub[:singular].nil?
        data['Slack'] = SlackMetadata.stub(stub[:slack]) unless stub[:slack].nil?
        data['Snowflake'] = SnowflakeMetadata.stub(stub[:snowflake]) unless stub[:snowflake].nil?
        data['Trendmicro'] = TrendmicroMetadata.stub(stub[:trendmicro]) unless stub[:trendmicro].nil?
        data['Veeva'] = VeevaMetadata.stub(stub[:veeva]) unless stub[:veeva].nil?
        data['Zendesk'] = ZendeskMetadata.stub(stub[:zendesk]) unless stub[:zendesk].nil?
        data['EventBridge'] = EventBridgeMetadata.stub(stub[:event_bridge]) unless stub[:event_bridge].nil?
        data['Upsolver'] = UpsolverMetadata.stub(stub[:upsolver]) unless stub[:upsolver].nil?
        data['CustomerProfiles'] = CustomerProfilesMetadata.stub(stub[:customer_profiles]) unless stub[:customer_profiles].nil?
        data['Honeycode'] = HoneycodeMetadata.stub(stub[:honeycode]) unless stub[:honeycode].nil?
        data['SAPOData'] = SAPODataMetadata.stub(stub[:sapo_data]) unless stub[:sapo_data].nil?
        data
      end
    end

    # Structure Stubber for SAPODataMetadata
    class SAPODataMetadata
      def self.default(visited=[])
        return nil if visited.include?('SAPODataMetadata')
        visited = visited + ['SAPODataMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::SAPODataMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for HoneycodeMetadata
    class HoneycodeMetadata
      def self.default(visited=[])
        return nil if visited.include?('HoneycodeMetadata')
        visited = visited + ['HoneycodeMetadata']
        {
          o_auth_scopes: OAuthScopeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HoneycodeMetadata.new
        data = {}
        data['oAuthScopes'] = OAuthScopeList.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data
      end
    end

    # Structure Stubber for CustomerProfilesMetadata
    class CustomerProfilesMetadata
      def self.default(visited=[])
        return nil if visited.include?('CustomerProfilesMetadata')
        visited = visited + ['CustomerProfilesMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerProfilesMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for UpsolverMetadata
    class UpsolverMetadata
      def self.default(visited=[])
        return nil if visited.include?('UpsolverMetadata')
        visited = visited + ['UpsolverMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::UpsolverMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for EventBridgeMetadata
    class EventBridgeMetadata
      def self.default(visited=[])
        return nil if visited.include?('EventBridgeMetadata')
        visited = visited + ['EventBridgeMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::EventBridgeMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for ZendeskMetadata
    class ZendeskMetadata
      def self.default(visited=[])
        return nil if visited.include?('ZendeskMetadata')
        visited = visited + ['ZendeskMetadata']
        {
          o_auth_scopes: OAuthScopeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ZendeskMetadata.new
        data = {}
        data['oAuthScopes'] = OAuthScopeList.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data
      end
    end

    # Structure Stubber for VeevaMetadata
    class VeevaMetadata
      def self.default(visited=[])
        return nil if visited.include?('VeevaMetadata')
        visited = visited + ['VeevaMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::VeevaMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for TrendmicroMetadata
    class TrendmicroMetadata
      def self.default(visited=[])
        return nil if visited.include?('TrendmicroMetadata')
        visited = visited + ['TrendmicroMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::TrendmicroMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for SnowflakeMetadata
    class SnowflakeMetadata
      def self.default(visited=[])
        return nil if visited.include?('SnowflakeMetadata')
        visited = visited + ['SnowflakeMetadata']
        {
          supported_regions: RegionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SnowflakeMetadata.new
        data = {}
        data['supportedRegions'] = RegionList.stub(stub[:supported_regions]) unless stub[:supported_regions].nil?
        data
      end
    end

    # List Stubber for RegionList
    class RegionList
      def self.default(visited=[])
        return nil if visited.include?('RegionList')
        visited = visited + ['RegionList']
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

    # Structure Stubber for SlackMetadata
    class SlackMetadata
      def self.default(visited=[])
        return nil if visited.include?('SlackMetadata')
        visited = visited + ['SlackMetadata']
        {
          o_auth_scopes: OAuthScopeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlackMetadata.new
        data = {}
        data['oAuthScopes'] = OAuthScopeList.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data
      end
    end

    # Structure Stubber for SingularMetadata
    class SingularMetadata
      def self.default(visited=[])
        return nil if visited.include?('SingularMetadata')
        visited = visited + ['SingularMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::SingularMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for ServiceNowMetadata
    class ServiceNowMetadata
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowMetadata')
        visited = visited + ['ServiceNowMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for SalesforceMetadata
    class SalesforceMetadata
      def self.default(visited=[])
        return nil if visited.include?('SalesforceMetadata')
        visited = visited + ['SalesforceMetadata']
        {
          o_auth_scopes: OAuthScopeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceMetadata.new
        data = {}
        data['oAuthScopes'] = OAuthScopeList.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data
      end
    end

    # Structure Stubber for S3Metadata
    class S3Metadata
      def self.default(visited=[])
        return nil if visited.include?('S3Metadata')
        visited = visited + ['S3Metadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Metadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for RedshiftMetadata
    class RedshiftMetadata
      def self.default(visited=[])
        return nil if visited.include?('RedshiftMetadata')
        visited = visited + ['RedshiftMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for MarketoMetadata
    class MarketoMetadata
      def self.default(visited=[])
        return nil if visited.include?('MarketoMetadata')
        visited = visited + ['MarketoMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::MarketoMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for InforNexusMetadata
    class InforNexusMetadata
      def self.default(visited=[])
        return nil if visited.include?('InforNexusMetadata')
        visited = visited + ['InforNexusMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::InforNexusMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for GoogleAnalyticsMetadata
    class GoogleAnalyticsMetadata
      def self.default(visited=[])
        return nil if visited.include?('GoogleAnalyticsMetadata')
        visited = visited + ['GoogleAnalyticsMetadata']
        {
          o_auth_scopes: OAuthScopeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GoogleAnalyticsMetadata.new
        data = {}
        data['oAuthScopes'] = OAuthScopeList.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data
      end
    end

    # Structure Stubber for DynatraceMetadata
    class DynatraceMetadata
      def self.default(visited=[])
        return nil if visited.include?('DynatraceMetadata')
        visited = visited + ['DynatraceMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::DynatraceMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for DatadogMetadata
    class DatadogMetadata
      def self.default(visited=[])
        return nil if visited.include?('DatadogMetadata')
        visited = visited + ['DatadogMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::DatadogMetadata.new
        data = {}
        data
      end
    end

    # Structure Stubber for AmplitudeMetadata
    class AmplitudeMetadata
      def self.default(visited=[])
        return nil if visited.include?('AmplitudeMetadata')
        visited = visited + ['AmplitudeMetadata']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::AmplitudeMetadata.new
        data = {}
        data
      end
    end

    # List Stubber for TriggerTypeList
    class TriggerTypeList
      def self.default(visited=[])
        return nil if visited.include?('TriggerTypeList')
        visited = visited + ['TriggerTypeList']
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

    # List Stubber for SchedulingFrequencyTypeList
    class SchedulingFrequencyTypeList
      def self.default(visited=[])
        return nil if visited.include?('SchedulingFrequencyTypeList')
        visited = visited + ['SchedulingFrequencyTypeList']
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

    # List Stubber for ConnectorTypeList
    class ConnectorTypeList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorTypeList')
        visited = visited + ['ConnectorTypeList']
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

    # Operation Stubber for DescribeConnectorEntity
    class DescribeConnectorEntity
      def self.default(visited=[])
        {
          connector_entity_fields: ConnectorEntityFieldList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorEntityFields'] = ConnectorEntityFieldList.stub(stub[:connector_entity_fields]) unless stub[:connector_entity_fields].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectorEntityFieldList
    class ConnectorEntityFieldList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorEntityFieldList')
        visited = visited + ['ConnectorEntityFieldList']
        [
          ConnectorEntityField.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectorEntityField.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectorEntityField
    class ConnectorEntityField
      def self.default(visited=[])
        return nil if visited.include?('ConnectorEntityField')
        visited = visited + ['ConnectorEntityField']
        {
          identifier: 'identifier',
          parent_identifier: 'parent_identifier',
          label: 'label',
          is_primary_key: false,
          default_value: 'default_value',
          is_deprecated: false,
          supported_field_type_details: SupportedFieldTypeDetails.default(visited),
          description: 'description',
          source_properties: SourceFieldProperties.default(visited),
          destination_properties: DestinationFieldProperties.default(visited),
          custom_properties: CustomProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorEntityField.new
        data = {}
        data['identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['parentIdentifier'] = stub[:parent_identifier] unless stub[:parent_identifier].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['isPrimaryKey'] = stub[:is_primary_key] unless stub[:is_primary_key].nil?
        data['defaultValue'] = stub[:default_value] unless stub[:default_value].nil?
        data['isDeprecated'] = stub[:is_deprecated] unless stub[:is_deprecated].nil?
        data['supportedFieldTypeDetails'] = SupportedFieldTypeDetails.stub(stub[:supported_field_type_details]) unless stub[:supported_field_type_details].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['sourceProperties'] = SourceFieldProperties.stub(stub[:source_properties]) unless stub[:source_properties].nil?
        data['destinationProperties'] = DestinationFieldProperties.stub(stub[:destination_properties]) unless stub[:destination_properties].nil?
        data['customProperties'] = CustomProperties.stub(stub[:custom_properties]) unless stub[:custom_properties].nil?
        data
      end
    end

    # Map Stubber for CustomProperties
    class CustomProperties
      def self.default(visited=[])
        return nil if visited.include?('CustomProperties')
        visited = visited + ['CustomProperties']
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

    # Structure Stubber for DestinationFieldProperties
    class DestinationFieldProperties
      def self.default(visited=[])
        return nil if visited.include?('DestinationFieldProperties')
        visited = visited + ['DestinationFieldProperties']
        {
          is_creatable: false,
          is_nullable: false,
          is_upsertable: false,
          is_updatable: false,
          is_defaulted_on_create: false,
          supported_write_operations: SupportedWriteOperationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationFieldProperties.new
        data = {}
        data['isCreatable'] = stub[:is_creatable] unless stub[:is_creatable].nil?
        data['isNullable'] = stub[:is_nullable] unless stub[:is_nullable].nil?
        data['isUpsertable'] = stub[:is_upsertable] unless stub[:is_upsertable].nil?
        data['isUpdatable'] = stub[:is_updatable] unless stub[:is_updatable].nil?
        data['isDefaultedOnCreate'] = stub[:is_defaulted_on_create] unless stub[:is_defaulted_on_create].nil?
        data['supportedWriteOperations'] = SupportedWriteOperationList.stub(stub[:supported_write_operations]) unless stub[:supported_write_operations].nil?
        data
      end
    end

    # Structure Stubber for SourceFieldProperties
    class SourceFieldProperties
      def self.default(visited=[])
        return nil if visited.include?('SourceFieldProperties')
        visited = visited + ['SourceFieldProperties']
        {
          is_retrievable: false,
          is_queryable: false,
          is_timestamp_field_for_incremental_queries: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceFieldProperties.new
        data = {}
        data['isRetrievable'] = stub[:is_retrievable] unless stub[:is_retrievable].nil?
        data['isQueryable'] = stub[:is_queryable] unless stub[:is_queryable].nil?
        data['isTimestampFieldForIncrementalQueries'] = stub[:is_timestamp_field_for_incremental_queries] unless stub[:is_timestamp_field_for_incremental_queries].nil?
        data
      end
    end

    # Structure Stubber for SupportedFieldTypeDetails
    class SupportedFieldTypeDetails
      def self.default(visited=[])
        return nil if visited.include?('SupportedFieldTypeDetails')
        visited = visited + ['SupportedFieldTypeDetails']
        {
          v1: FieldTypeDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SupportedFieldTypeDetails.new
        data = {}
        data['v1'] = FieldTypeDetails.stub(stub[:v1]) unless stub[:v1].nil?
        data
      end
    end

    # Structure Stubber for FieldTypeDetails
    class FieldTypeDetails
      def self.default(visited=[])
        return nil if visited.include?('FieldTypeDetails')
        visited = visited + ['FieldTypeDetails']
        {
          field_type: 'field_type',
          filter_operators: FilterOperatorList.default(visited),
          supported_values: SupportedValueList.default(visited),
          value_regex_pattern: 'value_regex_pattern',
          supported_date_format: 'supported_date_format',
          field_value_range: Range.default(visited),
          field_length_range: Range.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FieldTypeDetails.new
        data = {}
        data['fieldType'] = stub[:field_type] unless stub[:field_type].nil?
        data['filterOperators'] = FilterOperatorList.stub(stub[:filter_operators]) unless stub[:filter_operators].nil?
        data['supportedValues'] = SupportedValueList.stub(stub[:supported_values]) unless stub[:supported_values].nil?
        data['valueRegexPattern'] = stub[:value_regex_pattern] unless stub[:value_regex_pattern].nil?
        data['supportedDateFormat'] = stub[:supported_date_format] unless stub[:supported_date_format].nil?
        data['fieldValueRange'] = Range.stub(stub[:field_value_range]) unless stub[:field_value_range].nil?
        data['fieldLengthRange'] = Range.stub(stub[:field_length_range]) unless stub[:field_length_range].nil?
        data
      end
    end

    # Structure Stubber for Range
    class Range
      def self.default(visited=[])
        return nil if visited.include?('Range')
        visited = visited + ['Range']
        {
          maximum: 1.0,
          minimum: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::Range.new
        data = {}
        data['maximum'] = Hearth::NumberHelper.serialize(stub[:maximum])
        data['minimum'] = Hearth::NumberHelper.serialize(stub[:minimum])
        data
      end
    end

    # List Stubber for SupportedValueList
    class SupportedValueList
      def self.default(visited=[])
        return nil if visited.include?('SupportedValueList')
        visited = visited + ['SupportedValueList']
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

    # List Stubber for FilterOperatorList
    class FilterOperatorList
      def self.default(visited=[])
        return nil if visited.include?('FilterOperatorList')
        visited = visited + ['FilterOperatorList']
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

    # Operation Stubber for DescribeConnectorProfiles
    class DescribeConnectorProfiles
      def self.default(visited=[])
        {
          connector_profile_details: ConnectorProfileDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorProfileDetails'] = ConnectorProfileDetailList.stub(stub[:connector_profile_details]) unless stub[:connector_profile_details].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectorProfileDetailList
    class ConnectorProfileDetailList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorProfileDetailList')
        visited = visited + ['ConnectorProfileDetailList']
        [
          ConnectorProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectorProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectorProfile
    class ConnectorProfile
      def self.default(visited=[])
        return nil if visited.include?('ConnectorProfile')
        visited = visited + ['ConnectorProfile']
        {
          connector_profile_arn: 'connector_profile_arn',
          connector_profile_name: 'connector_profile_name',
          connector_type: 'connector_type',
          connector_label: 'connector_label',
          connection_mode: 'connection_mode',
          credentials_arn: 'credentials_arn',
          connector_profile_properties: ConnectorProfileProperties.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          private_connection_provisioning_state: PrivateConnectionProvisioningState.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorProfile.new
        data = {}
        data['connectorProfileArn'] = stub[:connector_profile_arn] unless stub[:connector_profile_arn].nil?
        data['connectorProfileName'] = stub[:connector_profile_name] unless stub[:connector_profile_name].nil?
        data['connectorType'] = stub[:connector_type] unless stub[:connector_type].nil?
        data['connectorLabel'] = stub[:connector_label] unless stub[:connector_label].nil?
        data['connectionMode'] = stub[:connection_mode] unless stub[:connection_mode].nil?
        data['credentialsArn'] = stub[:credentials_arn] unless stub[:credentials_arn].nil?
        data['connectorProfileProperties'] = ConnectorProfileProperties.stub(stub[:connector_profile_properties]) unless stub[:connector_profile_properties].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['privateConnectionProvisioningState'] = PrivateConnectionProvisioningState.stub(stub[:private_connection_provisioning_state]) unless stub[:private_connection_provisioning_state].nil?
        data
      end
    end

    # Structure Stubber for PrivateConnectionProvisioningState
    class PrivateConnectionProvisioningState
      def self.default(visited=[])
        return nil if visited.include?('PrivateConnectionProvisioningState')
        visited = visited + ['PrivateConnectionProvisioningState']
        {
          status: 'status',
          failure_message: 'failure_message',
          failure_cause: 'failure_cause',
        }
      end

      def self.stub(stub)
        stub ||= Types::PrivateConnectionProvisioningState.new
        data = {}
        data['status'] = stub[:status] unless stub[:status].nil?
        data['failureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data['failureCause'] = stub[:failure_cause] unless stub[:failure_cause].nil?
        data
      end
    end

    # Structure Stubber for ConnectorProfileProperties
    class ConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('ConnectorProfileProperties')
        visited = visited + ['ConnectorProfileProperties']
        {
          amplitude: AmplitudeConnectorProfileProperties.default(visited),
          datadog: DatadogConnectorProfileProperties.default(visited),
          dynatrace: DynatraceConnectorProfileProperties.default(visited),
          google_analytics: GoogleAnalyticsConnectorProfileProperties.default(visited),
          honeycode: HoneycodeConnectorProfileProperties.default(visited),
          infor_nexus: InforNexusConnectorProfileProperties.default(visited),
          marketo: MarketoConnectorProfileProperties.default(visited),
          redshift: RedshiftConnectorProfileProperties.default(visited),
          salesforce: SalesforceConnectorProfileProperties.default(visited),
          service_now: ServiceNowConnectorProfileProperties.default(visited),
          singular: SingularConnectorProfileProperties.default(visited),
          slack: SlackConnectorProfileProperties.default(visited),
          snowflake: SnowflakeConnectorProfileProperties.default(visited),
          trendmicro: TrendmicroConnectorProfileProperties.default(visited),
          veeva: VeevaConnectorProfileProperties.default(visited),
          zendesk: ZendeskConnectorProfileProperties.default(visited),
          sapo_data: SAPODataConnectorProfileProperties.default(visited),
          custom_connector: CustomConnectorProfileProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorProfileProperties.new
        data = {}
        data['Amplitude'] = AmplitudeConnectorProfileProperties.stub(stub[:amplitude]) unless stub[:amplitude].nil?
        data['Datadog'] = DatadogConnectorProfileProperties.stub(stub[:datadog]) unless stub[:datadog].nil?
        data['Dynatrace'] = DynatraceConnectorProfileProperties.stub(stub[:dynatrace]) unless stub[:dynatrace].nil?
        data['GoogleAnalytics'] = GoogleAnalyticsConnectorProfileProperties.stub(stub[:google_analytics]) unless stub[:google_analytics].nil?
        data['Honeycode'] = HoneycodeConnectorProfileProperties.stub(stub[:honeycode]) unless stub[:honeycode].nil?
        data['InforNexus'] = InforNexusConnectorProfileProperties.stub(stub[:infor_nexus]) unless stub[:infor_nexus].nil?
        data['Marketo'] = MarketoConnectorProfileProperties.stub(stub[:marketo]) unless stub[:marketo].nil?
        data['Redshift'] = RedshiftConnectorProfileProperties.stub(stub[:redshift]) unless stub[:redshift].nil?
        data['Salesforce'] = SalesforceConnectorProfileProperties.stub(stub[:salesforce]) unless stub[:salesforce].nil?
        data['ServiceNow'] = ServiceNowConnectorProfileProperties.stub(stub[:service_now]) unless stub[:service_now].nil?
        data['Singular'] = SingularConnectorProfileProperties.stub(stub[:singular]) unless stub[:singular].nil?
        data['Slack'] = SlackConnectorProfileProperties.stub(stub[:slack]) unless stub[:slack].nil?
        data['Snowflake'] = SnowflakeConnectorProfileProperties.stub(stub[:snowflake]) unless stub[:snowflake].nil?
        data['Trendmicro'] = TrendmicroConnectorProfileProperties.stub(stub[:trendmicro]) unless stub[:trendmicro].nil?
        data['Veeva'] = VeevaConnectorProfileProperties.stub(stub[:veeva]) unless stub[:veeva].nil?
        data['Zendesk'] = ZendeskConnectorProfileProperties.stub(stub[:zendesk]) unless stub[:zendesk].nil?
        data['SAPOData'] = SAPODataConnectorProfileProperties.stub(stub[:sapo_data]) unless stub[:sapo_data].nil?
        data['CustomConnector'] = CustomConnectorProfileProperties.stub(stub[:custom_connector]) unless stub[:custom_connector].nil?
        data
      end
    end

    # Structure Stubber for CustomConnectorProfileProperties
    class CustomConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('CustomConnectorProfileProperties')
        visited = visited + ['CustomConnectorProfileProperties']
        {
          profile_properties: ProfilePropertiesMap.default(visited),
          o_auth2_properties: OAuth2Properties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomConnectorProfileProperties.new
        data = {}
        data['profileProperties'] = ProfilePropertiesMap.stub(stub[:profile_properties]) unless stub[:profile_properties].nil?
        data['oAuth2Properties'] = OAuth2Properties.stub(stub[:o_auth2_properties]) unless stub[:o_auth2_properties].nil?
        data
      end
    end

    # Structure Stubber for OAuth2Properties
    class OAuth2Properties
      def self.default(visited=[])
        return nil if visited.include?('OAuth2Properties')
        visited = visited + ['OAuth2Properties']
        {
          token_url: 'token_url',
          o_auth2_grant_type: 'o_auth2_grant_type',
          token_url_custom_properties: TokenUrlCustomProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OAuth2Properties.new
        data = {}
        data['tokenUrl'] = stub[:token_url] unless stub[:token_url].nil?
        data['oAuth2GrantType'] = stub[:o_auth2_grant_type] unless stub[:o_auth2_grant_type].nil?
        data['tokenUrlCustomProperties'] = TokenUrlCustomProperties.stub(stub[:token_url_custom_properties]) unless stub[:token_url_custom_properties].nil?
        data
      end
    end

    # Map Stubber for TokenUrlCustomProperties
    class TokenUrlCustomProperties
      def self.default(visited=[])
        return nil if visited.include?('TokenUrlCustomProperties')
        visited = visited + ['TokenUrlCustomProperties']
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

    # Map Stubber for ProfilePropertiesMap
    class ProfilePropertiesMap
      def self.default(visited=[])
        return nil if visited.include?('ProfilePropertiesMap')
        visited = visited + ['ProfilePropertiesMap']
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

    # Structure Stubber for SAPODataConnectorProfileProperties
    class SAPODataConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('SAPODataConnectorProfileProperties')
        visited = visited + ['SAPODataConnectorProfileProperties']
        {
          application_host_url: 'application_host_url',
          application_service_path: 'application_service_path',
          port_number: 1,
          client_number: 'client_number',
          logon_language: 'logon_language',
          private_link_service_name: 'private_link_service_name',
          o_auth_properties: OAuthProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SAPODataConnectorProfileProperties.new
        data = {}
        data['applicationHostUrl'] = stub[:application_host_url] unless stub[:application_host_url].nil?
        data['applicationServicePath'] = stub[:application_service_path] unless stub[:application_service_path].nil?
        data['portNumber'] = stub[:port_number] unless stub[:port_number].nil?
        data['clientNumber'] = stub[:client_number] unless stub[:client_number].nil?
        data['logonLanguage'] = stub[:logon_language] unless stub[:logon_language].nil?
        data['privateLinkServiceName'] = stub[:private_link_service_name] unless stub[:private_link_service_name].nil?
        data['oAuthProperties'] = OAuthProperties.stub(stub[:o_auth_properties]) unless stub[:o_auth_properties].nil?
        data
      end
    end

    # Structure Stubber for OAuthProperties
    class OAuthProperties
      def self.default(visited=[])
        return nil if visited.include?('OAuthProperties')
        visited = visited + ['OAuthProperties']
        {
          token_url: 'token_url',
          auth_code_url: 'auth_code_url',
          o_auth_scopes: OAuthScopeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OAuthProperties.new
        data = {}
        data['tokenUrl'] = stub[:token_url] unless stub[:token_url].nil?
        data['authCodeUrl'] = stub[:auth_code_url] unless stub[:auth_code_url].nil?
        data['oAuthScopes'] = OAuthScopeList.stub(stub[:o_auth_scopes]) unless stub[:o_auth_scopes].nil?
        data
      end
    end

    # Structure Stubber for ZendeskConnectorProfileProperties
    class ZendeskConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('ZendeskConnectorProfileProperties')
        visited = visited + ['ZendeskConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ZendeskConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for VeevaConnectorProfileProperties
    class VeevaConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('VeevaConnectorProfileProperties')
        visited = visited + ['VeevaConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::VeevaConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for TrendmicroConnectorProfileProperties
    class TrendmicroConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('TrendmicroConnectorProfileProperties')
        visited = visited + ['TrendmicroConnectorProfileProperties']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::TrendmicroConnectorProfileProperties.new
        data = {}
        data
      end
    end

    # Structure Stubber for SnowflakeConnectorProfileProperties
    class SnowflakeConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('SnowflakeConnectorProfileProperties')
        visited = visited + ['SnowflakeConnectorProfileProperties']
        {
          warehouse: 'warehouse',
          stage: 'stage',
          bucket_name: 'bucket_name',
          bucket_prefix: 'bucket_prefix',
          private_link_service_name: 'private_link_service_name',
          account_name: 'account_name',
          region: 'region',
        }
      end

      def self.stub(stub)
        stub ||= Types::SnowflakeConnectorProfileProperties.new
        data = {}
        data['warehouse'] = stub[:warehouse] unless stub[:warehouse].nil?
        data['stage'] = stub[:stage] unless stub[:stage].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['privateLinkServiceName'] = stub[:private_link_service_name] unless stub[:private_link_service_name].nil?
        data['accountName'] = stub[:account_name] unless stub[:account_name].nil?
        data['region'] = stub[:region] unless stub[:region].nil?
        data
      end
    end

    # Structure Stubber for SlackConnectorProfileProperties
    class SlackConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('SlackConnectorProfileProperties')
        visited = visited + ['SlackConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlackConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for SingularConnectorProfileProperties
    class SingularConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('SingularConnectorProfileProperties')
        visited = visited + ['SingularConnectorProfileProperties']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::SingularConnectorProfileProperties.new
        data = {}
        data
      end
    end

    # Structure Stubber for ServiceNowConnectorProfileProperties
    class ServiceNowConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowConnectorProfileProperties')
        visited = visited + ['ServiceNowConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for SalesforceConnectorProfileProperties
    class SalesforceConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('SalesforceConnectorProfileProperties')
        visited = visited + ['SalesforceConnectorProfileProperties']
        {
          instance_url: 'instance_url',
          is_sandbox_environment: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data['isSandboxEnvironment'] = stub[:is_sandbox_environment] unless stub[:is_sandbox_environment].nil?
        data
      end
    end

    # Structure Stubber for RedshiftConnectorProfileProperties
    class RedshiftConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('RedshiftConnectorProfileProperties')
        visited = visited + ['RedshiftConnectorProfileProperties']
        {
          database_url: 'database_url',
          bucket_name: 'bucket_name',
          bucket_prefix: 'bucket_prefix',
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftConnectorProfileProperties.new
        data = {}
        data['databaseUrl'] = stub[:database_url] unless stub[:database_url].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['roleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for MarketoConnectorProfileProperties
    class MarketoConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('MarketoConnectorProfileProperties')
        visited = visited + ['MarketoConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::MarketoConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for InforNexusConnectorProfileProperties
    class InforNexusConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('InforNexusConnectorProfileProperties')
        visited = visited + ['InforNexusConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::InforNexusConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for HoneycodeConnectorProfileProperties
    class HoneycodeConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('HoneycodeConnectorProfileProperties')
        visited = visited + ['HoneycodeConnectorProfileProperties']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::HoneycodeConnectorProfileProperties.new
        data = {}
        data
      end
    end

    # Structure Stubber for GoogleAnalyticsConnectorProfileProperties
    class GoogleAnalyticsConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('GoogleAnalyticsConnectorProfileProperties')
        visited = visited + ['GoogleAnalyticsConnectorProfileProperties']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::GoogleAnalyticsConnectorProfileProperties.new
        data = {}
        data
      end
    end

    # Structure Stubber for DynatraceConnectorProfileProperties
    class DynatraceConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('DynatraceConnectorProfileProperties')
        visited = visited + ['DynatraceConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::DynatraceConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for DatadogConnectorProfileProperties
    class DatadogConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('DatadogConnectorProfileProperties')
        visited = visited + ['DatadogConnectorProfileProperties']
        {
          instance_url: 'instance_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatadogConnectorProfileProperties.new
        data = {}
        data['instanceUrl'] = stub[:instance_url] unless stub[:instance_url].nil?
        data
      end
    end

    # Structure Stubber for AmplitudeConnectorProfileProperties
    class AmplitudeConnectorProfileProperties
      def self.default(visited=[])
        return nil if visited.include?('AmplitudeConnectorProfileProperties')
        visited = visited + ['AmplitudeConnectorProfileProperties']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::AmplitudeConnectorProfileProperties.new
        data = {}
        data
      end
    end

    # Operation Stubber for DescribeConnectors
    class DescribeConnectors
      def self.default(visited=[])
        {
          connector_configurations: ConnectorConfigurationsMap.default(visited),
          connectors: ConnectorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorConfigurations'] = ConnectorConfigurationsMap.stub(stub[:connector_configurations]) unless stub[:connector_configurations].nil?
        data['connectors'] = ConnectorList.stub(stub[:connectors]) unless stub[:connectors].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ConnectorList
    class ConnectorList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorList')
        visited = visited + ['ConnectorList']
        [
          ConnectorDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectorDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectorDetail
    class ConnectorDetail
      def self.default(visited=[])
        return nil if visited.include?('ConnectorDetail')
        visited = visited + ['ConnectorDetail']
        {
          connector_description: 'connector_description',
          connector_name: 'connector_name',
          connector_owner: 'connector_owner',
          connector_version: 'connector_version',
          application_type: 'application_type',
          connector_type: 'connector_type',
          connector_label: 'connector_label',
          registered_at: Time.now,
          registered_by: 'registered_by',
          connector_provisioning_type: 'connector_provisioning_type',
          connector_modes: ConnectorModeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorDetail.new
        data = {}
        data['connectorDescription'] = stub[:connector_description] unless stub[:connector_description].nil?
        data['connectorName'] = stub[:connector_name] unless stub[:connector_name].nil?
        data['connectorOwner'] = stub[:connector_owner] unless stub[:connector_owner].nil?
        data['connectorVersion'] = stub[:connector_version] unless stub[:connector_version].nil?
        data['applicationType'] = stub[:application_type] unless stub[:application_type].nil?
        data['connectorType'] = stub[:connector_type] unless stub[:connector_type].nil?
        data['connectorLabel'] = stub[:connector_label] unless stub[:connector_label].nil?
        data['registeredAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registered_at]).to_i unless stub[:registered_at].nil?
        data['registeredBy'] = stub[:registered_by] unless stub[:registered_by].nil?
        data['connectorProvisioningType'] = stub[:connector_provisioning_type] unless stub[:connector_provisioning_type].nil?
        data['connectorModes'] = ConnectorModeList.stub(stub[:connector_modes]) unless stub[:connector_modes].nil?
        data
      end
    end

    # Map Stubber for ConnectorConfigurationsMap
    class ConnectorConfigurationsMap
      def self.default(visited=[])
        return nil if visited.include?('ConnectorConfigurationsMap')
        visited = visited + ['ConnectorConfigurationsMap']
        {
          test_key: ConnectorConfiguration.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ConnectorConfiguration.stub(value) unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeFlow
    class DescribeFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          description: 'description',
          flow_name: 'flow_name',
          kms_arn: 'kms_arn',
          flow_status: 'flow_status',
          flow_status_message: 'flow_status_message',
          source_flow_config: SourceFlowConfig.default(visited),
          destination_flow_config_list: DestinationFlowConfigList.default(visited),
          last_run_execution_details: ExecutionDetails.default(visited),
          trigger_config: TriggerConfig.default(visited),
          tasks: Tasks.default(visited),
          created_at: Time.now,
          last_updated_at: Time.now,
          created_by: 'created_by',
          last_updated_by: 'last_updated_by',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['flowName'] = stub[:flow_name] unless stub[:flow_name].nil?
        data['kmsArn'] = stub[:kms_arn] unless stub[:kms_arn].nil?
        data['flowStatus'] = stub[:flow_status] unless stub[:flow_status].nil?
        data['flowStatusMessage'] = stub[:flow_status_message] unless stub[:flow_status_message].nil?
        data['sourceFlowConfig'] = SourceFlowConfig.stub(stub[:source_flow_config]) unless stub[:source_flow_config].nil?
        data['destinationFlowConfigList'] = DestinationFlowConfigList.stub(stub[:destination_flow_config_list]) unless stub[:destination_flow_config_list].nil?
        data['lastRunExecutionDetails'] = ExecutionDetails.stub(stub[:last_run_execution_details]) unless stub[:last_run_execution_details].nil?
        data['triggerConfig'] = TriggerConfig.stub(stub[:trigger_config]) unless stub[:trigger_config].nil?
        data['tasks'] = Tasks.stub(stub[:tasks]) unless stub[:tasks].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['lastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # List Stubber for Tasks
    class Tasks
      def self.default(visited=[])
        return nil if visited.include?('Tasks')
        visited = visited + ['Tasks']
        [
          Task.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Task.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Task
    class Task
      def self.default(visited=[])
        return nil if visited.include?('Task')
        visited = visited + ['Task']
        {
          source_fields: SourceFields.default(visited),
          connector_operator: ConnectorOperator.default(visited),
          destination_field: 'destination_field',
          task_type: 'task_type',
          task_properties: TaskPropertiesMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Task.new
        data = {}
        data['sourceFields'] = SourceFields.stub(stub[:source_fields]) unless stub[:source_fields].nil?
        data['connectorOperator'] = ConnectorOperator.stub(stub[:connector_operator]) unless stub[:connector_operator].nil?
        data['destinationField'] = stub[:destination_field] unless stub[:destination_field].nil?
        data['taskType'] = stub[:task_type] unless stub[:task_type].nil?
        data['taskProperties'] = TaskPropertiesMap.stub(stub[:task_properties]) unless stub[:task_properties].nil?
        data
      end
    end

    # Map Stubber for TaskPropertiesMap
    class TaskPropertiesMap
      def self.default(visited=[])
        return nil if visited.include?('TaskPropertiesMap')
        visited = visited + ['TaskPropertiesMap']
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

    # Structure Stubber for ConnectorOperator
    class ConnectorOperator
      def self.default(visited=[])
        return nil if visited.include?('ConnectorOperator')
        visited = visited + ['ConnectorOperator']
        {
          amplitude: 'amplitude',
          datadog: 'datadog',
          dynatrace: 'dynatrace',
          google_analytics: 'google_analytics',
          infor_nexus: 'infor_nexus',
          marketo: 'marketo',
          s3: 's3',
          salesforce: 'salesforce',
          service_now: 'service_now',
          singular: 'singular',
          slack: 'slack',
          trendmicro: 'trendmicro',
          veeva: 'veeva',
          zendesk: 'zendesk',
          sapo_data: 'sapo_data',
          custom_connector: 'custom_connector',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorOperator.new
        data = {}
        data['Amplitude'] = stub[:amplitude] unless stub[:amplitude].nil?
        data['Datadog'] = stub[:datadog] unless stub[:datadog].nil?
        data['Dynatrace'] = stub[:dynatrace] unless stub[:dynatrace].nil?
        data['GoogleAnalytics'] = stub[:google_analytics] unless stub[:google_analytics].nil?
        data['InforNexus'] = stub[:infor_nexus] unless stub[:infor_nexus].nil?
        data['Marketo'] = stub[:marketo] unless stub[:marketo].nil?
        data['S3'] = stub[:s3] unless stub[:s3].nil?
        data['Salesforce'] = stub[:salesforce] unless stub[:salesforce].nil?
        data['ServiceNow'] = stub[:service_now] unless stub[:service_now].nil?
        data['Singular'] = stub[:singular] unless stub[:singular].nil?
        data['Slack'] = stub[:slack] unless stub[:slack].nil?
        data['Trendmicro'] = stub[:trendmicro] unless stub[:trendmicro].nil?
        data['Veeva'] = stub[:veeva] unless stub[:veeva].nil?
        data['Zendesk'] = stub[:zendesk] unless stub[:zendesk].nil?
        data['SAPOData'] = stub[:sapo_data] unless stub[:sapo_data].nil?
        data['CustomConnector'] = stub[:custom_connector] unless stub[:custom_connector].nil?
        data
      end
    end

    # List Stubber for SourceFields
    class SourceFields
      def self.default(visited=[])
        return nil if visited.include?('SourceFields')
        visited = visited + ['SourceFields']
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

    # Structure Stubber for TriggerConfig
    class TriggerConfig
      def self.default(visited=[])
        return nil if visited.include?('TriggerConfig')
        visited = visited + ['TriggerConfig']
        {
          trigger_type: 'trigger_type',
          trigger_properties: TriggerProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TriggerConfig.new
        data = {}
        data['triggerType'] = stub[:trigger_type] unless stub[:trigger_type].nil?
        data['triggerProperties'] = TriggerProperties.stub(stub[:trigger_properties]) unless stub[:trigger_properties].nil?
        data
      end
    end

    # Structure Stubber for TriggerProperties
    class TriggerProperties
      def self.default(visited=[])
        return nil if visited.include?('TriggerProperties')
        visited = visited + ['TriggerProperties']
        {
          scheduled: ScheduledTriggerProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TriggerProperties.new
        data = {}
        data['Scheduled'] = ScheduledTriggerProperties.stub(stub[:scheduled]) unless stub[:scheduled].nil?
        data
      end
    end

    # Structure Stubber for ScheduledTriggerProperties
    class ScheduledTriggerProperties
      def self.default(visited=[])
        return nil if visited.include?('ScheduledTriggerProperties')
        visited = visited + ['ScheduledTriggerProperties']
        {
          schedule_expression: 'schedule_expression',
          data_pull_mode: 'data_pull_mode',
          schedule_start_time: Time.now,
          schedule_end_time: Time.now,
          timezone: 'timezone',
          schedule_offset: 1,
          first_execution_from: Time.now,
          flow_error_deactivation_threshold: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduledTriggerProperties.new
        data = {}
        data['scheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data['dataPullMode'] = stub[:data_pull_mode] unless stub[:data_pull_mode].nil?
        data['scheduleStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:schedule_start_time]).to_i unless stub[:schedule_start_time].nil?
        data['scheduleEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:schedule_end_time]).to_i unless stub[:schedule_end_time].nil?
        data['timezone'] = stub[:timezone] unless stub[:timezone].nil?
        data['scheduleOffset'] = stub[:schedule_offset] unless stub[:schedule_offset].nil?
        data['firstExecutionFrom'] = Hearth::TimeHelper.to_epoch_seconds(stub[:first_execution_from]).to_i unless stub[:first_execution_from].nil?
        data['flowErrorDeactivationThreshold'] = stub[:flow_error_deactivation_threshold] unless stub[:flow_error_deactivation_threshold].nil?
        data
      end
    end

    # Structure Stubber for ExecutionDetails
    class ExecutionDetails
      def self.default(visited=[])
        return nil if visited.include?('ExecutionDetails')
        visited = visited + ['ExecutionDetails']
        {
          most_recent_execution_message: 'most_recent_execution_message',
          most_recent_execution_time: Time.now,
          most_recent_execution_status: 'most_recent_execution_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionDetails.new
        data = {}
        data['mostRecentExecutionMessage'] = stub[:most_recent_execution_message] unless stub[:most_recent_execution_message].nil?
        data['mostRecentExecutionTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:most_recent_execution_time]).to_i unless stub[:most_recent_execution_time].nil?
        data['mostRecentExecutionStatus'] = stub[:most_recent_execution_status] unless stub[:most_recent_execution_status].nil?
        data
      end
    end

    # List Stubber for DestinationFlowConfigList
    class DestinationFlowConfigList
      def self.default(visited=[])
        return nil if visited.include?('DestinationFlowConfigList')
        visited = visited + ['DestinationFlowConfigList']
        [
          DestinationFlowConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DestinationFlowConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DestinationFlowConfig
    class DestinationFlowConfig
      def self.default(visited=[])
        return nil if visited.include?('DestinationFlowConfig')
        visited = visited + ['DestinationFlowConfig']
        {
          connector_type: 'connector_type',
          api_version: 'api_version',
          connector_profile_name: 'connector_profile_name',
          destination_connector_properties: DestinationConnectorProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationFlowConfig.new
        data = {}
        data['connectorType'] = stub[:connector_type] unless stub[:connector_type].nil?
        data['apiVersion'] = stub[:api_version] unless stub[:api_version].nil?
        data['connectorProfileName'] = stub[:connector_profile_name] unless stub[:connector_profile_name].nil?
        data['destinationConnectorProperties'] = DestinationConnectorProperties.stub(stub[:destination_connector_properties]) unless stub[:destination_connector_properties].nil?
        data
      end
    end

    # Structure Stubber for DestinationConnectorProperties
    class DestinationConnectorProperties
      def self.default(visited=[])
        return nil if visited.include?('DestinationConnectorProperties')
        visited = visited + ['DestinationConnectorProperties']
        {
          redshift: RedshiftDestinationProperties.default(visited),
          s3: S3DestinationProperties.default(visited),
          salesforce: SalesforceDestinationProperties.default(visited),
          snowflake: SnowflakeDestinationProperties.default(visited),
          event_bridge: EventBridgeDestinationProperties.default(visited),
          lookout_metrics: LookoutMetricsDestinationProperties.default(visited),
          upsolver: UpsolverDestinationProperties.default(visited),
          honeycode: HoneycodeDestinationProperties.default(visited),
          customer_profiles: CustomerProfilesDestinationProperties.default(visited),
          zendesk: ZendeskDestinationProperties.default(visited),
          marketo: MarketoDestinationProperties.default(visited),
          custom_connector: CustomConnectorDestinationProperties.default(visited),
          sapo_data: SAPODataDestinationProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DestinationConnectorProperties.new
        data = {}
        data['Redshift'] = RedshiftDestinationProperties.stub(stub[:redshift]) unless stub[:redshift].nil?
        data['S3'] = S3DestinationProperties.stub(stub[:s3]) unless stub[:s3].nil?
        data['Salesforce'] = SalesforceDestinationProperties.stub(stub[:salesforce]) unless stub[:salesforce].nil?
        data['Snowflake'] = SnowflakeDestinationProperties.stub(stub[:snowflake]) unless stub[:snowflake].nil?
        data['EventBridge'] = EventBridgeDestinationProperties.stub(stub[:event_bridge]) unless stub[:event_bridge].nil?
        data['LookoutMetrics'] = LookoutMetricsDestinationProperties.stub(stub[:lookout_metrics]) unless stub[:lookout_metrics].nil?
        data['Upsolver'] = UpsolverDestinationProperties.stub(stub[:upsolver]) unless stub[:upsolver].nil?
        data['Honeycode'] = HoneycodeDestinationProperties.stub(stub[:honeycode]) unless stub[:honeycode].nil?
        data['CustomerProfiles'] = CustomerProfilesDestinationProperties.stub(stub[:customer_profiles]) unless stub[:customer_profiles].nil?
        data['Zendesk'] = ZendeskDestinationProperties.stub(stub[:zendesk]) unless stub[:zendesk].nil?
        data['Marketo'] = MarketoDestinationProperties.stub(stub[:marketo]) unless stub[:marketo].nil?
        data['CustomConnector'] = CustomConnectorDestinationProperties.stub(stub[:custom_connector]) unless stub[:custom_connector].nil?
        data['SAPOData'] = SAPODataDestinationProperties.stub(stub[:sapo_data]) unless stub[:sapo_data].nil?
        data
      end
    end

    # Structure Stubber for SAPODataDestinationProperties
    class SAPODataDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('SAPODataDestinationProperties')
        visited = visited + ['SAPODataDestinationProperties']
        {
          object_path: 'object_path',
          success_response_handling_config: SuccessResponseHandlingConfig.default(visited),
          id_field_names: IdFieldNameList.default(visited),
          error_handling_config: ErrorHandlingConfig.default(visited),
          write_operation_type: 'write_operation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SAPODataDestinationProperties.new
        data = {}
        data['objectPath'] = stub[:object_path] unless stub[:object_path].nil?
        data['successResponseHandlingConfig'] = SuccessResponseHandlingConfig.stub(stub[:success_response_handling_config]) unless stub[:success_response_handling_config].nil?
        data['idFieldNames'] = IdFieldNameList.stub(stub[:id_field_names]) unless stub[:id_field_names].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data['writeOperationType'] = stub[:write_operation_type] unless stub[:write_operation_type].nil?
        data
      end
    end

    # Structure Stubber for ErrorHandlingConfig
    class ErrorHandlingConfig
      def self.default(visited=[])
        return nil if visited.include?('ErrorHandlingConfig')
        visited = visited + ['ErrorHandlingConfig']
        {
          fail_on_first_destination_error: false,
          bucket_prefix: 'bucket_prefix',
          bucket_name: 'bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorHandlingConfig.new
        data = {}
        data['failOnFirstDestinationError'] = stub[:fail_on_first_destination_error] unless stub[:fail_on_first_destination_error].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data
      end
    end

    # List Stubber for IdFieldNameList
    class IdFieldNameList
      def self.default(visited=[])
        return nil if visited.include?('IdFieldNameList')
        visited = visited + ['IdFieldNameList']
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

    # Structure Stubber for SuccessResponseHandlingConfig
    class SuccessResponseHandlingConfig
      def self.default(visited=[])
        return nil if visited.include?('SuccessResponseHandlingConfig')
        visited = visited + ['SuccessResponseHandlingConfig']
        {
          bucket_prefix: 'bucket_prefix',
          bucket_name: 'bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::SuccessResponseHandlingConfig.new
        data = {}
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data
      end
    end

    # Structure Stubber for CustomConnectorDestinationProperties
    class CustomConnectorDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('CustomConnectorDestinationProperties')
        visited = visited + ['CustomConnectorDestinationProperties']
        {
          entity_name: 'entity_name',
          error_handling_config: ErrorHandlingConfig.default(visited),
          write_operation_type: 'write_operation_type',
          id_field_names: IdFieldNameList.default(visited),
          custom_properties: CustomProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomConnectorDestinationProperties.new
        data = {}
        data['entityName'] = stub[:entity_name] unless stub[:entity_name].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data['writeOperationType'] = stub[:write_operation_type] unless stub[:write_operation_type].nil?
        data['idFieldNames'] = IdFieldNameList.stub(stub[:id_field_names]) unless stub[:id_field_names].nil?
        data['customProperties'] = CustomProperties.stub(stub[:custom_properties]) unless stub[:custom_properties].nil?
        data
      end
    end

    # Structure Stubber for MarketoDestinationProperties
    class MarketoDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('MarketoDestinationProperties')
        visited = visited + ['MarketoDestinationProperties']
        {
          object: 'object',
          error_handling_config: ErrorHandlingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MarketoDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data
      end
    end

    # Structure Stubber for ZendeskDestinationProperties
    class ZendeskDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('ZendeskDestinationProperties')
        visited = visited + ['ZendeskDestinationProperties']
        {
          object: 'object',
          id_field_names: IdFieldNameList.default(visited),
          error_handling_config: ErrorHandlingConfig.default(visited),
          write_operation_type: 'write_operation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ZendeskDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['idFieldNames'] = IdFieldNameList.stub(stub[:id_field_names]) unless stub[:id_field_names].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data['writeOperationType'] = stub[:write_operation_type] unless stub[:write_operation_type].nil?
        data
      end
    end

    # Structure Stubber for CustomerProfilesDestinationProperties
    class CustomerProfilesDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('CustomerProfilesDestinationProperties')
        visited = visited + ['CustomerProfilesDestinationProperties']
        {
          domain_name: 'domain_name',
          object_type_name: 'object_type_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomerProfilesDestinationProperties.new
        data = {}
        data['domainName'] = stub[:domain_name] unless stub[:domain_name].nil?
        data['objectTypeName'] = stub[:object_type_name] unless stub[:object_type_name].nil?
        data
      end
    end

    # Structure Stubber for HoneycodeDestinationProperties
    class HoneycodeDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('HoneycodeDestinationProperties')
        visited = visited + ['HoneycodeDestinationProperties']
        {
          object: 'object',
          error_handling_config: ErrorHandlingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::HoneycodeDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data
      end
    end

    # Structure Stubber for UpsolverDestinationProperties
    class UpsolverDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('UpsolverDestinationProperties')
        visited = visited + ['UpsolverDestinationProperties']
        {
          bucket_name: 'bucket_name',
          bucket_prefix: 'bucket_prefix',
          s3_output_format_config: UpsolverS3OutputFormatConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpsolverDestinationProperties.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['s3OutputFormatConfig'] = UpsolverS3OutputFormatConfig.stub(stub[:s3_output_format_config]) unless stub[:s3_output_format_config].nil?
        data
      end
    end

    # Structure Stubber for UpsolverS3OutputFormatConfig
    class UpsolverS3OutputFormatConfig
      def self.default(visited=[])
        return nil if visited.include?('UpsolverS3OutputFormatConfig')
        visited = visited + ['UpsolverS3OutputFormatConfig']
        {
          file_type: 'file_type',
          prefix_config: PrefixConfig.default(visited),
          aggregation_config: AggregationConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UpsolverS3OutputFormatConfig.new
        data = {}
        data['fileType'] = stub[:file_type] unless stub[:file_type].nil?
        data['prefixConfig'] = PrefixConfig.stub(stub[:prefix_config]) unless stub[:prefix_config].nil?
        data['aggregationConfig'] = AggregationConfig.stub(stub[:aggregation_config]) unless stub[:aggregation_config].nil?
        data
      end
    end

    # Structure Stubber for AggregationConfig
    class AggregationConfig
      def self.default(visited=[])
        return nil if visited.include?('AggregationConfig')
        visited = visited + ['AggregationConfig']
        {
          aggregation_type: 'aggregation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::AggregationConfig.new
        data = {}
        data['aggregationType'] = stub[:aggregation_type] unless stub[:aggregation_type].nil?
        data
      end
    end

    # Structure Stubber for PrefixConfig
    class PrefixConfig
      def self.default(visited=[])
        return nil if visited.include?('PrefixConfig')
        visited = visited + ['PrefixConfig']
        {
          prefix_type: 'prefix_type',
          prefix_format: 'prefix_format',
        }
      end

      def self.stub(stub)
        stub ||= Types::PrefixConfig.new
        data = {}
        data['prefixType'] = stub[:prefix_type] unless stub[:prefix_type].nil?
        data['prefixFormat'] = stub[:prefix_format] unless stub[:prefix_format].nil?
        data
      end
    end

    # Structure Stubber for LookoutMetricsDestinationProperties
    class LookoutMetricsDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('LookoutMetricsDestinationProperties')
        visited = visited + ['LookoutMetricsDestinationProperties']
        {
        }
      end

      def self.stub(stub)
        stub ||= Types::LookoutMetricsDestinationProperties.new
        data = {}
        data
      end
    end

    # Structure Stubber for EventBridgeDestinationProperties
    class EventBridgeDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('EventBridgeDestinationProperties')
        visited = visited + ['EventBridgeDestinationProperties']
        {
          object: 'object',
          error_handling_config: ErrorHandlingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventBridgeDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data
      end
    end

    # Structure Stubber for SnowflakeDestinationProperties
    class SnowflakeDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('SnowflakeDestinationProperties')
        visited = visited + ['SnowflakeDestinationProperties']
        {
          object: 'object',
          intermediate_bucket_name: 'intermediate_bucket_name',
          bucket_prefix: 'bucket_prefix',
          error_handling_config: ErrorHandlingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SnowflakeDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['intermediateBucketName'] = stub[:intermediate_bucket_name] unless stub[:intermediate_bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data
      end
    end

    # Structure Stubber for SalesforceDestinationProperties
    class SalesforceDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('SalesforceDestinationProperties')
        visited = visited + ['SalesforceDestinationProperties']
        {
          object: 'object',
          id_field_names: IdFieldNameList.default(visited),
          error_handling_config: ErrorHandlingConfig.default(visited),
          write_operation_type: 'write_operation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['idFieldNames'] = IdFieldNameList.stub(stub[:id_field_names]) unless stub[:id_field_names].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data['writeOperationType'] = stub[:write_operation_type] unless stub[:write_operation_type].nil?
        data
      end
    end

    # Structure Stubber for S3DestinationProperties
    class S3DestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('S3DestinationProperties')
        visited = visited + ['S3DestinationProperties']
        {
          bucket_name: 'bucket_name',
          bucket_prefix: 'bucket_prefix',
          s3_output_format_config: S3OutputFormatConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DestinationProperties.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['s3OutputFormatConfig'] = S3OutputFormatConfig.stub(stub[:s3_output_format_config]) unless stub[:s3_output_format_config].nil?
        data
      end
    end

    # Structure Stubber for S3OutputFormatConfig
    class S3OutputFormatConfig
      def self.default(visited=[])
        return nil if visited.include?('S3OutputFormatConfig')
        visited = visited + ['S3OutputFormatConfig']
        {
          file_type: 'file_type',
          prefix_config: PrefixConfig.default(visited),
          aggregation_config: AggregationConfig.default(visited),
          preserve_source_data_typing: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::S3OutputFormatConfig.new
        data = {}
        data['fileType'] = stub[:file_type] unless stub[:file_type].nil?
        data['prefixConfig'] = PrefixConfig.stub(stub[:prefix_config]) unless stub[:prefix_config].nil?
        data['aggregationConfig'] = AggregationConfig.stub(stub[:aggregation_config]) unless stub[:aggregation_config].nil?
        data['preserveSourceDataTyping'] = stub[:preserve_source_data_typing] unless stub[:preserve_source_data_typing].nil?
        data
      end
    end

    # Structure Stubber for RedshiftDestinationProperties
    class RedshiftDestinationProperties
      def self.default(visited=[])
        return nil if visited.include?('RedshiftDestinationProperties')
        visited = visited + ['RedshiftDestinationProperties']
        {
          object: 'object',
          intermediate_bucket_name: 'intermediate_bucket_name',
          bucket_prefix: 'bucket_prefix',
          error_handling_config: ErrorHandlingConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RedshiftDestinationProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['intermediateBucketName'] = stub[:intermediate_bucket_name] unless stub[:intermediate_bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.stub(stub[:error_handling_config]) unless stub[:error_handling_config].nil?
        data
      end
    end

    # Structure Stubber for SourceFlowConfig
    class SourceFlowConfig
      def self.default(visited=[])
        return nil if visited.include?('SourceFlowConfig')
        visited = visited + ['SourceFlowConfig']
        {
          connector_type: 'connector_type',
          api_version: 'api_version',
          connector_profile_name: 'connector_profile_name',
          source_connector_properties: SourceConnectorProperties.default(visited),
          incremental_pull_config: IncrementalPullConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceFlowConfig.new
        data = {}
        data['connectorType'] = stub[:connector_type] unless stub[:connector_type].nil?
        data['apiVersion'] = stub[:api_version] unless stub[:api_version].nil?
        data['connectorProfileName'] = stub[:connector_profile_name] unless stub[:connector_profile_name].nil?
        data['sourceConnectorProperties'] = SourceConnectorProperties.stub(stub[:source_connector_properties]) unless stub[:source_connector_properties].nil?
        data['incrementalPullConfig'] = IncrementalPullConfig.stub(stub[:incremental_pull_config]) unless stub[:incremental_pull_config].nil?
        data
      end
    end

    # Structure Stubber for IncrementalPullConfig
    class IncrementalPullConfig
      def self.default(visited=[])
        return nil if visited.include?('IncrementalPullConfig')
        visited = visited + ['IncrementalPullConfig']
        {
          datetime_type_field_name: 'datetime_type_field_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::IncrementalPullConfig.new
        data = {}
        data['datetimeTypeFieldName'] = stub[:datetime_type_field_name] unless stub[:datetime_type_field_name].nil?
        data
      end
    end

    # Structure Stubber for SourceConnectorProperties
    class SourceConnectorProperties
      def self.default(visited=[])
        return nil if visited.include?('SourceConnectorProperties')
        visited = visited + ['SourceConnectorProperties']
        {
          amplitude: AmplitudeSourceProperties.default(visited),
          datadog: DatadogSourceProperties.default(visited),
          dynatrace: DynatraceSourceProperties.default(visited),
          google_analytics: GoogleAnalyticsSourceProperties.default(visited),
          infor_nexus: InforNexusSourceProperties.default(visited),
          marketo: MarketoSourceProperties.default(visited),
          s3: S3SourceProperties.default(visited),
          salesforce: SalesforceSourceProperties.default(visited),
          service_now: ServiceNowSourceProperties.default(visited),
          singular: SingularSourceProperties.default(visited),
          slack: SlackSourceProperties.default(visited),
          trendmicro: TrendmicroSourceProperties.default(visited),
          veeva: VeevaSourceProperties.default(visited),
          zendesk: ZendeskSourceProperties.default(visited),
          sapo_data: SAPODataSourceProperties.default(visited),
          custom_connector: CustomConnectorSourceProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceConnectorProperties.new
        data = {}
        data['Amplitude'] = AmplitudeSourceProperties.stub(stub[:amplitude]) unless stub[:amplitude].nil?
        data['Datadog'] = DatadogSourceProperties.stub(stub[:datadog]) unless stub[:datadog].nil?
        data['Dynatrace'] = DynatraceSourceProperties.stub(stub[:dynatrace]) unless stub[:dynatrace].nil?
        data['GoogleAnalytics'] = GoogleAnalyticsSourceProperties.stub(stub[:google_analytics]) unless stub[:google_analytics].nil?
        data['InforNexus'] = InforNexusSourceProperties.stub(stub[:infor_nexus]) unless stub[:infor_nexus].nil?
        data['Marketo'] = MarketoSourceProperties.stub(stub[:marketo]) unless stub[:marketo].nil?
        data['S3'] = S3SourceProperties.stub(stub[:s3]) unless stub[:s3].nil?
        data['Salesforce'] = SalesforceSourceProperties.stub(stub[:salesforce]) unless stub[:salesforce].nil?
        data['ServiceNow'] = ServiceNowSourceProperties.stub(stub[:service_now]) unless stub[:service_now].nil?
        data['Singular'] = SingularSourceProperties.stub(stub[:singular]) unless stub[:singular].nil?
        data['Slack'] = SlackSourceProperties.stub(stub[:slack]) unless stub[:slack].nil?
        data['Trendmicro'] = TrendmicroSourceProperties.stub(stub[:trendmicro]) unless stub[:trendmicro].nil?
        data['Veeva'] = VeevaSourceProperties.stub(stub[:veeva]) unless stub[:veeva].nil?
        data['Zendesk'] = ZendeskSourceProperties.stub(stub[:zendesk]) unless stub[:zendesk].nil?
        data['SAPOData'] = SAPODataSourceProperties.stub(stub[:sapo_data]) unless stub[:sapo_data].nil?
        data['CustomConnector'] = CustomConnectorSourceProperties.stub(stub[:custom_connector]) unless stub[:custom_connector].nil?
        data
      end
    end

    # Structure Stubber for CustomConnectorSourceProperties
    class CustomConnectorSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('CustomConnectorSourceProperties')
        visited = visited + ['CustomConnectorSourceProperties']
        {
          entity_name: 'entity_name',
          custom_properties: CustomProperties.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomConnectorSourceProperties.new
        data = {}
        data['entityName'] = stub[:entity_name] unless stub[:entity_name].nil?
        data['customProperties'] = CustomProperties.stub(stub[:custom_properties]) unless stub[:custom_properties].nil?
        data
      end
    end

    # Structure Stubber for SAPODataSourceProperties
    class SAPODataSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('SAPODataSourceProperties')
        visited = visited + ['SAPODataSourceProperties']
        {
          object_path: 'object_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::SAPODataSourceProperties.new
        data = {}
        data['objectPath'] = stub[:object_path] unless stub[:object_path].nil?
        data
      end
    end

    # Structure Stubber for ZendeskSourceProperties
    class ZendeskSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('ZendeskSourceProperties')
        visited = visited + ['ZendeskSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::ZendeskSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for VeevaSourceProperties
    class VeevaSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('VeevaSourceProperties')
        visited = visited + ['VeevaSourceProperties']
        {
          object: 'object',
          document_type: 'document_type',
          include_source_files: false,
          include_renditions: false,
          include_all_versions: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::VeevaSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['documentType'] = stub[:document_type] unless stub[:document_type].nil?
        data['includeSourceFiles'] = stub[:include_source_files] unless stub[:include_source_files].nil?
        data['includeRenditions'] = stub[:include_renditions] unless stub[:include_renditions].nil?
        data['includeAllVersions'] = stub[:include_all_versions] unless stub[:include_all_versions].nil?
        data
      end
    end

    # Structure Stubber for TrendmicroSourceProperties
    class TrendmicroSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('TrendmicroSourceProperties')
        visited = visited + ['TrendmicroSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrendmicroSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for SlackSourceProperties
    class SlackSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('SlackSourceProperties')
        visited = visited + ['SlackSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::SlackSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for SingularSourceProperties
    class SingularSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('SingularSourceProperties')
        visited = visited + ['SingularSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::SingularSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for ServiceNowSourceProperties
    class ServiceNowSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowSourceProperties')
        visited = visited + ['ServiceNowSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for SalesforceSourceProperties
    class SalesforceSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('SalesforceSourceProperties')
        visited = visited + ['SalesforceSourceProperties']
        {
          object: 'object',
          enable_dynamic_field_update: false,
          include_deleted_records: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data['enableDynamicFieldUpdate'] = stub[:enable_dynamic_field_update] unless stub[:enable_dynamic_field_update].nil?
        data['includeDeletedRecords'] = stub[:include_deleted_records] unless stub[:include_deleted_records].nil?
        data
      end
    end

    # Structure Stubber for S3SourceProperties
    class S3SourceProperties
      def self.default(visited=[])
        return nil if visited.include?('S3SourceProperties')
        visited = visited + ['S3SourceProperties']
        {
          bucket_name: 'bucket_name',
          bucket_prefix: 'bucket_prefix',
          s3_input_format_config: S3InputFormatConfig.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3SourceProperties.new
        data = {}
        data['bucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['bucketPrefix'] = stub[:bucket_prefix] unless stub[:bucket_prefix].nil?
        data['s3InputFormatConfig'] = S3InputFormatConfig.stub(stub[:s3_input_format_config]) unless stub[:s3_input_format_config].nil?
        data
      end
    end

    # Structure Stubber for S3InputFormatConfig
    class S3InputFormatConfig
      def self.default(visited=[])
        return nil if visited.include?('S3InputFormatConfig')
        visited = visited + ['S3InputFormatConfig']
        {
          s3_input_file_type: 's3_input_file_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3InputFormatConfig.new
        data = {}
        data['s3InputFileType'] = stub[:s3_input_file_type] unless stub[:s3_input_file_type].nil?
        data
      end
    end

    # Structure Stubber for MarketoSourceProperties
    class MarketoSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('MarketoSourceProperties')
        visited = visited + ['MarketoSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::MarketoSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for InforNexusSourceProperties
    class InforNexusSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('InforNexusSourceProperties')
        visited = visited + ['InforNexusSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::InforNexusSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for GoogleAnalyticsSourceProperties
    class GoogleAnalyticsSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('GoogleAnalyticsSourceProperties')
        visited = visited + ['GoogleAnalyticsSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::GoogleAnalyticsSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for DynatraceSourceProperties
    class DynatraceSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('DynatraceSourceProperties')
        visited = visited + ['DynatraceSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::DynatraceSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for DatadogSourceProperties
    class DatadogSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('DatadogSourceProperties')
        visited = visited + ['DatadogSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::DatadogSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Structure Stubber for AmplitudeSourceProperties
    class AmplitudeSourceProperties
      def self.default(visited=[])
        return nil if visited.include?('AmplitudeSourceProperties')
        visited = visited + ['AmplitudeSourceProperties']
        {
          object: 'object',
        }
      end

      def self.stub(stub)
        stub ||= Types::AmplitudeSourceProperties.new
        data = {}
        data['object'] = stub[:object] unless stub[:object].nil?
        data
      end
    end

    # Operation Stubber for DescribeFlowExecutionRecords
    class DescribeFlowExecutionRecords
      def self.default(visited=[])
        {
          flow_executions: FlowExecutionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowExecutions'] = FlowExecutionList.stub(stub[:flow_executions]) unless stub[:flow_executions].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FlowExecutionList
    class FlowExecutionList
      def self.default(visited=[])
        return nil if visited.include?('FlowExecutionList')
        visited = visited + ['FlowExecutionList']
        [
          ExecutionRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExecutionRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExecutionRecord
    class ExecutionRecord
      def self.default(visited=[])
        return nil if visited.include?('ExecutionRecord')
        visited = visited + ['ExecutionRecord']
        {
          execution_id: 'execution_id',
          execution_status: 'execution_status',
          execution_result: ExecutionResult.default(visited),
          started_at: Time.now,
          last_updated_at: Time.now,
          data_pull_start_time: Time.now,
          data_pull_end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionRecord.new
        data = {}
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['executionStatus'] = stub[:execution_status] unless stub[:execution_status].nil?
        data['executionResult'] = ExecutionResult.stub(stub[:execution_result]) unless stub[:execution_result].nil?
        data['startedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:started_at]).to_i unless stub[:started_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['dataPullStartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_pull_start_time]).to_i unless stub[:data_pull_start_time].nil?
        data['dataPullEndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:data_pull_end_time]).to_i unless stub[:data_pull_end_time].nil?
        data
      end
    end

    # Structure Stubber for ExecutionResult
    class ExecutionResult
      def self.default(visited=[])
        return nil if visited.include?('ExecutionResult')
        visited = visited + ['ExecutionResult']
        {
          error_info: ErrorInfo.default(visited),
          bytes_processed: 1,
          bytes_written: 1,
          records_processed: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ExecutionResult.new
        data = {}
        data['errorInfo'] = ErrorInfo.stub(stub[:error_info]) unless stub[:error_info].nil?
        data['bytesProcessed'] = stub[:bytes_processed] unless stub[:bytes_processed].nil?
        data['bytesWritten'] = stub[:bytes_written] unless stub[:bytes_written].nil?
        data['recordsProcessed'] = stub[:records_processed] unless stub[:records_processed].nil?
        data
      end
    end

    # Structure Stubber for ErrorInfo
    class ErrorInfo
      def self.default(visited=[])
        return nil if visited.include?('ErrorInfo')
        visited = visited + ['ErrorInfo']
        {
          put_failures_count: 1,
          execution_message: 'execution_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ErrorInfo.new
        data = {}
        data['putFailuresCount'] = stub[:put_failures_count] unless stub[:put_failures_count].nil?
        data['executionMessage'] = stub[:execution_message] unless stub[:execution_message].nil?
        data
      end
    end

    # Operation Stubber for ListConnectorEntities
    class ListConnectorEntities
      def self.default(visited=[])
        {
          connector_entity_map: ConnectorEntityMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorEntityMap'] = ConnectorEntityMap.stub(stub[:connector_entity_map]) unless stub[:connector_entity_map].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for ConnectorEntityMap
    class ConnectorEntityMap
      def self.default(visited=[])
        return nil if visited.include?('ConnectorEntityMap')
        visited = visited + ['ConnectorEntityMap']
        {
          test_key: ConnectorEntityList.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = ConnectorEntityList.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for ConnectorEntityList
    class ConnectorEntityList
      def self.default(visited=[])
        return nil if visited.include?('ConnectorEntityList')
        visited = visited + ['ConnectorEntityList']
        [
          ConnectorEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConnectorEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConnectorEntity
    class ConnectorEntity
      def self.default(visited=[])
        return nil if visited.include?('ConnectorEntity')
        visited = visited + ['ConnectorEntity']
        {
          name: 'name',
          label: 'label',
          has_nested_entities: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectorEntity.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['label'] = stub[:label] unless stub[:label].nil?
        data['hasNestedEntities'] = stub[:has_nested_entities] unless stub[:has_nested_entities].nil?
        data
      end
    end

    # Operation Stubber for ListConnectors
    class ListConnectors
      def self.default(visited=[])
        {
          connectors: ConnectorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectors'] = ConnectorList.stub(stub[:connectors]) unless stub[:connectors].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListFlows
    class ListFlows
      def self.default(visited=[])
        {
          flows: FlowList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flows'] = FlowList.stub(stub[:flows]) unless stub[:flows].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for FlowList
    class FlowList
      def self.default(visited=[])
        return nil if visited.include?('FlowList')
        visited = visited + ['FlowList']
        [
          FlowDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FlowDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FlowDefinition
    class FlowDefinition
      def self.default(visited=[])
        return nil if visited.include?('FlowDefinition')
        visited = visited + ['FlowDefinition']
        {
          flow_arn: 'flow_arn',
          description: 'description',
          flow_name: 'flow_name',
          flow_status: 'flow_status',
          source_connector_type: 'source_connector_type',
          source_connector_label: 'source_connector_label',
          destination_connector_type: 'destination_connector_type',
          destination_connector_label: 'destination_connector_label',
          trigger_type: 'trigger_type',
          created_at: Time.now,
          last_updated_at: Time.now,
          created_by: 'created_by',
          last_updated_by: 'last_updated_by',
          tags: TagMap.default(visited),
          last_run_execution_details: ExecutionDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FlowDefinition.new
        data = {}
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['flowName'] = stub[:flow_name] unless stub[:flow_name].nil?
        data['flowStatus'] = stub[:flow_status] unless stub[:flow_status].nil?
        data['sourceConnectorType'] = stub[:source_connector_type] unless stub[:source_connector_type].nil?
        data['sourceConnectorLabel'] = stub[:source_connector_label] unless stub[:source_connector_label].nil?
        data['destinationConnectorType'] = stub[:destination_connector_type] unless stub[:destination_connector_type].nil?
        data['destinationConnectorLabel'] = stub[:destination_connector_label] unless stub[:destination_connector_label].nil?
        data['triggerType'] = stub[:trigger_type] unless stub[:trigger_type].nil?
        data['createdAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['lastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['lastUpdatedBy'] = stub[:last_updated_by] unless stub[:last_updated_by].nil?
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['lastRunExecutionDetails'] = ExecutionDetails.stub(stub[:last_run_execution_details]) unless stub[:last_run_execution_details].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for RegisterConnector
    class RegisterConnector
      def self.default(visited=[])
        {
          connector_arn: 'connector_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorArn'] = stub[:connector_arn] unless stub[:connector_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartFlow
    class StartFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          flow_status: 'flow_status',
          execution_id: 'execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['flowStatus'] = stub[:flow_status] unless stub[:flow_status].nil?
        data['executionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopFlow
    class StopFlow
      def self.default(visited=[])
        {
          flow_arn: 'flow_arn',
          flow_status: 'flow_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowArn'] = stub[:flow_arn] unless stub[:flow_arn].nil?
        data['flowStatus'] = stub[:flow_status] unless stub[:flow_status].nil?
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UnregisterConnector
    class UnregisterConnector
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateConnectorProfile
    class UpdateConnectorProfile
      def self.default(visited=[])
        {
          connector_profile_arn: 'connector_profile_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['connectorProfileArn'] = stub[:connector_profile_arn] unless stub[:connector_profile_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateFlow
    class UpdateFlow
      def self.default(visited=[])
        {
          flow_status: 'flow_status',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['flowStatus'] = stub[:flow_status] unless stub[:flow_status].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
