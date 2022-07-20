# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Appflow
  module Builders

    # Operation Builder for CreateConnectorProfile
    class CreateConnectorProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-connector-profile')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['kmsArn'] = input[:kms_arn] unless input[:kms_arn].nil?
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['connectorLabel'] = input[:connector_label] unless input[:connector_label].nil?
        data['connectionMode'] = input[:connection_mode] unless input[:connection_mode].nil?
        data['connectorProfileConfig'] = ConnectorProfileConfig.build(input[:connector_profile_config]) unless input[:connector_profile_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectorProfileConfig
    class ConnectorProfileConfig
      def self.build(input)
        data = {}
        data['connectorProfileProperties'] = ConnectorProfileProperties.build(input[:connector_profile_properties]) unless input[:connector_profile_properties].nil?
        data['connectorProfileCredentials'] = ConnectorProfileCredentials.build(input[:connector_profile_credentials]) unless input[:connector_profile_credentials].nil?
        data
      end
    end

    # Structure Builder for ConnectorProfileCredentials
    class ConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['Amplitude'] = AmplitudeConnectorProfileCredentials.build(input[:amplitude]) unless input[:amplitude].nil?
        data['Datadog'] = DatadogConnectorProfileCredentials.build(input[:datadog]) unless input[:datadog].nil?
        data['Dynatrace'] = DynatraceConnectorProfileCredentials.build(input[:dynatrace]) unless input[:dynatrace].nil?
        data['GoogleAnalytics'] = GoogleAnalyticsConnectorProfileCredentials.build(input[:google_analytics]) unless input[:google_analytics].nil?
        data['Honeycode'] = HoneycodeConnectorProfileCredentials.build(input[:honeycode]) unless input[:honeycode].nil?
        data['InforNexus'] = InforNexusConnectorProfileCredentials.build(input[:infor_nexus]) unless input[:infor_nexus].nil?
        data['Marketo'] = MarketoConnectorProfileCredentials.build(input[:marketo]) unless input[:marketo].nil?
        data['Redshift'] = RedshiftConnectorProfileCredentials.build(input[:redshift]) unless input[:redshift].nil?
        data['Salesforce'] = SalesforceConnectorProfileCredentials.build(input[:salesforce]) unless input[:salesforce].nil?
        data['ServiceNow'] = ServiceNowConnectorProfileCredentials.build(input[:service_now]) unless input[:service_now].nil?
        data['Singular'] = SingularConnectorProfileCredentials.build(input[:singular]) unless input[:singular].nil?
        data['Slack'] = SlackConnectorProfileCredentials.build(input[:slack]) unless input[:slack].nil?
        data['Snowflake'] = SnowflakeConnectorProfileCredentials.build(input[:snowflake]) unless input[:snowflake].nil?
        data['Trendmicro'] = TrendmicroConnectorProfileCredentials.build(input[:trendmicro]) unless input[:trendmicro].nil?
        data['Veeva'] = VeevaConnectorProfileCredentials.build(input[:veeva]) unless input[:veeva].nil?
        data['Zendesk'] = ZendeskConnectorProfileCredentials.build(input[:zendesk]) unless input[:zendesk].nil?
        data['SAPOData'] = SAPODataConnectorProfileCredentials.build(input[:sapo_data]) unless input[:sapo_data].nil?
        data['CustomConnector'] = CustomConnectorProfileCredentials.build(input[:custom_connector]) unless input[:custom_connector].nil?
        data
      end
    end

    # Structure Builder for CustomConnectorProfileCredentials
    class CustomConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['authenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['basic'] = BasicAuthCredentials.build(input[:basic]) unless input[:basic].nil?
        data['oauth2'] = OAuth2Credentials.build(input[:oauth2]) unless input[:oauth2].nil?
        data['apiKey'] = ApiKeyCredentials.build(input[:api_key]) unless input[:api_key].nil?
        data['custom'] = CustomAuthCredentials.build(input[:custom]) unless input[:custom].nil?
        data
      end
    end

    # Structure Builder for CustomAuthCredentials
    class CustomAuthCredentials
      def self.build(input)
        data = {}
        data['customAuthenticationType'] = input[:custom_authentication_type] unless input[:custom_authentication_type].nil?
        data['credentialsMap'] = CredentialsMap.build(input[:credentials_map]) unless input[:credentials_map].nil?
        data
      end
    end

    # Map Builder for CredentialsMap
    class CredentialsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ApiKeyCredentials
    class ApiKeyCredentials
      def self.build(input)
        data = {}
        data['apiKey'] = input[:api_key] unless input[:api_key].nil?
        data['apiSecretKey'] = input[:api_secret_key] unless input[:api_secret_key].nil?
        data
      end
    end

    # Structure Builder for OAuth2Credentials
    class OAuth2Credentials
      def self.build(input)
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for ConnectorOAuthRequest
    class ConnectorOAuthRequest
      def self.build(input)
        data = {}
        data['authCode'] = input[:auth_code] unless input[:auth_code].nil?
        data['redirectUri'] = input[:redirect_uri] unless input[:redirect_uri].nil?
        data
      end
    end

    # Structure Builder for BasicAuthCredentials
    class BasicAuthCredentials
      def self.build(input)
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for SAPODataConnectorProfileCredentials
    class SAPODataConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['basicAuthCredentials'] = BasicAuthCredentials.build(input[:basic_auth_credentials]) unless input[:basic_auth_credentials].nil?
        data['oAuthCredentials'] = OAuthCredentials.build(input[:o_auth_credentials]) unless input[:o_auth_credentials].nil?
        data
      end
    end

    # Structure Builder for OAuthCredentials
    class OAuthCredentials
      def self.build(input)
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for ZendeskConnectorProfileCredentials
    class ZendeskConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for VeevaConnectorProfileCredentials
    class VeevaConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for TrendmicroConnectorProfileCredentials
    class TrendmicroConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['apiSecretKey'] = input[:api_secret_key] unless input[:api_secret_key].nil?
        data
      end
    end

    # Structure Builder for SnowflakeConnectorProfileCredentials
    class SnowflakeConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for SlackConnectorProfileCredentials
    class SlackConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for SingularConnectorProfileCredentials
    class SingularConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['apiKey'] = input[:api_key] unless input[:api_key].nil?
        data
      end
    end

    # Structure Builder for ServiceNowConnectorProfileCredentials
    class ServiceNowConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for SalesforceConnectorProfileCredentials
    class SalesforceConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data['clientCredentialsArn'] = input[:client_credentials_arn] unless input[:client_credentials_arn].nil?
        data
      end
    end

    # Structure Builder for RedshiftConnectorProfileCredentials
    class RedshiftConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['username'] = input[:username] unless input[:username].nil?
        data['password'] = input[:password] unless input[:password].nil?
        data
      end
    end

    # Structure Builder for MarketoConnectorProfileCredentials
    class MarketoConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for InforNexusConnectorProfileCredentials
    class InforNexusConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['accessKeyId'] = input[:access_key_id] unless input[:access_key_id].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['secretAccessKey'] = input[:secret_access_key] unless input[:secret_access_key].nil?
        data['datakey'] = input[:datakey] unless input[:datakey].nil?
        data
      end
    end

    # Structure Builder for HoneycodeConnectorProfileCredentials
    class HoneycodeConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for GoogleAnalyticsConnectorProfileCredentials
    class GoogleAnalyticsConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['clientId'] = input[:client_id] unless input[:client_id].nil?
        data['clientSecret'] = input[:client_secret] unless input[:client_secret].nil?
        data['accessToken'] = input[:access_token] unless input[:access_token].nil?
        data['refreshToken'] = input[:refresh_token] unless input[:refresh_token].nil?
        data['oAuthRequest'] = ConnectorOAuthRequest.build(input[:o_auth_request]) unless input[:o_auth_request].nil?
        data
      end
    end

    # Structure Builder for DynatraceConnectorProfileCredentials
    class DynatraceConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['apiToken'] = input[:api_token] unless input[:api_token].nil?
        data
      end
    end

    # Structure Builder for DatadogConnectorProfileCredentials
    class DatadogConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['apiKey'] = input[:api_key] unless input[:api_key].nil?
        data['applicationKey'] = input[:application_key] unless input[:application_key].nil?
        data
      end
    end

    # Structure Builder for AmplitudeConnectorProfileCredentials
    class AmplitudeConnectorProfileCredentials
      def self.build(input)
        data = {}
        data['apiKey'] = input[:api_key] unless input[:api_key].nil?
        data['secretKey'] = input[:secret_key] unless input[:secret_key].nil?
        data
      end
    end

    # Structure Builder for ConnectorProfileProperties
    class ConnectorProfileProperties
      def self.build(input)
        data = {}
        data['Amplitude'] = AmplitudeConnectorProfileProperties.build(input[:amplitude]) unless input[:amplitude].nil?
        data['Datadog'] = DatadogConnectorProfileProperties.build(input[:datadog]) unless input[:datadog].nil?
        data['Dynatrace'] = DynatraceConnectorProfileProperties.build(input[:dynatrace]) unless input[:dynatrace].nil?
        data['GoogleAnalytics'] = GoogleAnalyticsConnectorProfileProperties.build(input[:google_analytics]) unless input[:google_analytics].nil?
        data['Honeycode'] = HoneycodeConnectorProfileProperties.build(input[:honeycode]) unless input[:honeycode].nil?
        data['InforNexus'] = InforNexusConnectorProfileProperties.build(input[:infor_nexus]) unless input[:infor_nexus].nil?
        data['Marketo'] = MarketoConnectorProfileProperties.build(input[:marketo]) unless input[:marketo].nil?
        data['Redshift'] = RedshiftConnectorProfileProperties.build(input[:redshift]) unless input[:redshift].nil?
        data['Salesforce'] = SalesforceConnectorProfileProperties.build(input[:salesforce]) unless input[:salesforce].nil?
        data['ServiceNow'] = ServiceNowConnectorProfileProperties.build(input[:service_now]) unless input[:service_now].nil?
        data['Singular'] = SingularConnectorProfileProperties.build(input[:singular]) unless input[:singular].nil?
        data['Slack'] = SlackConnectorProfileProperties.build(input[:slack]) unless input[:slack].nil?
        data['Snowflake'] = SnowflakeConnectorProfileProperties.build(input[:snowflake]) unless input[:snowflake].nil?
        data['Trendmicro'] = TrendmicroConnectorProfileProperties.build(input[:trendmicro]) unless input[:trendmicro].nil?
        data['Veeva'] = VeevaConnectorProfileProperties.build(input[:veeva]) unless input[:veeva].nil?
        data['Zendesk'] = ZendeskConnectorProfileProperties.build(input[:zendesk]) unless input[:zendesk].nil?
        data['SAPOData'] = SAPODataConnectorProfileProperties.build(input[:sapo_data]) unless input[:sapo_data].nil?
        data['CustomConnector'] = CustomConnectorProfileProperties.build(input[:custom_connector]) unless input[:custom_connector].nil?
        data
      end
    end

    # Structure Builder for CustomConnectorProfileProperties
    class CustomConnectorProfileProperties
      def self.build(input)
        data = {}
        data['profileProperties'] = ProfilePropertiesMap.build(input[:profile_properties]) unless input[:profile_properties].nil?
        data['oAuth2Properties'] = OAuth2Properties.build(input[:o_auth2_properties]) unless input[:o_auth2_properties].nil?
        data
      end
    end

    # Structure Builder for OAuth2Properties
    class OAuth2Properties
      def self.build(input)
        data = {}
        data['tokenUrl'] = input[:token_url] unless input[:token_url].nil?
        data['oAuth2GrantType'] = input[:o_auth2_grant_type] unless input[:o_auth2_grant_type].nil?
        data['tokenUrlCustomProperties'] = TokenUrlCustomProperties.build(input[:token_url_custom_properties]) unless input[:token_url_custom_properties].nil?
        data
      end
    end

    # Map Builder for TokenUrlCustomProperties
    class TokenUrlCustomProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for ProfilePropertiesMap
    class ProfilePropertiesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for SAPODataConnectorProfileProperties
    class SAPODataConnectorProfileProperties
      def self.build(input)
        data = {}
        data['applicationHostUrl'] = input[:application_host_url] unless input[:application_host_url].nil?
        data['applicationServicePath'] = input[:application_service_path] unless input[:application_service_path].nil?
        data['portNumber'] = input[:port_number] unless input[:port_number].nil?
        data['clientNumber'] = input[:client_number] unless input[:client_number].nil?
        data['logonLanguage'] = input[:logon_language] unless input[:logon_language].nil?
        data['privateLinkServiceName'] = input[:private_link_service_name] unless input[:private_link_service_name].nil?
        data['oAuthProperties'] = OAuthProperties.build(input[:o_auth_properties]) unless input[:o_auth_properties].nil?
        data
      end
    end

    # Structure Builder for OAuthProperties
    class OAuthProperties
      def self.build(input)
        data = {}
        data['tokenUrl'] = input[:token_url] unless input[:token_url].nil?
        data['authCodeUrl'] = input[:auth_code_url] unless input[:auth_code_url].nil?
        data['oAuthScopes'] = OAuthScopeList.build(input[:o_auth_scopes]) unless input[:o_auth_scopes].nil?
        data
      end
    end

    # List Builder for OAuthScopeList
    class OAuthScopeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ZendeskConnectorProfileProperties
    class ZendeskConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for VeevaConnectorProfileProperties
    class VeevaConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for TrendmicroConnectorProfileProperties
    class TrendmicroConnectorProfileProperties
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for SnowflakeConnectorProfileProperties
    class SnowflakeConnectorProfileProperties
      def self.build(input)
        data = {}
        data['warehouse'] = input[:warehouse] unless input[:warehouse].nil?
        data['stage'] = input[:stage] unless input[:stage].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['privateLinkServiceName'] = input[:private_link_service_name] unless input[:private_link_service_name].nil?
        data['accountName'] = input[:account_name] unless input[:account_name].nil?
        data['region'] = input[:region] unless input[:region].nil?
        data
      end
    end

    # Structure Builder for SlackConnectorProfileProperties
    class SlackConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for SingularConnectorProfileProperties
    class SingularConnectorProfileProperties
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for ServiceNowConnectorProfileProperties
    class ServiceNowConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for SalesforceConnectorProfileProperties
    class SalesforceConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data['isSandboxEnvironment'] = input[:is_sandbox_environment] unless input[:is_sandbox_environment].nil?
        data
      end
    end

    # Structure Builder for RedshiftConnectorProfileProperties
    class RedshiftConnectorProfileProperties
      def self.build(input)
        data = {}
        data['databaseUrl'] = input[:database_url] unless input[:database_url].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['roleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for MarketoConnectorProfileProperties
    class MarketoConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for InforNexusConnectorProfileProperties
    class InforNexusConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for HoneycodeConnectorProfileProperties
    class HoneycodeConnectorProfileProperties
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for GoogleAnalyticsConnectorProfileProperties
    class GoogleAnalyticsConnectorProfileProperties
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for DynatraceConnectorProfileProperties
    class DynatraceConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for DatadogConnectorProfileProperties
    class DatadogConnectorProfileProperties
      def self.build(input)
        data = {}
        data['instanceUrl'] = input[:instance_url] unless input[:instance_url].nil?
        data
      end
    end

    # Structure Builder for AmplitudeConnectorProfileProperties
    class AmplitudeConnectorProfileProperties
      def self.build(input)
        data = {}
        data
      end
    end

    # Operation Builder for CreateFlow
    class CreateFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/create-flow')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['kmsArn'] = input[:kms_arn] unless input[:kms_arn].nil?
        data['triggerConfig'] = TriggerConfig.build(input[:trigger_config]) unless input[:trigger_config].nil?
        data['sourceFlowConfig'] = SourceFlowConfig.build(input[:source_flow_config]) unless input[:source_flow_config].nil?
        data['destinationFlowConfigList'] = DestinationFlowConfigList.build(input[:destination_flow_config_list]) unless input[:destination_flow_config_list].nil?
        data['tasks'] = Tasks.build(input[:tasks]) unless input[:tasks].nil?
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for Tasks
    class Tasks
      def self.build(input)
        data = []
        input.each do |element|
          data << Task.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Task
    class Task
      def self.build(input)
        data = {}
        data['sourceFields'] = SourceFields.build(input[:source_fields]) unless input[:source_fields].nil?
        data['connectorOperator'] = ConnectorOperator.build(input[:connector_operator]) unless input[:connector_operator].nil?
        data['destinationField'] = input[:destination_field] unless input[:destination_field].nil?
        data['taskType'] = input[:task_type] unless input[:task_type].nil?
        data['taskProperties'] = TaskPropertiesMap.build(input[:task_properties]) unless input[:task_properties].nil?
        data
      end
    end

    # Map Builder for TaskPropertiesMap
    class TaskPropertiesMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectorOperator
    class ConnectorOperator
      def self.build(input)
        data = {}
        data['Amplitude'] = input[:amplitude] unless input[:amplitude].nil?
        data['Datadog'] = input[:datadog] unless input[:datadog].nil?
        data['Dynatrace'] = input[:dynatrace] unless input[:dynatrace].nil?
        data['GoogleAnalytics'] = input[:google_analytics] unless input[:google_analytics].nil?
        data['InforNexus'] = input[:infor_nexus] unless input[:infor_nexus].nil?
        data['Marketo'] = input[:marketo] unless input[:marketo].nil?
        data['S3'] = input[:s3] unless input[:s3].nil?
        data['Salesforce'] = input[:salesforce] unless input[:salesforce].nil?
        data['ServiceNow'] = input[:service_now] unless input[:service_now].nil?
        data['Singular'] = input[:singular] unless input[:singular].nil?
        data['Slack'] = input[:slack] unless input[:slack].nil?
        data['Trendmicro'] = input[:trendmicro] unless input[:trendmicro].nil?
        data['Veeva'] = input[:veeva] unless input[:veeva].nil?
        data['Zendesk'] = input[:zendesk] unless input[:zendesk].nil?
        data['SAPOData'] = input[:sapo_data] unless input[:sapo_data].nil?
        data['CustomConnector'] = input[:custom_connector] unless input[:custom_connector].nil?
        data
      end
    end

    # List Builder for SourceFields
    class SourceFields
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DestinationFlowConfigList
    class DestinationFlowConfigList
      def self.build(input)
        data = []
        input.each do |element|
          data << DestinationFlowConfig.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DestinationFlowConfig
    class DestinationFlowConfig
      def self.build(input)
        data = {}
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['apiVersion'] = input[:api_version] unless input[:api_version].nil?
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['destinationConnectorProperties'] = DestinationConnectorProperties.build(input[:destination_connector_properties]) unless input[:destination_connector_properties].nil?
        data
      end
    end

    # Structure Builder for DestinationConnectorProperties
    class DestinationConnectorProperties
      def self.build(input)
        data = {}
        data['Redshift'] = RedshiftDestinationProperties.build(input[:redshift]) unless input[:redshift].nil?
        data['S3'] = S3DestinationProperties.build(input[:s3]) unless input[:s3].nil?
        data['Salesforce'] = SalesforceDestinationProperties.build(input[:salesforce]) unless input[:salesforce].nil?
        data['Snowflake'] = SnowflakeDestinationProperties.build(input[:snowflake]) unless input[:snowflake].nil?
        data['EventBridge'] = EventBridgeDestinationProperties.build(input[:event_bridge]) unless input[:event_bridge].nil?
        data['LookoutMetrics'] = LookoutMetricsDestinationProperties.build(input[:lookout_metrics]) unless input[:lookout_metrics].nil?
        data['Upsolver'] = UpsolverDestinationProperties.build(input[:upsolver]) unless input[:upsolver].nil?
        data['Honeycode'] = HoneycodeDestinationProperties.build(input[:honeycode]) unless input[:honeycode].nil?
        data['CustomerProfiles'] = CustomerProfilesDestinationProperties.build(input[:customer_profiles]) unless input[:customer_profiles].nil?
        data['Zendesk'] = ZendeskDestinationProperties.build(input[:zendesk]) unless input[:zendesk].nil?
        data['Marketo'] = MarketoDestinationProperties.build(input[:marketo]) unless input[:marketo].nil?
        data['CustomConnector'] = CustomConnectorDestinationProperties.build(input[:custom_connector]) unless input[:custom_connector].nil?
        data['SAPOData'] = SAPODataDestinationProperties.build(input[:sapo_data]) unless input[:sapo_data].nil?
        data
      end
    end

    # Structure Builder for SAPODataDestinationProperties
    class SAPODataDestinationProperties
      def self.build(input)
        data = {}
        data['objectPath'] = input[:object_path] unless input[:object_path].nil?
        data['successResponseHandlingConfig'] = SuccessResponseHandlingConfig.build(input[:success_response_handling_config]) unless input[:success_response_handling_config].nil?
        data['idFieldNames'] = IdFieldNameList.build(input[:id_field_names]) unless input[:id_field_names].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data['writeOperationType'] = input[:write_operation_type] unless input[:write_operation_type].nil?
        data
      end
    end

    # Structure Builder for ErrorHandlingConfig
    class ErrorHandlingConfig
      def self.build(input)
        data = {}
        data['failOnFirstDestinationError'] = input[:fail_on_first_destination_error] unless input[:fail_on_first_destination_error].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data
      end
    end

    # List Builder for IdFieldNameList
    class IdFieldNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SuccessResponseHandlingConfig
    class SuccessResponseHandlingConfig
      def self.build(input)
        data = {}
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data
      end
    end

    # Structure Builder for CustomConnectorDestinationProperties
    class CustomConnectorDestinationProperties
      def self.build(input)
        data = {}
        data['entityName'] = input[:entity_name] unless input[:entity_name].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data['writeOperationType'] = input[:write_operation_type] unless input[:write_operation_type].nil?
        data['idFieldNames'] = IdFieldNameList.build(input[:id_field_names]) unless input[:id_field_names].nil?
        data['customProperties'] = CustomProperties.build(input[:custom_properties]) unless input[:custom_properties].nil?
        data
      end
    end

    # Map Builder for CustomProperties
    class CustomProperties
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MarketoDestinationProperties
    class MarketoDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data
      end
    end

    # Structure Builder for ZendeskDestinationProperties
    class ZendeskDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['idFieldNames'] = IdFieldNameList.build(input[:id_field_names]) unless input[:id_field_names].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data['writeOperationType'] = input[:write_operation_type] unless input[:write_operation_type].nil?
        data
      end
    end

    # Structure Builder for CustomerProfilesDestinationProperties
    class CustomerProfilesDestinationProperties
      def self.build(input)
        data = {}
        data['domainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['objectTypeName'] = input[:object_type_name] unless input[:object_type_name].nil?
        data
      end
    end

    # Structure Builder for HoneycodeDestinationProperties
    class HoneycodeDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data
      end
    end

    # Structure Builder for UpsolverDestinationProperties
    class UpsolverDestinationProperties
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['s3OutputFormatConfig'] = UpsolverS3OutputFormatConfig.build(input[:s3_output_format_config]) unless input[:s3_output_format_config].nil?
        data
      end
    end

    # Structure Builder for UpsolverS3OutputFormatConfig
    class UpsolverS3OutputFormatConfig
      def self.build(input)
        data = {}
        data['fileType'] = input[:file_type] unless input[:file_type].nil?
        data['prefixConfig'] = PrefixConfig.build(input[:prefix_config]) unless input[:prefix_config].nil?
        data['aggregationConfig'] = AggregationConfig.build(input[:aggregation_config]) unless input[:aggregation_config].nil?
        data
      end
    end

    # Structure Builder for AggregationConfig
    class AggregationConfig
      def self.build(input)
        data = {}
        data['aggregationType'] = input[:aggregation_type] unless input[:aggregation_type].nil?
        data
      end
    end

    # Structure Builder for PrefixConfig
    class PrefixConfig
      def self.build(input)
        data = {}
        data['prefixType'] = input[:prefix_type] unless input[:prefix_type].nil?
        data['prefixFormat'] = input[:prefix_format] unless input[:prefix_format].nil?
        data
      end
    end

    # Structure Builder for LookoutMetricsDestinationProperties
    class LookoutMetricsDestinationProperties
      def self.build(input)
        data = {}
        data
      end
    end

    # Structure Builder for EventBridgeDestinationProperties
    class EventBridgeDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data
      end
    end

    # Structure Builder for SnowflakeDestinationProperties
    class SnowflakeDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['intermediateBucketName'] = input[:intermediate_bucket_name] unless input[:intermediate_bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data
      end
    end

    # Structure Builder for SalesforceDestinationProperties
    class SalesforceDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['idFieldNames'] = IdFieldNameList.build(input[:id_field_names]) unless input[:id_field_names].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data['writeOperationType'] = input[:write_operation_type] unless input[:write_operation_type].nil?
        data
      end
    end

    # Structure Builder for S3DestinationProperties
    class S3DestinationProperties
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['s3OutputFormatConfig'] = S3OutputFormatConfig.build(input[:s3_output_format_config]) unless input[:s3_output_format_config].nil?
        data
      end
    end

    # Structure Builder for S3OutputFormatConfig
    class S3OutputFormatConfig
      def self.build(input)
        data = {}
        data['fileType'] = input[:file_type] unless input[:file_type].nil?
        data['prefixConfig'] = PrefixConfig.build(input[:prefix_config]) unless input[:prefix_config].nil?
        data['aggregationConfig'] = AggregationConfig.build(input[:aggregation_config]) unless input[:aggregation_config].nil?
        data['preserveSourceDataTyping'] = input[:preserve_source_data_typing] unless input[:preserve_source_data_typing].nil?
        data
      end
    end

    # Structure Builder for RedshiftDestinationProperties
    class RedshiftDestinationProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['intermediateBucketName'] = input[:intermediate_bucket_name] unless input[:intermediate_bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['errorHandlingConfig'] = ErrorHandlingConfig.build(input[:error_handling_config]) unless input[:error_handling_config].nil?
        data
      end
    end

    # Structure Builder for SourceFlowConfig
    class SourceFlowConfig
      def self.build(input)
        data = {}
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['apiVersion'] = input[:api_version] unless input[:api_version].nil?
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['sourceConnectorProperties'] = SourceConnectorProperties.build(input[:source_connector_properties]) unless input[:source_connector_properties].nil?
        data['incrementalPullConfig'] = IncrementalPullConfig.build(input[:incremental_pull_config]) unless input[:incremental_pull_config].nil?
        data
      end
    end

    # Structure Builder for IncrementalPullConfig
    class IncrementalPullConfig
      def self.build(input)
        data = {}
        data['datetimeTypeFieldName'] = input[:datetime_type_field_name] unless input[:datetime_type_field_name].nil?
        data
      end
    end

    # Structure Builder for SourceConnectorProperties
    class SourceConnectorProperties
      def self.build(input)
        data = {}
        data['Amplitude'] = AmplitudeSourceProperties.build(input[:amplitude]) unless input[:amplitude].nil?
        data['Datadog'] = DatadogSourceProperties.build(input[:datadog]) unless input[:datadog].nil?
        data['Dynatrace'] = DynatraceSourceProperties.build(input[:dynatrace]) unless input[:dynatrace].nil?
        data['GoogleAnalytics'] = GoogleAnalyticsSourceProperties.build(input[:google_analytics]) unless input[:google_analytics].nil?
        data['InforNexus'] = InforNexusSourceProperties.build(input[:infor_nexus]) unless input[:infor_nexus].nil?
        data['Marketo'] = MarketoSourceProperties.build(input[:marketo]) unless input[:marketo].nil?
        data['S3'] = S3SourceProperties.build(input[:s3]) unless input[:s3].nil?
        data['Salesforce'] = SalesforceSourceProperties.build(input[:salesforce]) unless input[:salesforce].nil?
        data['ServiceNow'] = ServiceNowSourceProperties.build(input[:service_now]) unless input[:service_now].nil?
        data['Singular'] = SingularSourceProperties.build(input[:singular]) unless input[:singular].nil?
        data['Slack'] = SlackSourceProperties.build(input[:slack]) unless input[:slack].nil?
        data['Trendmicro'] = TrendmicroSourceProperties.build(input[:trendmicro]) unless input[:trendmicro].nil?
        data['Veeva'] = VeevaSourceProperties.build(input[:veeva]) unless input[:veeva].nil?
        data['Zendesk'] = ZendeskSourceProperties.build(input[:zendesk]) unless input[:zendesk].nil?
        data['SAPOData'] = SAPODataSourceProperties.build(input[:sapo_data]) unless input[:sapo_data].nil?
        data['CustomConnector'] = CustomConnectorSourceProperties.build(input[:custom_connector]) unless input[:custom_connector].nil?
        data
      end
    end

    # Structure Builder for CustomConnectorSourceProperties
    class CustomConnectorSourceProperties
      def self.build(input)
        data = {}
        data['entityName'] = input[:entity_name] unless input[:entity_name].nil?
        data['customProperties'] = CustomProperties.build(input[:custom_properties]) unless input[:custom_properties].nil?
        data
      end
    end

    # Structure Builder for SAPODataSourceProperties
    class SAPODataSourceProperties
      def self.build(input)
        data = {}
        data['objectPath'] = input[:object_path] unless input[:object_path].nil?
        data
      end
    end

    # Structure Builder for ZendeskSourceProperties
    class ZendeskSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for VeevaSourceProperties
    class VeevaSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['documentType'] = input[:document_type] unless input[:document_type].nil?
        data['includeSourceFiles'] = input[:include_source_files] unless input[:include_source_files].nil?
        data['includeRenditions'] = input[:include_renditions] unless input[:include_renditions].nil?
        data['includeAllVersions'] = input[:include_all_versions] unless input[:include_all_versions].nil?
        data
      end
    end

    # Structure Builder for TrendmicroSourceProperties
    class TrendmicroSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for SlackSourceProperties
    class SlackSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for SingularSourceProperties
    class SingularSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for ServiceNowSourceProperties
    class ServiceNowSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for SalesforceSourceProperties
    class SalesforceSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data['enableDynamicFieldUpdate'] = input[:enable_dynamic_field_update] unless input[:enable_dynamic_field_update].nil?
        data['includeDeletedRecords'] = input[:include_deleted_records] unless input[:include_deleted_records].nil?
        data
      end
    end

    # Structure Builder for S3SourceProperties
    class S3SourceProperties
      def self.build(input)
        data = {}
        data['bucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['bucketPrefix'] = input[:bucket_prefix] unless input[:bucket_prefix].nil?
        data['s3InputFormatConfig'] = S3InputFormatConfig.build(input[:s3_input_format_config]) unless input[:s3_input_format_config].nil?
        data
      end
    end

    # Structure Builder for S3InputFormatConfig
    class S3InputFormatConfig
      def self.build(input)
        data = {}
        data['s3InputFileType'] = input[:s3_input_file_type] unless input[:s3_input_file_type].nil?
        data
      end
    end

    # Structure Builder for MarketoSourceProperties
    class MarketoSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for InforNexusSourceProperties
    class InforNexusSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for GoogleAnalyticsSourceProperties
    class GoogleAnalyticsSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for DynatraceSourceProperties
    class DynatraceSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for DatadogSourceProperties
    class DatadogSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for AmplitudeSourceProperties
    class AmplitudeSourceProperties
      def self.build(input)
        data = {}
        data['object'] = input[:object] unless input[:object].nil?
        data
      end
    end

    # Structure Builder for TriggerConfig
    class TriggerConfig
      def self.build(input)
        data = {}
        data['triggerType'] = input[:trigger_type] unless input[:trigger_type].nil?
        data['triggerProperties'] = TriggerProperties.build(input[:trigger_properties]) unless input[:trigger_properties].nil?
        data
      end
    end

    # Structure Builder for TriggerProperties
    class TriggerProperties
      def self.build(input)
        data = {}
        data['Scheduled'] = ScheduledTriggerProperties.build(input[:scheduled]) unless input[:scheduled].nil?
        data
      end
    end

    # Structure Builder for ScheduledTriggerProperties
    class ScheduledTriggerProperties
      def self.build(input)
        data = {}
        data['scheduleExpression'] = input[:schedule_expression] unless input[:schedule_expression].nil?
        data['dataPullMode'] = input[:data_pull_mode] unless input[:data_pull_mode].nil?
        data['scheduleStartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:schedule_start_time]).to_i unless input[:schedule_start_time].nil?
        data['scheduleEndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:schedule_end_time]).to_i unless input[:schedule_end_time].nil?
        data['timezone'] = input[:timezone] unless input[:timezone].nil?
        data['scheduleOffset'] = input[:schedule_offset] unless input[:schedule_offset].nil?
        data['firstExecutionFrom'] = Hearth::TimeHelper.to_epoch_seconds(input[:first_execution_from]).to_i unless input[:first_execution_from].nil?
        data['flowErrorDeactivationThreshold'] = input[:flow_error_deactivation_threshold] unless input[:flow_error_deactivation_threshold].nil?
        data
      end
    end

    # Operation Builder for DeleteConnectorProfile
    class DeleteConnectorProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-connector-profile')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['forceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFlow
    class DeleteFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/delete-flow')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        data['forceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnector
    class DescribeConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-connector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['connectorLabel'] = input[:connector_label] unless input[:connector_label].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnectorEntity
    class DescribeConnectorEntity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-connector-entity')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorEntityName'] = input[:connector_entity_name] unless input[:connector_entity_name].nil?
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['apiVersion'] = input[:api_version] unless input[:api_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeConnectorProfiles
    class DescribeConnectorProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-connector-profiles')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorProfileNames'] = ConnectorProfileNameList.build(input[:connector_profile_names]) unless input[:connector_profile_names].nil?
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['connectorLabel'] = input[:connector_label] unless input[:connector_label].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConnectorProfileNameList
    class ConnectorProfileNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeConnectors
    class DescribeConnectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-connectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorTypes'] = ConnectorTypeList.build(input[:connector_types]) unless input[:connector_types].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ConnectorTypeList
    class ConnectorTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeFlow
    class DescribeFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-flow')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFlowExecutionRecords
    class DescribeFlowExecutionRecords
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/describe-flow-execution-records')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConnectorEntities
    class ListConnectorEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-connector-entities')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['connectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['entitiesPath'] = input[:entities_path] unless input[:entities_path].nil?
        data['apiVersion'] = input[:api_version] unless input[:api_version].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListConnectors
    class ListConnectors
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-connectors')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFlows
    class ListFlows
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/list-flows')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
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
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RegisterConnector
    class RegisterConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/register-connector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorLabel'] = input[:connector_label] unless input[:connector_label].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['connectorProvisioningType'] = input[:connector_provisioning_type] unless input[:connector_provisioning_type].nil?
        data['connectorProvisioningConfig'] = ConnectorProvisioningConfig.build(input[:connector_provisioning_config]) unless input[:connector_provisioning_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConnectorProvisioningConfig
    class ConnectorProvisioningConfig
      def self.build(input)
        data = {}
        data['lambda'] = LambdaConnectorProvisioningConfig.build(input[:lambda]) unless input[:lambda].nil?
        data
      end
    end

    # Structure Builder for LambdaConnectorProvisioningConfig
    class LambdaConnectorProvisioningConfig
      def self.build(input)
        data = {}
        data['lambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data
      end
    end

    # Operation Builder for StartFlow
    class StartFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/start-flow')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopFlow
    class StopFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/stop-flow')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
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
        data['tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UnregisterConnector
    class UnregisterConnector
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/unregister-connector')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorLabel'] = input[:connector_label] unless input[:connector_label].nil?
        data['forceDelete'] = input[:force_delete] unless input[:force_delete].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
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

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateConnectorProfile
    class UpdateConnectorProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-connector-profile')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['connectorProfileName'] = input[:connector_profile_name] unless input[:connector_profile_name].nil?
        data['connectionMode'] = input[:connection_mode] unless input[:connection_mode].nil?
        data['connectorProfileConfig'] = ConnectorProfileConfig.build(input[:connector_profile_config]) unless input[:connector_profile_config].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFlow
    class UpdateFlow
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/update-flow')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['flowName'] = input[:flow_name] unless input[:flow_name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['triggerConfig'] = TriggerConfig.build(input[:trigger_config]) unless input[:trigger_config].nil?
        data['sourceFlowConfig'] = SourceFlowConfig.build(input[:source_flow_config]) unless input[:source_flow_config].nil?
        data['destinationFlowConfigList'] = DestinationFlowConfigList.build(input[:destination_flow_config_list]) unless input[:destination_flow_config_list].nil?
        data['tasks'] = Tasks.build(input[:tasks]) unless input[:tasks].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
