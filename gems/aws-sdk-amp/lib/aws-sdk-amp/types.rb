# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Amp
  module Types

    # User does not have sufficient access to perform this action.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the properties of an alert manager definition.
    #
    # @!attribute status
    #   The status of alert manager definition.
    #
    #   @return [AlertManagerDefinitionStatus]
    #
    # @!attribute data
    #   The alert manager definition.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time when the alert manager definition was created.
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   The time when the alert manager definition was modified.
    #
    #   @return [Time]
    #
    AlertManagerDefinitionDescription = ::Struct.new(
      :status,
      :data,
      :created_at,
      :modified_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the status of a definition.
    #
    # @!attribute status_code
    #   Status code of this definition.
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   The reason for failure if any.
    #
    #   @return [String]
    #
    AlertManagerDefinitionStatus = ::Struct.new(
      :status_code,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AlertManagerDefinitionStatusCode
    #
    module AlertManagerDefinitionStatusCode
      # Definition is being created. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE.
      #
      CREATING = "CREATING"

      # Definition has been created/updated. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE.
      #
      ACTIVE = "ACTIVE"

      # Definition is being updated. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE.
      #
      UPDATING = "UPDATING"

      # Definition is being deleting. Update/Deletion is disallowed until definition is ACTIVE and workspace status is ACTIVE.
      #
      DELETING = "DELETING"

      # Definition creation failed.
      #
      CREATION_FAILED = "CREATION_FAILED"

      # Definition update failed.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Updating or deleting a resource can cause an inconsistent state.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Identifier of the resource affected.
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Type of the resource affected.
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

    # Represents the input of a CreateAlertManagerDefinition operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace in which to create the alert manager definition.
    #
    #   @return [String]
    #
    # @!attribute data
    #   The alert manager definition data.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    CreateAlertManagerDefinitionInput = ::Struct.new(
      :workspace_id,
      :data,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a CreateAlertManagerDefinition operation.
    #
    # @!attribute status
    #   The status of alert manager definition.
    #
    #   @return [AlertManagerDefinitionStatus]
    #
    CreateAlertManagerDefinitionOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a CreateRuleGroupsNamespace operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace in which to create the rule group namespace.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute data
    #   The namespace data that define the rule groups.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Optional, user-provided tags for this rule groups namespace.
    #
    #   @return [Hash<String, String>]
    #
    CreateRuleGroupsNamespaceInput = ::Struct.new(
      :workspace_id,
      :name,
      :data,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a CreateRuleGroupsNamespace operation.
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of rule groups namespace.
    #
    #   @return [RuleGroupsNamespaceStatus]
    #
    # @!attribute tags
    #   The tags of this rule groups namespace.
    #
    #   @return [Hash<String, String>]
    #
    CreateRuleGroupsNamespaceOutput = ::Struct.new(
      :name,
      :arn,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a CreateWorkspace operation.
    #
    # @!attribute alias
    #   An optional user-assigned alias for this workspace. This alias is for user reference and does not need to be unique.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   Optional, user-provided tags for this workspace.
    #
    #   @return [Hash<String, String>]
    #
    CreateWorkspaceInput = ::Struct.new(
      :alias,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a CreateWorkspace operation.
    #
    # @!attribute workspace_id
    #   The generated ID of the workspace that was just created.
    #
    #   @return [String]
    #
    # @!attribute arn
    #   The ARN of the workspace that was just created.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of the workspace that was just created (usually CREATING).
    #
    #   @return [WorkspaceStatus]
    #
    # @!attribute tags
    #   The tags of this workspace.
    #
    #   @return [Hash<String, String>]
    #
    CreateWorkspaceOutput = ::Struct.new(
      :workspace_id,
      :arn,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a DeleteAlertManagerDefinition operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace in which to delete the alert manager definition.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    DeleteAlertManagerDefinitionInput = ::Struct.new(
      :workspace_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAlertManagerDefinitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a DeleteRuleGroupsNamespace operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace to delete rule group definition.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    DeleteRuleGroupsNamespaceInput = ::Struct.new(
      :workspace_id,
      :name,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRuleGroupsNamespaceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a DeleteWorkspace operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace to delete.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    DeleteWorkspaceInput = ::Struct.new(
      :workspace_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorkspaceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a DescribeAlertManagerDefinition operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace to describe.
    #
    #   @return [String]
    #
    DescribeAlertManagerDefinitionInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a DescribeAlertManagerDefinition operation.
    #
    # @!attribute alert_manager_definition
    #   The properties of the selected workspace's alert manager definition.
    #
    #   @return [AlertManagerDefinitionDescription]
    #
    DescribeAlertManagerDefinitionOutput = ::Struct.new(
      :alert_manager_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a DescribeRuleGroupsNamespace operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace to describe.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The rule groups namespace.
    #
    #   @return [String]
    #
    DescribeRuleGroupsNamespaceInput = ::Struct.new(
      :workspace_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a DescribeRuleGroupsNamespace operation.
    #
    # @!attribute rule_groups_namespace
    #   The selected rule groups namespace.
    #
    #   @return [RuleGroupsNamespaceDescription]
    #
    DescribeRuleGroupsNamespaceOutput = ::Struct.new(
      :rule_groups_namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a DescribeWorkspace operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace to describe.
    #
    #   @return [String]
    #
    DescribeWorkspaceInput = ::Struct.new(
      :workspace_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a DescribeWorkspace operation.
    #
    # @!attribute workspace
    #   The properties of the selected workspace.
    #
    #   @return [WorkspaceDescription]
    #
    DescribeWorkspaceOutput = ::Struct.new(
      :workspace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Unexpected error during processing of request.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
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

    # Represents the input of a ListRuleGroupsNamespaces operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace.
    #
    #   @return [String]
    #
    # @!attribute name
    #   Optional filter for rule groups namespace name. Only the rule groups namespace that begin with this value will be returned.
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListRuleGroupsNamespaces request.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Maximum results to return in response (default=100, maximum=1000).
    #
    #   @return [Integer]
    #
    ListRuleGroupsNamespacesInput = ::Struct.new(
      :workspace_id,
      :name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a ListRuleGroupsNamespaces operation.
    #
    # @!attribute rule_groups_namespaces
    #   The list of the selected rule groups namespaces.
    #
    #   @return [Array<RuleGroupsNamespaceSummary>]
    #
    # @!attribute next_token
    #   Pagination token to use when requesting the next page in this list.
    #
    #   @return [String]
    #
    ListRuleGroupsNamespacesOutput = ::Struct.new(
      :rule_groups_namespaces,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   The ARN of the resource.
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
    #   The list of tags assigned to the resource.
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a ListWorkspaces operation.
    #
    # @!attribute next_token
    #   Pagination token to request the next page in a paginated list. This token is obtained from the output of the previous ListWorkspaces request.
    #
    #   @return [String]
    #
    # @!attribute alias
    #   Optional filter for workspace alias. Only the workspaces with aliases that begin with this value will be returned.
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   Maximum results to return in response (default=100, maximum=1000).
    #
    #   @return [Integer]
    #
    ListWorkspacesInput = ::Struct.new(
      :next_token,
      :alias,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a ListWorkspaces operation.
    #
    # @!attribute workspaces
    #   The list of existing workspaces, including those undergoing creation or deletion.
    #
    #   @return [Array<WorkspaceSummary>]
    #
    # @!attribute next_token
    #   Pagination token to use when requesting the next page in this list.
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

    # Represents the input of a PutAlertManagerDefinition operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace in which to update the alert manager definition.
    #
    #   @return [String]
    #
    # @!attribute data
    #   The alert manager definition data.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    PutAlertManagerDefinitionInput = ::Struct.new(
      :workspace_id,
      :data,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a PutAlertManagerDefinition operation.
    #
    # @!attribute status
    #   The status of alert manager definition.
    #
    #   @return [AlertManagerDefinitionStatus]
    #
    PutAlertManagerDefinitionOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the input of a PutRuleGroupsNamespace operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace in which to update the rule group namespace.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute data
    #   The namespace data that define the rule groups.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    PutRuleGroupsNamespaceInput = ::Struct.new(
      :workspace_id,
      :name,
      :data,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the output of a PutRuleGroupsNamespace operation.
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of rule groups namespace.
    #
    #   @return [RuleGroupsNamespaceStatus]
    #
    # @!attribute tags
    #   The tags of this rule groups namespace.
    #
    #   @return [Hash<String, String>]
    #
    PutRuleGroupsNamespaceOutput = ::Struct.new(
      :name,
      :arn,
      :status,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request references a resource which does not exist.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Identifier of the resource affected.
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Type of the resource affected.
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

    # Represents a description of the rule groups namespace.
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of rule groups namespace.
    #
    #   @return [RuleGroupsNamespaceStatus]
    #
    # @!attribute data
    #   The rule groups namespace data.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time when the rule groups namespace was created.
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   The time when the rule groups namespace was modified.
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   The tags of this rule groups namespace.
    #
    #   @return [Hash<String, String>]
    #
    RuleGroupsNamespaceDescription = ::Struct.new(
      :arn,
      :name,
      :status,
      :data,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the status of a namespace.
    #
    # @!attribute status_code
    #   Status code of this namespace.
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   The reason for failure if any.
    #
    #   @return [String]
    #
    RuleGroupsNamespaceStatus = ::Struct.new(
      :status_code,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RuleGroupsNamespaceStatusCode
    #
    module RuleGroupsNamespaceStatusCode
      # Namespace is being created. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE.
      #
      CREATING = "CREATING"

      # Namespace has been created/updated. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE.
      #
      ACTIVE = "ACTIVE"

      # Namespace is being updated. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE.
      #
      UPDATING = "UPDATING"

      # Namespace is being deleting. Update/Deletion is disallowed until namespace is ACTIVE and workspace status is ACTIVE.
      #
      DELETING = "DELETING"

      # Namespace creation failed.
      #
      CREATION_FAILED = "CREATION_FAILED"

      # Namespace update failed.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # Represents a summary of the rule groups namespace.
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of this rule groups namespace.
    #
    #   @return [String]
    #
    # @!attribute name
    #   The rule groups namespace name.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of rule groups namespace.
    #
    #   @return [RuleGroupsNamespaceStatus]
    #
    # @!attribute created_at
    #   The time when the rule groups namespace was created.
    #
    #   @return [Time]
    #
    # @!attribute modified_at
    #   The time when the rule groups namespace was modified.
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   The tags of this rule groups namespace.
    #
    #   @return [Hash<String, String>]
    #
    RuleGroupsNamespaceSummary = ::Struct.new(
      :arn,
      :name,
      :status,
      :created_at,
      :modified_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   Identifier of the resource affected.
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   Type of the resource affected.
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   Service Quotas requirement to identify originating service.
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating quota.
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
    #   The ARN of the resource.
    #
    #   @return [String]
    #
    # @!attribute tags
    #   The list of tags assigned to the resource.
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

    # Request was denied due to request throttling.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    # @!attribute service_code
    #   Service Quotas requirement to identify originating service.
    #
    #   @return [String]
    #
    # @!attribute quota_code
    #   Service Quotas requirement to identify originating quota.
    #
    #   @return [String]
    #
    # @!attribute retry_after_seconds
    #   Advice to clients on when the call can be safely retried.
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
    #   The ARN of the resource.
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   One or more tag keys
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

    # Represents the input of an UpdateWorkspaceAlias operation.
    #
    # @!attribute workspace_id
    #   The ID of the workspace being updated.
    #
    #   @return [String]
    #
    # @!attribute alias
    #   The new alias of the workspace.
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   Optional, unique, case-sensitive, user-provided identifier to ensure the idempotency of the request.
    #
    #   @return [String]
    #
    UpdateWorkspaceAliasInput = ::Struct.new(
      :workspace_id,
      :alias,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateWorkspaceAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # The input fails to satisfy the constraints specified by an AWS service.
    #
    # @!attribute message
    #   Description of the error.
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Reason the request failed validation.
    #
    #   Enum, one of: ["UNKNOWN_OPERATION", "CANNOT_PARSE", "FIELD_VALIDATION_FAILED", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   The field that caused the error, if applicable. If more than one field caused the error, pick one and elaborate in the message.
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

    # Stores information about a field passed inside a request that resulted in an exception.
    #
    # @!attribute name
    #   The field name.
    #
    #   @return [String]
    #
    # @!attribute message
    #   Message describing why the field failed validation.
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

    # Represents the properties of a workspace.
    #
    # @!attribute workspace_id
    #   Unique string identifying this workspace.
    #
    #   @return [String]
    #
    # @!attribute alias
    #   Alias of this workspace.
    #
    #   @return [String]
    #
    # @!attribute arn
    #   The Amazon Resource Name (ARN) of this workspace.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of this workspace.
    #
    #   @return [WorkspaceStatus]
    #
    # @!attribute prometheus_endpoint
    #   Prometheus endpoint URI.
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   The time when the workspace was created.
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   The tags of this workspace.
    #
    #   @return [Hash<String, String>]
    #
    WorkspaceDescription = ::Struct.new(
      :workspace_id,
      :alias,
      :arn,
      :status,
      :prometheus_endpoint,
      :created_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Represents the status of a workspace.
    #
    # @!attribute status_code
    #   Status code of this workspace.
    #
    #   Enum, one of: ["CREATING", "ACTIVE", "UPDATING", "DELETING", "CREATION_FAILED"]
    #
    #   @return [String]
    #
    WorkspaceStatus = ::Struct.new(
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorkspaceStatusCode
    #
    module WorkspaceStatusCode
      # Workspace is being created. Deletion is disallowed until status is ACTIVE.
      #
      CREATING = "CREATING"

      # Workspace has been created and is usable.
      #
      ACTIVE = "ACTIVE"

      # Workspace is being updated. Updates are allowed only when status is ACTIVE.
      #
      UPDATING = "UPDATING"

      # Workspace is being deleted. Deletions are allowed only when status is ACTIVE.
      #
      DELETING = "DELETING"

      # Workspace creation failed. Refer to WorkspaceStatus.failureReason for more details.
      #
      CREATION_FAILED = "CREATION_FAILED"
    end

    # Represents a summary of the properties of a workspace.
    #
    # @!attribute workspace_id
    #   Unique string identifying this workspace.
    #
    #   @return [String]
    #
    # @!attribute alias
    #   Alias of this workspace.
    #
    #   @return [String]
    #
    # @!attribute arn
    #   The AmazonResourceName of this workspace.
    #
    #   @return [String]
    #
    # @!attribute status
    #   The status of this workspace.
    #
    #   @return [WorkspaceStatus]
    #
    # @!attribute created_at
    #   The time when the workspace was created.
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   The tags of this workspace.
    #
    #   @return [Hash<String, String>]
    #
    WorkspaceSummary = ::Struct.new(
      :workspace_id,
      :alias,
      :arn,
      :status,
      :created_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
