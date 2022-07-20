# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpacesWeb
  module Builders

    # Operation Builder for AssociateBrowserSettings
    class AssociateBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/browserSettings',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['browserSettingsArn'] = input[:browser_settings_arn].to_s unless input[:browser_settings_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AssociateNetworkSettings
    class AssociateNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/networkSettings',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['networkSettingsArn'] = input[:network_settings_arn].to_s unless input[:network_settings_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AssociateTrustStore
    class AssociateTrustStore
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/trustStores',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['trustStoreArn'] = input[:trust_store_arn].to_s unless input[:trust_store_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for AssociateUserSettings
    class AssociateUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/userSettings',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['userSettingsArn'] = input[:user_settings_arn].to_s unless input[:user_settings_arn].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for CreateBrowserSettings
    class CreateBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/browserSettings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['customerManagedKey'] = input[:customer_managed_key] unless input[:customer_managed_key].nil?
        data['additionalEncryptionContext'] = Builders::EncryptionContextMap.build(input[:additional_encryption_context]) unless input[:additional_encryption_context].nil?
        data['browserPolicy'] = input[:browser_policy] unless input[:browser_policy].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for EncryptionContextMap
    class EncryptionContextMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateIdentityProvider
    class CreateIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/identityProviders')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['portalArn'] = input[:portal_arn] unless input[:portal_arn].nil?
        data['identityProviderName'] = input[:identity_provider_name] unless input[:identity_provider_name].nil?
        data['identityProviderType'] = input[:identity_provider_type] unless input[:identity_provider_type].nil?
        data['identityProviderDetails'] = Builders::IdentityProviderDetails.build(input[:identity_provider_details]) unless input[:identity_provider_details].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for IdentityProviderDetails
    class IdentityProviderDetails
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateNetworkSettings
    class CreateNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/networkSettings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['vpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['subnetIds'] = Builders::SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreatePortal
    class CreatePortal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/portals')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['customerManagedKey'] = input[:customer_managed_key] unless input[:customer_managed_key].nil?
        data['additionalEncryptionContext'] = Builders::EncryptionContextMap.build(input[:additional_encryption_context]) unless input[:additional_encryption_context].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateTrustStore
    class CreateTrustStore
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/trustStores')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['certificateList'] = Builders::CertificateList.build(input[:certificate_list]) unless input[:certificate_list].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CertificateList
    class CertificateList
      def self.build(input)
        data = []
        input.each do |element|
          data << Base64::encode64(element).strip unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateUserSettings
    class CreateUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/userSettings')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['copyAllowed'] = input[:copy_allowed] unless input[:copy_allowed].nil?
        data['pasteAllowed'] = input[:paste_allowed] unless input[:paste_allowed].nil?
        data['downloadAllowed'] = input[:download_allowed] unless input[:download_allowed].nil?
        data['uploadAllowed'] = input[:upload_allowed] unless input[:upload_allowed].nil?
        data['printAllowed'] = input[:print_allowed] unless input[:print_allowed].nil?
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['disconnectTimeoutInMinutes'] = input[:disconnect_timeout_in_minutes] unless input[:disconnect_timeout_in_minutes].nil?
        data['idleDisconnectTimeoutInMinutes'] = input[:idle_disconnect_timeout_in_minutes] unless input[:idle_disconnect_timeout_in_minutes].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBrowserSettings
    class DeleteBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:browser_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :browser_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/browserSettings/%<browserSettingsArn>s',
            browserSettingsArn: (input[:browser_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteIdentityProvider
    class DeleteIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:identity_provider_arn].to_s.empty?
          raise ArgumentError, "HTTP label :identity_provider_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identityProviders/%<identityProviderArn>s',
            identityProviderArn: (input[:identity_provider_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteNetworkSettings
    class DeleteNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:network_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :network_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networkSettings/%<networkSettingsArn>s',
            networkSettingsArn: (input[:network_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeletePortal
    class DeletePortal
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteTrustStore
    class DeleteTrustStore
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:trust_store_arn].to_s.empty?
          raise ArgumentError, "HTTP label :trust_store_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/trustStores/%<trustStoreArn>s',
            trustStoreArn: (input[:trust_store_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteUserSettings
    class DeleteUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:user_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :user_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/userSettings/%<userSettingsArn>s',
            userSettingsArn: (input[:user_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateBrowserSettings
    class DisassociateBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/browserSettings',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateNetworkSettings
    class DisassociateNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/networkSettings',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateTrustStore
    class DisassociateTrustStore
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/trustStores',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateUserSettings
    class DisassociateUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/userSettings',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetBrowserSettings
    class GetBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:browser_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :browser_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/browserSettings/%<browserSettingsArn>s',
            browserSettingsArn: (input[:browser_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetIdentityProvider
    class GetIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:identity_provider_arn].to_s.empty?
          raise ArgumentError, "HTTP label :identity_provider_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identityProviders/%<identityProviderArn>s',
            identityProviderArn: (input[:identity_provider_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNetworkSettings
    class GetNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :network_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networkSettings/%<networkSettingsArn>s',
            networkSettingsArn: (input[:network_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPortal
    class GetPortal
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetPortalServiceProviderMetadata
    class GetPortalServiceProviderMetadata
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portalIdp/%<portalArn>s',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTrustStore
    class GetTrustStore
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:trust_store_arn].to_s.empty?
          raise ArgumentError, "HTTP label :trust_store_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/trustStores/%<trustStoreArn>s',
            trustStoreArn: (input[:trust_store_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetTrustStoreCertificate
    class GetTrustStoreCertificate
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:trust_store_arn].to_s.empty?
          raise ArgumentError, "HTTP label :trust_store_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/trustStores/%<trustStoreArn>s/certificate',
            trustStoreArn: (input[:trust_store_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['thumbprint'] = input[:thumbprint].to_s unless input[:thumbprint].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetUserSettings
    class GetUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:user_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :user_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/userSettings/%<userSettingsArn>s',
            userSettingsArn: (input[:user_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListBrowserSettings
    class ListBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/browserSettings')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListIdentityProviders
    class ListIdentityProviders
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s/identityProviders',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNetworkSettings
    class ListNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/networkSettings')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListPortals
    class ListPortals
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/portals')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
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
            resourceArn: (input[:resource_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrustStoreCertificates
    class ListTrustStoreCertificates
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:trust_store_arn].to_s.empty?
          raise ArgumentError, "HTTP label :trust_store_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/trustStores/%<trustStoreArn>s/certificates',
            trustStoreArn: (input[:trust_store_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTrustStores
    class ListTrustStores
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/trustStores')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListUserSettings
    class ListUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/userSettings')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
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
            resourceArn: (input[:resource_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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
            resourceArn: (input[:resource_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
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

    # Operation Builder for UpdateBrowserSettings
    class UpdateBrowserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:browser_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :browser_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/browserSettings/%<browserSettingsArn>s',
            browserSettingsArn: (input[:browser_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['browserPolicy'] = input[:browser_policy] unless input[:browser_policy].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIdentityProvider
    class UpdateIdentityProvider
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:identity_provider_arn].to_s.empty?
          raise ArgumentError, "HTTP label :identity_provider_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/identityProviders/%<identityProviderArn>s',
            identityProviderArn: (input[:identity_provider_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identityProviderName'] = input[:identity_provider_name] unless input[:identity_provider_name].nil?
        data['identityProviderType'] = input[:identity_provider_type] unless input[:identity_provider_type].nil?
        data['identityProviderDetails'] = Builders::IdentityProviderDetails.build(input[:identity_provider_details]) unless input[:identity_provider_details].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNetworkSettings
    class UpdateNetworkSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:network_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :network_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networkSettings/%<networkSettingsArn>s',
            networkSettingsArn: (input[:network_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['vpcId'] = input[:vpc_id] unless input[:vpc_id].nil?
        data['subnetIds'] = Builders::SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['securityGroupIds'] = Builders::SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePortal
    class UpdatePortal
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:portal_arn].to_s.empty?
          raise ArgumentError, "HTTP label :portal_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/portals/%<portalArn>s',
            portalArn: (input[:portal_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateTrustStore
    class UpdateTrustStore
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:trust_store_arn].to_s.empty?
          raise ArgumentError, "HTTP label :trust_store_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/trustStores/%<trustStoreArn>s',
            trustStoreArn: (input[:trust_store_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['certificatesToAdd'] = Builders::CertificateList.build(input[:certificates_to_add]) unless input[:certificates_to_add].nil?
        data['certificatesToDelete'] = Builders::CertificateThumbprintList.build(input[:certificates_to_delete]) unless input[:certificates_to_delete].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CertificateThumbprintList
    class CertificateThumbprintList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateUserSettings
    class UpdateUserSettings
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:user_settings_arn].to_s.empty?
          raise ArgumentError, "HTTP label :user_settings_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/userSettings/%<userSettingsArn>s',
            userSettingsArn: (input[:user_settings_arn].to_s).split('/').map { |s| Hearth::HTTP.uri_escape(s) }.join('/')
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['copyAllowed'] = input[:copy_allowed] unless input[:copy_allowed].nil?
        data['pasteAllowed'] = input[:paste_allowed] unless input[:paste_allowed].nil?
        data['downloadAllowed'] = input[:download_allowed] unless input[:download_allowed].nil?
        data['uploadAllowed'] = input[:upload_allowed] unless input[:upload_allowed].nil?
        data['printAllowed'] = input[:print_allowed] unless input[:print_allowed].nil?
        data['disconnectTimeoutInMinutes'] = input[:disconnect_timeout_in_minutes] unless input[:disconnect_timeout_in_minutes].nil?
        data['idleDisconnectTimeoutInMinutes'] = input[:idle_disconnect_timeout_in_minutes] unless input[:idle_disconnect_timeout_in_minutes].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
