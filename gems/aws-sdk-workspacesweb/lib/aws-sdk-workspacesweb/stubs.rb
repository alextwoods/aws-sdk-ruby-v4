# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpacesWeb
  module Stubs

    # Operation Stubber for AssociateBrowserSettings
    class AssociateBrowserSettings
      def self.default(visited=[])
        {
          portal_arn: 'portal_arn',
          browser_settings_arn: 'browser_settings_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['browserSettingsArn'] = stub[:browser_settings_arn] unless stub[:browser_settings_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateNetworkSettings
    class AssociateNetworkSettings
      def self.default(visited=[])
        {
          portal_arn: 'portal_arn',
          network_settings_arn: 'network_settings_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['networkSettingsArn'] = stub[:network_settings_arn] unless stub[:network_settings_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateTrustStore
    class AssociateTrustStore
      def self.default(visited=[])
        {
          portal_arn: 'portal_arn',
          trust_store_arn: 'trust_store_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for AssociateUserSettings
    class AssociateUserSettings
      def self.default(visited=[])
        {
          portal_arn: 'portal_arn',
          user_settings_arn: 'user_settings_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['userSettingsArn'] = stub[:user_settings_arn] unless stub[:user_settings_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateBrowserSettings
    class CreateBrowserSettings
      def self.default(visited=[])
        {
          browser_settings_arn: 'browser_settings_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['browserSettingsArn'] = stub[:browser_settings_arn] unless stub[:browser_settings_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateIdentityProvider
    class CreateIdentityProvider
      def self.default(visited=[])
        {
          identity_provider_arn: 'identity_provider_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['identityProviderArn'] = stub[:identity_provider_arn] unless stub[:identity_provider_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateNetworkSettings
    class CreateNetworkSettings
      def self.default(visited=[])
        {
          network_settings_arn: 'network_settings_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['networkSettingsArn'] = stub[:network_settings_arn] unless stub[:network_settings_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreatePortal
    class CreatePortal
      def self.default(visited=[])
        {
          portal_arn: 'portal_arn',
          portal_endpoint: 'portal_endpoint',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['portalEndpoint'] = stub[:portal_endpoint] unless stub[:portal_endpoint].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateTrustStore
    class CreateTrustStore
      def self.default(visited=[])
        {
          trust_store_arn: 'trust_store_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateUserSettings
    class CreateUserSettings
      def self.default(visited=[])
        {
          user_settings_arn: 'user_settings_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userSettingsArn'] = stub[:user_settings_arn] unless stub[:user_settings_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteBrowserSettings
    class DeleteBrowserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIdentityProvider
    class DeleteIdentityProvider
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNetworkSettings
    class DeleteNetworkSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePortal
    class DeletePortal
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteTrustStore
    class DeleteTrustStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteUserSettings
    class DeleteUserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateBrowserSettings
    class DisassociateBrowserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateNetworkSettings
    class DisassociateNetworkSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateTrustStore
    class DisassociateTrustStore
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateUserSettings
    class DisassociateUserSettings
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetBrowserSettings
    class GetBrowserSettings
      def self.default(visited=[])
        {
          browser_settings: Stubs::BrowserSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['browserSettings'] = Stubs::BrowserSettings.stub(stub[:browser_settings]) unless stub[:browser_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for BrowserSettings
    class BrowserSettings
      def self.default(visited=[])
        return nil if visited.include?('BrowserSettings')
        visited = visited + ['BrowserSettings']
        {
          browser_settings_arn: 'browser_settings_arn',
          associated_portal_arns: Stubs::ArnList.default(visited),
          browser_policy: 'browser_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::BrowserSettings.new
        data = {}
        data['browserSettingsArn'] = stub[:browser_settings_arn] unless stub[:browser_settings_arn].nil?
        data['associatedPortalArns'] = Stubs::ArnList.stub(stub[:associated_portal_arns]) unless stub[:associated_portal_arns].nil?
        data['browserPolicy'] = stub[:browser_policy] unless stub[:browser_policy].nil?
        data
      end
    end

    # List Stubber for ArnList
    class ArnList
      def self.default(visited=[])
        return nil if visited.include?('ArnList')
        visited = visited + ['ArnList']
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

    # Operation Stubber for GetIdentityProvider
    class GetIdentityProvider
      def self.default(visited=[])
        {
          identity_provider: Stubs::IdentityProvider.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['identityProvider'] = Stubs::IdentityProvider.stub(stub[:identity_provider]) unless stub[:identity_provider].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for IdentityProvider
    class IdentityProvider
      def self.default(visited=[])
        return nil if visited.include?('IdentityProvider')
        visited = visited + ['IdentityProvider']
        {
          identity_provider_arn: 'identity_provider_arn',
          identity_provider_name: 'identity_provider_name',
          identity_provider_type: 'identity_provider_type',
          identity_provider_details: Stubs::IdentityProviderDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityProvider.new
        data = {}
        data['identityProviderArn'] = stub[:identity_provider_arn] unless stub[:identity_provider_arn].nil?
        data['identityProviderName'] = stub[:identity_provider_name] unless stub[:identity_provider_name].nil?
        data['identityProviderType'] = stub[:identity_provider_type] unless stub[:identity_provider_type].nil?
        data['identityProviderDetails'] = Stubs::IdentityProviderDetails.stub(stub[:identity_provider_details]) unless stub[:identity_provider_details].nil?
        data
      end
    end

    # Map Stubber for IdentityProviderDetails
    class IdentityProviderDetails
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderDetails')
        visited = visited + ['IdentityProviderDetails']
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

    # Operation Stubber for GetNetworkSettings
    class GetNetworkSettings
      def self.default(visited=[])
        {
          network_settings: Stubs::NetworkSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['networkSettings'] = Stubs::NetworkSettings.stub(stub[:network_settings]) unless stub[:network_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for NetworkSettings
    class NetworkSettings
      def self.default(visited=[])
        return nil if visited.include?('NetworkSettings')
        visited = visited + ['NetworkSettings']
        {
          network_settings_arn: 'network_settings_arn',
          associated_portal_arns: Stubs::ArnList.default(visited),
          vpc_id: 'vpc_id',
          subnet_ids: Stubs::SubnetIdList.default(visited),
          security_group_ids: Stubs::SecurityGroupIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkSettings.new
        data = {}
        data['networkSettingsArn'] = stub[:network_settings_arn] unless stub[:network_settings_arn].nil?
        data['associatedPortalArns'] = Stubs::ArnList.stub(stub[:associated_portal_arns]) unless stub[:associated_portal_arns].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data['subnetIds'] = Stubs::SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['securityGroupIds'] = Stubs::SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
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

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
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

    # Operation Stubber for GetPortal
    class GetPortal
      def self.default(visited=[])
        {
          portal: Stubs::Portal.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portal'] = Stubs::Portal.stub(stub[:portal]) unless stub[:portal].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Portal
    class Portal
      def self.default(visited=[])
        return nil if visited.include?('Portal')
        visited = visited + ['Portal']
        {
          portal_arn: 'portal_arn',
          renderer_type: 'renderer_type',
          browser_type: 'browser_type',
          portal_status: 'portal_status',
          portal_endpoint: 'portal_endpoint',
          display_name: 'display_name',
          creation_date: Time.now,
          browser_settings_arn: 'browser_settings_arn',
          user_settings_arn: 'user_settings_arn',
          network_settings_arn: 'network_settings_arn',
          trust_store_arn: 'trust_store_arn',
          status_reason: 'status_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::Portal.new
        data = {}
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['rendererType'] = stub[:renderer_type] unless stub[:renderer_type].nil?
        data['browserType'] = stub[:browser_type] unless stub[:browser_type].nil?
        data['portalStatus'] = stub[:portal_status] unless stub[:portal_status].nil?
        data['portalEndpoint'] = stub[:portal_endpoint] unless stub[:portal_endpoint].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['browserSettingsArn'] = stub[:browser_settings_arn] unless stub[:browser_settings_arn].nil?
        data['userSettingsArn'] = stub[:user_settings_arn] unless stub[:user_settings_arn].nil?
        data['networkSettingsArn'] = stub[:network_settings_arn] unless stub[:network_settings_arn].nil?
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        data['statusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data
      end
    end

    # Operation Stubber for GetPortalServiceProviderMetadata
    class GetPortalServiceProviderMetadata
      def self.default(visited=[])
        {
          portal_arn: 'portal_arn',
          service_provider_saml_metadata: 'service_provider_saml_metadata',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['serviceProviderSamlMetadata'] = stub[:service_provider_saml_metadata] unless stub[:service_provider_saml_metadata].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTrustStore
    class GetTrustStore
      def self.default(visited=[])
        {
          trust_store: Stubs::TrustStore.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['trustStore'] = Stubs::TrustStore.stub(stub[:trust_store]) unless stub[:trust_store].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for TrustStore
    class TrustStore
      def self.default(visited=[])
        return nil if visited.include?('TrustStore')
        visited = visited + ['TrustStore']
        {
          associated_portal_arns: Stubs::ArnList.default(visited),
          trust_store_arn: 'trust_store_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustStore.new
        data = {}
        data['associatedPortalArns'] = Stubs::ArnList.stub(stub[:associated_portal_arns]) unless stub[:associated_portal_arns].nil?
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        data
      end
    end

    # Operation Stubber for GetTrustStoreCertificate
    class GetTrustStoreCertificate
      def self.default(visited=[])
        {
          trust_store_arn: 'trust_store_arn',
          certificate: Stubs::Certificate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        data['certificate'] = Stubs::Certificate.stub(stub[:certificate]) unless stub[:certificate].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Certificate
    class Certificate
      def self.default(visited=[])
        return nil if visited.include?('Certificate')
        visited = visited + ['Certificate']
        {
          thumbprint: 'thumbprint',
          subject: 'subject',
          issuer: 'issuer',
          not_valid_before: Time.now,
          not_valid_after: Time.now,
          body: 'body',
        }
      end

      def self.stub(stub)
        stub ||= Types::Certificate.new
        data = {}
        data['thumbprint'] = stub[:thumbprint] unless stub[:thumbprint].nil?
        data['subject'] = stub[:subject] unless stub[:subject].nil?
        data['issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['notValidBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_valid_before]).to_i unless stub[:not_valid_before].nil?
        data['notValidAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_valid_after]).to_i unless stub[:not_valid_after].nil?
        data['body'] = Base64::encode64(stub[:body]) unless stub[:body].nil?
        data
      end
    end

    # Operation Stubber for GetUserSettings
    class GetUserSettings
      def self.default(visited=[])
        {
          user_settings: Stubs::UserSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userSettings'] = Stubs::UserSettings.stub(stub[:user_settings]) unless stub[:user_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UserSettings
    class UserSettings
      def self.default(visited=[])
        return nil if visited.include?('UserSettings')
        visited = visited + ['UserSettings']
        {
          user_settings_arn: 'user_settings_arn',
          associated_portal_arns: Stubs::ArnList.default(visited),
          copy_allowed: 'copy_allowed',
          paste_allowed: 'paste_allowed',
          download_allowed: 'download_allowed',
          upload_allowed: 'upload_allowed',
          print_allowed: 'print_allowed',
          disconnect_timeout_in_minutes: 1,
          idle_disconnect_timeout_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSettings.new
        data = {}
        data['userSettingsArn'] = stub[:user_settings_arn] unless stub[:user_settings_arn].nil?
        data['associatedPortalArns'] = Stubs::ArnList.stub(stub[:associated_portal_arns]) unless stub[:associated_portal_arns].nil?
        data['copyAllowed'] = stub[:copy_allowed] unless stub[:copy_allowed].nil?
        data['pasteAllowed'] = stub[:paste_allowed] unless stub[:paste_allowed].nil?
        data['downloadAllowed'] = stub[:download_allowed] unless stub[:download_allowed].nil?
        data['uploadAllowed'] = stub[:upload_allowed] unless stub[:upload_allowed].nil?
        data['printAllowed'] = stub[:print_allowed] unless stub[:print_allowed].nil?
        data['disconnectTimeoutInMinutes'] = stub[:disconnect_timeout_in_minutes] unless stub[:disconnect_timeout_in_minutes].nil?
        data['idleDisconnectTimeoutInMinutes'] = stub[:idle_disconnect_timeout_in_minutes] unless stub[:idle_disconnect_timeout_in_minutes].nil?
        data
      end
    end

    # Operation Stubber for ListBrowserSettings
    class ListBrowserSettings
      def self.default(visited=[])
        {
          browser_settings: Stubs::BrowserSettingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['browserSettings'] = Stubs::BrowserSettingsList.stub(stub[:browser_settings]) unless stub[:browser_settings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for BrowserSettingsList
    class BrowserSettingsList
      def self.default(visited=[])
        return nil if visited.include?('BrowserSettingsList')
        visited = visited + ['BrowserSettingsList']
        [
          Stubs::BrowserSettingsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::BrowserSettingsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BrowserSettingsSummary
    class BrowserSettingsSummary
      def self.default(visited=[])
        return nil if visited.include?('BrowserSettingsSummary')
        visited = visited + ['BrowserSettingsSummary']
        {
          browser_settings_arn: 'browser_settings_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::BrowserSettingsSummary.new
        data = {}
        data['browserSettingsArn'] = stub[:browser_settings_arn] unless stub[:browser_settings_arn].nil?
        data
      end
    end

    # Operation Stubber for ListIdentityProviders
    class ListIdentityProviders
      def self.default(visited=[])
        {
          next_token: 'next_token',
          identity_providers: Stubs::IdentityProviderList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['identityProviders'] = Stubs::IdentityProviderList.stub(stub[:identity_providers]) unless stub[:identity_providers].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for IdentityProviderList
    class IdentityProviderList
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderList')
        visited = visited + ['IdentityProviderList']
        [
          Stubs::IdentityProviderSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::IdentityProviderSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IdentityProviderSummary
    class IdentityProviderSummary
      def self.default(visited=[])
        return nil if visited.include?('IdentityProviderSummary')
        visited = visited + ['IdentityProviderSummary']
        {
          identity_provider_arn: 'identity_provider_arn',
          identity_provider_name: 'identity_provider_name',
          identity_provider_type: 'identity_provider_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::IdentityProviderSummary.new
        data = {}
        data['identityProviderArn'] = stub[:identity_provider_arn] unless stub[:identity_provider_arn].nil?
        data['identityProviderName'] = stub[:identity_provider_name] unless stub[:identity_provider_name].nil?
        data['identityProviderType'] = stub[:identity_provider_type] unless stub[:identity_provider_type].nil?
        data
      end
    end

    # Operation Stubber for ListNetworkSettings
    class ListNetworkSettings
      def self.default(visited=[])
        {
          network_settings: Stubs::NetworkSettingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['networkSettings'] = Stubs::NetworkSettingsList.stub(stub[:network_settings]) unless stub[:network_settings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkSettingsList
    class NetworkSettingsList
      def self.default(visited=[])
        return nil if visited.include?('NetworkSettingsList')
        visited = visited + ['NetworkSettingsList']
        [
          Stubs::NetworkSettingsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkSettingsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NetworkSettingsSummary
    class NetworkSettingsSummary
      def self.default(visited=[])
        return nil if visited.include?('NetworkSettingsSummary')
        visited = visited + ['NetworkSettingsSummary']
        {
          network_settings_arn: 'network_settings_arn',
          vpc_id: 'vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkSettingsSummary.new
        data = {}
        data['networkSettingsArn'] = stub[:network_settings_arn] unless stub[:network_settings_arn].nil?
        data['vpcId'] = stub[:vpc_id] unless stub[:vpc_id].nil?
        data
      end
    end

    # Operation Stubber for ListPortals
    class ListPortals
      def self.default(visited=[])
        {
          portals: Stubs::PortalList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portals'] = Stubs::PortalList.stub(stub[:portals]) unless stub[:portals].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for PortalList
    class PortalList
      def self.default(visited=[])
        return nil if visited.include?('PortalList')
        visited = visited + ['PortalList']
        [
          Stubs::PortalSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PortalSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PortalSummary
    class PortalSummary
      def self.default(visited=[])
        return nil if visited.include?('PortalSummary')
        visited = visited + ['PortalSummary']
        {
          portal_arn: 'portal_arn',
          renderer_type: 'renderer_type',
          browser_type: 'browser_type',
          portal_status: 'portal_status',
          portal_endpoint: 'portal_endpoint',
          display_name: 'display_name',
          creation_date: Time.now,
          browser_settings_arn: 'browser_settings_arn',
          user_settings_arn: 'user_settings_arn',
          network_settings_arn: 'network_settings_arn',
          trust_store_arn: 'trust_store_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::PortalSummary.new
        data = {}
        data['portalArn'] = stub[:portal_arn] unless stub[:portal_arn].nil?
        data['rendererType'] = stub[:renderer_type] unless stub[:renderer_type].nil?
        data['browserType'] = stub[:browser_type] unless stub[:browser_type].nil?
        data['portalStatus'] = stub[:portal_status] unless stub[:portal_status].nil?
        data['portalEndpoint'] = stub[:portal_endpoint] unless stub[:portal_endpoint].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['browserSettingsArn'] = stub[:browser_settings_arn] unless stub[:browser_settings_arn].nil?
        data['userSettingsArn'] = stub[:user_settings_arn] unless stub[:user_settings_arn].nil?
        data['networkSettingsArn'] = stub[:network_settings_arn] unless stub[:network_settings_arn].nil?
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Stubs::Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListTrustStoreCertificates
    class ListTrustStoreCertificates
      def self.default(visited=[])
        {
          certificate_list: Stubs::CertificateSummaryList.default(visited),
          trust_store_arn: 'trust_store_arn',
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['certificateList'] = Stubs::CertificateSummaryList.stub(stub[:certificate_list]) unless stub[:certificate_list].nil?
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CertificateSummaryList
    class CertificateSummaryList
      def self.default(visited=[])
        return nil if visited.include?('CertificateSummaryList')
        visited = visited + ['CertificateSummaryList']
        [
          Stubs::CertificateSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CertificateSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CertificateSummary
    class CertificateSummary
      def self.default(visited=[])
        return nil if visited.include?('CertificateSummary')
        visited = visited + ['CertificateSummary']
        {
          thumbprint: 'thumbprint',
          subject: 'subject',
          issuer: 'issuer',
          not_valid_before: Time.now,
          not_valid_after: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateSummary.new
        data = {}
        data['thumbprint'] = stub[:thumbprint] unless stub[:thumbprint].nil?
        data['subject'] = stub[:subject] unless stub[:subject].nil?
        data['issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['notValidBefore'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_valid_before]).to_i unless stub[:not_valid_before].nil?
        data['notValidAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:not_valid_after]).to_i unless stub[:not_valid_after].nil?
        data
      end
    end

    # Operation Stubber for ListTrustStores
    class ListTrustStores
      def self.default(visited=[])
        {
          trust_stores: Stubs::TrustStoreSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['trustStores'] = Stubs::TrustStoreSummaryList.stub(stub[:trust_stores]) unless stub[:trust_stores].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for TrustStoreSummaryList
    class TrustStoreSummaryList
      def self.default(visited=[])
        return nil if visited.include?('TrustStoreSummaryList')
        visited = visited + ['TrustStoreSummaryList']
        [
          Stubs::TrustStoreSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::TrustStoreSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for TrustStoreSummary
    class TrustStoreSummary
      def self.default(visited=[])
        return nil if visited.include?('TrustStoreSummary')
        visited = visited + ['TrustStoreSummary']
        {
          trust_store_arn: 'trust_store_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::TrustStoreSummary.new
        data = {}
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        data
      end
    end

    # Operation Stubber for ListUserSettings
    class ListUserSettings
      def self.default(visited=[])
        {
          user_settings: Stubs::UserSettingsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userSettings'] = Stubs::UserSettingsList.stub(stub[:user_settings]) unless stub[:user_settings].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UserSettingsList
    class UserSettingsList
      def self.default(visited=[])
        return nil if visited.include?('UserSettingsList')
        visited = visited + ['UserSettingsList']
        [
          Stubs::UserSettingsSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserSettingsSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserSettingsSummary
    class UserSettingsSummary
      def self.default(visited=[])
        return nil if visited.include?('UserSettingsSummary')
        visited = visited + ['UserSettingsSummary']
        {
          user_settings_arn: 'user_settings_arn',
          copy_allowed: 'copy_allowed',
          paste_allowed: 'paste_allowed',
          download_allowed: 'download_allowed',
          upload_allowed: 'upload_allowed',
          print_allowed: 'print_allowed',
          disconnect_timeout_in_minutes: 1,
          idle_disconnect_timeout_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSettingsSummary.new
        data = {}
        data['userSettingsArn'] = stub[:user_settings_arn] unless stub[:user_settings_arn].nil?
        data['copyAllowed'] = stub[:copy_allowed] unless stub[:copy_allowed].nil?
        data['pasteAllowed'] = stub[:paste_allowed] unless stub[:paste_allowed].nil?
        data['downloadAllowed'] = stub[:download_allowed] unless stub[:download_allowed].nil?
        data['uploadAllowed'] = stub[:upload_allowed] unless stub[:upload_allowed].nil?
        data['printAllowed'] = stub[:print_allowed] unless stub[:print_allowed].nil?
        data['disconnectTimeoutInMinutes'] = stub[:disconnect_timeout_in_minutes] unless stub[:disconnect_timeout_in_minutes].nil?
        data['idleDisconnectTimeoutInMinutes'] = stub[:idle_disconnect_timeout_in_minutes] unless stub[:idle_disconnect_timeout_in_minutes].nil?
        data
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

    # Operation Stubber for UpdateBrowserSettings
    class UpdateBrowserSettings
      def self.default(visited=[])
        {
          browser_settings: Stubs::BrowserSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['browserSettings'] = Stubs::BrowserSettings.stub(stub[:browser_settings]) unless stub[:browser_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateIdentityProvider
    class UpdateIdentityProvider
      def self.default(visited=[])
        {
          identity_provider: Stubs::IdentityProvider.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['identityProvider'] = Stubs::IdentityProvider.stub(stub[:identity_provider]) unless stub[:identity_provider].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateNetworkSettings
    class UpdateNetworkSettings
      def self.default(visited=[])
        {
          network_settings: Stubs::NetworkSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['networkSettings'] = Stubs::NetworkSettings.stub(stub[:network_settings]) unless stub[:network_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdatePortal
    class UpdatePortal
      def self.default(visited=[])
        {
          portal: Stubs::Portal.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['portal'] = Stubs::Portal.stub(stub[:portal]) unless stub[:portal].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateTrustStore
    class UpdateTrustStore
      def self.default(visited=[])
        {
          trust_store_arn: 'trust_store_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['trustStoreArn'] = stub[:trust_store_arn] unless stub[:trust_store_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateUserSettings
    class UpdateUserSettings
      def self.default(visited=[])
        {
          user_settings: Stubs::UserSettings.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['userSettings'] = Stubs::UserSettings.stub(stub[:user_settings]) unless stub[:user_settings].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
