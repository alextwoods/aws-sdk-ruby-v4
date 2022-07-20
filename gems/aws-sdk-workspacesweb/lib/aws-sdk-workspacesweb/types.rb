# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpacesWeb
  module Types

    # <p>Access is denied.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    AssociateBrowserSettingsInput = ::Struct.new(
      :portal_arn,
      :browser_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    AssociateBrowserSettingsOutput = ::Struct.new(
      :portal_arn,
      :browser_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    AssociateNetworkSettingsInput = ::Struct.new(
      :portal_arn,
      :network_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    AssociateNetworkSettingsOutput = ::Struct.new(
      :portal_arn,
      :network_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    AssociateTrustStoreInput = ::Struct.new(
      :portal_arn,
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    AssociateTrustStoreOutput = ::Struct.new(
      :portal_arn,
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    AssociateUserSettingsInput = ::Struct.new(
      :portal_arn,
      :user_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    AssociateUserSettingsOutput = ::Struct.new(
      :portal_arn,
      :user_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The browser settings resource that can be associated with a web portal. Once associated
    #          with a web portal, browser settings control how the browser will behave once a user starts
    #          a streaming session for the web portal. </p>
    #
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this browser settings is associated with.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions.</p>
    #
    #   @return [String]
    #
    BrowserSettings = ::Struct.new(
      :browser_settings_arn,
      :associated_portal_arns,
      :browser_policy,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::BrowserSettings "\
          "browser_settings_arn=#{browser_settings_arn || 'nil'}, "\
          "associated_portal_arns=#{associated_portal_arns || 'nil'}, "\
          "browser_policy=\"[SENSITIVE]\">"
      end
    end

    # <p>The summary for browser settings.</p>
    #
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    BrowserSettingsSummary = ::Struct.new(
      :browser_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BrowserType
    #
    module BrowserType
      # No documentation available.
      #
      CHROME = "Chrome"
    end

    # <p>The certificate.</p>
    #
    # @!attribute thumbprint
    #   <p>A hexadecimal identifier for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The entity the certificate belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>The entity that issued the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute not_valid_before
    #   <p>The certificate is not valid before this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute not_valid_after
    #   <p>The certificate is not valid after this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute body
    #   <p>The body of the certificate.</p>
    #
    #   @return [String]
    #
    Certificate = ::Struct.new(
      :thumbprint,
      :subject,
      :issuer,
      :not_valid_before,
      :not_valid_after,
      :body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the certificate.</p>
    #
    # @!attribute thumbprint
    #   <p>A hexadecimal identifier for the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute subject
    #   <p>The entity the certificate belongs to.</p>
    #
    #   @return [String]
    #
    # @!attribute issuer
    #   <p>The entity that issued the certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute not_valid_before
    #   <p>The certificate is not valid before this date.</p>
    #
    #   @return [Time]
    #
    # @!attribute not_valid_after
    #   <p>The certificate is not valid after this date.</p>
    #
    #   @return [Time]
    #
    CertificateSummary = ::Struct.new(
      :thumbprint,
      :subject,
      :issuer,
      :not_valid_before,
      :not_valid_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is a conflict.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of the resource affected.</p>
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags to add to the browser settings resource. A tag is a key-value pair.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute customer_managed_key
    #   <p>The custom managed key of the browser settings.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_encryption_context
    #   <p>Additional encryption context of the browser settings.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS SDK. </p>
    #
    #   @return [String]
    #
    CreateBrowserSettingsInput = ::Struct.new(
      :tags,
      :customer_managed_key,
      :additional_encryption_context,
      :browser_policy,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::CreateBrowserSettingsInput "\
          "tags=#{tags || 'nil'}, "\
          "customer_managed_key=#{customer_managed_key || 'nil'}, "\
          "additional_encryption_context=#{additional_encryption_context || 'nil'}, "\
          "browser_policy=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    CreateBrowserSettingsOutput = ::Struct.new(
      :browser_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_name
    #   <p>The identity provider name.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_type
    #   <p>The identity provider type.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    # @!attribute identity_provider_details
    #   <p>The identity provider details. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                              <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean)
    #                  <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request.</p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    CreateIdentityProviderInput = ::Struct.new(
      :portal_arn,
      :identity_provider_name,
      :identity_provider_type,
      :identity_provider_details,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::CreateIdentityProviderInput "\
          "portal_arn=#{portal_arn || 'nil'}, "\
          "identity_provider_name=\"[SENSITIVE]\", "\
          "identity_provider_type=#{identity_provider_type || 'nil'}, "\
          "identity_provider_details=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    #   @return [String]
    #
    CreateIdentityProviderOutput = ::Struct.new(
      :identity_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to add to the network settings resource. A tag is a key-value pair.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    CreateNetworkSettingsInput = ::Struct.new(
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    CreateNetworkSettingsOutput = ::Struct.new(
      :network_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the web portal. A tag is a key-value pair.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute customer_managed_key
    #   <p>The customer managed key of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute additional_encryption_context
    #   <p>The additional encryption context of the portal.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    CreatePortalInput = ::Struct.new(
      :display_name,
      :tags,
      :customer_managed_key,
      :additional_encryption_context,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::CreatePortalInput "\
          "display_name=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}, "\
          "customer_managed_key=#{customer_managed_key || 'nil'}, "\
          "additional_encryption_context=#{additional_encryption_context || 'nil'}, "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute portal_endpoint
    #   <p>The endpoint URL of the web portal that users access in order to start streaming sessions.</p>
    #
    #   @return [String]
    #
    CreatePortalOutput = ::Struct.new(
      :portal_arn,
      :portal_endpoint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_list
    #   <p>A list of CA certificates to be added to the trust store.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The tags to add to the trust store. A tag is a key-value pair.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    CreateTrustStoreInput = ::Struct.new(
      :certificate_list,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    CreateTrustStoreOutput = ::Struct.new(
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to add to the user settings resource. A tag is a key-value pair.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users disconnect.</p>
    #
    #   @return [Integer]
    #
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect timeout interval begins.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    CreateUserSettingsInput = ::Struct.new(
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :tags,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    CreateUserSettingsOutput = ::Struct.new(
      :user_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    DeleteBrowserSettingsInput = ::Struct.new(
      :browser_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteBrowserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    #   @return [String]
    #
    DeleteIdentityProviderInput = ::Struct.new(
      :identity_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIdentityProviderOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    DeleteNetworkSettingsInput = ::Struct.new(
      :network_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNetworkSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    DeletePortalInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePortalOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    DeleteTrustStoreInput = ::Struct.new(
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTrustStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    DeleteUserSettingsInput = ::Struct.new(
      :user_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    DisassociateBrowserSettingsInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateBrowserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    DisassociateNetworkSettingsInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateNetworkSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    DisassociateTrustStoreInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateTrustStoreOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    DisassociateUserSettingsInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateUserSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnabledType
    #
    module EnabledType
      # No documentation available.
      #
      DISABLED = "Disabled"

      # No documentation available.
      #
      ENABLED = "Enabled"
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    GetBrowserSettingsInput = ::Struct.new(
      :browser_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute browser_settings
    #   <p>The browser settings.</p>
    #
    #   @return [BrowserSettings]
    #
    GetBrowserSettingsOutput = ::Struct.new(
      :browser_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    #   @return [String]
    #
    GetIdentityProviderInput = ::Struct.new(
      :identity_provider_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider
    #   <p>The identity provider.</p>
    #
    #   @return [IdentityProvider]
    #
    GetIdentityProviderOutput = ::Struct.new(
      :identity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    GetNetworkSettingsInput = ::Struct.new(
      :network_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings
    #   <p>The network settings.</p>
    #
    #   @return [NetworkSettings]
    #
    GetNetworkSettingsOutput = ::Struct.new(
      :network_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    GetPortalInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal
    #   <p>The web portal.</p>
    #
    #   @return [Portal]
    #
    GetPortalOutput = ::Struct.new(
      :portal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    GetPortalServiceProviderMetadataInput = ::Struct.new(
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute service_provider_saml_metadata
    #   <p>The service provider SAML metadata.</p>
    #
    #   @return [String]
    #
    GetPortalServiceProviderMetadataOutput = ::Struct.new(
      :portal_arn,
      :service_provider_saml_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute thumbprint
    #   <p>The thumbprint of the trust store certificate.</p>
    #
    #   @return [String]
    #
    GetTrustStoreCertificateInput = ::Struct.new(
      :trust_store_arn,
      :thumbprint,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store certificate.</p>
    #
    #   @return [String]
    #
    # @!attribute certificate
    #   <p>The certificate of the trust store certificate.</p>
    #
    #   @return [Certificate]
    #
    GetTrustStoreCertificateOutput = ::Struct.new(
      :trust_store_arn,
      :certificate,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    GetTrustStoreInput = ::Struct.new(
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store
    #   <p>The trust store.</p>
    #
    #   @return [TrustStore]
    #
    GetTrustStoreOutput = ::Struct.new(
      :trust_store,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    GetUserSettingsInput = ::Struct.new(
      :user_settings_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #
    #   @return [UserSettings]
    #
    GetUserSettingsOutput = ::Struct.new(
      :user_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The identity provider.</p>
    #
    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_name
    #   <p>The identity provider name.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_type
    #   <p>The identity provider type.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    # @!attribute identity_provider_details
    #   <p>The identity provider details. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by oidc_issuer
    #                           key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code>
    #                           <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    IdentityProvider = ::Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type,
      :identity_provider_details,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::IdentityProvider "\
          "identity_provider_arn=#{identity_provider_arn || 'nil'}, "\
          "identity_provider_name=\"[SENSITIVE]\", "\
          "identity_provider_type=#{identity_provider_type || 'nil'}, "\
          "identity_provider_details=\"[SENSITIVE]\">"
      end
    end

    # <p>The summary of the identity provider.</p>
    #
    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_name
    #   <p>The identity provider name.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_type
    #   <p>The identity provider type.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    IdentityProviderSummary = ::Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::IdentityProviderSummary "\
          "identity_provider_arn=#{identity_provider_arn || 'nil'}, "\
          "identity_provider_name=\"[SENSITIVE]\", "\
          "identity_provider_type=#{identity_provider_type || 'nil'}>"
      end
    end

    # Includes enum constants for IdentityProviderType
    #
    module IdentityProviderType
      # No documentation available.
      #
      SAML = "SAML"

      # No documentation available.
      #
      Facebook = "Facebook"

      # No documentation available.
      #
      Google = "Google"

      # No documentation available.
      #
      LoginWithAmazon = "LoginWithAmazon"

      # No documentation available.
      #
      SignInWithApple = "SignInWithApple"

      # No documentation available.
      #
      OIDC = "OIDC"
    end

    # <p>There is an internal server error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListBrowserSettingsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute browser_settings
    #   <p>The browser settings.</p>
    #
    #   @return [Array<BrowserSettingsSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    ListBrowserSettingsOutput = ::Struct.new(
      :browser_settings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    ListIdentityProvidersInput = ::Struct.new(
      :next_token,
      :max_results,
      :portal_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_providers
    #   <p>The identity providers.</p>
    #
    #   @return [Array<IdentityProviderSummary>]
    #
    ListIdentityProvidersOutput = ::Struct.new(
      :next_token,
      :identity_providers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListNetworkSettingsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings
    #   <p>The network settings.</p>
    #
    #   @return [Array<NetworkSettingsSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    ListNetworkSettingsOutput = ::Struct.new(
      :network_settings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListPortalsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portals
    #   <p>The portals in the list.</p>
    #
    #   @return [Array<PortalSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. </p>
    #
    #   @return [String]
    #
    ListPortalsOutput = ::Struct.new(
      :portals,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags of the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListTrustStoreCertificatesInput = ::Struct.new(
      :trust_store_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute certificate_list
    #   <p>The certificate list.</p>
    #
    #   @return [Array<CertificateSummary>]
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.&gt;</p>
    #
    #   @return [String]
    #
    ListTrustStoreCertificatesOutput = ::Struct.new(
      :certificate_list,
      :trust_store_arn,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListTrustStoresInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_stores
    #   <p>The trust stores.</p>
    #
    #   @return [Array<TrustStoreSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation.</p>
    #
    #   @return [String]
    #
    ListTrustStoresOutput = ::Struct.new(
      :trust_stores,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be included in the next page.</p>
    #
    #   @return [Integer]
    #
    ListUserSettingsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #
    #   @return [Array<UserSettingsSummary>]
    #
    # @!attribute next_token
    #   <p>The pagination token used to retrieve the next page of results for this operation. </p>
    #
    #   @return [String]
    #
    ListUserSettingsOutput = ::Struct.new(
      :user_settings,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A network settings resource that can be associated with a web portal. Once associated
    #          with a web portal, network settings define how streaming instances will connect with your
    #          specified VPC. </p>
    #
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this network settings is associated with.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your VPC. </p>
    #
    #   @return [Array<String>]
    #
    NetworkSettings = ::Struct.new(
      :network_settings_arn,
      :associated_portal_arns,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of network settings.</p>
    #
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID of the network settings.</p>
    #
    #   @return [String]
    #
    NetworkSettingsSummary = ::Struct.new(
      :network_settings_arn,
      :vpc_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The web portal.</p>
    #
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute renderer_type
    #   <p>The renderer that is used in streaming sessions.</p>
    #
    #   Enum, one of: ["AppStream"]
    #
    #   @return [String]
    #
    # @!attribute browser_type
    #   <p>The browser that users see when using a streaming session.</p>
    #
    #   Enum, one of: ["Chrome"]
    #
    #   @return [String]
    #
    # @!attribute portal_status
    #   <p>The status of the web portal.</p>
    #
    #   Enum, one of: ["Incomplete", "Pending", "Active"]
    #
    #   @return [String]
    #
    # @!attribute portal_endpoint
    #   <p>The endpoint URL of the web portal that users access in order to start streaming
    #            sessions.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The creation date of the web portal.</p>
    #
    #   @return [Time]
    #
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings that is associated with this web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute user_settings_arn
    #   <p>The ARN of the trust store that is associated with the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings that is associated with the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store that is associated with the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>A message that explains why the web portal is in its current status.</p>
    #
    #   @return [String]
    #
    Portal = ::Struct.new(
      :portal_arn,
      :renderer_type,
      :browser_type,
      :portal_status,
      :portal_endpoint,
      :display_name,
      :creation_date,
      :browser_settings_arn,
      :user_settings_arn,
      :network_settings_arn,
      :trust_store_arn,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::Portal "\
          "portal_arn=#{portal_arn || 'nil'}, "\
          "renderer_type=#{renderer_type || 'nil'}, "\
          "browser_type=#{browser_type || 'nil'}, "\
          "portal_status=#{portal_status || 'nil'}, "\
          "portal_endpoint=#{portal_endpoint || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "creation_date=#{creation_date || 'nil'}, "\
          "browser_settings_arn=#{browser_settings_arn || 'nil'}, "\
          "user_settings_arn=#{user_settings_arn || 'nil'}, "\
          "network_settings_arn=#{network_settings_arn || 'nil'}, "\
          "trust_store_arn=#{trust_store_arn || 'nil'}, "\
          "status_reason=#{status_reason || 'nil'}>"
      end
    end

    # Includes enum constants for PortalStatus
    #
    module PortalStatus
      # No documentation available.
      #
      INCOMPLETE = "Incomplete"

      # No documentation available.
      #
      PENDING = "Pending"

      # No documentation available.
      #
      ACTIVE = "Active"
    end

    # <p>The summary of the portal.</p>
    #
    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute renderer_type
    #   <p>The renderer that is used in streaming sessions.</p>
    #
    #   Enum, one of: ["AppStream"]
    #
    #   @return [String]
    #
    # @!attribute browser_type
    #   <p>The browser type of the web portal.</p>
    #
    #   Enum, one of: ["Chrome"]
    #
    #   @return [String]
    #
    # @!attribute portal_status
    #   <p>The status of the web portal.</p>
    #
    #   Enum, one of: ["Incomplete", "Pending", "Active"]
    #
    #   @return [String]
    #
    # @!attribute portal_endpoint
    #   <p>The endpoint URL of the web portal that users access in order to start streaming
    #            sessions.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The creation date of the web portal.</p>
    #
    #   @return [Time]
    #
    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings that is associated with the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings that is associated with the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings that is associated with the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust that is associated with this web portal.</p>
    #
    #   @return [String]
    #
    PortalSummary = ::Struct.new(
      :portal_arn,
      :renderer_type,
      :browser_type,
      :portal_status,
      :portal_endpoint,
      :display_name,
      :creation_date,
      :browser_settings_arn,
      :user_settings_arn,
      :network_settings_arn,
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::PortalSummary "\
          "portal_arn=#{portal_arn || 'nil'}, "\
          "renderer_type=#{renderer_type || 'nil'}, "\
          "browser_type=#{browser_type || 'nil'}, "\
          "portal_status=#{portal_status || 'nil'}, "\
          "portal_endpoint=#{portal_endpoint || 'nil'}, "\
          "display_name=\"[SENSITIVE]\", "\
          "creation_date=#{creation_date || 'nil'}, "\
          "browser_settings_arn=#{browser_settings_arn || 'nil'}, "\
          "user_settings_arn=#{user_settings_arn || 'nil'}, "\
          "network_settings_arn=#{network_settings_arn || 'nil'}, "\
          "trust_store_arn=#{trust_store_arn || 'nil'}>"
      end
    end

    # Includes enum constants for RendererType
    #
    module RendererType
      # No documentation available.
      #
      APPSTREAM = "AppStream"
    end

    # <p>The resource cannot be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Hypothetical identifier of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Hypothetical type of the resource affected.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service quota has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>Identifier of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p> Type of the resource affected.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The originating service.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The originating quota.</p>
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tag.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::Tag [SENSITIVE]>"
      end
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags of the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token returns the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is a throttling error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The originating service.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The originating quota.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>Advice to clients on when the call can be safely retried.</p>
    #
    #   @return [Integer]
    #
    ThrottlingException = ::Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.retry_after_seconds ||= 0
      end
    end

    # <p>There are too many tags.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>Name of the resource affected.</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A trust store that can be associated with a web portal. A trust store contains
    #          certificate authority (CA) certificates. Once associated with a web portal, the browser in
    #          a streaming session will recognize certificates that have been issued using any of the CAs
    #          in the trust store. If your organization has internal websites that use certificates issued
    #          by private CAs, you should add the private CA certificate to the trust store. </p>
    #
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this trust store is associated with.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    TrustStore = ::Struct.new(
      :associated_portal_arns,
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of the trust store.</p>
    #
    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    TrustStoreSummary = ::Struct.new(
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute browser_settings_arn
    #   <p>The ARN of the browser settings.</p>
    #
    #   @return [String]
    #
    # @!attribute browser_policy
    #   <p>A JSON string containing Chrome Enterprise policies that will be applied to all
    #            streaming sessions. </p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    UpdateBrowserSettingsInput = ::Struct.new(
      :browser_settings_arn,
      :browser_policy,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::UpdateBrowserSettingsInput "\
          "browser_settings_arn=#{browser_settings_arn || 'nil'}, "\
          "browser_policy=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute browser_settings
    #   <p>The browser settings.</p>
    #
    #   @return [BrowserSettings]
    #
    UpdateBrowserSettingsOutput = ::Struct.new(
      :browser_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute identity_provider_arn
    #   <p>The ARN of the identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_name
    #   <p>The name of the identity provider.</p>
    #
    #   @return [String]
    #
    # @!attribute identity_provider_type
    #   <p>The type of the identity provider.</p>
    #
    #   Enum, one of: ["SAML", "Facebook", "Google", "LoginWithAmazon", "SignInWithApple", "OIDC"]
    #
    #   @return [String]
    #
    # @!attribute identity_provider_details
    #   <p>The details of the identity provider. The following list describes the provider detail keys for
    #            each identity provider type. </p>
    #            <ul>
    #               <li>
    #                  <p>For Google and Login with Amazon:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Facebook:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>api_version</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For Sign in with Apple:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>team_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>key_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>private_key</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For OIDC providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>client_id</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>client_secret</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_request_method</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>oidc_issuer</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_scopes</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>authorize_url</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>token_url</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>attributes_url</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>jwks_uri</code>
    #                           <i>if not available from discovery URL specified by
    #                     <code>oidc_issuer</code> key</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>For SAML providers:</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <code>MetadataFile</code> OR <code>MetadataURL</code>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <code>IDPSignout</code> (boolean)
    #                  <i>optional</i>
    #                        </p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    UpdateIdentityProviderInput = ::Struct.new(
      :identity_provider_arn,
      :identity_provider_name,
      :identity_provider_type,
      :identity_provider_details,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::UpdateIdentityProviderInput "\
          "identity_provider_arn=#{identity_provider_arn || 'nil'}, "\
          "identity_provider_name=\"[SENSITIVE]\", "\
          "identity_provider_type=#{identity_provider_type || 'nil'}, "\
          "identity_provider_details=\"[SENSITIVE]\", "\
          "client_token=#{client_token || 'nil'}>"
      end
    end

    # @!attribute identity_provider
    #   <p>The identity provider.</p>
    #
    #   @return [IdentityProvider]
    #
    UpdateIdentityProviderOutput = ::Struct.new(
      :identity_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings_arn
    #   <p>The ARN of the network settings.</p>
    #
    #   @return [String]
    #
    # @!attribute vpc_id
    #   <p>The VPC that streaming instances will connect to.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The subnets in which network interfaces are created to connect streaming instances to your VPC. At least two of these subnets must be in different availability zones.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>One or more security groups used to control access from streaming instances to your VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    UpdateNetworkSettingsInput = ::Struct.new(
      :network_settings_arn,
      :vpc_id,
      :subnet_ids,
      :security_group_ids,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute network_settings
    #   <p>The network settings.</p>
    #
    #   @return [NetworkSettings]
    #
    UpdateNetworkSettingsOutput = ::Struct.new(
      :network_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute portal_arn
    #   <p>The ARN of the web portal.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The name of the web portal. This is not visible to users who log into the web portal.</p>
    #
    #   @return [String]
    #
    UpdatePortalInput = ::Struct.new(
      :portal_arn,
      :display_name,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkSpacesWeb::Types::UpdatePortalInput "\
          "portal_arn=#{portal_arn || 'nil'}, "\
          "display_name=\"[SENSITIVE]\">"
      end
    end

    # @!attribute portal
    #   <p>The web portal.</p>
    #
    #   @return [Portal]
    #
    UpdatePortalOutput = ::Struct.new(
      :portal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    # @!attribute certificates_to_add
    #   <p>A list of CA certificates to add to the trust store.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute certificates_to_delete
    #   <p>A list of CA certificates to delete from a trust store.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    UpdateTrustStoreInput = ::Struct.new(
      :trust_store_arn,
      :certificates_to_add,
      :certificates_to_delete,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute trust_store_arn
    #   <p>The ARN of the trust store.</p>
    #
    #   @return [String]
    #
    UpdateTrustStoreOutput = ::Struct.new(
      :trust_store_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users disconnect.</p>
    #
    #   @return [Integer]
    #
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect timeout interval begins.</p>
    #
    #   @return [Integer]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request. Idempotency ensures that an API request completes only once. With an idempotent
    #            request, if the original request completes successfully, subsequent retries with the same
    #            client token return the result from the original successful request. </p>
    #            <p>If you do not specify a client token, one is automatically generated by the AWS
    #            SDK.</p>
    #
    #   @return [String]
    #
    UpdateUserSettingsInput = ::Struct.new(
      :user_settings_arn,
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_settings
    #   <p>The user settings.</p>
    #
    #   @return [UserSettings]
    #
    UpdateUserSettingsOutput = ::Struct.new(
      :user_settings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A user settings resource that can be associated with a web portal. Once associated with
    #          a web portal, user settings control how users can transfer data between a streaming session
    #          and the their local devices. </p>
    #
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_portal_arns
    #   <p>A list of web portal ARNs that this user settings is associated with.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users disconnect.</p>
    #
    #   @return [Integer]
    #
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect timeout interval begins.</p>
    #
    #   @return [Integer]
    #
    UserSettings = ::Struct.new(
      :user_settings_arn,
      :associated_portal_arns,
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The summary of user settings.</p>
    #
    # @!attribute user_settings_arn
    #   <p>The ARN of the user settings.</p>
    #
    #   @return [String]
    #
    # @!attribute copy_allowed
    #   <p>Specifies whether the user can copy text from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute paste_allowed
    #   <p>Specifies whether the user can paste text from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute download_allowed
    #   <p>Specifies whether the user can download files from the streaming session to the local
    #            device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute upload_allowed
    #   <p>Specifies whether the user can upload files from the local device to the streaming
    #            session.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute print_allowed
    #   <p>Specifies whether the user can print to the local device.</p>
    #
    #   Enum, one of: ["Disabled", "Enabled"]
    #
    #   @return [String]
    #
    # @!attribute disconnect_timeout_in_minutes
    #   <p>The amount of time that a streaming session remains active after users disconnect.</p>
    #
    #   @return [Integer]
    #
    # @!attribute idle_disconnect_timeout_in_minutes
    #   <p>The amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect timeout interval begins.</p>
    #
    #   @return [Integer]
    #
    UserSettingsSummary = ::Struct.new(
      :user_settings_arn,
      :copy_allowed,
      :paste_allowed,
      :download_allowed,
      :upload_allowed,
      :print_allowed,
      :disconnect_timeout_in_minutes,
      :idle_disconnect_timeout_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There is a validation error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Reason the request failed validation</p>
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>The field that caused the error.</p>
    #
    #   @return [Array<ValidationExceptionField>]
    #
    ValidationException = ::Struct.new(
      :message,
      :reason,
      :field_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a field passed inside a request that resulted in an exception.</p>
    #
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message describing why the field failed validation.</p>
    #
    #   @return [String]
    #
    ValidationExceptionField = ::Struct.new(
      :name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ValidationExceptionReason
    #
    module ValidationExceptionReason
      # No documentation available.
      #
      UNKNOWN_OPERATION = "unknownOperation"

      # No documentation available.
      #
      CANNOT_PARSE = "cannotParse"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "fieldValidationFailed"

      # No documentation available.
      #
      OTHER = "other"
    end

  end
end
