# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Grafana
  module Types

    # <p>You do not have sufficient permissions to perform this action. </p>
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

    # Includes enum constants for AccountAccessType
    #
    module AccountAccessType
      # Indicates that the customer is using Grafana to monitor resources in their current account.
      #
      CURRENT_ACCOUNT = "CURRENT_ACCOUNT"

      # Indicates that the customer is using Grafana to monitor resources in organizational units.
      #
      ORGANIZATION = "ORGANIZATION"
    end

    # <p>A structure that defines which attributes in the IdP assertion are to be used to define
    #          information about the users authenticated by the IdP to use the workspace.</p>
    #
    # @!attribute name
    #   <p>The name of the attribute within the SAML assertion to use as the user full "friendly" names for SAML users.</p>
    #
    #   @return [String]
    #
    # @!attribute login
    #   <p>The name of the attribute within the SAML assertion to use as the login names for SAML users.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The name of the attribute within the SAML assertion to use as the email names for SAML users.</p>
    #
    #   @return [String]
    #
    # @!attribute groups
    #   <p>The name of the attribute within the SAML assertion to use as the user full "friendly" names for user groups.</p>
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The name of the attribute within the SAML assertion to use as the user roles.</p>
    #
    #   @return [String]
    #
    # @!attribute org
    #   <p>The name of the attribute within the SAML assertion to use as the user full "friendly" names for the users' organizations.</p>
    #
    #   @return [String]
    #
    AssertionAttributes = ::Struct.new(
      :name,
      :login,
      :email,
      :groups,
      :role,
      :org,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to associate the license with.</p>
    #
    #   @return [String]
    #
    # @!attribute license_type
    #   <p>The type of license to associate with the workspace.</p>
    #
    #   Enum, one of: ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #
    #   @return [String]
    #
    AssociateLicenseInput = ::Struct.new(
      :workspace_id,
      :license_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing data about the workspace.</p>
    #
    #   @return [WorkspaceDescription]
    #
    AssociateLicenseOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information about the user authentication methods used by the workspace.</p>
    #
    # @!attribute providers
    #   <p>Specifies whether this workspace uses Amazon Web Services SSO, SAML, or both methods to authenticate
    #            users to use the Grafana console in the Amazon Managed Grafana workspace.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute saml
    #   <p>A structure containing information about how this workspace works with
    #           SAML, including what attributes within the assertion are to be mapped to user information in the workspace. </p>
    #
    #   @return [SamlAuthentication]
    #
    # @!attribute aws_sso
    #   <p>A structure containing information about how this workspace works with
    #            Amazon Web Services SSO. </p>
    #
    #   @return [AwsSsoAuthentication]
    #
    AuthenticationDescription = ::Struct.new(
      :providers,
      :saml,
      :aws_sso,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AuthenticationProviderTypes
    #
    module AuthenticationProviderTypes
      # Indicates that AMG workspace has AWS SSO enabled as its authentication provider.
      #
      AWS_SSO = "AWS_SSO"

      # Indicates that the AMG workspace has SAML enabled as its authentication provider.
      #
      SAML = "SAML"
    end

    # <p>A structure that describes whether the workspace uses SAML, Amazon Web Services SSO, or both methods
    #          for user authentication, and whether that authentication is fully configured.</p>
    #
    # @!attribute providers
    #   <p>Specifies whether the workspace uses SAML, Amazon Web Services SSO, or both methods for user
    #            authentication.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute saml_configuration_status
    #   <p>Specifies whether the workplace's user authentication method is fully configured.</p>
    #
    #   Enum, one of: ["CONFIGURED", "NOT_CONFIGURED"]
    #
    #   @return [String]
    #
    AuthenticationSummary = ::Struct.new(
      :providers,
      :saml_configuration_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information about how this workspace works with
    #       Amazon Web Services SSO. </p>
    #
    # @!attribute sso_client_id
    #   <p>The ID of the Amazon Web Services SSO-managed application that is created by Amazon Managed Grafana.</p>
    #
    #   @return [String]
    #
    AwsSsoAuthentication = ::Struct.new(
      :sso_client_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource was in an inconsistent state during an update or a deletion.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
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

    # @!attribute key_name
    #   <p>Specifies the name of the key to create.  Key names must be unique to the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute key_role
    #   <p>Specifies the permission level of the key.</p>
    #            <p>Valid Values: <code>VIEWER</code> | <code>EDITOR</code> | <code>ADMIN</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute seconds_to_live
    #   <p>Specifies the time in seconds until the key expires.  Keys can be valid for up to 30 days.</p>
    #
    #   @return [Integer]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace in which to create an API key.</p>
    #
    #   @return [String]
    #
    CreateWorkspaceApiKeyInput = ::Struct.new(
      :key_name,
      :key_role,
      :seconds_to_live,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_name
    #   <p>The name of the key that was created.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key token that was created.  Use this value as a bearer token to
    #            authenticate HTTP requests to the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace that the key is valid for.</p>
    #
    #   @return [String]
    #
    CreateWorkspaceApiKeyOutput = ::Struct.new(
      :key_name,
      :key,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Grafana::Types::CreateWorkspaceApiKeyOutput "\
          "key_name=#{key_name || 'nil'}, "\
          "key=\"[SENSITIVE]\", "\
          "workspace_id=#{workspace_id || 'nil'}>"
      end
    end

    # @!attribute account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
    #            other accounts in the same organization. If you specify <code>ORGANIZATION</code>, you must
    #            specify which organizational units the workspace can access in the
    #               <code>workspaceOrganizationalUnits</code> parameter.</p>
    #
    #   Enum, one of: ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_role_name
    #   <p>The name of an IAM role that already exists to use with Organizations to access Amazon Web Services
    #            data sources and notification channels in other accounts in an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>If you specify <code>SERVICE_MANAGED</code> on AWS Grafana console, Amazon Managed Grafana automatically creates
    #            the IAM roles and provisions the permissions that the workspace needs to use
    #            Amazon Web Services data sources and notification channels. In CLI mode, the permissionType <code>SERVICE_MANAGED</code> will not create the IAM role
    #            for you.</p>
    #            <p>If you specify <code>CUSTOMER_MANAGED</code>, you will manage those roles and
    #            permissions yourself. If you are creating this workspace in a member account of an
    #            organization that is not a delegated administrator account, and you want the workspace to access data sources in other Amazon Web Services
    #            accounts in the organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for
    #            Amazon Web Services data sources and notification channels</a>.</p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM roles
    #         to be used for this workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_data_sources
    #   <p>Specify the Amazon Web Services data sources that you want to be queried in this
    #            workspace. Specifying these data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow Amazon Managed Grafana to read data from these
    #            sources. You must still add them as data sources in the Grafana console in the
    #            workspace.</p>
    #            <p>If you don't specify a data source here, you can still add it as a data source in the
    #            workspace console later. However, you will then have to manually configure permissions for
    #            it.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this workspace.</p>
    #            <p>Pattern: <code>^[\\p{L}\\p{Z}\\p{N}\\p{P}]{0,2048}$</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute workspace_name
    #   <p>The name for the workspace. It does not have to be unique.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this workspace. Specifying these
    #            data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow
    #            Amazon Managed Grafana to use these channels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #            from, if this workspace is in an account that is part of an organization.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_role_arn
    #   <p>The workspace needs an IAM role that grants permissions to the Amazon Web Services resources that the
    #         workspace will view data from. If you already have a role that you want to use, specify it here.  The permission type should be set to  <code>CUSTOMER_MANAGED</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, Amazon Web Services Single Sign On, or both to authenticate
    #            users for using the Grafana console within a workspace. For more information,
    #            see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #               Amazon Managed Grafana</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The list of tags associated with the workspace.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorkspaceInput = ::Struct.new(
      :account_access_type,
      :client_token,
      :organization_role_name,
      :permission_type,
      :stack_set_name,
      :workspace_data_sources,
      :workspace_description,
      :workspace_name,
      :workspace_notification_destinations,
      :workspace_organizational_units,
      :workspace_role_arn,
      :authentication_providers,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Grafana::Types::CreateWorkspaceInput "\
          "account_access_type=#{account_access_type || 'nil'}, "\
          "client_token=#{client_token || 'nil'}, "\
          "organization_role_name=\"[SENSITIVE]\", "\
          "permission_type=#{permission_type || 'nil'}, "\
          "stack_set_name=#{stack_set_name || 'nil'}, "\
          "workspace_data_sources=#{workspace_data_sources || 'nil'}, "\
          "workspace_description=\"[SENSITIVE]\", "\
          "workspace_name=\"[SENSITIVE]\", "\
          "workspace_notification_destinations=#{workspace_notification_destinations || 'nil'}, "\
          "workspace_organizational_units=\"[SENSITIVE]\", "\
          "workspace_role_arn=\"[SENSITIVE]\", "\
          "authentication_providers=#{authentication_providers || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute workspace
    #   <p>A structure containing data about the workspace that was created.</p>
    #
    #   @return [WorkspaceDescription]
    #
    CreateWorkspaceOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceType
    #
    module DataSourceType
      # Amazon OpenSearch Service
      #
      AMAZON_OPENSEARCH_SERVICE = "AMAZON_OPENSEARCH_SERVICE"

      # CloudWatch Logs
      #
      CLOUDWATCH = "CLOUDWATCH"

      # Managed Prometheus
      #
      PROMETHEUS = "PROMETHEUS"

      # X-Ray
      #
      XRAY = "XRAY"

      # Timestream
      #
      TIMESTREAM = "TIMESTREAM"

      # IoT SiteWise
      #
      SITEWISE = "SITEWISE"

      # Amazon Athena
      #
      ATHENA = "ATHENA"

      # Redshift
      #
      REDSHIFT = "REDSHIFT"
    end

    # @!attribute key_name
    #   <p>The name of the API key to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #
    #   @return [String]
    #
    DeleteWorkspaceApiKeyInput = ::Struct.new(
      :key_name,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute key_name
    #   <p>The name of the API key that was deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace where the key was deleted.</p>
    #
    #   @return [String]
    #
    DeleteWorkspaceApiKeyOutput = ::Struct.new(
      :key_name,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to delete.</p>
    #
    #   @return [String]
    #
    DeleteWorkspaceInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing information about the workspace that was deleted.</p>
    #
    #   @return [WorkspaceDescription]
    #
    DeleteWorkspaceOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to return authentication information about.</p>
    #
    #   @return [String]
    #
    DescribeWorkspaceAuthenticationInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication
    #   <p>A structure containing information about the authentication methods used in
    #         the workspace.</p>
    #
    #   @return [AuthenticationDescription]
    #
    DescribeWorkspaceAuthenticationOutput = ::Struct.new(
      :authentication,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to display information about.</p>
    #
    #   @return [String]
    #
    DescribeWorkspaceInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing information about the workspace.</p>
    #
    #   @return [WorkspaceDescription]
    #
    DescribeWorkspaceOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to remove the Grafana Enterprise license from.</p>
    #
    #   @return [String]
    #
    # @!attribute license_type
    #   <p>The type of license to remove from the workspace.</p>
    #
    #   Enum, one of: ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #
    #   @return [String]
    #
    DisassociateLicenseInput = ::Struct.new(
      :workspace_id,
      :license_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace
    #   <p>A structure containing information about the workspace.</p>
    #
    #   @return [WorkspaceDescription]
    #
    DisassociateLicenseOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing the identity provider (IdP) metadata used to integrate the
    #          identity provider with this workspace. You can specify the metadata either by providing a
    #          URL to its location in the <code>url</code> parameter, or by specifying the full metadata
    #          in XML format in the <code>xml</code> parameter.</p>
    #
    class IdpMetadata < Hearth::Union
      # <p>The URL of the location containing the metadata.</p>
      #
      class Url < IdpMetadata
        def to_h
          { url: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Grafana::Types::Url #{__getobj__ || 'nil'}>"
        end
      end

      # <p>The actual full metadata file, in XML format.</p>
      #
      class Xml < IdpMetadata
        def to_h
          { xml: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Grafana::Types::Xml #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < IdpMetadata
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Grafana::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Unexpected error while processing the request. Retry the request.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>How long to wait before you retry this operation.</p>
    #
    #   @return [Integer]
    #
    InternalServerException = ::Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LicenseType
    #
    module LicenseType
      # Grafana Enterprise License.
      #
      ENTERPRISE = "ENTERPRISE"

      # Grafana Enterprise Free Trial License.
      #
      ENTERPRISE_FREE_TRIAL = "ENTERPRISE_FREE_TRIAL"
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #            <code>ListPermissions</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute user_type
    #   <p>(Optional) If you specify <code>SSO_USER</code>, then only the permissions of Amazon Web Services SSO users
    #            are returned. If you specify <code>SSO_GROUP</code>, only the permissions of Amazon Web Services SSO groups
    #               are returned.</p>
    #
    #   Enum, one of: ["SSO_USER", "SSO_GROUP"]
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>(Optional) Limits the results to only the user that matches this ID.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>(Optional) Limits the results to only the group that matches this ID.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace to list permissions for. This parameter is required.</p>
    #
    #   @return [String]
    #
    ListPermissionsInput = ::Struct.new(
      :max_results,
      :next_token,
      :user_type,
      :user_id,
      :group_id,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListPermissions</code> operation to return
    #            the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute permissions
    #   <p>The permissions returned by the operation.</p>
    #
    #   @return [Array<PermissionEntry>]
    #
    ListPermissionsOutput = ::Struct.new(
      :next_token,
      :permissions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource the list of tags are associated with.</p>
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
    #   <p>The list of tags that are associated with the resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of workspaces to include in the results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next set of workspaces to return. (You receive this token from a
    #            previous <code>ListWorkspaces</code> operation.)</p>
    #
    #   @return [String]
    #
    ListWorkspacesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspaces
    #   <p>An array of structures that contain some information about the workspaces in the account.</p>
    #
    #   @return [Array<WorkspaceSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of workspaces.</p>
    #
    #   @return [String]
    #
    ListWorkspacesOutput = ::Struct.new(
      :workspaces,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for NotificationDestinationType
    #
    module NotificationDestinationType
      # AWS Simple Notification Service
      #
      SNS = "SNS"
    end

    # <p>A structure containing the identity of one user or group and the <code>Admin</code>
    #       or <code>Editor</code> role that they have.</p>
    #
    # @!attribute user
    #   <p>A structure with the ID of the user or group with this role.</p>
    #
    #   @return [User]
    #
    # @!attribute role
    #   <p>Specifies whether the user or group has the <code>Admin</code>
    #            or <code>Editor</code> role.</p>
    #
    #   Enum, one of: ["ADMIN", "EDITOR", "VIEWER"]
    #
    #   @return [String]
    #
    PermissionEntry = ::Struct.new(
      :user,
      :role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PermissionType
    #
    module PermissionType
      # Customer Managed
      #
      CUSTOMER_MANAGED = "CUSTOMER_MANAGED"

      # Service Managed
      #
      SERVICE_MANAGED = "SERVICE_MANAGED"
    end

    # <p>The request references a resource that does not exist.</p>
    #
    # @!attribute message
    #   <p>The value of a parameter in the request caused an error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
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

    # Includes enum constants for Role
    #
    module Role
      # Role Admin.
      #
      ADMIN = "ADMIN"

      # Role Editor.
      #
      EDITOR = "EDITOR"

      # Role Viewer.
      #
      VIEWER = "VIEWER"
    end

    # <p>This structure defines which groups defined in the SAML assertion attribute are to be mapped
    #       to the Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    #
    # @!attribute editor
    #   <p>A list of groups from the SAML assertion attribute to grant the Grafana
    #               <code>Editor</code> role to.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute admin
    #   <p>A list of groups from the SAML assertion attribute to grant the Grafana
    #               <code>Admin</code> role to.</p>
    #
    #   @return [Array<String>]
    #
    RoleValues = ::Struct.new(
      :editor,
      :admin,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information about how this workspace works with
    #          SAML. </p>
    #
    # @!attribute status
    #   <p>Specifies whether the workspace's SAML configuration is complete.</p>
    #
    #   Enum, one of: ["CONFIGURED", "NOT_CONFIGURED"]
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>A structure containing details about how this workspace works with
    #            SAML. </p>
    #
    #   @return [SamlConfiguration]
    #
    SamlAuthentication = ::Struct.new(
      :status,
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing information about how this workspace works with
    #          SAML. </p>
    #
    # @!attribute idp_metadata
    #   <p>A structure containing the identity provider (IdP) metadata used to integrate the
    #            identity provider with this workspace.</p>
    #
    #   @return [IdpMetadata]
    #
    # @!attribute assertion_attributes
    #   <p>A structure that defines which attributes in the SAML assertion are to be used to define information about
    #         the users authenticated by that IdP to use the workspace.</p>
    #
    #   @return [AssertionAttributes]
    #
    # @!attribute role_values
    #   <p>A structure containing arrays that map group names in the SAML assertion to the
    #         Grafana <code>Admin</code> and <code>Editor</code> roles in the workspace.</p>
    #
    #   @return [RoleValues]
    #
    # @!attribute allowed_organizations
    #   <p>Lists which organizations defined in the SAML assertion are allowed to use the Amazon Managed Grafana workspace.
    #         If this is empty, all organizations in the assertion attribute have access.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute login_validity_duration
    #   <p>How long a sign-on session by a SAML user is valid, before the user has to sign on
    #            again.</p>
    #
    #   @return [Integer]
    #
    SamlConfiguration = ::Struct.new(
      :idp_metadata,
      :assertion_attributes,
      :role_values,
      :allowed_organizations,
      :login_validity_duration,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.login_validity_duration ||= 0
      end
    end

    # Includes enum constants for SamlConfigurationStatus
    #
    module SamlConfigurationStatus
      # Indicates that SAML on an AMG workspace is enabled and has been configured.
      #
      CONFIGURED = "CONFIGURED"

      # Indicates that SAML on an AMG workspace is enabled but has not been configured.
      #
      NOT_CONFIGURED = "NOT_CONFIGURED"
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The value of a parameter in the request caused an error.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
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

    # @!attribute resource_arn
    #   <p>The ARN of the resource the tag is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values to associate with the resource.  You can associate tag keys only, tags (key and values) only
    #         or a combination of tag keys and tags.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
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

    # <p>The request was denied because of request throttling. Retry the request.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   <p>The ID of the service that is associated with the error.</p>
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   <p>The ID of the service quota that was exceeded.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   <p>The value of a parameter in the request caused an error.</p>
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
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource the tag association is removed from.  </p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The key values of the tag to be removed from the resource.</p>
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

    # Includes enum constants for UpdateAction
    #
    module UpdateAction
      # Add permissions.
      #
      ADD = "ADD"

      # Revoke permissions.
      #
      REVOKE = "REVOKE"
    end

    # <p>A structure containing information about one error encountered while performing an
    #             <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html">UpdatePermissions</a> operation.</p>
    #
    # @!attribute code
    #   <p>The error code.</p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p>The message for this error.</p>
    #
    #   @return [String]
    #
    # @!attribute caused_by
    #   <p>Specifies which permission update caused the error.</p>
    #
    #   @return [UpdateInstruction]
    #
    UpdateError = ::Struct.new(
      :code,
      :message,
      :caused_by,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the instructions for one Grafana role permission update in a
    #          <a href="https://docs.aws.amazon.com/grafana/latest/APIReference/API_UpdatePermissions.html">UpdatePermissions</a> operation.</p>
    #
    # @!attribute action
    #   <p>Specifies whether this update is to add or revoke role permissions.</p>
    #
    #   Enum, one of: ["ADD", "REVOKE"]
    #
    #   @return [String]
    #
    # @!attribute role
    #   <p>The role to add or revoke for the user or the group specified in <code>users</code>.</p>
    #
    #   Enum, one of: ["ADMIN", "EDITOR", "VIEWER"]
    #
    #   @return [String]
    #
    # @!attribute users
    #   <p>A structure that specifies the user or group to add or revoke the role for.</p>
    #
    #   @return [Array<User>]
    #
    UpdateInstruction = ::Struct.new(
      :action,
      :role,
      :users,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute update_instruction_batch
    #   <p>An array of structures that contain the permission updates to make.</p>
    #
    #   @return [Array<UpdateInstruction>]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update.</p>
    #
    #   @return [String]
    #
    UpdatePermissionsInput = ::Struct.new(
      :update_instruction_batch,
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>An array of structures that contain the errors from the operation, if any.</p>
    #
    #   @return [Array<UpdateError>]
    #
    UpdatePermissionsOutput = ::Struct.new(
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute workspace_id
    #   <p>The ID of the workspace to update the authentication for.</p>
    #
    #   @return [String]
    #
    # @!attribute authentication_providers
    #   <p>Specifies whether this workspace uses SAML 2.0, Amazon Web Services Single Sign On, or both to authenticate
    #            users for using the Grafana console within a workspace. For more information,
    #            see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/authentication-in-AMG.html">User authentication in
    #               Amazon Managed Grafana</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute saml_configuration
    #   <p>If the workspace uses SAML, use this structure to
    #            map SAML assertion attributes to workspace user information and
    #            define which groups in the assertion attribute are to have the <code>Admin</code> and <code>Editor</code> roles
    #            in the workspace.</p>
    #
    #   @return [SamlConfiguration]
    #
    UpdateWorkspaceAuthenticationInput = ::Struct.new(
      :workspace_id,
      :authentication_providers,
      :saml_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute authentication
    #   <p>A structure that describes the user authentication for this workspace after the update is made.</p>
    #
    #   @return [AuthenticationDescription]
    #
    UpdateWorkspaceAuthenticationOutput = ::Struct.new(
      :authentication,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
    #            other accounts in the same organization. If you specify <code>ORGANIZATION</code>, you must
    #            specify which organizational units the workspace can access in the
    #               <code>workspaceOrganizationalUnits</code> parameter.</p>
    #
    #   Enum, one of: ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #
    #   @return [String]
    #
    # @!attribute organization_role_name
    #   <p>The name of an IAM role that already exists to use to access resources through Organizations.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_type
    #   <p>If you specify <code>Service Managed</code>, Amazon Managed Grafana automatically creates
    #            the IAM roles and provisions the permissions that the workspace needs to use
    #               Amazon Web Services data sources and notification channels.</p>
    #            <p>If you specify <code>CUSTOMER_MANAGED</code>, you will manage those roles and
    #            permissions yourself. If you are creating this workspace in a member account of an
    #            organization and that account is not a delegated administrator account, and you want the workspace to access data sources in other Amazon Web Services
    #            accounts in the organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for
    #            Amazon Web Services data sources and notification channels</a>
    #            </p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute stack_set_name
    #   <p>The name of the CloudFormation stack set to use to generate IAM roles
    #            to be used for this workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_data_sources
    #   <p>Specify the Amazon Web Services data sources that you want to be queried in this
    #            workspace. Specifying these data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow Amazon Managed Grafana to read data from these
    #            sources. You must still add them as data sources in the Grafana console in the
    #            workspace.</p>
    #            <p>If you don't specify a data source here, you can still add it as a data source later in
    #            the workspace console. However, you will then have to manually configure permissions for
    #            it.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_description
    #   <p>A description for the workspace. This is used only to help you identify this workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_id
    #   <p>The ID of the workspace to update.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_name
    #   <p>A new name for the workspace to update.</p>
    #
    #   @return [String]
    #
    # @!attribute workspace_notification_destinations
    #   <p>Specify the Amazon Web Services notification channels that you plan to use in this workspace. Specifying these
    #            data sources here enables Amazon Managed Grafana to create IAM roles and permissions that allow
    #            Amazon Managed Grafana to use these channels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #            from, if this workspace is in an account that is part of an organization.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute workspace_role_arn
    #   <p>The workspace needs an IAM role that grants permissions to the Amazon Web Services resources that the
    #            workspace will view data from. If you already have a role that you want to use, specify it here. If you omit
    #            this field and you specify some Amazon Web Services resources in <code>workspaceDataSources</code> or
    #            <code>workspaceNotificationDestinations</code>, a new IAM role with the necessary permissions is
    #            automatically created.</p>
    #
    #   @return [String]
    #
    UpdateWorkspaceInput = ::Struct.new(
      :account_access_type,
      :organization_role_name,
      :permission_type,
      :stack_set_name,
      :workspace_data_sources,
      :workspace_description,
      :workspace_id,
      :workspace_name,
      :workspace_notification_destinations,
      :workspace_organizational_units,
      :workspace_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Grafana::Types::UpdateWorkspaceInput "\
          "account_access_type=#{account_access_type || 'nil'}, "\
          "organization_role_name=\"[SENSITIVE]\", "\
          "permission_type=#{permission_type || 'nil'}, "\
          "stack_set_name=#{stack_set_name || 'nil'}, "\
          "workspace_data_sources=#{workspace_data_sources || 'nil'}, "\
          "workspace_description=\"[SENSITIVE]\", "\
          "workspace_id=#{workspace_id || 'nil'}, "\
          "workspace_name=\"[SENSITIVE]\", "\
          "workspace_notification_destinations=#{workspace_notification_destinations || 'nil'}, "\
          "workspace_organizational_units=\"[SENSITIVE]\", "\
          "workspace_role_arn=\"[SENSITIVE]\">"
      end
    end

    # @!attribute workspace
    #   <p>A structure containing data about the workspace that was created.</p>
    #
    #   @return [WorkspaceDescription]
    #
    UpdateWorkspaceOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that specifies one user or group in the workspace.</p>
    #
    # @!attribute id
    #   <p>The ID of the user or group.</p>
    #            <p>Pattern: <code>^([0-9a-fA-F]{10}-|)[A-Fa-f0-9]{8}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{4}-[A-Fa-f0-9]{12}$</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Specifies whether this is a single user or a group.</p>
    #
    #   Enum, one of: ["SSO_USER", "SSO_GROUP"]
    #
    #   @return [String]
    #
    User = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserType
    #
    module UserType
      # SSO user.
      #
      SSO_USER = "SSO_USER"

      # SSO group.
      #
      SSO_GROUP = "SSO_GROUP"
    end

    # <p>The value of a parameter in the request caused an error.</p>
    #
    # @!attribute message
    #   <p>A description of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that the operation failed.</p>
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>A list of fields that might be associated with the error.</p>
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

    # <p>A structure that contains information about a request parameter that caused an error.</p>
    #
    # @!attribute name
    #   <p>The name of the field that caused the validation error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A message describing why this field couldn't be validated.</p>
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
      UNKNOWN_OPERATION = "UNKNOWN_OPERATION"

      # No documentation available.
      #
      CANNOT_PARSE = "CANNOT_PARSE"

      # No documentation available.
      #
      FIELD_VALIDATION_FAILED = "FIELD_VALIDATION_FAILED"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>A structure containing information about an Amazon Managed Grafana workspace in your account.</p>
    #
    # @!attribute account_access_type
    #   <p>Specifies whether the workspace can access Amazon Web Services resources in this Amazon Web Services account only, or whether it can also access Amazon Web Services resources in
    #            other accounts in the same organization. If this is <code>ORGANIZATION</code>, the
    #               <code>workspaceOrganizationalUnits</code> parameter specifies which organizational units
    #            the workspace can access.</p>
    #
    #   Enum, one of: ["CURRENT_ACCOUNT", "ORGANIZATION"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date that the workspace was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute data_sources
    #   <p>Specifies the Amazon Web Services data sources that have been configured to have IAM
    #            roles and permissions created to allow
    #            Amazon Managed Grafana to read data from these sources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute description
    #   <p>The user-defined description of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The URL that users can use to access the Grafana console in the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute grafana_version
    #   <p>The version of Grafana supported in this workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of this workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute modified
    #   <p>The most recent date that the workspace was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_role_name
    #   <p>The name of the IAM role that is used to access resources through Organizations.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_destinations
    #   <p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically create IAM
    #            roles and permissions for, to allow
    #            Amazon Managed Grafana to use these channels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organizational_units
    #   <p>Specifies the organizational units that this workspace is allowed to use data sources
    #            from, if this workspace is in an account that is part of an organization.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute permission_type
    #   <p>If this is <code>Service Managed</code>, Amazon Managed Grafana automatically creates the IAM roles
    #            and provisions the permissions that the workspace needs to use Amazon Web Services data sources and notification channels.</p>
    #            <p>If this is <code>CUSTOMER_MANAGED</code>, you manage those roles and permissions
    #            yourself. If you are creating this workspace in a member account of an organization and that account is not a
    #            delegated administrator account, and
    #            you want the workspace to access data sources in other Amazon Web Services accounts in the
    #            organization, you must choose <code>CUSTOMER_MANAGED</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/grafana/latest/userguide/AMG-manage-permissions.html">Amazon Managed Grafana permissions and policies for
    #            Amazon Web Services data sources and notification channels</a>
    #            </p>
    #
    #   Enum, one of: ["CUSTOMER_MANAGED", "SERVICE_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute stack_set_name
    #   <p>The name of the CloudFormation stack set that is used to generate IAM roles
    #            to be used for this workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the workspace.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute workspace_role_arn
    #   <p>The IAM role that grants permissions to the Amazon Web Services resources that the
    #            workspace will view data from. This role must already exist.</p>
    #
    #   @return [String]
    #
    # @!attribute license_type
    #   <p>Specifies whether this workspace has a full Grafana Enterprise license or a free trial license.</p>
    #
    #   Enum, one of: ["ENTERPRISE", "ENTERPRISE_FREE_TRIAL"]
    #
    #   @return [String]
    #
    # @!attribute free_trial_consumed
    #   <p>Specifies whether this workspace has already fully used its free trial for Grafana Enterprise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute license_expiration
    #   <p>If this workspace has a full Grafana Enterprise license, this specifies when the license ends and
    #         will need to be renewed.</p>
    #
    #   @return [Time]
    #
    # @!attribute free_trial_expiration
    #   <p>If this workspace is currently in the free trial period for Grafana Enterprise, this value specifies
    #         when that free trial ends.</p>
    #
    #   @return [Time]
    #
    # @!attribute authentication
    #   <p>A structure that describes whether the workspace uses SAML, Amazon Web Services SSO, or both methods
    #         for user authentication.</p>
    #
    #   @return [AuthenticationSummary]
    #
    # @!attribute tags
    #   <p>The list of tags associated with the workspace.</p>
    #
    #   @return [Hash<String, String>]
    #
    WorkspaceDescription = ::Struct.new(
      :account_access_type,
      :created,
      :data_sources,
      :description,
      :endpoint,
      :grafana_version,
      :id,
      :modified,
      :name,
      :organization_role_name,
      :notification_destinations,
      :organizational_units,
      :permission_type,
      :stack_set_name,
      :status,
      :workspace_role_arn,
      :license_type,
      :free_trial_consumed,
      :license_expiration,
      :free_trial_expiration,
      :authentication,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Grafana::Types::WorkspaceDescription "\
          "account_access_type=#{account_access_type || 'nil'}, "\
          "created=#{created || 'nil'}, "\
          "data_sources=#{data_sources || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "endpoint=#{endpoint || 'nil'}, "\
          "grafana_version=#{grafana_version || 'nil'}, "\
          "id=#{id || 'nil'}, "\
          "modified=#{modified || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "organization_role_name=\"[SENSITIVE]\", "\
          "notification_destinations=#{notification_destinations || 'nil'}, "\
          "organizational_units=\"[SENSITIVE]\", "\
          "permission_type=#{permission_type || 'nil'}, "\
          "stack_set_name=#{stack_set_name || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "workspace_role_arn=\"[SENSITIVE]\", "\
          "license_type=#{license_type || 'nil'}, "\
          "free_trial_consumed=#{free_trial_consumed || 'nil'}, "\
          "license_expiration=#{license_expiration || 'nil'}, "\
          "free_trial_expiration=#{free_trial_expiration || 'nil'}, "\
          "authentication=#{authentication || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # Includes enum constants for WorkspaceStatus
    #
    module WorkspaceStatus
      # Workspace is active.
      #
      ACTIVE = "ACTIVE"

      # Workspace is being created.
      #
      CREATING = "CREATING"

      # Workspace is being deleted.
      #
      DELETING = "DELETING"

      # Workspace is in an invalid state, it can only and should be deleted.
      #
      FAILED = "FAILED"

      # Workspace is being updated.
      #
      UPDATING = "UPDATING"

      # Workspace is being upgraded to enterprise.
      #
      UPGRADING = "UPGRADING"

      # Workspace deletion failed.
      #
      DELETION_FAILED = "DELETION_FAILED"

      # Workspace creation failed.
      #
      CREATION_FAILED = "CREATION_FAILED"

      # Workspace update failed.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # Workspace upgrade failed.
      #
      UPGRADE_FAILED = "UPGRADE_FAILED"

      # Failed to remove enterprise license from workspace.
      #
      LICENSE_REMOVAL_FAILED = "LICENSE_REMOVAL_FAILED"
    end

    # <p>A structure that contains some information about one workspace in the account.</p>
    #
    # @!attribute created
    #   <p>The date that the workspace was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The customer-entered description of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute endpoint
    #   <p>The URL endpoint to use to access the Grafana console in the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute grafana_version
    #   <p>The Grafana version that the workspace is running.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The unique ID of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute modified
    #   <p>The most recent date that the workspace was modified.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the workspace.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_destinations
    #   <p>The Amazon Web Services notification channels that Amazon Managed Grafana can automatically
    #            create IAM roles and permissions for, which allows Amazon Managed Grafana to use
    #            these channels.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute status
    #   <p>The current status of the workspace.</p>
    #
    #   Enum, one of: ["ACTIVE", "CREATING", "DELETING", "FAILED", "UPDATING", "UPGRADING", "DELETION_FAILED", "CREATION_FAILED", "UPDATE_FAILED", "UPGRADE_FAILED", "LICENSE_REMOVAL_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute authentication
    #   <p>A structure containing information about the authentication methods used in
    #            the workspace.</p>
    #
    #   @return [AuthenticationSummary]
    #
    # @!attribute tags
    #   <p>The list of tags associated with the workspace.</p>
    #
    #   @return [Hash<String, String>]
    #
    WorkspaceSummary = ::Struct.new(
      :created,
      :description,
      :endpoint,
      :grafana_version,
      :id,
      :modified,
      :name,
      :notification_destinations,
      :status,
      :authentication,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Grafana::Types::WorkspaceSummary "\
          "created=#{created || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "endpoint=#{endpoint || 'nil'}, "\
          "grafana_version=#{grafana_version || 'nil'}, "\
          "id=#{id || 'nil'}, "\
          "modified=#{modified || 'nil'}, "\
          "name=\"[SENSITIVE]\", "\
          "notification_destinations=#{notification_destinations || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "authentication=#{authentication || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

  end
end
