# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkSpaces
  module Types

    # <p>The user is not authorized to access a resource.</p>
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

    # Includes enum constants for AccessPropertyValue
    #
    module AccessPropertyValue
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # <p>Describes a modification to the configuration of Bring Your Own License (BYOL) for the
    #          specified account. </p>
    #
    # @!attribute modification_state
    #   <p>The state of the modification to the configuration of BYOL.</p>
    #
    #   Enum, one of: ["PENDING", "COMPLETED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute dedicated_tenancy_support
    #   <p>The status of BYOL (whether BYOL is being enabled or disabled).</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, for the management network
    #            interface used for the account.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The timestamp when the modification of the BYOL configuration was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_code
    #   <p>The error code that is returned if the configuration of BYOL cannot be modified.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the configuration of BYOL cannot be
    #            modified.</p>
    #
    #   @return [String]
    #
    AccountModification = ::Struct.new(
      :modification_state,
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      :start_time,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Application
    #
    module Application
      # No documentation available.
      #
      Microsoft_Office_2016 = "Microsoft_Office_2016"

      # No documentation available.
      #
      Microsoft_Office_2019 = "Microsoft_Office_2019"
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the directory to associate the connection alias with.</p>
    #
    #   @return [String]
    #
    AssociateConnectionAliasInput = ::Struct.new(
      :alias_id,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_identifier
    #   <p>The identifier of the connection alias association. You use the connection identifier in
    #            the DNS TXT record when you're configuring your DNS routing policies. </p>
    #
    #   @return [String]
    #
    AssociateConnectionAliasOutput = ::Struct.new(
      :connection_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #
    #   @return [Array<String>]
    #
    AssociateIpGroupsInput = ::Struct.new(
      :directory_id,
      :group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateIpGroupsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssociationStatus
    #
    module AssociationStatus
      # No documentation available.
      #
      NOT_ASSOCIATED = "NOT_ASSOCIATED"

      # No documentation available.
      #
      ASSOCIATED_WITH_OWNER_ACCOUNT = "ASSOCIATED_WITH_OWNER_ACCOUNT"

      # No documentation available.
      #
      ASSOCIATED_WITH_SHARED_ACCOUNT = "ASSOCIATED_WITH_SHARED_ACCOUNT"

      # No documentation available.
      #
      PENDING_ASSOCIATION = "PENDING_ASSOCIATION"

      # No documentation available.
      #
      PENDING_DISASSOCIATION = "PENDING_DISASSOCIATION"
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_rules
    #   <p>The rules to add to the group.</p>
    #
    #   @return [Array<IpRuleItem>]
    #
    AuthorizeIpRulesInput = ::Struct.new(
      :group_id,
      :user_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AuthorizeIpRulesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ClientDeviceType
    #
    module ClientDeviceType
      # No documentation available.
      #
      DEVICE_TYPE_WINDOWS = "DeviceTypeWindows"

      # No documentation available.
      #
      DEVICE_TYPE_OSX = "DeviceTypeOsx"

      # No documentation available.
      #
      DEVICE_TYPE_ANDROID = "DeviceTypeAndroid"

      # No documentation available.
      #
      DEVICE_TYPE_IOS = "DeviceTypeIos"

      # No documentation available.
      #
      DEVICE_TYPE_LINUX = "DeviceTypeLinux"

      # No documentation available.
      #
      DEVICE_TYPE_WEB = "DeviceTypeWeb"
    end

    # <p>Describes an Amazon WorkSpaces client.</p>
    #
    # @!attribute reconnect_enabled
    #   <p>Specifies whether users can cache their credentials on the Amazon WorkSpaces client.
    #            When enabled, users can choose to reconnect to their WorkSpaces without re-entering their
    #            credentials. </p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    ClientProperties = ::Struct.new(
      :reconnect_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Amazon WorkSpaces client.</p>
    #
    # @!attribute resource_id
    #   <p>The resource identifier, in the form of a directory ID.</p>
    #
    #   @return [String]
    #
    # @!attribute client_properties
    #   <p>Information about the Amazon WorkSpaces client.</p>
    #
    #   @return [ClientProperties]
    #
    ClientPropertiesResult = ::Struct.new(
      :resource_id,
      :client_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Compute
    #
    module Compute
      # No documentation available.
      #
      VALUE = "VALUE"

      # No documentation available.
      #
      STANDARD = "STANDARD"

      # No documentation available.
      #
      PERFORMANCE = "PERFORMANCE"

      # No documentation available.
      #
      POWER = "POWER"

      # No documentation available.
      #
      GRAPHICS = "GRAPHICS"

      # No documentation available.
      #
      POWERPRO = "POWERPRO"

      # No documentation available.
      #
      GRAPHICSPRO = "GRAPHICSPRO"

      # No documentation available.
      #
      GRAPHICS_G4DN = "GRAPHICS_G4DN"

      # No documentation available.
      #
      GRAPHICSPRO_G4DN = "GRAPHICSPRO_G4DN"
    end

    # <p>Describes the compute type of the bundle.</p>
    #
    # @!attribute name
    #   <p>The compute type.</p>
    #
    #   Enum, one of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #
    #   @return [String]
    #
    ComputeType = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an Amazon Connect client add-in.</p>
    #
    # @!attribute add_in_id
    #   <p>The client add-in identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the client add in.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The endpoint URL of the client add-in.</p>
    #
    #   @return [String]
    #
    ConnectClientAddIn = ::Struct.new(
      :add_in_id,
      :resource_id,
      :name,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a connection alias. Connection aliases are used for cross-Region redirection.
    #          For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #
    # @!attribute connection_string
    #   <p>The connection string specified for the connection alias. The connection string must be
    #            in the form of a fully qualified domain name (FQDN), such as
    #            <code>www.example.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The current state of the connection alias.</p>
    #
    #   Enum, one of: ["CREATING", "CREATED", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute owner_account_id
    #   <p>The identifier of the Amazon Web Services account that owns the connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute associations
    #   <p>The association status of the connection alias.</p>
    #
    #   @return [Array<ConnectionAliasAssociation>]
    #
    ConnectionAlias = ::Struct.new(
      :connection_string,
      :alias_id,
      :state,
      :owner_account_id,
      :associations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a connection alias association that is used for cross-Region redirection. For
    #          more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #
    # @!attribute association_status
    #   <p>The association status of the connection alias.</p>
    #
    #   Enum, one of: ["NOT_ASSOCIATED", "ASSOCIATED_WITH_OWNER_ACCOUNT", "ASSOCIATED_WITH_SHARED_ACCOUNT", "PENDING_ASSOCIATION", "PENDING_DISASSOCIATION"]
    #
    #   @return [String]
    #
    # @!attribute associated_account_id
    #   <p>The identifier of the Amazon Web Services account that associated the connection alias
    #            with a directory.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the directory associated with a connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_identifier
    #   <p>The identifier of the connection alias association. You use the connection identifier in
    #            the DNS TXT record when you're configuring your DNS routing policies.</p>
    #
    #   @return [String]
    #
    ConnectionAliasAssociation = ::Struct.new(
      :association_status,
      :associated_account_id,
      :resource_id,
      :connection_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the permissions for a connection alias. Connection aliases are used for
    #          cross-Region redirection. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html"> Cross-Region
    #             Redirection for Amazon WorkSpaces</a>.</p>
    #
    # @!attribute shared_account_id
    #   <p>The identifier of the Amazon Web Services account that the connection alias is shared
    #            with.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_association
    #   <p>Indicates whether the specified Amazon Web Services account is allowed to associate the
    #            connection alias with a directory.</p>
    #
    #   @return [Boolean]
    #
    ConnectionAliasPermission = ::Struct.new(
      :shared_account_id,
      :allow_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConnectionAliasState
    #
    module ConnectionAliasState
      # No documentation available.
      #
      CREATING = "CREATING"

      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for ConnectionState
    #
    module ConnectionState
      # No documentation available.
      #
      CONNECTED = "CONNECTED"

      # No documentation available.
      #
      DISCONNECTED = "DISCONNECTED"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"
    end

    # @!attribute name
    #   <p>The name of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute source_image_id
    #   <p>The identifier of the source image.</p>
    #
    #   @return [String]
    #
    # @!attribute source_region
    #   <p>The identifier of the source Region.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the image.</p>
    #
    #   @return [Array<Tag>]
    #
    CopyWorkspaceImageInput = ::Struct.new(
      :name,
      :description,
      :source_image_id,
      :source_region,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    CopyWorkspaceImageOutput = ::Struct.new(
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier for which to configure the client add-in.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the client add-in.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    #
    #   @return [String]
    #
    CreateConnectClientAddInInput = ::Struct.new(
      :resource_id,
      :name,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute add_in_id
    #   <p>The client add-in identifier.</p>
    #
    #   @return [String]
    #
    CreateConnectClientAddInOutput = ::Struct.new(
      :add_in_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_string
    #   <p>A connection string in the form of a fully qualified domain name (FQDN), such as
    #               <code>www.example.com</code>.</p>
    #            <important>
    #               <p>After you create a connection string, it is always associated to your Amazon Web Services account. You cannot recreate the same connection string with a different
    #               account, even if you delete all instances of it from the original account. The
    #               connection string is globally reserved for your account.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to associate with the connection alias.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateConnectionAliasInput = ::Struct.new(
      :connection_string,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    #   @return [String]
    #
    CreateConnectionAliasOutput = ::Struct.new(
      :alias_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_desc
    #   <p>The description of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_rules
    #   <p>The rules to add to the group.</p>
    #
    #   @return [Array<IpRuleItem>]
    #
    # @!attribute tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateIpGroupInput = ::Struct.new(
      :group_name,
      :group_desc,
      :user_rules,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    CreateIpGroupOutput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateTagsInput = ::Struct.new(
      :resource_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the new updated WorkSpace image.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of whether updates for the WorkSpace image are available.</p>
    #
    #   @return [String]
    #
    # @!attribute source_image_id
    #   <p>The identifier of the source WorkSpace image.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags that you want to add to the new updated WorkSpace image.</p>
    #            <note>
    #               <p>To add tags at the same time when you're creating the updated image, you must create
    #               an IAM policy that grants your IAM user permissions to use
    #                  <code>workspaces:CreateTags</code>. </p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    CreateUpdatedWorkspaceImageInput = ::Struct.new(
      :name,
      :description,
      :source_image_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the new updated WorkSpace image.</p>
    #
    #   @return [String]
    #
    CreateUpdatedWorkspaceImageOutput = ::Struct.new(
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bundle_name
    #   <p>The name of the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute bundle_description
    #   <p>The description of the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The identifier of the image that is used to create the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute compute_type
    #   <p>Describes the compute type of the bundle.</p>
    #
    #   @return [ComputeType]
    #
    # @!attribute user_storage
    #   <p>Describes the user volume for a WorkSpace bundle.</p>
    #
    #   @return [UserStorage]
    #
    # @!attribute root_storage
    #   <p>Describes the root volume for a WorkSpace bundle.</p>
    #
    #   @return [RootStorage]
    #
    # @!attribute tags
    #   <p>The tags associated with the bundle.</p>
    #
    #            <note>
    #               <p>To add tags at the same time when you're creating the bundle, you must create an IAM policy that
    #               grants your IAM user permissions to use <code>workspaces:CreateTags</code>. </p>
    #            </note>
    #
    #   @return [Array<Tag>]
    #
    CreateWorkspaceBundleInput = ::Struct.new(
      :bundle_name,
      :bundle_description,
      :image_id,
      :compute_type,
      :user_storage,
      :root_storage,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_bundle
    #   <p>Describes a WorkSpace bundle.</p>
    #
    #   @return [WorkspaceBundle]
    #
    CreateWorkspaceBundleOutput = ::Struct.new(
      :workspace_bundle,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspaces
    #   <p>The WorkSpaces to create. You can specify up to 25 WorkSpaces.</p>
    #
    #   @return [Array<WorkspaceRequest>]
    #
    CreateWorkspacesInput = ::Struct.new(
      :workspaces,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be created.</p>
    #
    #   @return [Array<FailedCreateWorkspaceRequest>]
    #
    # @!attribute pending_requests
    #   <p>Information about the WorkSpaces that were created.</p>
    #            <p>Because this operation is asynchronous, the identifier returned is not immediately
    #            available for use with other operations. For example, if you call <a>DescribeWorkspaces</a> before the WorkSpace is created, the information returned
    #            can be incomplete.</p>
    #
    #   @return [Array<Workspace>]
    #
    CreateWorkspacesOutput = ::Struct.new(
      :failed_requests,
      :pending_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DedicatedTenancyModificationStateEnum
    #
    module DedicatedTenancyModificationStateEnum
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for DedicatedTenancySupportEnum
    #
    module DedicatedTenancySupportEnum
      # No documentation available.
      #
      ENABLED = "ENABLED"
    end

    # Includes enum constants for DedicatedTenancySupportResultEnum
    #
    module DedicatedTenancySupportResultEnum
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Returns default client branding attributes that were imported. These attributes display
    #          on the client login screen.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure that you don't include sensitive
    #             information.</p>
    #          </important>
    #
    # @!attribute logo_url
    #   <p>The logo URL. This is the link where users can download the logo image. The only
    #            supported image format is <code>.png</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive.You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #               <code>en_US</code>. </p>
    #
    #   @return [Hash<String, String>]
    #
    DefaultClientBrandingAttributes = ::Struct.new(
      :logo_url,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The default client branding attributes to be imported. These attributes display on the
    #          client login screen.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure that you do not include
    #             sensitive information.</p>
    #          </important>
    #
    # @!attribute logo
    #   <p>The logo. This is the link where users can download the logo image. The only image
    #            format accepted is <code>.png</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #               <code>en_US</code>. </p>
    #
    #   @return [Hash<String, String>]
    #
    DefaultImportClientBrandingAttributes = ::Struct.new(
      :logo,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the default values that are used to create WorkSpaces. For more information,
    #          see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html">Update Directory
    #             Details for Your WorkSpaces</a>.</p>
    #
    # @!attribute enable_work_docs
    #   <p>Specifies whether the directory is enabled for Amazon WorkDocs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_internet_access
    #   <p>Specifies whether to automatically assign an Elastic public IP address to WorkSpaces in
    #            this directory by default. If enabled, the Elastic public IP address allows outbound
    #            internet access from your WorkSpaces when you’re using an internet gateway in the Amazon
    #            VPC in which your WorkSpaces are located. If you're using a Network Address Translation
    #            (NAT) gateway for outbound internet access from your VPC, or if your WorkSpaces are in
    #            public subnets and you manually assign them Elastic IP addresses, you should disable this
    #            setting. This setting applies to new WorkSpaces that you launch or to existing WorkSpaces
    #            that you rebuild. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html"> Configure a VPC for
    #               Amazon WorkSpaces</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_ou
    #   <p>The organizational unit (OU) in the directory for the WorkSpace machine accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute custom_security_group_id
    #   <p>The identifier of the default security group to apply to WorkSpaces when they are
    #            created. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-security-groups.html"> Security
    #               Groups for Your WorkSpaces</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute user_enabled_as_local_administrator
    #   <p>Specifies whether WorkSpace users are local administrators on their WorkSpaces.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_maintenance_mode
    #   <p>Specifies whether maintenance mode is enabled for WorkSpaces. For more information, see
    #               <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html">WorkSpace
    #               Maintenance</a>.</p>
    #
    #   @return [Boolean]
    #
    DefaultWorkspaceCreationProperties = ::Struct.new(
      :enable_work_docs,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator,
      :enable_maintenance_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to delete client
    #            branding.</p>
    #
    #   @return [String]
    #
    # @!attribute platforms
    #   <p>The device type for which you want to delete client branding.</p>
    #
    #   @return [Array<String>]
    #
    DeleteClientBrandingInput = ::Struct.new(
      :resource_id,
      :platforms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteClientBrandingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute add_in_id
    #   <p>The identifier of the client add-in to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    #   @return [String]
    #
    DeleteConnectClientAddInInput = ::Struct.new(
      :add_in_id,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConnectClientAddInOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias to delete.</p>
    #
    #   @return [String]
    #
    DeleteConnectionAliasInput = ::Struct.new(
      :alias_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConnectionAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the IP access control group.</p>
    #
    #   @return [String]
    #
    DeleteIpGroupInput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteIpGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #
    #   @return [Array<String>]
    #
    DeleteTagsInput = ::Struct.new(
      :resource_id,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteTagsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #
    #   @return [String]
    #
    DeleteWorkspaceBundleInput = ::Struct.new(
      :bundle_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkspaceBundleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    DeleteWorkspaceImageInput = ::Struct.new(
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkspaceImageOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory. If any WorkSpaces are registered to this directory, you
    #            must remove them before you deregister the directory, or you will receive an
    #            OperationNotSupportedException error.</p>
    #
    #   @return [String]
    #
    DeregisterWorkspaceDirectoryInput = ::Struct.new(
      :directory_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterWorkspaceDirectoryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeAccountModificationsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_modifications
    #   <p>The list of modifications to the configuration of BYOL.</p>
    #
    #   @return [Array<AccountModification>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeAccountModificationsOutput = ::Struct.new(
      :account_modifications,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute dedicated_tenancy_support
    #   <p>The status of BYOL (whether BYOL is enabled or disabled).</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, used for the management network
    #            interface.</p>
    #            <p>The management network interface is connected to a secure Amazon WorkSpaces management
    #            network. It is used for interactive streaming of the WorkSpace desktop to Amazon WorkSpaces
    #            clients, and to allow Amazon WorkSpaces to manage the WorkSpace.</p>
    #
    #   @return [String]
    #
    DescribeAccountOutput = ::Struct.new(
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to view client branding
    #            information.</p>
    #
    #   @return [String]
    #
    DescribeClientBrandingInput = ::Struct.new(
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_type_windows
    #   <p>The branding information for Windows devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_osx
    #   <p>The branding information for macOS devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_android
    #   <p>The branding information for Android devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_ios
    #   <p>The branding information for iOS devices.</p>
    #
    #   @return [IosClientBrandingAttributes]
    #
    # @!attribute device_type_linux
    #   <p>The branding information for Linux devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_web
    #   <p>The branding information for Web access.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    DescribeClientBrandingOutput = ::Struct.new(
      :device_type_windows,
      :device_type_osx,
      :device_type_android,
      :device_type_ios,
      :device_type_linux,
      :device_type_web,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_ids
    #   <p>The resource identifier, in the form of directory IDs.</p>
    #
    #   @return [Array<String>]
    #
    DescribeClientPropertiesInput = ::Struct.new(
      :resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_properties_list
    #   <p>Information about the specified Amazon WorkSpaces clients.</p>
    #
    #   @return [Array<ClientPropertiesResult>]
    #
    DescribeClientPropertiesOutput = ::Struct.new(
      :client_properties_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    DescribeConnectClientAddInsInput = ::Struct.new(
      :resource_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute add_ins
    #   <p>Information about client add-ins.</p>
    #
    #   @return [Array<ConnectClientAddIn>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeConnectClientAddInsOutput = ::Struct.new(
      :add_ins,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    DescribeConnectionAliasPermissionsInput = ::Struct.new(
      :alias_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_alias_permissions
    #   <p>The permissions associated with a connection alias.</p>
    #
    #   @return [Array<ConnectionAliasPermission>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeConnectionAliasPermissionsOutput = ::Struct.new(
      :alias_id,
      :connection_alias_permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_ids
    #   <p>The identifiers of the connection aliases to describe.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_id
    #   <p>The identifier of the directory associated with the connection alias.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of connection aliases to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results. </p>
    #
    #   @return [String]
    #
    DescribeConnectionAliasesInput = ::Struct.new(
      :alias_ids,
      :resource_id,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute connection_aliases
    #   <p>Information about the specified connection aliases.</p>
    #
    #   @return [Array<ConnectionAlias>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeConnectionAliasesOutput = ::Struct.new(
      :connection_aliases,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    DescribeIpGroupsInput = ::Struct.new(
      :group_ids,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute result
    #   <p>Information about the IP access control groups.</p>
    #
    #   @return [Array<WorkspacesIpGroup>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeIpGroupsOutput = ::Struct.new(
      :result,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the WorkSpaces resource. The supported resource types are WorkSpaces,
    #            registered directories, images, custom bundles, IP access control groups, and connection
    #            aliases.</p>
    #
    #   @return [String]
    #
    DescribeTagsInput = ::Struct.new(
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tag_list
    #   <p>The tags.</p>
    #
    #   @return [Array<Tag>]
    #
    DescribeTagsOutput = ::Struct.new(
      :tag_list,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bundle_ids
    #   <p>The identifiers of the bundles. You cannot combine this parameter with any other filter.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute owner
    #   <p>The owner of the bundles. You cannot combine this parameter with any other filter.</p>
    #            <p>To describe the bundles provided by Amazon Web Services, specify <code>AMAZON</code>.
    #            To describe the bundles that belong to your account, don't specify a value.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. (You received this token from a previous call.)</p>
    #
    #   @return [String]
    #
    DescribeWorkspaceBundlesInput = ::Struct.new(
      :bundle_ids,
      :owner,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bundles
    #   <p>Information about the bundles.</p>
    #
    #   @return [Array<WorkspaceBundle>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are no more
    #            results to return. This token is valid for one day and must be used within that time
    #            frame.</p>
    #
    #   @return [String]
    #
    DescribeWorkspaceBundlesOutput = ::Struct.new(
      :bundles,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_ids
    #   <p>The identifiers of the directories. If the value is null, all directories are
    #            retrieved.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute limit
    #   <p>The maximum number of directories to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeWorkspaceDirectoriesInput = ::Struct.new(
      :directory_ids,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directories
    #   <p>Information about the directories.</p>
    #
    #   @return [Array<WorkspaceDirectory>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeWorkspaceDirectoriesOutput = ::Struct.new(
      :directories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    DescribeWorkspaceImagePermissionsInput = ::Struct.new(
      :image_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_permissions
    #   <p>The identifiers of the Amazon Web Services accounts that the image has been shared
    #            with.</p>
    #
    #   @return [Array<ImagePermission>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeWorkspaceImagePermissionsOutput = ::Struct.new(
      :image_id,
      :image_permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_ids
    #   <p>The identifier of the image.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_type
    #   <p>The type (owned or shared) of the image.</p>
    #
    #   Enum, one of: ["OWNED", "SHARED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    DescribeWorkspaceImagesInput = ::Struct.new(
      :image_ids,
      :image_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute images
    #   <p>Information about the images.</p>
    #
    #   @return [Array<WorkspaceImage>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeWorkspaceImagesOutput = ::Struct.new(
      :images,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    DescribeWorkspaceSnapshotsInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rebuild_snapshots
    #   <p>Information about the snapshots that can be used to rebuild a WorkSpace. These snapshots
    #            include the user volume.</p>
    #
    #   @return [Array<Snapshot>]
    #
    # @!attribute restore_snapshots
    #   <p>Information about the snapshots that can be used to restore a WorkSpace. These snapshots
    #            include both the root volume and the user volume.</p>
    #
    #   @return [Array<Snapshot>]
    #
    DescribeWorkspaceSnapshotsOutput = ::Struct.new(
      :rebuild_snapshots,
      :restore_snapshots,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_ids
    #   <p>The identifiers of the WorkSpaces. You can specify up to 25 WorkSpaces.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeWorkspacesConnectionStatusInput = ::Struct.new(
      :workspace_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspaces_connection_status
    #   <p>Information about the connection status of the WorkSpace.</p>
    #
    #   @return [Array<WorkspaceConnectionStatus>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeWorkspacesConnectionStatusOutput = ::Struct.new(
      :workspaces_connection_status,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_ids
    #   <p>The identifiers of the WorkSpaces. You cannot combine this parameter with any other
    #            filter.</p>
    #            <p>Because the <a>CreateWorkspaces</a> operation is asynchronous, the identifier
    #            it returns is not immediately available. If you immediately call <a>DescribeWorkspaces</a> with this identifier, no information is returned.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute directory_id
    #   <p>The identifier of the directory. In addition, you can optionally specify a specific
    #            directory user (see <code>UserName</code>). You cannot combine this parameter with any
    #            other filter.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The name of the directory user. You must specify this parameter with
    #               <code>DirectoryId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute bundle_id
    #   <p>The identifier of the bundle. All WorkSpaces that are created from this bundle are
    #            retrieved. You cannot combine this parameter with any other filter.</p>
    #
    #   @return [String]
    #
    # @!attribute limit
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    DescribeWorkspacesInput = ::Struct.new(
      :workspace_ids,
      :directory_id,
      :user_name,
      :bundle_id,
      :limit,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspaces
    #   <p>Information about the WorkSpaces.</p>
    #            <p>Because <a>CreateWorkspaces</a> is an asynchronous operation, some of the
    #            returned information could be incomplete.</p>
    #
    #   @return [Array<Workspace>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    DescribeWorkspacesOutput = ::Struct.new(
      :workspaces,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias to disassociate.</p>
    #
    #   @return [String]
    #
    DisassociateConnectionAliasInput = ::Struct.new(
      :alias_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateConnectionAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute group_ids
    #   <p>The identifiers of one or more IP access control groups.</p>
    #
    #   @return [Array<String>]
    #
    DisassociateIpGroupsInput = ::Struct.new(
      :directory_id,
      :group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateIpGroupsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a WorkSpace that cannot be created.</p>
    #
    # @!attribute workspace_request
    #   <p>Information about the WorkSpace.</p>
    #
    #   @return [WorkspaceRequest]
    #
    # @!attribute error_code
    #   <p>The error code that is returned if the WorkSpace cannot be created.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the WorkSpace cannot be
    #            created.</p>
    #
    #   @return [String]
    #
    FailedCreateWorkspaceRequest = ::Struct.new(
      :workspace_request,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a WorkSpace that could not be rebooted. (<a>RebootWorkspaces</a>),
    #          rebuilt (<a>RebuildWorkspaces</a>), restored (<a>RestoreWorkspace</a>), terminated (<a>TerminateWorkspaces</a>), started (<a>StartWorkspaces</a>), or stopped (<a>StopWorkspaces</a>).</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that is returned if the WorkSpace cannot be rebooted.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the WorkSpace cannot be
    #            rebooted.</p>
    #
    #   @return [String]
    #
    FailedWorkspaceChangeRequest = ::Struct.new(
      :workspace_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the Amazon Web Services accounts that have been granted permission to use a
    #          shared image. For more information about sharing images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html"> Share or Unshare a Custom
    #             WorkSpaces Image</a>.</p>
    #
    # @!attribute shared_account_id
    #   <p>The identifier of the Amazon Web Services account that an image has been shared
    #            with.</p>
    #
    #   @return [String]
    #
    ImagePermission = ::Struct.new(
      :shared_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImageType
    #
    module ImageType
      # No documentation available.
      #
      OWNED = "OWNED"

      # No documentation available.
      #
      SHARED = "SHARED"
    end

    # @!attribute resource_id
    #   <p>The directory identifier of the WorkSpace for which you want to import client
    #            branding.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type_windows
    #   <p>The branding information to import for Windows devices.</p>
    #
    #   @return [DefaultImportClientBrandingAttributes]
    #
    # @!attribute device_type_osx
    #   <p>The branding information to import for macOS devices.</p>
    #
    #   @return [DefaultImportClientBrandingAttributes]
    #
    # @!attribute device_type_android
    #   <p>The branding information to import for Android devices.</p>
    #
    #   @return [DefaultImportClientBrandingAttributes]
    #
    # @!attribute device_type_ios
    #   <p>The branding information to import for iOS devices.</p>
    #
    #   @return [IosImportClientBrandingAttributes]
    #
    # @!attribute device_type_linux
    #   <p>The branding information to import for Linux devices.</p>
    #
    #   @return [DefaultImportClientBrandingAttributes]
    #
    # @!attribute device_type_web
    #   <p>The branding information to import for web access.</p>
    #
    #   @return [DefaultImportClientBrandingAttributes]
    #
    ImportClientBrandingInput = ::Struct.new(
      :resource_id,
      :device_type_windows,
      :device_type_osx,
      :device_type_android,
      :device_type_ios,
      :device_type_linux,
      :device_type_web,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute device_type_windows
    #   <p>The branding information configured for Windows devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_osx
    #   <p>The branding information configured for macOS devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_android
    #   <p>The branding information configured for Android devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_ios
    #   <p>The branding information configured for iOS devices.</p>
    #
    #   @return [IosClientBrandingAttributes]
    #
    # @!attribute device_type_linux
    #   <p>The branding information configured for Linux devices.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    # @!attribute device_type_web
    #   <p>The branding information configured for web access.</p>
    #
    #   @return [DefaultClientBrandingAttributes]
    #
    ImportClientBrandingOutput = ::Struct.new(
      :device_type_windows,
      :device_type_osx,
      :device_type_android,
      :device_type_ios,
      :device_type_linux,
      :device_type_web,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ec2_image_id
    #   <p>The identifier of the EC2 image.</p>
    #
    #   @return [String]
    #
    # @!attribute ingestion_process
    #   <p>The ingestion process to be used when importing the image, depending on which protocol
    #            you want to use for your BYOL Workspace image, either PCoIP or WorkSpaces Streaming Protocol
    #            (WSP). To use WSP, specify a value that ends in <code>_WSP</code>. To use PCoIP, specify a value
    #            that does not end in <code>_WSP</code>. </p>
    #
    #            <p>For non-GPU-enabled images (bundles other than Graphics.g4dn, GraphicsPro.g4dn, Graphics,
    #            or GraphicsPro), specify <code>BYOL_REGULAR</code> or <code>BYOL_REGULAR_WSP</code>, depending
    #            on the protocol.</p>
    #            <note>
    #               <p>Use <code>BYOL_GRAPHICS_G4DN</code> ingestion for both Graphics.g4dn and
    #               GraphicsPro.g4dn.</p>
    #            </note>
    #
    #   Enum, one of: ["BYOL_REGULAR", "BYOL_GRAPHICS", "BYOL_GRAPHICSPRO", "BYOL_GRAPHICS_G4DN", "BYOL_REGULAR_WSP"]
    #
    #   @return [String]
    #
    # @!attribute image_name
    #   <p>The name of the WorkSpace image.</p>
    #
    #   @return [String]
    #
    # @!attribute image_description
    #   <p>The description of the WorkSpace image.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags. Each WorkSpaces resource can have a maximum of 50 tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute applications
    #   <p>If specified, the version of Microsoft Office to subscribe to. Valid only for Windows 10
    #            BYOL images. For more information about subscribing to Office for BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html"> Bring
    #               Your Own Windows Desktop Licenses</a>.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>Although this parameter is an array, only one item is allowed at this time</p>
    #                  </li>
    #                  <li>
    #                     <p>Microsoft Office 2016 application subscription through AWS is currently not supported
    #                     for Graphics.g4dn Bring Your Own License (BYOL) images</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [Array<String>]
    #
    ImportWorkspaceImageInput = ::Struct.new(
      :ec2_image_id,
      :ingestion_process,
      :image_name,
      :image_description,
      :tags,
      :applications,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the WorkSpace image.</p>
    #
    #   @return [String]
    #
    ImportWorkspaceImageOutput = ::Struct.new(
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more parameter values are not valid.</p>
    #
    # @!attribute message
    #   <p>The exception error message.</p>
    #
    #   @return [String]
    #
    InvalidParameterValuesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state of the resource is not valid for this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourceStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client branding attributes for iOS device types. These attributes are displayed on
    #          the iOS client login screen only.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure you do not include sensitive
    #             information.</p>
    #          </important>
    #
    # @!attribute logo_url
    #   <p>The logo. This is the link where users can download the logo image. This is the
    #            standard-resolution display that has a 1:1 pixel density (or @1x), where one pixel is equal
    #            to one point.</p>
    #
    #   @return [String]
    #
    # @!attribute logo2x_url
    #   <p>The @2x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 2.0 (or @2x).</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute logo3x_url
    #   <p>The @3x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 3.0 (or @3x).</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #               <code>en_US</code>. </p>
    #
    #   @return [Hash<String, String>]
    #
    IosClientBrandingAttributes = ::Struct.new(
      :logo_url,
      :logo2x_url,
      :logo3x_url,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client branding attributes to import for iOS device types. These attributes are
    #          displayed on the iOS client login screen.</p>
    #          <important>
    #             <p>Client branding attributes are public facing. Ensure you do not include sensitive
    #             information.</p>
    #          </important>
    #
    # @!attribute logo
    #   <p>The logo. This is the link where users can download the logo image. This is the
    #            standard-resolution display that has a 1:1 pixel density (or @1x), where one pixel is equal
    #            to one point.</p>
    #
    #   @return [String]
    #
    # @!attribute logo2x
    #   <p>The @2x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 2.0 (or @2x).</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute logo3x
    #   <p>The @3x version of the logo. This is the higher resolution display that offers a scale
    #            factor of 3.0 (or @3x).</p>
    #            <note>
    #               <p> For more information about iOS image size and resolution, see <a href="https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/">Image Size and Resolution </a> in the <i>Apple Human Interface
    #                  Guidelines</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute support_email
    #   <p>The support email. The company's customer support email address.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default email is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute support_link
    #   <p>The support link. The link for the company's customer support page for their
    #            WorkSpace.</p>
    #            <note>
    #               <ul>
    #                  <li>
    #                     <p>In each platform type, the <code>SupportEmail</code> and
    #                        <code>SupportLink</code> parameters are mutually exclusive. You can specify one
    #                     parameter for each platform type, but not both.</p>
    #                  </li>
    #                  <li>
    #                     <p>The default support link is <code>workspaces-feedback@amazon.com</code>.</p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute forgot_password_link
    #   <p>The forgotten password link. This is the web address that users can go to if they forget
    #            the password for their WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute login_message
    #   <p>The login message. Specified as a key value pair, in which the key is a locale and the
    #            value is the localized message for that locale. The only key supported is
    #               <code>en_US</code>. </p>
    #
    #   @return [Hash<String, String>]
    #
    IosImportClientBrandingAttributes = ::Struct.new(
      :logo,
      :logo2x,
      :logo3x,
      :support_email,
      :support_link,
      :forgot_password_link,
      :login_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a rule for an IP access control group.</p>
    #
    # @!attribute ip_rule
    #   <p>The IP address range, in CIDR notation.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_desc
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    IpRuleItem = ::Struct.new(
      :ip_rule,
      :rule_desc,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute management_cidr_range_constraint
    #   <p>The IP address range to search. Specify an IP address range that is compatible with your
    #            network and in CIDR notation (that is, specify the range as an IPv4 CIDR block).</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If you received a <code>NextToken</code> from a previous call that was paginated,
    #            provide this token to receive the next set of results.</p>
    #
    #   @return [String]
    #
    ListAvailableManagementCidrRangesInput = ::Struct.new(
      :management_cidr_range_constraint,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute management_cidr_ranges
    #   <p>The list of available IP address ranges, specified as IPv4 CIDR blocks.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is null when there are
    #            no more results to return. </p>
    #
    #   @return [String]
    #
    ListAvailableManagementCidrRangesOutput = ::Struct.new(
      :management_cidr_ranges,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_workspace_id
    #   <p>The identifier of the WorkSpace to migrate from.</p>
    #
    #   @return [String]
    #
    # @!attribute bundle_id
    #   <p>The identifier of the target bundle type to migrate the WorkSpace to.</p>
    #
    #   @return [String]
    #
    MigrateWorkspaceInput = ::Struct.new(
      :source_workspace_id,
      :bundle_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_workspace_id
    #   <p>The original identifier of the WorkSpace that is being migrated.</p>
    #
    #   @return [String]
    #
    # @!attribute target_workspace_id
    #   <p>The new identifier of the WorkSpace that is being migrated. If the migration does not
    #            succeed, the target WorkSpace ID will not be used, and the WorkSpace will still have the
    #            original WorkSpace ID.</p>
    #
    #   @return [String]
    #
    MigrateWorkspaceOutput = ::Struct.new(
      :source_workspace_id,
      :target_workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModificationResourceEnum
    #
    module ModificationResourceEnum
      # No documentation available.
      #
      ROOT_VOLUME = "ROOT_VOLUME"

      # No documentation available.
      #
      USER_VOLUME = "USER_VOLUME"

      # No documentation available.
      #
      COMPUTE_TYPE = "COMPUTE_TYPE"
    end

    # <p>Describes a WorkSpace modification.</p>
    #
    # @!attribute resource
    #   <p>The resource.</p>
    #
    #   Enum, one of: ["ROOT_VOLUME", "USER_VOLUME", "COMPUTE_TYPE"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The modification state.</p>
    #
    #   Enum, one of: ["UPDATE_INITIATED", "UPDATE_IN_PROGRESS"]
    #
    #   @return [String]
    #
    ModificationState = ::Struct.new(
      :resource,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ModificationStateEnum
    #
    module ModificationStateEnum
      # No documentation available.
      #
      UPDATE_INITIATED = "UPDATE_INITIATED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"
    end

    # @!attribute dedicated_tenancy_support
    #   <p>The status of BYOL.</p>
    #
    #   Enum, one of: ["ENABLED"]
    #
    #   @return [String]
    #
    # @!attribute dedicated_tenancy_management_cidr_range
    #   <p>The IP address range, specified as an IPv4 CIDR block, for the management network
    #            interface. Specify an IP address range that is compatible with your network and in CIDR
    #            notation (that is, specify the range as an IPv4 CIDR block). The CIDR block size must be
    #            /16 (for example, 203.0.113.25/16). It must also be specified as available by the
    #               <code>ListAvailableManagementCidrRanges</code> operation.</p>
    #
    #   @return [String]
    #
    ModifyAccountInput = ::Struct.new(
      :dedicated_tenancy_support,
      :dedicated_tenancy_management_cidr_range,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The resource identifiers, in the form of directory IDs.</p>
    #
    #   @return [String]
    #
    # @!attribute client_properties
    #   <p>Information about the Amazon WorkSpaces client.</p>
    #
    #   @return [ClientProperties]
    #
    ModifyClientPropertiesInput = ::Struct.new(
      :resource_id,
      :client_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyClientPropertiesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute selfservice_permissions
    #   <p>The permissions to enable or disable self-service capabilities.</p>
    #
    #   @return [SelfservicePermissions]
    #
    ModifySelfservicePermissionsInput = ::Struct.new(
      :resource_id,
      :selfservice_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifySelfservicePermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_access_properties
    #   <p>The device types and operating systems to enable or disable for access.</p>
    #
    #   @return [WorkspaceAccessProperties]
    #
    ModifyWorkspaceAccessPropertiesInput = ::Struct.new(
      :resource_id,
      :workspace_access_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyWorkspaceAccessPropertiesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_creation_properties
    #   <p>The default properties for creating WorkSpaces.</p>
    #
    #   @return [WorkspaceCreationProperties]
    #
    ModifyWorkspaceCreationPropertiesInput = ::Struct.new(
      :resource_id,
      :workspace_creation_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyWorkspaceCreationPropertiesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_properties
    #   <p>The properties of the WorkSpace.</p>
    #
    #   @return [WorkspaceProperties]
    #
    ModifyWorkspacePropertiesInput = ::Struct.new(
      :workspace_id,
      :workspace_properties,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyWorkspacePropertiesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_state
    #   <p>The WorkSpace state.</p>
    #
    #   Enum, one of: ["AVAILABLE", "ADMIN_MAINTENANCE"]
    #
    #   @return [String]
    #
    ModifyWorkspaceStateInput = ::Struct.new(
      :workspace_id,
      :workspace_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ModifyWorkspaceStateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operating system that the image is running.</p>
    #
    # @!attribute type
    #   <p>The operating system.</p>
    #
    #   Enum, one of: ["WINDOWS", "LINUX"]
    #
    #   @return [String]
    #
    OperatingSystem = ::Struct.new(
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperatingSystemType
    #
    module OperatingSystemType
      # No documentation available.
      #
      WINDOWS = "WINDOWS"

      # No documentation available.
      #
      LINUX = "LINUX"
    end

    # <p>The properties of this WorkSpace are currently being modified. Try again in a moment.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This operation is not supported.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the information used to reboot a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    RebootRequest = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reboot_workspace_requests
    #   <p>The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.</p>
    #
    #   @return [Array<RebootRequest>]
    #
    RebootWorkspacesInput = ::Struct.new(
      :reboot_workspace_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be rebooted.</p>
    #
    #   @return [Array<FailedWorkspaceChangeRequest>]
    #
    RebootWorkspacesOutput = ::Struct.new(
      :failed_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the information used to rebuild a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    RebuildRequest = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rebuild_workspace_requests
    #   <p>The WorkSpace to rebuild. You can specify a single WorkSpace.</p>
    #
    #   @return [Array<RebuildRequest>]
    #
    RebuildWorkspacesInput = ::Struct.new(
      :rebuild_workspace_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpace that could not be rebuilt.</p>
    #
    #   @return [Array<FailedWorkspaceChangeRequest>]
    #
    RebuildWorkspacesOutput = ::Struct.new(
      :failed_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReconnectEnum
    #
    module ReconnectEnum
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # @!attribute directory_id
    #   <p>The identifier of the directory. You cannot register a directory if it does not have a
    #            status of Active. If the directory does not have a status of Active, you will receive an
    #            InvalidResourceStateException error. If you have already registered the maximum number of
    #            directories that you can register with Amazon WorkSpaces, you will receive a
    #            ResourceLimitExceededException error. Deregister directories that you are not using for
    #            WorkSpaces, and try again.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets for your virtual private cloud (VPC). Make sure that the
    #            subnets are in supported Availability Zones. The subnets must also be in separate
    #            Availability Zones. If these conditions are not met, you will receive an
    #            OperationNotSupportedException error.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute enable_work_docs
    #   <p>Indicates whether Amazon WorkDocs is enabled or disabled. If you have enabled this
    #            parameter and WorkDocs is not available in the Region, you will receive an
    #            OperationNotSupportedException error. Set <code>EnableWorkDocs</code> to disabled, and try
    #            again.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_self_service
    #   <p>Indicates whether self-service capabilities are enabled or disabled.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute tenancy
    #   <p>Indicates whether your WorkSpace directory is dedicated or shared. To use Bring Your Own
    #            License (BYOL) images, this value must be set to <code>DEDICATED</code> and your Amazon Web Services account must be enabled for BYOL. If your account has not been enabled for
    #            BYOL, you will receive an InvalidParameterValuesException error. For more information about
    #            BYOL images, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring Your Own Windows
    #               Desktop Images</a>.</p>
    #
    #   Enum, one of: ["DEDICATED", "SHARED"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags associated with the directory.</p>
    #
    #   @return [Array<Tag>]
    #
    RegisterWorkspaceDirectoryInput = ::Struct.new(
      :directory_id,
      :subnet_ids,
      :enable_work_docs,
      :enable_self_service,
      :tenancy,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterWorkspaceDirectoryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource is associated with a directory.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceAssociatedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource could not be created.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceCreationFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your resource limits have been exceeded.</p>
    #
    # @!attribute message
    #   <p>The exception error message.</p>
    #
    #   @return [String]
    #
    ResourceLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource could not be found.</p>
    #
    # @!attribute message
    #   <p>The resource could not be found.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that could not be found.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource is not available.</p>
    #
    # @!attribute message
    #   <p>The exception error message.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource that is not available.</p>
    #
    #   @return [String]
    #
    ResourceUnavailableException = ::Struct.new(
      :message,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    RestoreWorkspaceInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RestoreWorkspaceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_rules
    #   <p>The rules to remove from the group.</p>
    #
    #   @return [Array<String>]
    #
    RevokeIpRulesInput = ::Struct.new(
      :group_id,
      :user_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RevokeIpRulesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the root volume for a WorkSpace bundle.</p>
    #
    # @!attribute capacity
    #   <p>The size of the root volume.</p>
    #
    #   @return [String]
    #
    RootStorage = ::Struct.new(
      :capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RunningMode
    #
    module RunningMode
      # No documentation available.
      #
      AUTO_STOP = "AUTO_STOP"

      # No documentation available.
      #
      ALWAYS_ON = "ALWAYS_ON"
    end

    # <p>Describes the self-service permissions for a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html">Enable Self-Service WorkSpace Management Capabilities for Your Users</a>.</p>
    #
    # @!attribute restart_workspace
    #   <p>Specifies whether users can restart their WorkSpace.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute increase_volume_size
    #   <p>Specifies whether users can increase the volume size of the drives on their
    #            WorkSpace.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute change_compute_type
    #   <p>Specifies whether users can change the compute type (bundle) for their WorkSpace.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute switch_running_mode
    #   <p>Specifies whether users can switch the running mode of their WorkSpace.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute rebuild_workspace
    #   <p>Specifies whether users can rebuild the operating system of a WorkSpace to its original
    #            state.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    SelfservicePermissions = ::Struct.new(
      :restart_workspace,
      :increase_volume_size,
      :change_compute_type,
      :switch_running_mode,
      :rebuild_workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a snapshot.</p>
    #
    # @!attribute snapshot_time
    #   <p>The time when the snapshot was created.</p>
    #
    #   @return [Time]
    #
    Snapshot = ::Struct.new(
      :snapshot_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information used to start a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    StartRequest = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute start_workspace_requests
    #   <p>The WorkSpaces to start. You can specify up to 25 WorkSpaces.</p>
    #
    #   @return [Array<StartRequest>]
    #
    StartWorkspacesInput = ::Struct.new(
      :start_workspace_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be started.</p>
    #
    #   @return [Array<FailedWorkspaceChangeRequest>]
    #
    StartWorkspacesOutput = ::Struct.new(
      :failed_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the information used to stop a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    StopRequest = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stop_workspace_requests
    #   <p>The WorkSpaces to stop. You can specify up to 25 WorkSpaces.</p>
    #
    #   @return [Array<StopRequest>]
    #
    StopWorkspacesInput = ::Struct.new(
      :stop_workspace_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be stopped.</p>
    #
    #   @return [Array<FailedWorkspaceChangeRequest>]
    #
    StopWorkspacesOutput = ::Struct.new(
      :failed_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetWorkspaceState
    #
    module TargetWorkspaceState
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      ADMIN_MAINTENANCE = "ADMIN_MAINTENANCE"
    end

    # Includes enum constants for Tenancy
    #
    module Tenancy
      # No documentation available.
      #
      DEDICATED = "DEDICATED"

      # No documentation available.
      #
      SHARED = "SHARED"
    end

    # <p>Describes the information used to terminate a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    TerminateRequest = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute terminate_workspace_requests
    #   <p>The WorkSpaces to terminate. You can specify up to 25 WorkSpaces.</p>
    #
    #   @return [Array<TerminateRequest>]
    #
    TerminateWorkspacesInput = ::Struct.new(
      :terminate_workspace_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_requests
    #   <p>Information about the WorkSpaces that could not be terminated.</p>
    #
    #   @return [Array<FailedWorkspaceChangeRequest>]
    #
    TerminateWorkspacesOutput = ::Struct.new(
      :failed_requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of this network is not supported for this operation, or your network configuration
    #          conflicts with the Amazon WorkSpaces management network IP range. For more information, see
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/amazon-workspaces-vpc.html">
    #             Configure a VPC for Amazon WorkSpaces</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedNetworkConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration of this WorkSpace is not supported for this operation. For more information, see
    #          <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/required-service-components.html">Required
    #             Configuration and Service Components for WorkSpaces </a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedWorkspaceConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute add_in_id
    #   <p>The identifier of the client add-in to update.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The directory identifier for which the client add-in is configured.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the client add-in.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The endpoint URL of the Amazon Connect client add-in.</p>
    #
    #   @return [String]
    #
    UpdateConnectClientAddInInput = ::Struct.new(
      :add_in_id,
      :resource_id,
      :name,
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateConnectClientAddInOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute alias_id
    #   <p>The identifier of the connection alias that you want to update permissions for.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_alias_permission
    #   <p>Indicates whether to share or unshare the connection alias with the specified Amazon Web Services account.</p>
    #
    #   @return [ConnectionAliasPermission]
    #
    UpdateConnectionAliasPermissionInput = ::Struct.new(
      :alias_id,
      :connection_alias_permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateConnectionAliasPermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether a WorkSpace image needs to be updated with the latest drivers and
    #          other components required by Amazon WorkSpaces.</p>
    #          <note>
    #             <p>Only Windows 10 WorkSpace images can be programmatically updated at this time.</p>
    #          </note>
    #
    # @!attribute update_available
    #   <p>Indicates whether updated drivers or other components are available for the specified
    #            WorkSpace image.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>A description of whether updates for the WorkSpace image are pending or
    #            available.</p>
    #
    #   @return [String]
    #
    UpdateResult = ::Struct.new(
      :update_available,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_rules
    #   <p>One or more rules.</p>
    #
    #   @return [Array<IpRuleItem>]
    #
    UpdateRulesOfIpGroupInput = ::Struct.new(
      :group_id,
      :user_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRulesOfIpGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    UpdateWorkspaceBundleInput = ::Struct.new(
      :bundle_id,
      :image_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateWorkspaceBundleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_copy_image
    #   <p>The permission to copy the image. This permission can be revoked only after an image has
    #            been shared.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute shared_account_id
    #   <p>The identifier of the Amazon Web Services account to share or unshare the image
    #            with.</p>
    #            <important>
    #               <p>Before sharing the image, confirm that you are sharing to the correct Amazon Web Services account ID.</p>
    #            </important>
    #
    #   @return [String]
    #
    UpdateWorkspaceImagePermissionInput = ::Struct.new(
      :image_id,
      :allow_copy_image,
      :shared_account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateWorkspaceImagePermissionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the user volume for a WorkSpace bundle.</p>
    #
    # @!attribute capacity
    #   <p>The size of the user volume.</p>
    #
    #   @return [String]
    #
    UserStorage = ::Struct.new(
      :capacity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_id
    #   <p>The identifier of the Directory Service directory for the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The user for the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IP address of the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The operational state of the WorkSpace.</p>
    #            <note>
    #               <p>After a WorkSpace is terminated, the <code>TERMINATED</code> state is returned only
    #               briefly before the WorkSpace directory metadata is cleaned up, so this state is rarely
    #               returned. To confirm that a WorkSpace is terminated, check for the WorkSpace ID by using
    #                  <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html">
    #                  DescribeWorkSpaces</a>. If the WorkSpace ID isn't returned, then the WorkSpace
    #               has been successfully terminated.</p>
    #            </note>
    #
    #   Enum, one of: ["PENDING", "AVAILABLE", "IMPAIRED", "UNHEALTHY", "REBOOTING", "STARTING", "REBUILDING", "RESTORING", "MAINTENANCE", "ADMIN_MAINTENANCE", "TERMINATING", "TERMINATED", "SUSPENDED", "UPDATING", "STOPPING", "STOPPED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute bundle_id
    #   <p>The identifier of the bundle used to create the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_id
    #   <p>The identifier of the subnet for the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message that is returned if the WorkSpace cannot be
    #            created.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that is returned if the WorkSpace cannot be created.</p>
    #
    #   @return [String]
    #
    # @!attribute computer_name
    #   <p>The name of the WorkSpace, as seen by the operating system. The format of this name
    #            varies. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/launch-workspaces-tutorials.html"> Launch a
    #               WorkSpace</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute volume_encryption_key
    #   <p>The symmetric KMS key used to encrypt data stored on your WorkSpace.
    #            Amazon WorkSpaces does not support asymmetric KMS keys.</p>
    #
    #   @return [String]
    #
    # @!attribute user_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the user volume is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute root_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the root volume is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute workspace_properties
    #   <p>The properties of the WorkSpace.</p>
    #
    #   @return [WorkspaceProperties]
    #
    # @!attribute modification_states
    #   <p>The modification states of the WorkSpace.</p>
    #
    #   @return [Array<ModificationState>]
    #
    Workspace = ::Struct.new(
      :workspace_id,
      :directory_id,
      :user_name,
      :ip_address,
      :state,
      :bundle_id,
      :subnet_id,
      :error_message,
      :error_code,
      :computer_name,
      :volume_encryption_key,
      :user_volume_encryption_enabled,
      :root_volume_encryption_enabled,
      :workspace_properties,
      :modification_states,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The device types and operating systems that can be used to access a WorkSpace. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-network-requirements.html">Amazon
    #             WorkSpaces Client Network Requirements</a>.</p>
    #
    # @!attribute device_type_windows
    #   <p>Indicates whether users can use Windows clients to access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_osx
    #   <p>Indicates whether users can use macOS clients to access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_web
    #   <p>Indicates whether users can access their WorkSpaces through a web browser.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_ios
    #   <p>Indicates whether users can use iOS devices to access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_android
    #   <p>Indicates whether users can use Android and Android-compatible Chrome OS devices to
    #            access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_chrome_os
    #   <p>Indicates whether users can use Chromebooks to access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_zero_client
    #   <p>Indicates whether users can use zero client devices to access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_type_linux
    #   <p>Indicates whether users can use Linux clients to access their WorkSpaces.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    WorkspaceAccessProperties = ::Struct.new(
      :device_type_windows,
      :device_type_osx,
      :device_type_web,
      :device_type_ios,
      :device_type_android,
      :device_type_chrome_os,
      :device_type_zero_client,
      :device_type_linux,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a WorkSpace bundle.</p>
    #
    # @!attribute bundle_id
    #   <p>The identifier of the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The owner of the bundle. This is the account identifier of the owner, or
    #            <code>AMAZON</code> if the bundle is provided by Amazon Web Services.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute image_id
    #   <p>The identifier of the image that was used to create the bundle.</p>
    #
    #   @return [String]
    #
    # @!attribute root_storage
    #   <p>The size of the root volume.</p>
    #
    #   @return [RootStorage]
    #
    # @!attribute user_storage
    #   <p>The size of the user volume.</p>
    #
    #   @return [UserStorage]
    #
    # @!attribute compute_type
    #   <p>The compute type of the bundle. For more information, see
    #            <a href="http://aws.amazon.com/workspaces/details/ Amazon_WorkSpaces_Bundles">Amazon WorkSpaces Bundles</a>.</p>
    #
    #   @return [ComputeType]
    #
    # @!attribute last_updated_time
    #   <p>The last time that the bundle was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_time
    #   <p>The time when the bundle was created.</p>
    #
    #   @return [Time]
    #
    WorkspaceBundle = ::Struct.new(
      :bundle_id,
      :name,
      :owner,
      :description,
      :image_id,
      :root_storage,
      :user_storage,
      :compute_type,
      :last_updated_time,
      :creation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the connection status of a WorkSpace.</p>
    #
    # @!attribute workspace_id
    #   <p>The identifier of the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute connection_state
    #   <p>The connection state of the WorkSpace. The connection state is unknown if the WorkSpace
    #            is stopped.</p>
    #
    #   Enum, one of: ["CONNECTED", "DISCONNECTED", "UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute connection_state_check_timestamp
    #   <p>The timestamp of the connection status check.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_known_user_connection_timestamp
    #   <p>The timestamp of the last known user connection.</p>
    #
    #   @return [Time]
    #
    WorkspaceConnectionStatus = ::Struct.new(
      :workspace_id,
      :connection_state,
      :connection_state_check_timestamp,
      :last_known_user_connection_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the default properties that are used for creating WorkSpaces. For more
    #          information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html">Update Directory
    #             Details for Your WorkSpaces</a>. </p>
    #
    # @!attribute enable_work_docs
    #   <p>Indicates whether Amazon WorkDocs is enabled for your WorkSpaces.</p>
    #            <note>
    #               <p>If WorkDocs is already enabled for a WorkSpaces directory and you disable it, new
    #               WorkSpaces launched in the directory will not have WorkDocs enabled. However, WorkDocs
    #               remains enabled for any existing WorkSpaces, unless you either disable users' access to
    #               WorkDocs or you delete the WorkDocs site. To disable users' access to WorkDocs, see
    #                  <a href="https://docs.aws.amazon.com/workdocs/latest/adminguide/inactive-user.html">Disabling Users</a> in the <i>Amazon WorkDocs Administration
    #                  Guide</i>. To delete a WorkDocs site, see <a href="https://docs.aws.amazon.com/workdocs/latest/adminguide/manage-sites.html">Deleting a Site</a> in the
    #                  <i>Amazon WorkDocs Administration Guide</i>.</p>
    #               <p>If you enable WorkDocs on a directory that already has existing WorkSpaces, the
    #               existing WorkSpaces and any new WorkSpaces that are launched in the directory will have
    #               WorkDocs enabled.</p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_internet_access
    #   <p>Indicates whether internet access is enabled for your WorkSpaces.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute default_ou
    #   <p>The default organizational unit (OU) for your WorkSpaces directories. This string must
    #            be the full Lightweight Directory Access Protocol (LDAP) distinguished name for the target
    #            domain and OU. It must be in the form
    #                  <code>"OU=<i>value</i>,DC=<i>value</i>,DC=<i>value</i>"</code>,
    #            where <i>value</i> is any string of characters, and the number of domain
    #            components (DCs) is two or more. For example,
    #               <code>OU=WorkSpaces_machines,DC=machines,DC=example,DC=com</code>. </p>
    #            <important>
    #               <ul>
    #                  <li>
    #                     <p>To avoid errors, certain characters in the distinguished name must be escaped.
    #                     For more information, see <a href="https://docs.microsoft.com/previous-versions/windows/desktop/ldap/distinguished-names"> Distinguished Names</a> in the Microsoft documentation.</p>
    #                  </li>
    #                  <li>
    #                     <p>The API doesn't validate whether the OU exists.</p>
    #                  </li>
    #               </ul>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute custom_security_group_id
    #   <p>The identifier of your custom security group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_enabled_as_local_administrator
    #   <p>Indicates whether users are local administrators of their WorkSpaces.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute enable_maintenance_mode
    #   <p>Indicates whether maintenance mode is enabled for your WorkSpaces. For more information,
    #            see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspace-maintenance.html">WorkSpace
    #               Maintenance</a>. </p>
    #
    #   @return [Boolean]
    #
    WorkspaceCreationProperties = ::Struct.new(
      :enable_work_docs,
      :enable_internet_access,
      :default_ou,
      :custom_security_group_id,
      :user_enabled_as_local_administrator,
      :enable_maintenance_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a directory that is used with Amazon WorkSpaces.</p>
    #
    # @!attribute directory_id
    #   <p>The directory identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The directory alias.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_name
    #   <p>The name of the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_code
    #   <p>The registration code for the directory. This is the code that users enter in their
    #            Amazon WorkSpaces client application to connect to the directory.</p>
    #
    #   @return [String]
    #
    # @!attribute subnet_ids
    #   <p>The identifiers of the subnets used with the directory.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute dns_ip_addresses
    #   <p>The IP addresses of the DNS servers for the directory.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute customer_user_name
    #   <p>The user name for the service account.</p>
    #
    #   @return [String]
    #
    # @!attribute iam_role_id
    #   <p>The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make
    #            calls to other services, such as Amazon EC2, on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_type
    #   <p>The directory type.</p>
    #
    #   Enum, one of: ["SIMPLE_AD", "AD_CONNECTOR"]
    #
    #   @return [String]
    #
    # @!attribute workspace_security_group_id
    #   <p>The identifier of the security group that is assigned to new WorkSpaces.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the directory's registration with Amazon WorkSpaces. After a directory is
    #            deregistered, the <code>DEREGISTERED</code> state is returned very briefly before the
    #            directory metadata is cleaned up, so this state is rarely returned. To confirm that a
    #            directory is deregistered, check for the directory ID by using <a href="https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceDirectories.html">
    #               DescribeWorkspaceDirectories</a>. If the directory ID isn't returned, then the
    #            directory has been successfully deregistered.</p>
    #
    #   Enum, one of: ["REGISTERING", "REGISTERED", "DEREGISTERING", "DEREGISTERED", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute workspace_creation_properties
    #   <p>The default creation properties for all WorkSpaces in the directory.</p>
    #
    #   @return [DefaultWorkspaceCreationProperties]
    #
    # @!attribute ip_group_ids
    #   <p>The identifiers of the IP access control groups associated with the directory.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_access_properties
    #   <p>The devices and operating systems that users can use to access WorkSpaces.</p>
    #
    #   @return [WorkspaceAccessProperties]
    #
    # @!attribute tenancy
    #   <p>Specifies whether the directory is dedicated or shared. To use Bring Your Own License
    #            (BYOL), this value must be set to <code>DEDICATED</code>. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring
    #               Your Own Windows Desktop Images</a>.</p>
    #
    #   Enum, one of: ["DEDICATED", "SHARED"]
    #
    #   @return [String]
    #
    # @!attribute selfservice_permissions
    #   <p>The default self-service permissions for WorkSpaces in the directory.</p>
    #
    #   @return [SelfservicePermissions]
    #
    WorkspaceDirectory = ::Struct.new(
      :directory_id,
      :alias,
      :directory_name,
      :registration_code,
      :subnet_ids,
      :dns_ip_addresses,
      :customer_user_name,
      :iam_role_id,
      :directory_type,
      :workspace_security_group_id,
      :state,
      :workspace_creation_properties,
      :ip_group_ids,
      :workspace_access_properties,
      :tenancy,
      :selfservice_permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkspaceDirectoryState
    #
    module WorkspaceDirectoryState
      # No documentation available.
      #
      REGISTERING = "REGISTERING"

      # No documentation available.
      #
      REGISTERED = "REGISTERED"

      # No documentation available.
      #
      DEREGISTERING = "DEREGISTERING"

      # No documentation available.
      #
      DEREGISTERED = "DEREGISTERED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # Includes enum constants for WorkspaceDirectoryType
    #
    module WorkspaceDirectoryType
      # No documentation available.
      #
      SIMPLE_AD = "SIMPLE_AD"

      # No documentation available.
      #
      AD_CONNECTOR = "AD_CONNECTOR"
    end

    # <p>Describes a WorkSpace image.</p>
    #
    # @!attribute image_id
    #   <p>The identifier of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the image.</p>
    #
    #   @return [String]
    #
    # @!attribute operating_system
    #   <p>The operating system that the image is running. </p>
    #
    #   @return [OperatingSystem]
    #
    # @!attribute state
    #   <p>The status of the image.</p>
    #
    #   Enum, one of: ["AVAILABLE", "PENDING", "ERROR"]
    #
    #   @return [String]
    #
    # @!attribute required_tenancy
    #   <p>Specifies whether the image is running on dedicated hardware. When Bring Your Own
    #            License (BYOL) is enabled, this value is set to <code>DEDICATED</code>. For more
    #            information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html">Bring Your Own Windows
    #               Desktop Images</a>.</p>
    #
    #   Enum, one of: ["DEFAULT", "DEDICATED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The error code that is returned for the image.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message that is returned for the image.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date when the image was created. If the image has been shared, the Amazon Web Services account that the image has been shared with sees the original creation date
    #            of the image.</p>
    #
    #   @return [Time]
    #
    # @!attribute owner_account_id
    #   <p>The identifier of the Amazon Web Services account that owns the image.</p>
    #
    #   @return [String]
    #
    # @!attribute updates
    #   <p>The updates (if any) that are available for the specified image.</p>
    #
    #   @return [UpdateResult]
    #
    WorkspaceImage = ::Struct.new(
      :image_id,
      :name,
      :description,
      :operating_system,
      :state,
      :required_tenancy,
      :error_code,
      :error_message,
      :created,
      :owner_account_id,
      :updates,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkspaceImageIngestionProcess
    #
    module WorkspaceImageIngestionProcess
      # No documentation available.
      #
      BYOL_REGULAR = "BYOL_REGULAR"

      # No documentation available.
      #
      BYOL_GRAPHICS = "BYOL_GRAPHICS"

      # No documentation available.
      #
      BYOL_GRAPHICSPRO = "BYOL_GRAPHICSPRO"

      # No documentation available.
      #
      BYOL_GRAPHICS_G4DN = "BYOL_GRAPHICS_G4DN"

      # No documentation available.
      #
      BYOL_REGULAR_WSP = "BYOL_REGULAR_WSP"
    end

    # Includes enum constants for WorkspaceImageRequiredTenancy
    #
    module WorkspaceImageRequiredTenancy
      # No documentation available.
      #
      DEFAULT = "DEFAULT"

      # No documentation available.
      #
      DEDICATED = "DEDICATED"
    end

    # Includes enum constants for WorkspaceImageState
    #
    module WorkspaceImageState
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>Describes a WorkSpace.</p>
    #
    # @!attribute running_mode
    #   <p>The running mode. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/running-mode.html">Manage the WorkSpace Running
    #               Mode</a>.</p>
    #
    #   Enum, one of: ["AUTO_STOP", "ALWAYS_ON"]
    #
    #   @return [String]
    #
    # @!attribute running_mode_auto_stop_timeout_in_minutes
    #   <p>The time after a user logs off when WorkSpaces are automatically stopped. Configured in
    #            60-minute intervals.</p>
    #
    #   @return [Integer]
    #
    # @!attribute root_volume_size_gib
    #   <p>The size of the root volume. For important information about how to modify the size of
    #            the root and user volumes, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html">Modify a
    #            WorkSpace</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute user_volume_size_gib
    #   <p>The size of the user storage. For important information about how to modify the size of
    #            the root and user volumes, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html">Modify a
    #            WorkSpace</a>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_type_name
    #   <p>The compute type. For more information, see <a href="http://aws.amazon.com/workspaces/details/ Amazon_WorkSpaces_Bundles">Amazon WorkSpaces
    #            Bundles</a>.</p>
    #
    #   Enum, one of: ["VALUE", "STANDARD", "PERFORMANCE", "POWER", "GRAPHICS", "POWERPRO", "GRAPHICSPRO", "GRAPHICS_G4DN", "GRAPHICSPRO_G4DN"]
    #
    #   @return [String]
    #
    WorkspaceProperties = ::Struct.new(
      :running_mode,
      :running_mode_auto_stop_timeout_in_minutes,
      :root_volume_size_gib,
      :user_volume_size_gib,
      :compute_type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the information used to create a WorkSpace.</p>
    #
    # @!attribute directory_id
    #   <p>The identifier of the Directory Service directory for the WorkSpace. You can use <a>DescribeWorkspaceDirectories</a> to list the available directories.</p>
    #
    #   @return [String]
    #
    # @!attribute user_name
    #   <p>The user name of the user for the WorkSpace. This user name must exist in the Directory Service directory for the WorkSpace.</p>
    #
    #   @return [String]
    #
    # @!attribute bundle_id
    #   <p>The identifier of the bundle for the WorkSpace. You can use <a>DescribeWorkspaceBundles</a> to list the available bundles.</p>
    #
    #   @return [String]
    #
    # @!attribute volume_encryption_key
    #   <p>The symmetric KMS key used to encrypt data stored on your WorkSpace.
    #            Amazon WorkSpaces does not support asymmetric KMS keys.</p>
    #
    #   @return [String]
    #
    # @!attribute user_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the user volume is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute root_volume_encryption_enabled
    #   <p>Indicates whether the data stored on the root volume is encrypted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute workspace_properties
    #   <p>The WorkSpace properties.</p>
    #
    #   @return [WorkspaceProperties]
    #
    # @!attribute tags
    #   <p>The tags for the WorkSpace.</p>
    #
    #   @return [Array<Tag>]
    #
    WorkspaceRequest = ::Struct.new(
      :directory_id,
      :user_name,
      :bundle_id,
      :volume_encryption_key,
      :user_volume_encryption_enabled,
      :root_volume_encryption_enabled,
      :workspace_properties,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkspaceState
    #
    module WorkspaceState
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      IMPAIRED = "IMPAIRED"

      # No documentation available.
      #
      UNHEALTHY = "UNHEALTHY"

      # No documentation available.
      #
      REBOOTING = "REBOOTING"

      # No documentation available.
      #
      STARTING = "STARTING"

      # No documentation available.
      #
      REBUILDING = "REBUILDING"

      # No documentation available.
      #
      RESTORING = "RESTORING"

      # No documentation available.
      #
      MAINTENANCE = "MAINTENANCE"

      # No documentation available.
      #
      ADMIN_MAINTENANCE = "ADMIN_MAINTENANCE"

      # No documentation available.
      #
      TERMINATING = "TERMINATING"

      # No documentation available.
      #
      TERMINATED = "TERMINATED"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      ERROR = "ERROR"
    end

    # <p>The workspaces_DefaultRole role could not be found. If this is the first time you are registering a directory, you
    #          will need to create the workspaces_DefaultRole role before you can register a directory. For more information, see <a href="https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role">Creating the workspaces_DefaultRole Role</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    WorkspacesDefaultRoleNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an IP access control group.</p>
    #
    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_desc
    #   <p>The description of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute user_rules
    #   <p>The rules.</p>
    #
    #   @return [Array<IpRuleItem>]
    #
    WorkspacesIpGroup = ::Struct.new(
      :group_id,
      :group_name,
      :group_desc,
      :user_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
