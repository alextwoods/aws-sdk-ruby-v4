# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudFormation
  module Types

    # <p>Structure that contains the results of the account gate function which CloudFormation invokes, if present, before proceeding with a stack set operation in an account and
    #          Region.</p>
    #          <p>For each account and Region, CloudFormation lets you specify a Lambda
    #          function that encapsulates any requirements that must be met before CloudFormation
    #          can proceed with a stack set operation in that account and Region. CloudFormation
    #          invokes the function each time a stack set operation is requested for that account and
    #          Region; if the function returns <code>FAILED</code>, CloudFormation cancels the
    #          operation in that account and Region, and sets the stack set operation result status for
    #          that account and Region to <code>FAILED</code>.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-account-gating.html">Configuring a
    #             target account gate</a>.</p>
    #
    # @!attribute status
    #   <p>The status of the account gate function.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The account gate function has determined that the account
    #                  and Region passes any requirements for a stack set operation to occur. CloudFormation proceeds with the stack operation in that account and
    #                  Region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The account gate function has determined that the account and
    #                  Region doesn't meet the requirements for a stack set operation to occur. CloudFormation cancels the stack set operation in that account and Region, and sets
    #                  the stack set operation result status for that account and Region to
    #                     <code>FAILED</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>: CloudFormation has skipped calling the account gate
    #                  function for this account and Region, for one of the following reasons:</p>
    #                  <ul>
    #                     <li>
    #                        <p>An account gate function hasn't been specified for the account and Region.
    #                           CloudFormation proceeds with the stack set operation in this account
    #                        and Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>The <code>AWSCloudFormationStackSetExecutionRole</code> of the stack set
    #                        administration account lacks permissions to invoke the function. CloudFormation proceeds with the stack set operation in this account and
    #                        Region.</p>
    #                     </li>
    #                     <li>
    #                        <p>Either no action is necessary, or no action is possible, on the stack.
    #                           CloudFormation skips the stack set operation in this account and
    #                        Region.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "SKIPPED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the account gate status assigned to this account and Region for the stack
    #            set operation.</p>
    #
    #   @return [String]
    #
    AccountGateResult = ::Struct.new(
      :status,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountGateStatus
    #
    module AccountGateStatus
      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      SKIPPED = "SKIPPED"
    end

    # <p>The AccountLimit data type.</p>
    #          <p>CloudFormation has the following limits per account:</p>
    #          <ul>
    #             <li>
    #                <p>Number of concurrent resources</p>
    #             </li>
    #             <li>
    #                <p>Number of stacks</p>
    #             </li>
    #             <li>
    #                <p>Number of stack outputs</p>
    #             </li>
    #          </ul>
    #          <p>For more information about these account limits, and other CloudFormation
    #          limits, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">CloudFormation
    #             quotas</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    # @!attribute name
    #   <p>The name of the account limit.</p>
    #            <p>Values: <code>ConcurrentResourcesLimit</code> | <code>StackLimit</code> |
    #               <code>StackOutputsLimit</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value that's associated with the account limit name.</p>
    #
    #   @return [Integer]
    #
    AccountLimit = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute public_type_arn
    #   <p>The Amazon Resource Name (ARN) of the public extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name_alias
    #   <p>An alias to assign to the public extension, in this account and region. If you specify
    #            an alias for the extension, CloudFormation treats the alias as the extension type
    #            name within this account and region. You must use the alias to refer to the extension in
    #            your templates, API calls, and CloudFormation console.</p>
    #            <p>An extension alias must be unique within a given account and region. You can activate
    #            the same public resource multiple times in the same account and region, using different
    #            type name aliases.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_update
    #   <p>Whether to automatically update the extension in this account and region when a new
    #               <i>minor</i> version is published by the extension publisher. Major
    #            versions released by the publisher must be manually updated.</p>
    #            <p>The default is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute logging_config
    #   <p>Contains logging configuration information for an extension.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute execution_role_arn
    #   <p>The name of the IAM execution role to use to activate the
    #            extension.</p>
    #
    #   @return [String]
    #
    # @!attribute version_bump
    #   <p>Manually updates a previously-activated type to a new major or minor version, if
    #            available. You can also use this parameter to update the value of
    #            <code>AutoUpdate</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MAJOR</code>: CloudFormation updates the extension to the newest
    #                  major version, if one is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MINOR</code>: CloudFormation updates the extension to the newest
    #                  minor version, if one is available.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["MAJOR", "MINOR"]
    #
    #   @return [String]
    #
    # @!attribute major_version
    #   <p>The major version of this extension you want to activate, if multiple major versions are
    #            available. The default is the latest major version. CloudFormation uses the latest
    #            available <i>minor</i> version of the major version selected.</p>
    #            <p>You can specify <code>MajorVersion</code> or <code>VersionBump</code>, but not
    #            both.</p>
    #
    #   @return [Integer]
    #
    ActivateTypeInput = ::Struct.new(
      :type,
      :public_type_arn,
      :publisher_id,
      :type_name,
      :type_name_alias,
      :auto_update,
      :logging_config,
      :execution_role_arn,
      :version_bump,
      :major_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the activated extension, in this account and
    #            region.</p>
    #
    #   @return [String]
    #
    ActivateTypeOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource with the name requested already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>[Service-managed permissions] Describes whether StackSets automatically deploys to
    #             Organizations accounts that are added to a target organization or organizational
    #          unit (OU).</p>
    #
    # @!attribute enabled
    #   <p>If set to <code>true</code>, StackSets automatically deploys additional stack instances
    #            to Organizations accounts that are added to a target organization or organizational
    #            unit (OU) in the specified Regions. If an account is removed from a target organization or
    #            OU, StackSets deletes stack instances from the account in the specified Regions.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute retain_stacks_on_account_removal
    #   <p>If set to <code>true</code>, stack resources are retained when an account is removed
    #            from a target organization or OU. If set to <code>false</code>, stack resources are
    #            deleted. Specify only if <code>Enabled</code> is set to <code>True</code>.</p>
    #
    #   @return [Boolean]
    #
    AutoDeployment = ::Struct.new(
      :enabled,
      :retain_stacks_on_account_removal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information concerning an error generated during the setting of configuration
    #          data for a CloudFormation extension.</p>
    #
    # @!attribute error_code
    #   <p>The error code.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message.</p>
    #
    #   @return [String]
    #
    # @!attribute type_configuration_identifier
    #   <p>Identifying information for the configuration of a CloudFormation
    #            extension.</p>
    #
    #   @return [TypeConfigurationIdentifier]
    #
    BatchDescribeTypeConfigurationsError = ::Struct.new(
      :error_code,
      :error_message,
      :type_configuration_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_configuration_identifiers
    #   <p>The list of identifiers for the desired extension configurations.</p>
    #
    #   @return [Array<TypeConfigurationIdentifier>]
    #
    BatchDescribeTypeConfigurationsInput = ::Struct.new(
      :type_configuration_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute errors
    #   <p>A list of information concerning any errors generated during the setting of the
    #            specified configurations.</p>
    #
    #   @return [Array<BatchDescribeTypeConfigurationsError>]
    #
    # @!attribute unprocessed_type_configurations
    #   <p>A list of any of the specified extension configurations that CloudFormation
    #            could not process for any reason.</p>
    #
    #   @return [Array<TypeConfigurationIdentifier>]
    #
    # @!attribute type_configurations
    #   <p>A list of any of the specified extension configurations from the CloudFormation
    #            registry.</p>
    #
    #   @return [Array<TypeConfigurationDetails>]
    #
    BatchDescribeTypeConfigurationsOutput = ::Struct.new(
      :errors,
      :unprocessed_type_configurations,
      :type_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occurred during a CloudFormation registry operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CFNRegistryException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CallAs
    #
    module CallAs
      # No documentation available.
      #
      SELF = "SELF"

      # No documentation available.
      #
      DELEGATED_ADMIN = "DELEGATED_ADMIN"
    end

    # <p>The input for the <a>CancelUpdateStack</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this token
    #            if you plan to retry requests so that CloudFormation knows that you're not attempting
    #            to cancel an update on a stack with the same name. You might retry
    #               <code>CancelUpdateStack</code> requests to ensure that CloudFormation successfully
    #            received them.</p>
    #
    #   @return [String]
    #
    CancelUpdateStackInput = ::Struct.new(
      :stack_name,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelUpdateStackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for Capability
    #
    module Capability
      # No documentation available.
      #
      CAPABILITY_IAM = "CAPABILITY_IAM"

      # No documentation available.
      #
      CAPABILITY_NAMED_IAM = "CAPABILITY_NAMED_IAM"

      # No documentation available.
      #
      CAPABILITY_AUTO_EXPAND = "CAPABILITY_AUTO_EXPAND"
    end

    # Includes enum constants for Category
    #
    module Category
      # No documentation available.
      #
      REGISTERED = "REGISTERED"

      # No documentation available.
      #
      ACTIVATED = "ACTIVATED"

      # No documentation available.
      #
      THIRD_PARTY = "THIRD_PARTY"

      # No documentation available.
      #
      AWS_TYPES = "AWS_TYPES"
    end

    # <p>The <code>Change</code> structure describes the changes CloudFormation will perform
    #          if you execute the change set.</p>
    #
    # @!attribute type
    #   <p>The type of entity that CloudFormation changes. Currently, the only entity type is
    #               <code>Resource</code>.</p>
    #
    #   Enum, one of: ["Resource"]
    #
    #   @return [String]
    #
    # @!attribute hook_invocation_count
    #   <p>Is either <code>null</code>, if no hooks invoke for the resource, or contains the number
    #            of hooks that will invoke for the resource.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_change
    #   <p>A <code>ResourceChange</code> structure that describes the resource and action that
    #               CloudFormation will perform.</p>
    #
    #   @return [ResourceChange]
    #
    Change = ::Struct.new(
      :type,
      :hook_invocation_count,
      :resource_change,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeAction
    #
    module ChangeAction
      # No documentation available.
      #
      Add = "Add"

      # No documentation available.
      #
      Modify = "Modify"

      # No documentation available.
      #
      Remove = "Remove"

      # No documentation available.
      #
      Import = "Import"

      # No documentation available.
      #
      Dynamic = "Dynamic"
    end

    # <p>Specifies the resource, the hook, and the hook version to be invoked.</p>
    #
    # @!attribute invocation_point
    #   <p>Specifies the points in provisioning logic where a hook is invoked.</p>
    #
    #   Enum, one of: ["PRE_PROVISION"]
    #
    #   @return [String]
    #
    # @!attribute failure_mode
    #   <p>Specify the hook failure mode for non-compliant resources in the followings ways.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code> Stops provisioning resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN</code> Allows provisioning to continue with a warning message.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FAIL", "WARN"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The unique name for your hook. Specifies a three-part namespace for your hook, with a
    #            recommended pattern of <code>Organization::Service::Hook</code>.</p>
    #            <note>
    #               <p>The following organization namespaces are reserved and can't be used in your hook
    #               type names:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>Alexa</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AMZN</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>ASK</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Custom</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Dev</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute type_version_id
    #   <p>The version ID of the type specified.</p>
    #
    #   @return [String]
    #
    # @!attribute type_configuration_version_id
    #   <p>The version ID of the type configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute target_details
    #   <p>Specifies details about the target that the hook will run against.</p>
    #
    #   @return [ChangeSetHookTargetDetails]
    #
    ChangeSetHook = ::Struct.new(
      :invocation_point,
      :failure_mode,
      :type_name,
      :type_version_id,
      :type_configuration_version_id,
      :target_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies <code>RESOURCE</code> type target details for activated hooks.</p>
    #
    # @!attribute logical_resource_id
    #   <p>The resource's logical ID, which is defined in the stack's template.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of CloudFormation resource, such as <code>AWS::S3::Bucket</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_action
    #   <p>Specifies the action of the resource.</p>
    #
    #   Enum, one of: ["Add", "Modify", "Remove", "Import", "Dynamic"]
    #
    #   @return [String]
    #
    ChangeSetHookResourceTargetDetails = ::Struct.new(
      :logical_resource_id,
      :resource_type,
      :resource_action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies target details for an activated hook.</p>
    #
    # @!attribute target_type
    #   <p>The name of the type.</p>
    #
    #   Enum, one of: ["RESOURCE"]
    #
    #   @return [String]
    #
    # @!attribute resource_target_details
    #   <p>Required if <code>TargetType</code> is <code>RESOURCE</code>.</p>
    #
    #   @return [ChangeSetHookResourceTargetDetails]
    #
    ChangeSetHookTargetDetails = ::Struct.new(
      :target_type,
      :resource_target_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeSetHooksStatus
    #
    module ChangeSetHooksStatus
      # No documentation available.
      #
      PLANNING = "PLANNING"

      # No documentation available.
      #
      PLANNED = "PLANNED"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"
    end

    # <p>The specified change set name or ID doesn't exit. To view valid change sets for a stack,
    #          use the <code>ListChangeSets</code> operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ChangeSetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeSetStatus
    #
    module ChangeSetStatus
      # No documentation available.
      #
      CREATE_PENDING = "CREATE_PENDING"

      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      DELETE_PENDING = "DELETE_PENDING"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The <code>ChangeSetSummary</code> structure describes a change set, its status, and the
    #          stack with which it's associated.</p>
    #
    # @!attribute stack_id
    #   <p>The ID of the stack with which the change set is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack with which the change set is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_id
    #   <p>The ID of the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_name
    #   <p>The name of the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_status
    #   <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change
    #            set. If you can't execute the change set, the status indicates why. For example, a change
    #            set might be in an <code>UNAVAILABLE</code> state because CloudFormation is still
    #            creating it or in an <code>OBSOLETE</code> state because the stack was already
    #            updated.</p>
    #
    #   Enum, one of: ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The state of the change set, such as <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
    #
    #   Enum, one of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>A description of the change set's status. For example, if your change set is in the
    #               <code>FAILED</code> state, CloudFormation shows the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The start time when the change set was created, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>Descriptive information about the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute include_nested_stacks
    #   <p>Specifies the current setting of <code>IncludeNestedStacks</code> for the change
    #            set.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_change_set_id
    #   <p>The parent change set ID.</p>
    #
    #   @return [String]
    #
    # @!attribute root_change_set_id
    #   <p>The root change set ID.</p>
    #
    #   @return [String]
    #
    ChangeSetSummary = ::Struct.new(
      :stack_id,
      :stack_name,
      :change_set_id,
      :change_set_name,
      :execution_status,
      :status,
      :status_reason,
      :creation_time,
      :description,
      :include_nested_stacks,
      :parent_change_set_id,
      :root_change_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeSetType
    #
    module ChangeSetType
      # No documentation available.
      #
      CREATE = "CREATE"

      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      IMPORT = "IMPORT"
    end

    # Includes enum constants for ChangeSource
    #
    module ChangeSource
      # No documentation available.
      #
      ResourceReference = "ResourceReference"

      # No documentation available.
      #
      ParameterReference = "ParameterReference"

      # No documentation available.
      #
      ResourceAttribute = "ResourceAttribute"

      # No documentation available.
      #
      DirectModification = "DirectModification"

      # No documentation available.
      #
      Automatic = "Automatic"
    end

    # Includes enum constants for ChangeType
    #
    module ChangeType
      # No documentation available.
      #
      Resource = "Resource"
    end

    # <p>The input for the <a>ContinueUpdateRollback</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique ID of the stack that you want to continue rolling back.</p>
    #            <note>
    #               <p>Don't specify the name of a nested stack (a stack that was created by using the
    #                  <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the
    #               parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code>
    #               resource).</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to roll back the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation always uses this
    #            role for all future operations on the stack. Provided that users have permission to operate
    #            on the stack, CloudFormation uses this role even if the users don't have permission
    #            to pass it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that's generated from your user credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute resources_to_skip
    #   <p>A list of the logical IDs of the resources that CloudFormation skips during the
    #            continue update rollback operation. You can specify only resources that are in the
    #               <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources
    #            that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an
    #            update was canceled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason.</p>
    #            <important>
    #               <p>Specify this property to skip rolling back resources that CloudFormation
    #               can't successfully roll back. We recommend that you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. CloudFormation sets
    #               the status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to
    #               roll back the stack. After the rollback is complete, the state of the skipped resources
    #               will be inconsistent with the state of the resources in the stack template. Before
    #               performing another stack update, you must update the stack or resources to be consistent
    #               with each other. If you don't, subsequent stack updates might fail, and the stack will
    #               become unrecoverable.</p>
    #            </important>
    #            <p>Specify the minimum number of resources required to successfully roll back your stack.
    #            For example, a failed resource update might cause dependent resources to fail. In this
    #            case, it might not be necessary to skip the dependent resources.</p>
    #            <p>To skip resources that are part of nested stacks, use the following format:
    #               <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of
    #            a stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the
    #               <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one
    #            of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
    #               <code>DELETE_FAILED</code>.</p>
    #            <note>
    #               <p>Don't confuse a child stack's name with its corresponding logical ID defined in the
    #               parent stack. For an example of a continue update rollback operation with nested stacks,
    #               see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html nested-stacks">Using ResourcesToSkip to recover a nested stacks hierarchy</a>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify this
    #            token if you plan to retry requests so that CloudFormationknows that you're not
    #            attempting to continue the rollback to a stack with the same name. You might retry
    #               <code>ContinueUpdateRollback</code> requests to ensure that CloudFormation
    #            successfully received them.</p>
    #
    #   @return [String]
    #
    ContinueUpdateRollbackInput = ::Struct.new(
      :stack_name,
      :role_arn,
      :resources_to_skip,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>ContinueUpdateRollback</a> operation.</p>
    #
    ContinueUpdateRollbackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>CreateChangeSet</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique ID of the stack for which you are creating a change set. CloudFormation generates the change set by comparing this stack's information with the
    #            information that you submit, such as a modified template or different parameter input
    #            values.</p>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>A structure that contains the body of the revised template, with a minimum length of 1
    #            byte and a maximum length of 51,200 bytes. CloudFormation generates the change set by
    #            comparing this template with the template of the stack that you specified.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #            <code>TemplateURL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>The location of the file that contains the revised template. The URL must point to a
    #            template (max size: 460,800 bytes) that's located in an Amazon S3 bucket or a
    #            Systems Manager document. CloudFormation generates the change set by comparing this
    #            template with the stack that you specified.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #            <code>TemplateURL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute use_previous_template
    #   <p>Whether to reuse the template that's associated with the stack to create the change
    #            set.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the change
    #            set. For more information, see the <a>Parameter</a> data type.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks, you must explicitly acknowledge this
    #                  by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation
    #                        returns an <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this
    #                  can include simple actions like find-and-replace operations, all the way to extensive
    #                  transformations of entire templates. Because of this, users typically create a change
    #                  set from the processed template, so that they can review the changes resulting from
    #                  the macros before actually creating the stack. If your stack template contains one or
    #                  more macros, and you choose to create a stack directly from the processed template,
    #                  without first reviewing the resulting changes in a change set, you must acknowledge
    #                  this capability. This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <note>
    #                     <p>This capacity doesn't apply to creating change sets, and specifying it when
    #                     creating change sets has no effect.</p>
    #                     <p>If you want to create a stack from a stack template that contains macros
    #                        <i>and</i> nested stacks, you must create or update the stack
    #                     directly from the template using the <a>CreateStack</a> or <a>UpdateStack</a> action, and specifying this capability.</p>
    #                  </note>
    #                  <p>For more information about macros, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using CloudFormation macros to
    #                     perform custom processing on templates</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_types
    #   <p>The template resource types that you have permissions to work with if you execute this
    #            change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #               <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource type that you're updating, the
    #            stack update fails. By default, CloudFormation grants permissions to all resource
    #            types. Identity and Access Management (IAM) uses this parameter for condition keys
    #            in IAM policies for CloudFormation. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling access with Identity and Access Management</a> in the CloudFormation User Guide.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes when executing the change set. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation uses this role for all
    #            future operations on the stack. Provided that users have permission to operate on the
    #            stack, CloudFormation uses this role even if the users don't have permission to pass
    #            it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that is generated from your user credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    #   @return [RollbackConfiguration]
    #
    # @!attribute notification_ar_ns
    #   <p>The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics
    #            that CloudFormation associates with the stack. To remove all associated notification
    #            topics, specify an empty list.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these
    #            tags to resources in the stack. You can specify a maximum of 50 tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute change_set_name
    #   <p>The name of the change set. The name must be unique among all change sets that are
    #            associated with the specified stack.</p>
    #            <p>A change set name can contain only alphanumeric, case sensitive characters, and hyphens.
    #            It must start with an alphabetical character and can't exceed 128 characters.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if
    #            you plan to retry requests so that CloudFormation knows that you're not attempting to
    #            create another change set with the same name. You might retry <code>CreateChangeSet</code>
    #            requests to ensure that CloudFormation successfully received them.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description to help you identify this change set.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_type
    #   <p>The type of change set operation. To create a change set for a new stack, specify
    #               <code>CREATE</code>. To create a change set for an existing stack, specify
    #               <code>UPDATE</code>. To create a change set for an import operation, specify
    #               <code>IMPORT</code>.</p>
    #            <p>If you create a change set for a new stack, CloudFormation creates a stack with a
    #            unique stack ID, but no template or resources. The stack will be in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html d0e11995">
    #                  <code>REVIEW_IN_PROGRESS</code>
    #               </a> state until you execute the change
    #            set.</p>
    #            <p>By default, CloudFormation specifies <code>UPDATE</code>. You can't use the
    #               <code>UPDATE</code> type to create a change set for a new stack or the
    #               <code>CREATE</code> type to create a change set for an existing stack.</p>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "IMPORT"]
    #
    #   @return [String]
    #
    # @!attribute resources_to_import
    #   <p>The resources to import into your stack.</p>
    #
    #   @return [Array<ResourceToImport>]
    #
    # @!attribute include_nested_stacks
    #   <p>Creates a change set for the all nested stacks specified in the template. The default
    #            behavior of this action is set to <code>False</code>. To include nested sets in a change
    #            set, specify <code>True</code>.</p>
    #
    #   @return [Boolean]
    #
    CreateChangeSetInput = ::Struct.new(
      :stack_name,
      :template_body,
      :template_url,
      :use_previous_template,
      :parameters,
      :capabilities,
      :resource_types,
      :role_arn,
      :rollback_configuration,
      :notification_ar_ns,
      :tags,
      :change_set_name,
      :client_token,
      :description,
      :change_set_type,
      :resources_to_import,
      :include_nested_stacks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>CreateChangeSet</a> action.</p>
    #
    # @!attribute id
    #   <p>The Amazon Resource Name (ARN) of the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The unique ID of the stack.</p>
    #
    #   @return [String]
    #
    CreateChangeSetOutput = ::Struct.new(
      :id,
      :stack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>CreateStack</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name that's associated with the stack. The name must be unique in the Region in
    #            which you are creating the stack.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case sensitive) and hyphens.
    #               It must start with an alphabetical character and can't be longer than 128
    #               characters.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #               <code>TemplateURL</code> parameter, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>Location of file containing the template body. The URL must point to a template (max
    #            size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager
    #            document. For more information, go to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #               <code>TemplateURL</code> parameter, but not both.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #            For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #            type.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute disable_rollback
    #   <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You
    #            can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not
    #            both.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    #   @return [RollbackConfiguration]
    #
    # @!attribute timeout_in_minutes
    #   <p>The amount of time that can pass before the stack status becomes CREATE_FAILED; if
    #               <code>DisableRollback</code> is not set or is set to <code>false</code>, the stack will
    #            be rolled back.</p>
    #
    #   @return [Integer]
    #
    # @!attribute notification_ar_ns
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic ARNs to publish stack related
    #            events. You can find your Amazon SNS topic ARNs using the Amazon SNS
    #            console or your Command Line Interface (CLI).</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks, you must explicitly acknowledge this
    #                  by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this
    #                  can include simple actions like find-and-replace operations, all the way to extensive
    #                  transformations of entire templates. Because of this, users typically create a change
    #                  set from the processed template, so that they can review the changes resulting from
    #                  the macros before actually creating the stack. If your stack template contains one or
    #                  more macros, and you choose to create a stack directly from the processed template,
    #                  without first reviewing the resulting changes in a change set, you must acknowledge
    #                  this capability. This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to create a stack from a stack template that contains macros
    #                     <i>and</i> nested stacks, you must create the stack directly from
    #                  the template using this capability.</p>
    #                  <important>
    #                     <p>You should only create stacks directly from a stack template that contains
    #                     macros if you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for
    #                     processing stack templates. Be aware that the Lambda function owner
    #                     can update the function operation without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
    #                        CloudFormation macros to perform custom processing on
    #                  templates</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_types
    #   <p>The template resource types that you have permissions to work with for this create stack
    #            action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #               <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template
    #            resource types: <code>AWS::*</code> (for all Amazon Web Services resources),
    #               <code>Custom::*</code> (for all custom resources),
    #                  <code>Custom::<i>logical_ID</i>
    #               </code> (for a specific custom resource),
    #               <code>AWS::<i>service_name</i>::*</code> (for all resources of a
    #            particular Amazon Web Services service), and
    #                  <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i>
    #               </code> (for a specific Amazon Web Services resource).</p>
    #            <p>If the list of resource types doesn't include a resource that you're creating, the stack
    #            creation fails. By default, CloudFormation grants permissions to all resource
    #            types. Identity and Access Management (IAM) uses this parameter for CloudFormation-specific condition keys in IAM policies. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with
    #                  Identity and Access Management</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to create the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation always uses this
    #            role for all future operations on the stack. Provided that users have permission to operate
    #            on the stack, CloudFormation uses this role even if the users don't have permission
    #            to pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that's generated from your user credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute on_failure
    #   <p>Determines what action will be taken if stack creation fails. This must be one of:
    #               <code>DO_NOTHING</code>, <code>ROLLBACK</code>, or <code>DELETE</code>. You can specify
    #            either <code>OnFailure</code> or <code>DisableRollback</code>, but not both.</p>
    #            <p>Default: <code>ROLLBACK</code>
    #            </p>
    #
    #   Enum, one of: ["DO_NOTHING", "ROLLBACK", "DELETE"]
    #
    #   @return [String]
    #
    # @!attribute stack_policy_body
    #   <p>Structure containing the stack policy body. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates
    #               to Stack Resources</a> in the <i>CloudFormation User Guide</i>. You can specify
    #            either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but
    #            not both.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_policy_url
    #   <p>Location of a file containing the stack policy. The URL must point to a policy (maximum
    #            size: 16 KB) located in an S3 bucket in the same Region as the stack. You can specify
    #            either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but
    #            not both.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates
    #            these tags to the resources created in the stack. A maximum number of 50 tags can be
    #            specified.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you
    #            plan to retry requests so that CloudFormation knows that you're not attempting to
    #            create a stack with the same name. You might retry <code>CreateStack</code> requests to
    #            ensure that CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack. If a user attempts to
    #            delete a stack with termination protection enabled, the operation fails and the stack
    #            remains unchanged. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a Stack From Being
    #               Deleted</a> in the <i>CloudFormation User Guide</i>. Termination protection is
    #            deactivated on stacks by default.</p>
    #            <p>For <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #            termination protection is set on the root stack and can't be changed directly on the nested
    #            stack.</p>
    #
    #   @return [Boolean]
    #
    CreateStackInput = ::Struct.new(
      :stack_name,
      :template_body,
      :template_url,
      :parameters,
      :disable_rollback,
      :rollback_configuration,
      :timeout_in_minutes,
      :notification_ar_ns,
      :capabilities,
      :resource_types,
      :role_arn,
      :on_failure,
      :stack_policy_body,
      :stack_policy_url,
      :tags,
      :client_request_token,
      :enable_termination_protection,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to create stack instances
    #            from.</p>
    #
    #   @return [String]
    #
    # @!attribute accounts
    #   <p>[Self-managed permissions] The names of one or more Amazon Web Services accounts that you
    #            want to create stack instances in the specified Region(s) for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts for which to create
    #            stack instances in the specified Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    #   @return [DeploymentTargets]
    #
    # @!attribute regions
    #   <p>The names of one or more Amazon Web Services Regions where you want to create stack
    #            instances using the specified Amazon Web Services accounts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parameter_overrides
    #   <p>A list of stack set parameters whose values you want to override in the selected stack
    #            instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #            accounts and Amazon Web Services Regions. When specifying parameters and their values, be
    #            aware of how CloudFormation sets parameter values during stack instance
    #            operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify
    #                  its value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter
    #                  and specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify
    #                  both a value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the stack set,
    #                  specify a parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property
    #                  at all.</p>
    #               </li>
    #            </ul>
    #            <p>During stack set updates, any parameter values overridden for a stack instance aren't
    #            updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in
    #            the stack set; to add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update the stack set template.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #            <p>Repeating this stack set operation with a new operation ID retries all stack instances
    #            whose status is <code>OUTDATED</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the
    #                     <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    CreateStackInstancesInput = ::Struct.new(
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #
    #   @return [String]
    #
    CreateStackInstancesOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>CreateStack</a> action.</p>
    #
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #
    #   @return [String]
    #
    CreateStackOutput = ::Struct.new(
      :stack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name to associate with the stack set. The name must be unique in the Region where
    #            you create your stack set.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case-sensitive) and hyphens.
    #               It must start with an alphabetic character and can't be longer than 128
    #               characters.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the stack set. You can use the description to identify the stack set's
    #            purpose or other important information.</p>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #            maximum length of 51,200 bytes. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but
    #            not both.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>The location of the file that contains the template body. The URL must point to a
    #            template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket or a
    #            Systems Manager document. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but
    #            not both.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The stack ID you are importing into a new stack set. Specify the Amazon Resource Name
    #            (ARN) of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The input parameters for the stack set template.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack set template contains
    #            certain capabilities in order for CloudFormation to create the stack set and related stack
    #            instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stack sets, you must explicitly acknowledge
    #                  this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your stack set template references one or more
    #                  macros, you must create the stack set directly from the processed template, without
    #                  first reviewing the resulting changes in a change set. To create the stack set
    #                  directly, you must acknowledge this capability. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using CloudFormation Macros to
    #                     Perform Custom Processing on Templates</a>.</p>
    #                  <important>
    #                     <p>Stack sets with service-managed permissions don't currently support the use of
    #                     macros in templates. (This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
    #                     transforms, which are macros hosted by CloudFormation.) Even if you specify this capability
    #                     for a stack set with service-managed permissions, if you reference a macro in your
    #                     template the stack set operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The key-value pairs to associate with this stack set and the stacks created from it.
    #               CloudFormation also propagates these tags to supported resources that are
    #            created in the stacks. A maximum number of 50 tags can be specified.</p>
    #            <p>If you specify tags as part of a <code>CreateStackSet</code> action, CloudFormation checks to see if you have the required IAM permission to
    #            tag resources. If you don't, the entire <code>CreateStackSet</code> action fails with an
    #               <code>access denied</code> error, and the stack set is not created.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use to create this
    #            stack set.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles
    #            to control which users or groups can manage specific stack sets within the same
    #            administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites: Granting Permissions for Stack
    #               Set Operations</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role to use to create the stack set. If you
    #            do not specify an execution role, CloudFormation uses the
    #               <code>AWSCloudFormationStackSetExecutionRole</code> role for the stack set
    #            operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to
    #            control which stack resources users and groups can include in their stack sets.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for stack set operations are
    #            created. By default, <code>SELF-MANAGED</code> is specified.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #                  execution roles required to deploy to target accounts. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #                     Self-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #                     IAM roles required to deploy to accounts managed by Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "SELF_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute auto_deployment
    #   <p>Describes whether StackSets automatically deploys to Organizations accounts that
    #            are added to the target organization or organizational unit (OU). Specify only if
    #               <code>PermissionModel</code> is <code>SERVICE_MANAGED</code>.</p>
    #
    #   @return [AutoDeployment]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a stack set with service-managed permissions while signed in to the
    #                     management account, specify <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a stack set with service-managed permissions while signed in to a
    #                  delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated admin in the
    #                     management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>Stack sets with service-managed permissions are created in the management account, including stack sets that are created by delegated
    #            administrators.</p>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>CreateStackSet</code> request. Specify this token if
    #            you plan to retry requests so that CloudFormation knows that you're not attempting
    #            to create another stack set with the same name. You might retry <code>CreateStackSet</code>
    #            requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #            conflicting operations.</p>
    #
    #   @return [ManagedExecution]
    #
    CreateStackSetInput = ::Struct.new(
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :stack_id,
      :parameters,
      :capabilities,
      :tags,
      :administration_role_arn,
      :execution_role_name,
      :permission_model,
      :auto_deployment,
      :call_as,
      :client_request_token,
      :managed_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_id
    #   <p>The ID of the stack set that you're creating.</p>
    #
    #   @return [String]
    #
    CreateStackSetOutput = ::Struct.new(
      :stack_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource exists, but has been changed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CreatedButModifiedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_name
    #   <p>The type name of the extension, in this account and region. If you specified a type name
    #            alias when enabling the extension, use the type name alias.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and region.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   @return [String]
    #
    DeactivateTypeInput = ::Struct.new(
      :type_name,
      :type,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeactivateTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DeleteChangeSet</a> action.</p>
    #
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>If you specified the name of a change set to delete, specify the stack name or Amazon
    #            Resource Name (ARN) that's associated with it.</p>
    #
    #   @return [String]
    #
    DeleteChangeSetInput = ::Struct.new(
      :change_set_name,
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DeleteChangeSet</a> action.</p>
    #
    DeleteChangeSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>DeleteStack</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute retain_resources
    #   <p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs that
    #            are associated with the resources you want to retain. During deletion, CloudFormation deletes the stack but doesn't delete the retained resources.</p>
    #            <p>Retaining resources is useful when you can't delete a resource, such as a non-empty S3
    #            bucket, but you want to delete the stack.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to delete the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that's generated from your user credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you
    #            plan to retry requests so that CloudFormation knows that you're not attempting to
    #            delete a stack with the same name. You might retry <code>DeleteStack</code> requests to
    #            ensure that CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    #   @return [String]
    #
    DeleteStackInput = ::Struct.new(
      :stack_name,
      :retain_resources,
      :role_arn,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to delete stack instances
    #            for.</p>
    #
    #   @return [String]
    #
    # @!attribute accounts
    #   <p>[Self-managed permissions] The names of the Amazon Web Services accounts that you want to
    #            delete stack instances for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts from which to delete
    #            stack instances.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    #   @return [DeploymentTargets]
    #
    # @!attribute regions
    #   <p>The Amazon Web Services Regions where you want to delete stack set instances.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute retain_stacks
    #   <p>Removes the stack instances from the specified stack set, but doesn't delete the stacks.
    #            You can't reassociate a retained stack or add an existing, saved stack to a new stack
    #            set.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html stackset-ops-options">Stack set operation options</a>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You can retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>Repeating this stack set operation with a new operation ID retries all stack instances
    #            whose status is <code>OUTDATED</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    DeleteStackInstancesInput = ::Struct.new(
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :operation_preferences,
      :retain_stacks,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.retain_stacks ||= false
      end

    end

    # @!attribute operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #
    #   @return [String]
    #
    DeleteStackInstancesOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStackOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you're deleting. You can obtain this value
    #            by running <a>ListStackSets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    DeleteStackSetInput = ::Struct.new(
      :stack_set_name,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteStackSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>[Service-managed permissions] The Organizations accounts to which StackSets
    #          deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in
    #          your organization or in an OU in your organization.</p>
    #          <p>For update operations, you can specify either <code>Accounts</code> or
    #             <code>OrganizationalUnitIds</code>. For create and delete operations, specify
    #             <code>OrganizationalUnitIds</code>.</p>
    #
    # @!attribute accounts
    #   <p>The names of one or more Amazon Web Services accounts for which you want to deploy stack
    #            set updates.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute accounts_url
    #   <p>Returns the value of the <code>AccountsUrl</code> property.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_ids
    #   <p>The organization root ID or organizational unit (OU) IDs to which StackSets
    #            deploys.</p>
    #
    #   @return [Array<String>]
    #
    DeploymentTargets = ::Struct.new(
      :accounts,
      :accounts_url,
      :organizational_unit_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeprecatedStatus
    #
    module DeprecatedStatus
      # No documentation available.
      #
      LIVE = "LIVE"

      # No documentation available.
      #
      DEPRECATED = "DEPRECATED"
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it is
    #            registered.</p>
    #
    #   @return [String]
    #
    DeregisterTypeInput = ::Struct.new(
      :arn,
      :type,
      :type_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DescribeAccountLimits</a> action.</p>
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of limits that you want to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeAccountLimitsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DescribeAccountLimits</a> action.</p>
    #
    # @!attribute account_limits
    #   <p>An account limit structure that contain a list of CloudFormation account limits and
    #            their values.</p>
    #
    #   @return [Array<AccountLimit>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of limits. If
    #            no additional page exists, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeAccountLimitsOutput = ::Struct.new(
      :account_limits,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to
    #            describe.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>If you specified the name of a change set, specify the stack name or stack ID (ARN) of
    #            the change set you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string, provided by the <code>DescribeChangeSetHooks</code> response output, that
    #            identifies the next page of information that you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>If specified, lists only the hooks related to the specified
    #               <code>LogicalResourceId</code>.</p>
    #
    #   @return [String]
    #
    DescribeChangeSetHooksInput = ::Struct.new(
      :change_set_name,
      :stack_name,
      :next_token,
      :logical_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute change_set_id
    #   <p>The change set identifier (stack ID).</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_name
    #   <p>The change set name.</p>
    #
    #   @return [String]
    #
    # @!attribute hooks
    #   <p>List of hook objects.</p>
    #
    #   @return [Array<ChangeSetHook>]
    #
    # @!attribute status
    #   <p>Provides the status of the change set hook.</p>
    #
    #   Enum, one of: ["PLANNING", "PLANNED", "UNAVAILABLE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Pagination token, <code>null</code> or empty if no more results.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The stack identifier (stack ID).</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The stack name.</p>
    #
    #   @return [String]
    #
    DescribeChangeSetHooksOutput = ::Struct.new(
      :change_set_id,
      :change_set_name,
      :hooks,
      :status,
      :next_token,
      :stack_id,
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>DescribeChangeSet</a> action.</p>
    #
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to
    #            describe.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>If you specified the name of a change set, specify the stack name or ID (ARN) of the
    #            change set you want to describe.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string (provided by the <a>DescribeChangeSet</a> response output) that
    #            identifies the next page of information that you want to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeChangeSetInput = ::Struct.new(
      :change_set_name,
      :stack_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>DescribeChangeSet</a> action.</p>
    #
    # @!attribute change_set_name
    #   <p>The name of the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_id
    #   <p>The Amazon Resource Name (ARN) of the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The Amazon Resource Name (ARN) of the stack that's associated with the change
    #            set.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name of the stack that's associated with the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>Information about the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that describes the input parameters and
    #            their values used to create the change set. For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data type.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute creation_time
    #   <p>The start time when the change set was created, in UTC.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution_status
    #   <p>If the change set execution status is <code>AVAILABLE</code>, you can execute the change
    #            set. If you can't execute the change set, the status indicates why. For example, a change
    #            set might be in an <code>UNAVAILABLE</code> state because CloudFormation is still
    #            creating it or in an <code>OBSOLETE</code> state because the stack was already
    #            updated.</p>
    #
    #   Enum, one of: ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the change set, such as <code>CREATE_IN_PROGRESS</code>,
    #               <code>CREATE_COMPLETE</code>, or <code>FAILED</code>.</p>
    #
    #   Enum, one of: ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>A description of the change set's status. For example, if your attempt to create a
    #            change set failed, CloudFormation shows the error message.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_ar_ns
    #   <p>The ARNs of the Amazon Simple Notification Service (Amazon SNS) topics that will be
    #            associated with the stack if you execute the change set.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    #   @return [RollbackConfiguration]
    #
    # @!attribute capabilities
    #   <p>If you execute the change set, the list of capabilities that were explicitly
    #            acknowledged when the change set was created.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>If you execute the change set, the tags that will be associated with the stack.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute changes
    #   <p>A list of <code>Change</code> structures that describes the resources CloudFormation
    #            changes if you execute the change set.</p>
    #
    #   @return [Array<Change>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB, a string that identifies the next page of changes. If there
    #            is no additional page, this value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute include_nested_stacks
    #   <p>Verifies if <code>IncludeNestedStacks</code> is set to <code>True</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_change_set_id
    #   <p>Specifies the change set ID of the parent change set in the current nested change set
    #            hierarchy.</p>
    #
    #   @return [String]
    #
    # @!attribute root_change_set_id
    #   <p>Specifies the change set ID of the root change set in the current nested change set
    #            hierarchy.</p>
    #
    #   @return [String]
    #
    DescribeChangeSetOutput = ::Struct.new(
      :change_set_name,
      :change_set_id,
      :stack_id,
      :stack_name,
      :description,
      :parameters,
      :creation_time,
      :execution_status,
      :status,
      :status_reason,
      :notification_ar_ns,
      :rollback_configuration,
      :capabilities,
      :tags,
      :changes,
      :next_token,
      :include_nested_stacks,
      :parent_change_set_id,
      :root_change_set_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>If you don't supply a <code>PublisherId</code>, and you have registered as an extension
    #            publisher, <code>DescribePublisher</code> returns information about your own publisher
    #            account.</p>
    #
    #   @return [String]
    #
    DescribePublisherInput = ::Struct.new(
      :publisher_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute publisher_id
    #   <p>The ID of the extension publisher.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_status
    #   <p>Whether the publisher is verified. Currently, all registered publishers are
    #            verified.</p>
    #
    #   Enum, one of: ["VERIFIED", "UNVERIFIED"]
    #
    #   @return [String]
    #
    # @!attribute identity_provider
    #   <p>The type of account used as the identity provider when registering this publisher with
    #               CloudFormation.</p>
    #
    #   Enum, one of: ["AWS_Marketplace", "GitHub", "Bitbucket"]
    #
    #   @return [String]
    #
    # @!attribute publisher_profile
    #   <p>The URL to the publisher's profile with the identity provider.</p>
    #
    #   @return [String]
    #
    DescribePublisherOutput = ::Struct.new(
      :publisher_id,
      :publisher_status,
      :identity_provider,
      :publisher_profile,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation is
    #            run. However, the number of drift results CloudFormation retains for any given stack, and for how
    #            long, may vary.</p>
    #
    #   @return [String]
    #
    DescribeStackDriftDetectionStatusInput = ::Struct.new(
      :stack_drift_detection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_id
    #   <p>The ID of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation is
    #            run. However, the number of reports CloudFormation retains for any given stack, and for how long,
    #            may vary.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_drift_status
    #   <p>Status of the stack's actual configuration compared to its expected
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from its expected template configuration.
    #                  A stack is considered to have drifted if one or more of its resources have
    #                  drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack differs from its
    #                  expected template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack's actual configuration matches its expected
    #                  template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute detection_status
    #   <p>The status of the stack drift detection operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DETECTION_COMPLETE</code>: The stack drift detection operation has
    #                  successfully completed for all resources in the stack that support drift detection.
    #                  (Resources that don't currently support stack detection remain unchecked.)</p>
    #                  <p>If you specified logical resource IDs for CloudFormation to use as a filter for the stack
    #                  drift detection operation, only the resources with those logical IDs are checked for
    #                  drift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DETECTION_FAILED</code>: The stack drift detection operation has failed for
    #                  at least one resource in the stack. Results will be available for resources on which
    #                  CloudFormation successfully completed drift detection.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DETECTION_IN_PROGRESS</code>: The stack drift detection operation is
    #                  currently in progress.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DETECTION_IN_PROGRESS", "DETECTION_FAILED", "DETECTION_COMPLETE"]
    #
    #   @return [String]
    #
    # @!attribute detection_status_reason
    #   <p>The reason the stack drift detection operation has its current status.</p>
    #
    #   @return [String]
    #
    # @!attribute drifted_stack_resource_count
    #   <p>Total number of stack resources that have drifted. This is NULL until the drift
    #            detection operation reaches a status of <code>DETECTION_COMPLETE</code>. This value will be
    #            0 for stacks whose drift status is <code>IN_SYNC</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute timestamp
    #   <p>Time at which the stack drift detection operation was initiated.</p>
    #
    #   @return [Time]
    #
    DescribeStackDriftDetectionStatusOutput = ::Struct.new(
      :stack_id,
      :stack_drift_detection_id,
      :stack_drift_status,
      :detection_status,
      :detection_status_reason,
      :drifted_stack_resource_count,
      :timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>DescribeStackEvents</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of events that you want to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeStackEventsInput = ::Struct.new(
      :stack_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>DescribeStackEvents</a> action.</p>
    #
    # @!attribute stack_events
    #   <p>A list of <code>StackEvents</code> structures.</p>
    #
    #   @return [Array<StackEvent>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of events. If
    #            no additional page exists, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeStackEventsOutput = ::Struct.new(
      :stack_events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or the unique stack ID of the stack set that you want to get stack instance
    #            information for.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_instance_account
    #   <p>The ID of an Amazon Web Services account that's associated with this stack
    #            instance.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_instance_region
    #   <p>The name of a Region that's associated with this stack instance.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    DescribeStackInstanceInput = ::Struct.new(
      :stack_set_name,
      :stack_instance_account,
      :stack_instance_region,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_instance
    #   <p>The stack instance that matches the specified request parameters.</p>
    #
    #   @return [StackInstance]
    #
    DescribeStackInstanceOutput = ::Struct.new(
      :stack_instance,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for which you want drift information.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_resource_drift_status_filters
    #   <p>The resource drift status values to use as filters for the resource drift results
    #            returned.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template
    #                  configuration in that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #                  template values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #                  template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of stack resource drift results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    DescribeStackResourceDriftsInput = ::Struct.new(
      :stack_name,
      :stack_resource_drift_status_filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_resource_drifts
    #   <p>Drift information for the resources that have been checked for drift in the specified
    #            stack. This includes actual and expected configuration values for resources where CloudFormation
    #            detects drift.</p>
    #            <p>For a given stack, there will be one <code>StackResourceDrift</code> for each stack
    #            resource that has been checked for drift. Resources that haven't yet been checked for drift
    #            aren't included. Resources that do not currently support drift detection aren't checked,
    #            and so not included. For a list of resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p>
    #
    #   @return [Array<StackResourceDrift>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set
    #            to a token. To retrieve the next set of results, call
    #               <code>DescribeStackResourceDrifts</code> again and assign that token to the request
    #            object's <code>NextToken</code> parameter. If the request returns all results,
    #               <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    DescribeStackResourceDriftsOutput = ::Struct.new(
      :stack_resource_drifts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>DescribeStackResource</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    DescribeStackResourceInput = ::Struct.new(
      :stack_name,
      :logical_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>DescribeStackResource</a> action.</p>
    #
    # @!attribute stack_resource_detail
    #   <p>A <code>StackResourceDetail</code> structure containing the description of the specified
    #            resource in the specified stack.</p>
    #
    #   @return [StackResourceDetail]
    #
    DescribeStackResourceOutput = ::Struct.new(
      :stack_resource_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>DescribeStackResources</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #            <p>Required: Conditional. If you don't specify <code>StackName</code>, you must specify
    #               <code>PhysicalResourceId</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #            supported by CloudFormation.</p>
    #            <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #               <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass
    #            the EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack
    #            the instance belongs to and what other resources are part of the stack.</p>
    #            <p>Required: Conditional. If you don't specify <code>PhysicalResourceId</code>, you must
    #            specify <code>StackName</code>.</p>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    DescribeStackResourcesInput = ::Struct.new(
      :stack_name,
      :logical_resource_id,
      :physical_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>DescribeStackResources</a> action.</p>
    #
    # @!attribute stack_resources
    #   <p>A list of <code>StackResource</code> structures.</p>
    #
    #   @return [Array<StackResource>]
    #
    DescribeStackResourcesOutput = ::Struct.new(
      :stack_resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set whose description you want.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    DescribeStackSetInput = ::Struct.new(
      :stack_set_name,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or the unique stack ID of the stack set for the stack operation.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_id
    #   <p>The unique ID of the stack set operation.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    DescribeStackSetOperationInput = ::Struct.new(
      :stack_set_name,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_operation
    #   <p>The specified stack set operation.</p>
    #
    #   @return [StackSetOperation]
    #
    DescribeStackSetOperationOutput = ::Struct.new(
      :stack_set_operation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set
    #   <p>The specified stack set.</p>
    #
    #   @return [StackSet]
    #
    DescribeStackSetOutput = ::Struct.new(
      :stack_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>DescribeStacks</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    #
    #   @return [String]
    #
    DescribeStacksInput = ::Struct.new(
      :stack_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>DescribeStacks</a> action.</p>
    #
    # @!attribute stacks
    #   <p>A list of stack structures.</p>
    #
    #   @return [Array<Stack>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If
    #            no additional page exists, this value is null.</p>
    #
    #   @return [String]
    #
    DescribeStacksOutput = ::Struct.new(
      :stacks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it is
    #            registered.</p>
    #            <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information
    #            about that specific extension version. Otherwise, it returns information about the default
    #            extension version.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions provided by Amazon Web Services are not assigned a publisher ID.</p>
    #
    #   @return [String]
    #
    # @!attribute public_version_number
    #   <p>The version number of a public third-party extension.</p>
    #
    #   @return [String]
    #
    DescribeTypeInput = ::Struct.new(
      :type,
      :type_name,
      :arn,
      :version_id,
      :publisher_id,
      :public_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The kind of extension.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>If the extension is a public third-party type you have activated with a type name alias,
    #               CloudFormation returns the type name alias. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version_id
    #   <p>The ID of the default version of the extension. The default version is used when the
    #            extension version isn't specified.</p>
    #            <p>This applies only to private extensions you have registered in your account. For public
    #            extensions, both those provided by Amazon Web Services and published by third parties, CloudFormation returns <code>null</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #            <p>To set the default version of an extension, use <code>
    #                  <a>SetTypeDefaultVersion</a>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default_version
    #   <p>Whether the specified extension version is set as the default version.</p>
    #            <p>This applies only to private extensions you have registered in your account, and
    #            extensions published by Amazon Web Services. For public third-party extensions, whether they
    #            are activated in your account, CloudFormation returns <code>null</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute type_tests_status
    #   <p>The contract test status of the registered extension version. To return the extension
    #            test status of a specific extension version, you must specify
    #            <code>VersionId</code>.</p>
    #            <p>This applies only to registered private extension versions. CloudFormation
    #            doesn't return this information for public extensions, whether they are activated in your
    #            account.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PASSED</code>: The extension has passed all its contract tests.</p>
    #                  <p>An extension must have a test status of <code>PASSED</code> before it can be
    #                  published. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html">Publishing extensions to make them available for public
    #                     use</a> in the <i>CloudFormation Command Line Interface User
    #                     Guide</i>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The extension has failed one or more contract tests.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: Contract tests are currently being performed on the
    #                  extension.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_TESTED</code>: Contract tests haven't been performed on the
    #                  extension.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PASSED", "FAILED", "IN_PROGRESS", "NOT_TESTED"]
    #
    #   @return [String]
    #
    # @!attribute type_tests_status_description
    #   <p>The description of the test status. To return the extension test status of a specific
    #            extension version, you must specify <code>VersionId</code>.</p>
    #            <p>This applies only to registered private extension versions. CloudFormation
    #            doesn't return this information for public extensions, whether they are activated in your
    #            account.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute schema
    #   <p>The schema that defines the extension.</p>
    #            <p>For more information about extension schemas, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html">Resource Provider
    #               Schema</a> in the <i>CloudFormation CLI User
    #            Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute provisioning_type
    #   <p>For resource type extensions, the provisioning behavior of the resource type. CloudFormation
    #            determines the provisioning type during registration, based on the types of handlers in the
    #            schema handler package submitted.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULLY_MUTABLE</code>: The resource type includes an update handler to
    #                  process updates to the type during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMMUTABLE</code>: The resource type doesn't include an update handler, so
    #                  the type can't be updated and must instead be replaced during stack update
    #                  operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_PROVISIONABLE</code>: The resource type doesn't include all the
    #                  following handlers, and therefore can't actually be provisioned.</p>
    #                  <ul>
    #                     <li>
    #                        <p>create</p>
    #                     </li>
    #                     <li>
    #                        <p>read</p>
    #                     </li>
    #                     <li>
    #                        <p>delete</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"]
    #
    #   @return [String]
    #
    # @!attribute deprecated_status
    #   <p>The deprecation status of the extension version.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension is activated or registered and can be used in
    #                     CloudFormation operations, dependent on its provisioning behavior and
    #                  visibility scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension has been deactivated or deregistered and
    #                  can no longer be used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #            <p>For public third-party extensions, CloudFormation returns
    #            <code>null</code>.</p>
    #
    #   Enum, one of: ["LIVE", "DEPRECATED"]
    #
    #   @return [String]
    #
    # @!attribute logging_config
    #   <p>Contains logging configuration information for private extensions. This applies only to
    #            private extensions you have registered in your account. For public extensions, both those
    #            provided by Amazon Web Services and published by third parties, CloudFormation returns
    #               <code>null</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute required_activated_types
    #   <p>For extensions that are modules, the public third-party extensions that must be
    #            activated in your account in order for the module itself to be activated.</p>
    #
    #   @return [Array<RequiredActivatedType>]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM execution role used to register
    #            the extension. This applies only to private extensions you have registered in your account.
    #            For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #            <p>If the registered extension calls any Amazon Web Services APIs, you must create an
    #                  <i>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM execution role</a>
    #               </i> that includes the necessary
    #            permissions to call those Amazon Web Services APIs, and provision that execution role in
    #            your account. CloudFormation then assumes that execution role to provide your
    #            extension with the appropriate credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute visibility
    #   <p>The scope at which the extension is visible and usable in CloudFormation
    #            operations.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIVATE</code>: The extension is only visible and usable within the account
    #                  in which it is registered. CloudFormation marks any extensions you register as
    #                     <code>PRIVATE</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUBLIC</code>: The extension is publicly visible and usable within any
    #                  Amazon Web Services account.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute source_url
    #   <p>The URL of the source code for the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute documentation_url
    #   <p>The URL of a page providing detailed documentation for this extension.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>When the specified extension version was registered. This applies only to:</p>
    #            <ul>
    #               <li>
    #                  <p>Private extensions you have registered in your account. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Public extensions you have activated in your account with auto-update specified.
    #                  For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Time]
    #
    # @!attribute time_created
    #   <p>When the specified private extension version was registered or activated in your
    #            account.</p>
    #
    #   @return [Time]
    #
    # @!attribute configuration_schema
    #   <p>A JSON string that represent the current configuration data for the extension in this
    #            account and region.</p>
    #            <p>To set the configuration data for an extension, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html registry-set-configuration">Configuring extensions at the account level</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>This applies only to public third-party extensions. For private registered extensions,
    #            and extensions provided by Amazon Web Services, CloudFormation returns
    #               <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute original_type_name
    #   <p>For public extensions that have been activated for this account and region, the type
    #            name of the public extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when enabling the extension in this
    #            account and region, CloudFormation treats that alias as the extension's type name
    #            within the account and region, not the type name of the public extension. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable-alias">Specifying aliases to refer to extensions</a> in the
    #               <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute original_type_arn
    #   <p>For public extensions that have been activated for this account and region, the Amazon
    #            Resource Name (ARN) of the public extension.</p>
    #
    #   @return [String]
    #
    # @!attribute public_version_number
    #   <p>The version number of a public third-party extension.</p>
    #            <p>This applies only if you specify a public extension you have activated in your account,
    #            or specify a public extension without specifying a version. For all other extensions,
    #               CloudFormation returns <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_public_version
    #   <p>The latest version of a public extension <i>that is available</i> for
    #            use.</p>
    #            <p>This only applies if you specify a public extension, and you don't specify a version.
    #            For all other requests, CloudFormation returns <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute is_activated
    #   <p>Whether the extension is activated in the account and region.</p>
    #            <p>This only applies to public third-party extensions. For all other extensions, CloudFormation returns <code>null</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_update
    #   <p>Whether CloudFormation automatically updates the extension in this account and
    #            region when a new <i>minor</i> version is published by the extension
    #            publisher. Major versions released by the publisher must be manually updated. For more
    #            information, see <a href="AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable">Activating public extensions for use in your account</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    DescribeTypeOutput = ::Struct.new(
      :arn,
      :type,
      :type_name,
      :default_version_id,
      :is_default_version,
      :type_tests_status,
      :type_tests_status_description,
      :description,
      :schema,
      :provisioning_type,
      :deprecated_status,
      :logging_config,
      :required_activated_types,
      :execution_role_arn,
      :visibility,
      :source_url,
      :documentation_url,
      :last_updated,
      :time_created,
      :configuration_schema,
      :publisher_id,
      :original_type_name,
      :original_type_arn,
      :public_version_number,
      :latest_public_version,
      :is_activated,
      :auto_update,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registration_token
    #   <p>The identifier for this registration request.</p>
    #            <p>This registration token is generated by CloudFormation when you initiate a
    #            registration request using <code>
    #                  <a>RegisterType</a>
    #               </code>.</p>
    #
    #   @return [String]
    #
    DescribeTypeRegistrationInput = ::Struct.new(
      :registration_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute progress_status
    #   <p>The current status of the extension registration request.</p>
    #
    #   Enum, one of: ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the extension registration request.</p>
    #
    #   @return [String]
    #
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension being registered.</p>
    #            <p>For registration requests with a <code>ProgressStatus</code> of other than
    #               <code>COMPLETE</code>, this will be <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type_version_arn
    #   <p>The Amazon Resource Name (ARN) of this specific version of the extension being
    #            registered.</p>
    #            <p>For registration requests with a <code>ProgressStatus</code> of other than
    #               <code>COMPLETE</code>, this will be <code>null</code>.</p>
    #
    #   @return [String]
    #
    DescribeTypeRegistrationOutput = ::Struct.new(
      :progress_status,
      :description,
      :type_arn,
      :type_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack for which you want to detect drift.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_ids
    #   <p>The logical names of any resources you want to use as filters.</p>
    #
    #   @return [Array<String>]
    #
    DetectStackDriftInput = ::Struct.new(
      :stack_name,
      :logical_resource_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation is
    #            run. However, the number of drift results CloudFormation retains for any given stack, and for how
    #            long, may vary.</p>
    #
    #   @return [String]
    #
    DetectStackDriftOutput = ::Struct.new(
      :stack_drift_detection_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name of the stack to which the resource belongs.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource for which to return drift information.</p>
    #
    #   @return [String]
    #
    DetectStackResourceDriftInput = ::Struct.new(
      :stack_name,
      :logical_resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_resource_drift
    #   <p>Information about whether the resource's actual configuration has drifted from its
    #            expected template configuration, including actual and expected property values and any
    #            differences detected.</p>
    #
    #   @return [StackResourceDrift]
    #
    DetectStackResourceDriftOutput = ::Struct.new(
      :stack_resource_drift,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name of the stack set on which to perform the drift detection operation.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a stack set
    #            operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html stackset-ops-options">Stack set operation options</a>.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute operation_id
    #   <p>
    #               <i>The ID of the stack set operation.</i>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    DetectStackSetDriftInput = ::Struct.new(
      :stack_set_name,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operation_id
    #   <p>The ID of the drift detection stack set operation.</p>
    #            <p>You can use this operation ID with <code>
    #                  <a>DescribeStackSetOperation</a>
    #               </code> to monitor the progress of the drift detection operation.</p>
    #
    #   @return [String]
    #
    DetectStackSetDriftOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DifferenceType
    #
    module DifferenceType
      # No documentation available.
      #
      ADD = "ADD"

      # No documentation available.
      #
      REMOVE = "REMOVE"

      # No documentation available.
      #
      NOT_EQUAL = "NOT_EQUAL"
    end

    # <p>The input for an <a>EstimateTemplateCost</a> action.</p>
    #
    # @!attribute template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.)</p>
    #            <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>Location of file containing the template body. The URL must point to a template that's
    #            located in an Amazon S3 bucket or a Systems Manager document. For more information,
    #            go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters.</p>
    #
    #   @return [Array<Parameter>]
    #
    EstimateTemplateCostInput = ::Struct.new(
      :template_body,
      :template_url,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>EstimateTemplateCost</a> action.</p>
    #
    # @!attribute url
    #   <p>An Amazon Web Services Simple Monthly Calculator URL with a query string that describes
    #            the resources required to run the template.</p>
    #
    #   @return [String]
    #
    EstimateTemplateCostOutput = ::Struct.new(
      :url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EvaluationType
    #
    module EvaluationType
      # No documentation available.
      #
      Static = "Static"

      # No documentation available.
      #
      Dynamic = "Dynamic"
    end

    # <p>The input for the <a>ExecuteChangeSet</a> action.</p>
    #
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want use to update the
    #            specified stack.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>If you specified the name of a change set, specify the stack name or Amazon Resource
    #            Name (ARN) that's associated with the change set you want to execute.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this token
    #            if you plan to retry requests so that CloudFormation knows that you're not attempting
    #            to execute a change set to update a stack with the same name. You might retry
    #               <code>ExecuteChangeSet</code> requests to ensure that CloudFormation successfully
    #            received them.</p>
    #
    #   @return [String]
    #
    # @!attribute disable_rollback
    #   <p>Preserves the state of previously provisioned resources when an operation fails.</p>
    #            <p>Default: <code>True</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    ExecuteChangeSetInput = ::Struct.new(
      :change_set_name,
      :stack_name,
      :client_request_token,
      :disable_rollback,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>ExecuteChangeSet</a> action.</p>
    #
    ExecuteChangeSetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutionStatus
    #
    module ExecutionStatus
      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"

      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      EXECUTE_IN_PROGRESS = "EXECUTE_IN_PROGRESS"

      # No documentation available.
      #
      EXECUTE_COMPLETE = "EXECUTE_COMPLETE"

      # No documentation available.
      #
      EXECUTE_FAILED = "EXECUTE_FAILED"

      # No documentation available.
      #
      OBSOLETE = "OBSOLETE"
    end

    # <p>The <code>Export</code> structure describes the exported output values for a
    #          stack.</p>
    #
    # @!attribute exporting_stack_id
    #   <p>The stack that contains the exported output name and value.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of exported output value. Use this name and the <code>Fn::ImportValue</code>
    #            function to import the associated value into other stacks. The name is defined in the
    #               <code>Export</code> field in the associated stack's <code>Outputs</code> section.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the exported output, such as a resource physical ID. This value is defined
    #            in the <code>Export</code> field in the associated stack's <code>Outputs</code>
    #            section.</p>
    #
    #   @return [String]
    #
    Export = ::Struct.new(
      :exporting_stack_id,
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>GetStackPolicy</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or unique stack ID that's associated with the stack whose policy you want to
    #            get.</p>
    #
    #   @return [String]
    #
    GetStackPolicyInput = ::Struct.new(
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>GetStackPolicy</a> action.</p>
    #
    # @!attribute stack_policy_body
    #   <p>Structure containing the stack policy body. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates
    #               to Stack Resources</a> in the CloudFormation User Guide.)</p>
    #
    #   @return [String]
    #
    GetStackPolicyOutput = ::Struct.new(
      :stack_policy_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for a <a>GetTemplate</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of a change set for which CloudFormation
    #            returns the associated template. If you specify a name, you must also specify the
    #               <code>StackName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute template_stage
    #   <p>For templates that include transforms, the stage of the template that CloudFormation returns. To get the user-submitted template, specify
    #               <code>Original</code>. To get the template after CloudFormation has processed
    #            all transforms, specify <code>Processed</code>.</p>
    #            <p>If the template doesn't include transforms, <code>Original</code> and
    #               <code>Processed</code> return the same template. By default, CloudFormation
    #            specifies <code>Processed</code>.</p>
    #
    #   Enum, one of: ["Original", "Processed"]
    #
    #   @return [String]
    #
    GetTemplateInput = ::Struct.new(
      :stack_name,
      :change_set_name,
      :template_stage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for <a>GetTemplate</a> action.</p>
    #
    # @!attribute template_body
    #   <p>Structure containing the template body. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a> in the CloudFormation User Guide.)</p>
    #            <p>CloudFormation returns the same template that was used when the stack was
    #            created.</p>
    #
    #   @return [String]
    #
    # @!attribute stages_available
    #   <p>The stage of the template that you can retrieve. For stacks, the <code>Original</code>
    #            and <code>Processed</code> templates are always available. For change sets, the
    #               <code>Original</code> template is always available. After CloudFormation
    #            finishes creating the change set, the <code>Processed</code> template becomes
    #            available.</p>
    #
    #   @return [Array<String>]
    #
    GetTemplateOutput = ::Struct.new(
      :template_body,
      :stages_available,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>GetTemplateSummary</a> action.</p>
    #
    # @!attribute template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. For more information about templates, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a> in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>Location of file containing the template body. The URL must point to a template (max
    #            size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager
    #            document. For more information about templates, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name or the stack ID that's associated with the stack, which aren't always
    #            interchangeable. For running stacks, you can specify either the stack's name or its unique
    #            stack ID. For deleted stack, you must specify the unique stack ID.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set from which the stack was created.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    GetTemplateSummaryInput = ::Struct.new(
      :template_body,
      :template_url,
      :stack_name,
      :stack_set_name,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>GetTemplateSummary</a> action.</p>
    #
    # @!attribute parameters
    #   <p>A list of parameter declarations that describe various properties for each
    #            parameter.</p>
    #
    #   @return [Array<ParameterDeclaration>]
    #
    # @!attribute description
    #   <p>The value that's defined in the <code>Description</code> property of the
    #            template.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The capabilities found within the template. If your template contains IAM
    #            resources, you must specify the <code>CAPABILITY_IAM</code> or
    #               <code>CAPABILITY_NAMED_IAM</code> value for this parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a> actions with your template;
    #            otherwise, those actions return an <code>InsufficientCapabilities</code> error.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation
    #            Templates</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute capabilities_reason
    #   <p>The list of resources that generated the values in the <code>Capabilities</code>
    #            response element.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_types
    #   <p>A list of all the template resource types that are defined in the template, such as
    #               <code>AWS::EC2::Instance</code>, <code>AWS::Dynamo::Table</code>, and
    #               <code>Custom::MyCustomInstance</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute version
    #   <p>The Amazon Web Services template format version, which identifies the capabilities of the
    #            template.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The value that's defined for the <code>Metadata</code> property of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute declared_transforms
    #   <p>A list of the transforms that are declared in the template.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_identifier_summaries
    #   <p>A list of resource identifier summaries that describe the target resources of an import
    #            operation and the properties you can provide during the import to identify the target
    #            resources. For example, <code>BucketName</code> is a possible identifier property for an
    #               <code>AWS::S3::Bucket</code> resource.</p>
    #
    #   @return [Array<ResourceIdentifierSummary>]
    #
    GetTemplateSummaryOutput = ::Struct.new(
      :parameters,
      :description,
      :capabilities,
      :capabilities_reason,
      :resource_types,
      :version,
      :metadata,
      :declared_transforms,
      :resource_identifier_summaries,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HandlerErrorCode
    #
    module HandlerErrorCode
      # No documentation available.
      #
      NotUpdatable = "NotUpdatable"

      # No documentation available.
      #
      InvalidRequest = "InvalidRequest"

      # No documentation available.
      #
      AccessDenied = "AccessDenied"

      # No documentation available.
      #
      InvalidCredentials = "InvalidCredentials"

      # No documentation available.
      #
      AlreadyExists = "AlreadyExists"

      # No documentation available.
      #
      NotFound = "NotFound"

      # No documentation available.
      #
      ResourceConflict = "ResourceConflict"

      # No documentation available.
      #
      Throttling = "Throttling"

      # No documentation available.
      #
      ServiceLimitExceeded = "ServiceLimitExceeded"

      # No documentation available.
      #
      ServiceTimeout = "NotStabilized"

      # No documentation available.
      #
      GeneralServiceException = "GeneralServiceException"

      # No documentation available.
      #
      ServiceInternalError = "ServiceInternalError"

      # No documentation available.
      #
      NetworkFailure = "NetworkFailure"

      # No documentation available.
      #
      InternalFailure = "InternalFailure"

      # No documentation available.
      #
      InvalidTypeConfiguration = "InvalidTypeConfiguration"

      # No documentation available.
      #
      HandlerInternalFailure = "HandlerInternalFailure"

      # No documentation available.
      #
      NonCompliant = "NonCompliant"

      # No documentation available.
      #
      Unknown = "Unknown"
    end

    # Includes enum constants for HookFailureMode
    #
    module HookFailureMode
      # No documentation available.
      #
      FAIL = "FAIL"

      # No documentation available.
      #
      WARN = "WARN"
    end

    # Includes enum constants for HookInvocationPoint
    #
    module HookInvocationPoint
      # No documentation available.
      #
      PRE_PROVISION = "PRE_PROVISION"
    end

    # Includes enum constants for HookStatus
    #
    module HookStatus
      # No documentation available.
      #
      HOOK_IN_PROGRESS = "HOOK_IN_PROGRESS"

      # No documentation available.
      #
      HOOK_COMPLETE_SUCCEEDED = "HOOK_COMPLETE_SUCCEEDED"

      # No documentation available.
      #
      HOOK_COMPLETE_FAILED = "HOOK_COMPLETE_FAILED"

      # No documentation available.
      #
      HOOK_FAILED = "HOOK_FAILED"
    end

    # Includes enum constants for HookTargetType
    #
    module HookTargetType
      # No documentation available.
      #
      RESOURCE = "RESOURCE"
    end

    # Includes enum constants for IdentityProvider
    #
    module IdentityProvider
      # No documentation available.
      #
      AWS_Marketplace = "AWS_Marketplace"

      # No documentation available.
      #
      GitHub = "GitHub"

      # No documentation available.
      #
      Bitbucket = "Bitbucket"
    end

    # @!attribute stack_set_name
    #   <p>The name of the stack set. The name must be unique in the Region where you create your
    #            stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_ids
    #   <p>The IDs of the stacks you are importing into a stack set. You import up to 10 stacks per
    #            stack set at a time.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute stack_ids_url
    #   <p>The Amazon S3 URL which contains list of stack ids to be inputted.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_ids
    #   <p>The list of OU ID's to which the stacks being imported has to be mapped as deployment
    #            target.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a stack set
    #            operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html stackset-ops-options">Stack set operation options</a>.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute operation_id
    #   <p>A unique, user defined, identifier for the stack set operation.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For service managed stack sets, specify <code>DELEGATED_ADMIN</code>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    ImportStacksToStackSetInput = ::Struct.new(
      :stack_set_name,
      :stack_ids,
      :stack_ids_url,
      :organizational_unit_ids,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for the stack set operation.</p>
    #
    #   @return [String]
    #
    ImportStacksToStackSetOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The template contains resources with capabilities that weren't specified in the
    #          Capabilities parameter.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InsufficientCapabilitiesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified change set can't be used to update the stack. For example, the change set
    #          status might be <code>CREATE_IN_PROGRESS</code>, or the stack status might be
    #             <code>UPDATE_IN_PROGRESS</code>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidChangeSetStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified operation isn't valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Error reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. CloudFormation doesn't return this error to
    #          users.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidStateTransitionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The quota for the resource has already been reached.</p>
    #          <p>For information about resource and stack limitations, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">CloudFormation
    #             quotas</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>ListChangeSets</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list
    #            change sets.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string (provided by the <a>ListChangeSets</a> response output) that
    #            identifies the next page of change sets that you want to retrieve.</p>
    #
    #   @return [String]
    #
    ListChangeSetsInput = ::Struct.new(
      :stack_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for the <a>ListChangeSets</a> action.</p>
    #
    # @!attribute summaries
    #   <p>A list of <code>ChangeSetSummary</code> structures that provides the ID and status of
    #            each change set for the specified stack.</p>
    #
    #   @return [Array<ChangeSetSummary>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB, a string that identifies the next page of change sets. If
    #            there is no additional page, this value is <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListChangeSetsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>A string (provided by the <a>ListExports</a> response output) that identifies
    #            the next page of exported output values that you asked to retrieve.</p>
    #
    #   @return [String]
    #
    ListExportsInput = ::Struct.new(
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute exports
    #   <p>The output for the <a>ListExports</a> action.</p>
    #
    #   @return [Array<Export>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 100 exported output values, a string that identifies the next page
    #            of exports. If there is no additional page, this value is null.</p>
    #
    #   @return [String]
    #
    ListExportsOutput = ::Struct.new(
      :exports,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute export_name
    #   <p>The name of the exported output value. CloudFormation returns the stack names that
    #            are importing this value.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string (provided by the <a>ListImports</a> response output) that identifies
    #            the next page of stacks that are importing the specified exported output value.</p>
    #
    #   @return [String]
    #
    ListImportsInput = ::Struct.new(
      :export_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute imports
    #   <p>A list of stack names that are importing the specified exported output value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of exports. If there is no additional page, this
    #            value is null.</p>
    #
    #   @return [String]
    #
    ListImportsOutput = ::Struct.new(
      :imports,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to list stack instances for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous request didn't return all the remaining results, the response's
    #               <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #            results, call <code>ListStackInstances</code> again and assign that token to the request
    #            object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>The status that stack instances are filtered by.</p>
    #
    #   @return [Array<StackInstanceFilter>]
    #
    # @!attribute stack_instance_account
    #   <p>The name of the Amazon Web Services account that you want to list stack instances
    #            for.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_instance_region
    #   <p>The name of the Region where you want to list stack instances.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    ListStackInstancesInput = ::Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :filters,
      :stack_instance_account,
      :stack_instance_region,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackInstanceSummary</code> structures that contain information about
    #            the specified stack instances.</p>
    #
    #   @return [Array<StackInstanceSummary>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set
    #            to a token. To retrieve the next set of results, call <code>ListStackInstances</code> again
    #            and assign that token to the request object's <code>NextToken</code> parameter. If the
    #            request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListStackInstancesOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>ListStackResource</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of stack resources that you want to
    #            retrieve.</p>
    #
    #   @return [String]
    #
    ListStackResourcesInput = ::Struct.new(
      :stack_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for a <a>ListStackResources</a> action.</p>
    #
    # @!attribute stack_resource_summaries
    #   <p>A list of <code>StackResourceSummary</code> structures.</p>
    #
    #   @return [Array<StackResourceSummary>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB, a string that identifies the next page of stack resources.
    #            If no additional page exists, this value is null.</p>
    #
    #   @return [String]
    #
    ListStackResourcesOutput = ::Struct.new(
      :stack_resource_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to get operation results
    #            for.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_id
    #   <p>The ID of the stack set operation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous request didn't return all the remaining results, the response object's
    #               <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #            results, call <code>ListStackSetOperationResults</code> again and assign that token to the
    #            request object's <code>NextToken</code> parameter. If there are no remaining results, the
    #            previous response object's <code>NextToken</code> parameter is set to
    #            <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    ListStackSetOperationResultsInput = ::Struct.new(
      :stack_set_name,
      :operation_id,
      :next_token,
      :max_results,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackSetOperationResultSummary</code> structures that contain
    #            information about the specified operation results, for accounts and Amazon Web Services Regions that are included in the operation.</p>
    #
    #   @return [Array<StackSetOperationResultSummary>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all results, <code>NextToken</code> is set to a token. To
    #            retrieve the next set of results, call <code>ListOperationResults</code> again and assign
    #            that token to the request object's <code>NextToken</code> parameter. If there are no
    #            remaining results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListStackSetOperationResultsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to get operation summaries
    #            for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the
    #            response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListStackSetOperations</code> again and assign that token
    #            to the request object's <code>NextToken</code> parameter. If there are no remaining
    #            results, the previous response object's <code>NextToken</code> parameter is set to
    #               <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    ListStackSetOperationsInput = ::Struct.new(
      :stack_set_name,
      :next_token,
      :max_results,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackSetOperationSummary</code> structures that contain summary
    #            information about operations for the specified stack set.</p>
    #
    #   @return [Array<StackSetOperationSummary>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all results, <code>NextToken</code> is set to a token. To
    #            retrieve the next set of results, call <code>ListOperationResults</code> again and assign
    #            that token to the request object's <code>NextToken</code> parameter. If there are no
    #            remaining results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListStackSetOperationsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #            object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
    #            of results, call <code>ListStackSets</code> again and assign that token to the request
    #            object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute status
    #   <p>The status of the stack sets that you want to get summary information about.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the management account or as a delegated administrator in a
    #            member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    ListStackSetsInput = ::Struct.new(
      :next_token,
      :max_results,
      :status,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>A list of <code>StackSetSummary</code> structures that contain information about the
    #            user's stack sets.</p>
    #
    #   @return [Array<StackSetSummary>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all of the remaining results, <code>NextToken</code> is
    #            set to a token. To retrieve the next set of results, call <code>ListStackInstances</code>
    #            again and assign that token to the request object's <code>NextToken</code> parameter. If
    #            the request returns all results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListStackSetsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>ListStacks</a> action.</p>
    #
    # @!attribute next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_status_filter
    #   <p>Stack status to use as a filter. Specify one or more stack status codes to list only
    #            stacks with the specified status codes. For a complete list of stack status codes, see the
    #               <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>
    #
    #   @return [Array<String>]
    #
    ListStacksInput = ::Struct.new(
      :next_token,
      :stack_status_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for <a>ListStacks</a> action.</p>
    #
    # @!attribute stack_summaries
    #   <p>A list of <code>StackSummary</code> structures containing information about the
    #            specified stacks.</p>
    #
    #   @return [Array<StackSummary>]
    #
    # @!attribute next_token
    #   <p>If the output exceeds 1 MB in size, a string that identifies the next page of stacks. If
    #            no additional page exists, this value is null.</p>
    #
    #   @return [String]
    #
    ListStacksOutput = ::Struct.new(
      :stack_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute registration_status_filter
    #   <p>The current status of the extension registration request.</p>
    #            <p>The default is <code>IN_PROGRESS</code>.</p>
    #
    #   Enum, one of: ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #            object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
    #            of results, call this action again and assign that token to the request object's
    #               <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTypeRegistrationsInput = ::Struct.new(
      :type,
      :type_name,
      :type_arn,
      :registration_status_filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registration_token_list
    #   <p>A list of extension registration tokens.</p>
    #            <p>Use <code>
    #                  <a>DescribeTypeRegistration</a>
    #               </code> to return detailed
    #            information about a type registration request.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set
    #            to a token. To retrieve the next set of results, call this action again and assign that
    #            token to the request object's <code>NextToken</code> parameter. If the request returns all
    #            results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTypeRegistrationsOutput = ::Struct.new(
      :registration_token_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The kind of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension for which you want version summary information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #            information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the
    #            response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call this action again and assign that token to the request object's
    #               <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute deprecated_status
    #   <p>The deprecation status of the extension versions that you want to get summary
    #            information about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility
    #                  scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension version has been deregistered and can no
    #                  longer be used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>LIVE</code>.</p>
    #
    #   Enum, one of: ["LIVE", "DEPRECATED"]
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions published by Amazon aren't assigned a publisher ID.</p>
    #
    #   @return [String]
    #
    ListTypeVersionsInput = ::Struct.new(
      :type,
      :type_name,
      :arn,
      :max_results,
      :next_token,
      :deprecated_status,
      :publisher_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_version_summaries
    #   <p>A list of <code>TypeVersionSummary</code> structures that contain information about the
    #            specified extension's versions.</p>
    #
    #   @return [Array<TypeVersionSummary>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all of the remaining results, <code>NextToken</code> is
    #            set to a token. To retrieve the next set of results, call this action again and assign that
    #            token to the request object's <code>NextToken</code> parameter. If the request returns all
    #            results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTypeVersionsOutput = ::Struct.new(
      :type_version_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute visibility
    #   <p>The scope at which the extensions are visible and usable in CloudFormation
    #            operations.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIVATE</code>: Extensions that are visible and usable within this account
    #                  and region. This includes:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Private extensions you have registered in this account and region.</p>
    #                     </li>
    #                     <li>
    #                        <p>Public extensions that you have activated in this account and region.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUBLIC</code>: Extensions that are publicly visible and available to be
    #                  activated within any Amazon Web Services account. This includes extensions from Amazon Web Services, in
    #                  addition to third-party publishers.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>PRIVATE</code>.</p>
    #
    #   Enum, one of: ["PUBLIC", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute provisioning_type
    #   <p>For resource types, the provisioning behavior of the resource type. CloudFormation determines the
    #            provisioning type during registration, based on the types of handlers in the schema handler
    #            package submitted.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULLY_MUTABLE</code>: The resource type includes an update handler to
    #                  process updates to the type during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMMUTABLE</code>: The resource type doesn't include an update handler, so
    #                  the type can't be updated and must instead be replaced during stack update
    #                  operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_PROVISIONABLE</code>: The resource type doesn't include create, read,
    #                  and delete handlers, and therefore can't actually be provisioned.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>FULLY_MUTABLE</code>.</p>
    #
    #   Enum, one of: ["NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"]
    #
    #   @return [String]
    #
    # @!attribute deprecated_status
    #   <p>The deprecation status of the extension that you want to get summary information
    #            about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension is registered for use in CloudFormation
    #                  operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension has been deregistered and can no longer be
    #                  used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["LIVE", "DEPRECATED"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of extension.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>Filter criteria to use in determining which extensions to return.</p>
    #            <p>Filters must be compatible with <code>Visibility</code> to return valid results. For
    #            example, specifying <code>AWS_TYPES</code> for <code>Category</code> and
    #               <code>PRIVATE</code> for <code>Visibility</code> returns an empty list of types, but
    #            specifying <code>PUBLIC</code> for <code>Visibility</code> returns the desired list.</p>
    #
    #   @return [TypeFilters]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #            object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
    #            of results, call this action again and assign that token to the request object's
    #               <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTypesInput = ::Struct.new(
      :visibility,
      :provisioning_type,
      :deprecated_status,
      :type,
      :filters,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_summaries
    #   <p>A list of <code>TypeSummary</code> structures that contain information about the
    #            specified extensions.</p>
    #
    #   @return [Array<TypeSummary>]
    #
    # @!attribute next_token
    #   <p>If the request doesn't return all the remaining results, <code>NextToken</code> is set
    #            to a token. To retrieve the next set of results, call this action again and assign that
    #            token to the request object's <code>NextToken</code> parameter. If the request returns all
    #            results, <code>NextToken</code> is set to <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTypesOutput = ::Struct.new(
      :type_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains logging configuration information for an extension.</p>
    #
    # @!attribute log_role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that CloudFormation should assume
    #            when sending log entries to CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_name
    #   <p>The Amazon CloudWatch Logs group to which CloudFormation sends error logging
    #            information when invoking the extension's handlers.</p>
    #
    #   @return [String]
    #
    LoggingConfig = ::Struct.new(
      :log_role_arn,
      :log_group_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #          conflicting operations.</p>
    #
    # @!attribute active
    #   <p>When <code>true</code>, StackSets performs non-conflicting operations concurrently and
    #            queues conflicting operations. After conflicting operations finish, StackSets starts queued
    #            operations in request order.</p>
    #            <note>
    #               <p>If there are already running or queued operations, StackSets queues all incoming
    #               operations even if they are non-conflicting.</p>
    #               <p>You can't modify your stack set's execution configuration while there are running or
    #               queued operations for that stack set.</p>
    #            </note>
    #            <p>When <code>false</code> (default), StackSets performs one operation at a time in request
    #            order.</p>
    #
    #   @return [Boolean]
    #
    ManagedExecution = ::Struct.new(
      :active,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the module from which the resource was created, if the
    #          resource was created from a module included in the stack template.</p>
    #          <p>For more information about modules, see <a href="AWSCloudFormation/latest/UserGuide/modules.html">Using modules to encapsulate and
    #             reuse resource configurations</a> in the
    #          <i>CloudFormation User Guide</i>.</p>
    #
    # @!attribute type_hierarchy
    #   <p>A concatenated list of the module type or types containing the resource. Module types
    #            are listed starting with the inner-most nested module, and separated by
    #            <code>/</code>.</p>
    #            <p>In the following example, the resource was created from a module of type
    #               <code>AWS::First::Example::MODULE</code>, that's nested inside a parent module of type
    #               <code>AWS::Second::Example::MODULE</code>.</p>
    #            <p>
    #               <code>AWS::First::Example::MODULE/AWS::Second::Example::MODULE</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute logical_id_hierarchy
    #   <p>A concatenated list of the logical IDs of the module or modules containing the resource.
    #            Modules are listed starting with the inner-most nested module, and separated by
    #               <code>/</code>.</p>
    #            <p>In the following example, the resource was created from a module, <code>moduleA</code>,
    #            that's nested inside a parent module, <code>moduleB</code>.</p>
    #            <p>
    #               <code>moduleA/moduleB</code>
    #            </p>
    #            <p>For more information, see <a href="AWSCloudFormation/latest/UserGuide/modules.html module-ref-resources">Referencing
    #               resources in a module</a> in the <i>CloudFormation User
    #               Guide</i>.</p>
    #
    #   @return [String]
    #
    ModuleInfo = ::Struct.new(
      :type_hierarchy,
      :logical_id_hierarchy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified name is already in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NameAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OnFailure
    #
    module OnFailure
      # No documentation available.
      #
      DO_NOTHING = "DO_NOTHING"

      # No documentation available.
      #
      ROLLBACK = "ROLLBACK"

      # No documentation available.
      #
      DELETE = "DELETE"
    end

    # <p>The specified operation ID already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationIdAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another operation is currently in progress for this stack set. Only one operation can be
    #          performed for a stack set at a given time.</p>
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

    # <p>The specified ID refers to an operation that doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OperationStatus
    #
    module OperationStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Error reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. CloudFormation doesn't return this error to
    #          users.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationStatusCheckFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Output data type.</p>
    #
    # @!attribute output_key
    #   <p>The key associated with the output.</p>
    #
    #   @return [String]
    #
    # @!attribute output_value
    #   <p>The value associated with the output.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>User defined description associated with the output.</p>
    #
    #   @return [String]
    #
    # @!attribute export_name
    #   <p>The name of the export associated with the output.</p>
    #
    #   @return [String]
    #
    Output = ::Struct.new(
      :output_key,
      :output_value,
      :description,
      :export_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Parameter data type.</p>
    #
    # @!attribute parameter_key
    #   <p>The key associated with the parameter. If you don't specify a key and value for a
    #            particular parameter, CloudFormation uses the default value that's specified in your
    #            template.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_value
    #   <p>The input value associated with the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute use_previous_value
    #   <p>During a stack update, use the existing parameter value that the stack is using for a
    #            given parameter key. If you specify <code>true</code>, do not specify a parameter
    #            value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute resolved_value
    #   <p>Read-only. The value that corresponds to a SSM parameter key. This field is
    #            returned only for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/parameters-section-structure.html aws-ssm-parameter-types">
    #                  <code>SSM</code>
    #               </a> parameter types in the template.</p>
    #
    #   @return [String]
    #
    Parameter = ::Struct.new(
      :parameter_key,
      :parameter_value,
      :use_previous_value,
      :resolved_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of criteria that CloudFormation uses to validate parameter values. Although
    #          other constraints might be defined in the stack template, CloudFormation returns only
    #          the <code>AllowedValues</code> property.</p>
    #
    # @!attribute allowed_values
    #   <p>A list of values that are permitted for a parameter.</p>
    #
    #   @return [Array<String>]
    #
    ParameterConstraints = ::Struct.new(
      :allowed_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The ParameterDeclaration data type.</p>
    #
    # @!attribute parameter_key
    #   <p>The name that's associated with the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_type
    #   <p>The type of parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute no_echo
    #   <p>Flag that indicates whether the parameter value is shown as plain text in logs and in
    #            the Amazon Web Services Management Console.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description that's associate with the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_constraints
    #   <p>The criteria that CloudFormation uses to validate parameter values.</p>
    #
    #   @return [ParameterConstraints]
    #
    ParameterDeclaration = ::Struct.new(
      :parameter_key,
      :default_value,
      :parameter_type,
      :no_echo,
      :description,
      :parameter_constraints,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PermissionModels
    #
    module PermissionModels
      # No documentation available.
      #
      SERVICE_MANAGED = "SERVICE_MANAGED"

      # No documentation available.
      #
      SELF_MANAGED = "SELF_MANAGED"
    end

    # <p>Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses
    #          context key-value pairs in cases where a resource's logical and physical IDs aren't enough
    #          to uniquely identify that resource. Each context key-value pair specifies a resource that
    #          contains the targeted resource.</p>
    #
    # @!attribute key
    #   <p>The resource context key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The resource context value.</p>
    #
    #   @return [String]
    #
    PhysicalResourceIdContextKeyValuePair = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a resource property whose actual value differs from its expected
    #          value, as defined in the stack template and any values specified as template parameters.
    #          These will be present only for resources whose <code>StackResourceDriftStatus</code> is
    #             <code>MODIFIED</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
    #             Unregulated Configuration Changes to Stacks and Resources</a>.</p>
    #
    # @!attribute property_path
    #   <p>The fully-qualified path to the resource property.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_value
    #   <p>The expected property value of the resource property, as defined in the stack template
    #            and any values specified as template parameters.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_value
    #   <p>The actual property value of the resource property.</p>
    #
    #   @return [String]
    #
    # @!attribute difference_type
    #   <p>The type of property difference.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ADD</code>: A value has been added to a resource property that's an array or
    #                  list data type.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REMOVE</code>: The property has been removed from the current resource
    #                  configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_EQUAL</code>: The current property value differs from its expected value
    #                  (as defined in the stack template and any values specified as template
    #                  parameters).</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ADD", "REMOVE", "NOT_EQUAL"]
    #
    #   @return [String]
    #
    PropertyDifference = ::Struct.new(
      :property_path,
      :expected_value,
      :actual_value,
      :difference_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProvisioningType
    #
    module ProvisioningType
      # No documentation available.
      #
      NON_PROVISIONABLE = "NON_PROVISIONABLE"

      # No documentation available.
      #
      IMMUTABLE = "IMMUTABLE"

      # No documentation available.
      #
      FULLY_MUTABLE = "FULLY_MUTABLE"
    end

    # @!attribute type
    #   <p>The type of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_version_number
    #   <p>The version number to assign to this version of the extension.</p>
    #            <p>Use the following format, and adhere to semantic versioning when assigning a version
    #            number to your extension:</p>
    #            <p>
    #               <code>MAJOR.MINOR.PATCH</code>
    #            </p>
    #            <p>For more information, see <a href="https://semver.org/">Semantic Versioning
    #               2.0.0</a>.</p>
    #            <p>If you don't specify a version number, CloudFormation increments the version
    #            number by one minor version release.</p>
    #            <p>You cannot specify a version number the first time you publish a type. CloudFormation
    #            automatically sets the first version number to be <code>1.0.0</code>.</p>
    #
    #   @return [String]
    #
    PublishTypeInput = ::Struct.new(
      :type,
      :arn,
      :type_name,
      :public_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute public_type_arn
    #   <p>The Amazon Resource Name (ARN) assigned to the public extension upon
    #            publication.</p>
    #
    #   @return [String]
    #
    PublishTypeOutput = ::Struct.new(
      :public_type_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PublisherStatus
    #
    module PublisherStatus
      # No documentation available.
      #
      VERIFIED = "VERIFIED"

      # No documentation available.
      #
      UNVERIFIED = "UNVERIFIED"
    end

    # @!attribute bearer_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute current_operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   Enum, one of: ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   Enum, one of: ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "NetworkFailure", "InternalFailure", "InvalidTypeConfiguration", "HandlerInternalFailure", "NonCompliant", "Unknown"]
    #
    #   @return [String]
    #
    # @!attribute resource_model
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    #   @return [String]
    #
    RecordHandlerProgressInput = ::Struct.new(
      :bearer_token,
      :operation_status,
      :current_operation_status,
      :status_message,
      :error_code,
      :resource_model,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RecordHandlerProgressOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RegionConcurrencyType
    #
    module RegionConcurrencyType
      # No documentation available.
      #
      SEQUENTIAL = "SEQUENTIAL"

      # No documentation available.
      #
      PARALLEL = "PARALLEL"
    end

    # @!attribute accept_terms_and_conditions
    #   <p>Whether you accept the <a href="https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf">Terms and Conditions</a> for publishing extensions in the CloudFormation
    #            registry. You must accept the terms and conditions in order to register to publish public
    #            extensions to the CloudFormation registry.</p>
    #            <p>The default is <code>false</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute connection_arn
    #   <p>If you are using a Bitbucket or GitHub account for identity verification, the Amazon
    #            Resource Name (ARN) for your connection to that account.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html publish-extension-prereqs">Registering your account to publish CloudFormation
    #               extensions</a> in the <i>CloudFormation CLI User
    #            Guide</i>.</p>
    #
    #   @return [String]
    #
    RegisterPublisherInput = ::Struct.new(
      :accept_terms_and_conditions,
      :connection_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute publisher_id
    #   <p>The ID assigned this account by CloudFormation for publishing
    #            extensions.</p>
    #
    #   @return [String]
    #
    RegisterPublisherOutput = ::Struct.new(
      :publisher_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type
    #   <p>The kind of extension.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension being registered.</p>
    #            <p>We suggest that extension names adhere to the following patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>For resource types,
    #                     <i>company_or_organization</i>::<i>service</i>::<i>type</i>.</p>
    #               </li>
    #               <li>
    #                  <p>For modules,
    #                     <i>company_or_organization</i>::<i>service</i>::<i>type</i>::MODULE.</p>
    #               </li>
    #               <li>
    #                  <p>For hooks, <i>MyCompany</i>::<i>Testing</i>::<i>MyTestHook</i>.</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>The following organization namespaces are reserved and can't be used in your
    #               extension names:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>Alexa</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AMZN</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Custom</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Dev</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute schema_handler_package
    #   <p>A URL to the S3 bucket containing the extension project package that contains the
    #            necessary files for the extension you want to register.</p>
    #            <p>For information about generating a schema handler package for the extension you want to
    #            register, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html">submit</a>
    #            in the <i>CloudFormation CLI User Guide</i>.</p>
    #            <note>
    #               <p>The user registering the extension must be able to access the package in the S3
    #               bucket. That's, the user needs to have <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a> permissions for the
    #               schema handler package. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html">Actions, Resources, and Condition Keys
    #                  for Amazon S3</a> in the <i>Identity and Access Management User
    #                  Guide</i>.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute logging_config
    #   <p>Specifies logging configuration information for an extension.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking the extension.</p>
    #            <p>For CloudFormation to assume the specified execution role, the role must
    #            contain a trust relationship with the CloudFormation service principle
    #               (<code>resources.cloudformation.amazonaws.com</code>). For more information about adding
    #            trust relationships, see <a href="IAM/latest/UserGuide/roles-managingrole-editing-console.html roles-managingrole_edit-trust-policy">Modifying a role trust policy</a> in the <i>Identity and Access Management User
    #               Guide</i>.</p>
    #            <p>If your extension calls Amazon Web Services APIs in any of its handlers, you must create
    #            an <i>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM execution role</a>
    #               </i> that includes the necessary
    #            permissions to call those Amazon Web Services APIs, and provision that execution role in
    #            your account. When CloudFormation needs to invoke the resource type handler,
    #               CloudFormation assumes this execution role to create a temporary session token,
    #            which it then passes to the resource type handler, thereby supplying your resource type
    #            with the appropriate credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier that acts as an idempotency key for this registration request.
    #            Specifying a client request token prevents CloudFormation from generating more
    #            than one version of an extension from the same registration request, even if the request is
    #            submitted multiple times.</p>
    #
    #   @return [String]
    #
    RegisterTypeInput = ::Struct.new(
      :type,
      :type_name,
      :schema_handler_package,
      :logging_config,
      :execution_role_arn,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute registration_token
    #   <p>The identifier for this registration request.</p>
    #            <p>Use this registration token when calling <code>
    #                  <a>DescribeTypeRegistration</a>
    #               </code>, which returns information about the status and IDs of the extension
    #            registration.</p>
    #
    #   @return [String]
    #
    RegisterTypeOutput = ::Struct.new(
      :registration_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RegistrationStatus
    #
    module RegistrationStatus
      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for RegistryType
    #
    module RegistryType
      # No documentation available.
      #
      RESOURCE = "RESOURCE"

      # No documentation available.
      #
      MODULE = "MODULE"

      # No documentation available.
      #
      HOOK = "HOOK"
    end

    # Includes enum constants for Replacement
    #
    module Replacement
      # No documentation available.
      #
      True = "True"

      # No documentation available.
      #
      False = "False"

      # No documentation available.
      #
      Conditional = "Conditional"
    end

    # <p>For extensions that are modules, a public third-party extension that must be activated
    #          in your account in order for the module itself to be activated.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/modules.html#module-enabling">Activating public
    #             modules for use in your account</a> in the <i>CloudFormation User
    #          Guide</i>.</p>
    #
    # @!attribute type_name_alias
    #   <p>An alias assigned to the public extension, in this account and region. If you specify an
    #            alias for the extension, CloudFormation treats the alias as the extension type
    #            name within this account and region. You must use the alias to refer to the extension in
    #            your templates, API calls, and CloudFormation console.</p>
    #
    #   @return [String]
    #
    # @!attribute original_type_name
    #   <p>The type name of the public extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when enabling the extension in this
    #            account and region, CloudFormation treats that alias as the extension's type name
    #            within the account and region, not the type name of the public extension. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable-alias">Specifying aliases to refer to extensions</a> in the
    #               <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #
    #   @return [String]
    #
    # @!attribute supported_major_versions
    #   <p>A list of the major versions of the extension type that the macro supports.</p>
    #
    #   @return [Array<Integer>]
    #
    RequiredActivatedType = ::Struct.new(
      :type_name_alias,
      :original_type_name,
      :publisher_id,
      :supported_major_versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RequiresRecreation
    #
    module RequiresRecreation
      # No documentation available.
      #
      Never = "Never"

      # No documentation available.
      #
      Conditionally = "Conditionally"

      # No documentation available.
      #
      Always = "Always"
    end

    # Includes enum constants for ResourceAttribute
    #
    module ResourceAttribute
      # No documentation available.
      #
      Properties = "Properties"

      # No documentation available.
      #
      Metadata = "Metadata"

      # No documentation available.
      #
      CreationPolicy = "CreationPolicy"

      # No documentation available.
      #
      UpdatePolicy = "UpdatePolicy"

      # No documentation available.
      #
      DeletionPolicy = "DeletionPolicy"

      # No documentation available.
      #
      Tags = "Tags"
    end

    # <p>The <code>ResourceChange</code> structure describes the resource and the action that
    #             CloudFormation will perform on it if you execute this change set.</p>
    #
    # @!attribute action
    #   <p>The action that CloudFormation takes on the resource, such as <code>Add</code> (adds
    #            a new resource), <code>Modify</code> (changes a resource), <code>Remove</code> (deletes a
    #            resource), <code>Import</code> (imports a resource), or <code>Dynamic</code> (exact action
    #            for the resource can't be determined).</p>
    #
    #   Enum, one of: ["Add", "Modify", "Remove", "Import", "Dynamic"]
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The resource's logical ID, which is defined in the stack's template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The resource's physical ID (resource name). Resources that you are adding don't have
    #            physical IDs because they haven't been created.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of CloudFormation resource, such as <code>AWS::S3::Bucket</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute replacement
    #   <p>For the <code>Modify</code> action, indicates whether CloudFormation will replace
    #            the resource by creating a new one and deleting the old one. This value depends on the
    #            value of the <code>RequiresRecreation</code> property in the
    #               <code>ResourceTargetDefinition</code> structure. For example, if the
    #               <code>RequiresRecreation</code> field is <code>Always</code> and the
    #               <code>Evaluation</code> field is <code>Static</code>, <code>Replacement</code> is
    #               <code>True</code>. If the <code>RequiresRecreation</code> field is <code>Always</code>
    #            and the <code>Evaluation</code> field is <code>Dynamic</code>, <code>Replacement</code> is
    #               <code>Conditionally</code>.</p>
    #            <p>If you have multiple changes with different <code>RequiresRecreation</code> values, the
    #               <code>Replacement</code> value depends on the change with the most impact. A
    #               <code>RequiresRecreation</code> value of <code>Always</code> has the most impact,
    #            followed by <code>Conditionally</code>, and then <code>Never</code>.</p>
    #
    #   Enum, one of: ["True", "False", "Conditional"]
    #
    #   @return [String]
    #
    # @!attribute scope
    #   <p>For the <code>Modify</code> action, indicates which resource attribute is triggering
    #            this update, such as a change in the resource attribute's <code>Metadata</code>,
    #               <code>Properties</code>, or <code>Tags</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute details
    #   <p>For the <code>Modify</code> action, a list of <code>ResourceChangeDetail</code>
    #            structures that describes the changes that CloudFormation will make to the
    #            resource.</p>
    #
    #   @return [Array<ResourceChangeDetail>]
    #
    # @!attribute change_set_id
    #   <p>The change set ID of the nested change set.</p>
    #
    #   @return [String]
    #
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the
    #            resource was created from a module included in the stack template.</p>
    #
    #   @return [ModuleInfo]
    #
    ResourceChange = ::Struct.new(
      :action,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :replacement,
      :scope,
      :details,
      :change_set_id,
      :module_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>For a resource with <code>Modify</code> as the action, the <code>ResourceChange</code>
    #          structure describes the changes CloudFormation will make to that resource.</p>
    #
    # @!attribute target
    #   <p>A <code>ResourceTargetDefinition</code> structure that describes the field that CloudFormation will change and whether the resource will be recreated.</p>
    #
    #   @return [ResourceTargetDefinition]
    #
    # @!attribute evaluation
    #   <p>Indicates whether CloudFormation can determine the target value, and whether the
    #            target value will change before you execute a change set.</p>
    #            <p>For <code>Static</code> evaluations, CloudFormation can determine that the target
    #            value will change, and its value. For example, if you directly modify the
    #               <code>InstanceType</code> property of an EC2 instance, CloudFormation knows that
    #            this property value will change, and its value, so this is a <code>Static</code>
    #            evaluation.</p>
    #            <p>For <code>Dynamic</code> evaluations, can't determine the target value because it
    #            depends on the result of an intrinsic function, such as a <code>Ref</code> or
    #               <code>Fn::GetAtt</code> intrinsic function, when the stack is updated. For example, if
    #            your template includes a reference to a resource that's conditionally recreated, the value
    #            of the reference (the physical ID of the resource) might change, depending on if the
    #            resource is recreated. If the resource is recreated, it will have a new physical ID, so all
    #            references to that resource will also be updated.</p>
    #
    #   Enum, one of: ["Static", "Dynamic"]
    #
    #   @return [String]
    #
    # @!attribute change_source
    #   <p>The group to which the <code>CausingEntity</code> value belongs. There are five entity
    #            groups:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResourceReference</code> entities are <code>Ref</code> intrinsic functions that
    #                  refer to resources in the template, such as <code>{ "Ref" : "MyEC2InstanceResource"
    #                     }</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ParameterReference</code> entities are <code>Ref</code> intrinsic functions
    #                  that get template parameter values, such as <code>{ "Ref" : "MyPasswordParameter"
    #                     }</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResourceAttribute</code> entities are <code>Fn::GetAtt</code> intrinsic
    #                  functions that get resource attribute values, such as <code>{ "Fn::GetAtt" : [
    #                     "MyEC2InstanceResource", "PublicDnsName" ] }</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DirectModification</code> entities are changes that are made directly to the
    #                  template.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Automatic</code> entities are <code>AWS::CloudFormation::Stack</code> resource
    #                  types, which are also known as nested stacks. If you made no changes to the
    #                     <code>AWS::CloudFormation::Stack</code> resource, CloudFormation sets the
    #                     <code>ChangeSource</code> to <code>Automatic</code> because the nested stack's
    #                  template might have changed. Changes to a nested stack's template aren't visible to
    #                     CloudFormation until you run an update on the parent stack.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"]
    #
    #   @return [String]
    #
    # @!attribute causing_entity
    #   <p>The identity of the entity that triggered this change. This entity is a member of the
    #            group that's specified by the <code>ChangeSource</code> field. For example, if you modified
    #            the value of the <code>KeyPairName</code> parameter, the <code>CausingEntity</code> is the
    #            name of the parameter (<code>KeyPairName</code>).</p>
    #            <p>If the <code>ChangeSource</code> value is <code>DirectModification</code>, no value is
    #            given for <code>CausingEntity</code>.</p>
    #
    #   @return [String]
    #
    ResourceChangeDetail = ::Struct.new(
      :target,
      :evaluation,
      :change_source,
      :causing_entity,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the target resources of a specific type in your import template (for example,
    #          all <code>AWS::S3::Bucket</code> resources) and the properties you can provide during the
    #          import to identify resources of that type.</p>
    #
    # @!attribute resource_type
    #   <p>The template resource type of the target resources, such as
    #            <code>AWS::S3::Bucket</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_ids
    #   <p>The logical IDs of the target resources of the specified <code>ResourceType</code>, as
    #            defined in the import template.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_identifiers
    #   <p>The resource properties you can provide during the import to identify your target
    #            resources. For example, <code>BucketName</code> is a possible identifier property for
    #               <code>AWS::S3::Bucket</code> resources.</p>
    #
    #   @return [Array<String>]
    #
    ResourceIdentifierSummary = ::Struct.new(
      :resource_type,
      :logical_resource_ids,
      :resource_identifiers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceSignalStatus
    #
    module ResourceSignalStatus
      # No documentation available.
      #
      SUCCESS = "SUCCESS"

      # No documentation available.
      #
      FAILURE = "FAILURE"
    end

    # Includes enum constants for ResourceStatus
    #
    module ResourceStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      DELETE_SKIPPED = "DELETE_SKIPPED"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      IMPORT_FAILED = "IMPORT_FAILED"

      # No documentation available.
      #
      IMPORT_COMPLETE = "IMPORT_COMPLETE"

      # No documentation available.
      #
      IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS"

      # No documentation available.
      #
      IMPORT_ROLLBACK_IN_PROGRESS = "IMPORT_ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      IMPORT_ROLLBACK_FAILED = "IMPORT_ROLLBACK_FAILED"

      # No documentation available.
      #
      IMPORT_ROLLBACK_COMPLETE = "IMPORT_ROLLBACK_COMPLETE"

      # No documentation available.
      #
      UPDATE_ROLLBACK_IN_PROGRESS = "UPDATE_ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_ROLLBACK_COMPLETE = "UPDATE_ROLLBACK_COMPLETE"

      # No documentation available.
      #
      UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED"

      # No documentation available.
      #
      ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE"

      # No documentation available.
      #
      ROLLBACK_FAILED = "ROLLBACK_FAILED"
    end

    # <p>The field that CloudFormation will change, such as the name of a resource's
    #          property, and whether the resource will be recreated.</p>
    #
    # @!attribute attribute
    #   <p>Indicates which resource attribute is triggering this update, such as a change in the
    #            resource attribute's <code>Metadata</code>, <code>Properties</code>, or
    #            <code>Tags</code>.</p>
    #
    #   Enum, one of: ["Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>If the <code>Attribute</code> value is <code>Properties</code>, the name of the
    #            property. For all other attributes, the value is null.</p>
    #
    #   @return [String]
    #
    # @!attribute requires_recreation
    #   <p>If the <code>Attribute</code> value is <code>Properties</code>, indicates whether a
    #            change to this property causes the resource to be recreated. The value can be
    #               <code>Never</code>, <code>Always</code>, or <code>Conditionally</code>. To determine the
    #            conditions for a <code>Conditionally</code> recreation, see the update behavior for that
    #               <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">property</a> in the CloudFormation User Guide.</p>
    #
    #   Enum, one of: ["Never", "Conditionally", "Always"]
    #
    #   @return [String]
    #
    ResourceTargetDefinition = ::Struct.new(
      :attribute,
      :name,
      :requires_recreation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the target resource of an import operation.</p>
    #
    # @!attribute resource_type
    #   <p>The type of resource to import into your stack, such as <code>AWS::S3::Bucket</code>.
    #            For a list of supported resource types, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/resource-import-supported-resources.html">Resources that support import operations</a> in the CloudFormation User Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical ID of the target resource as specified in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_identifier
    #   <p>A key-value pair that identifies the target resource. The key is an identifier property
    #            (for example, <code>BucketName</code> for <code>AWS::S3::Bucket</code> resources) and the
    #            value is the actual property value (for example, <code>MyS3Bucket</code>).</p>
    #
    #   @return [Hash<String, String>]
    #
    ResourceToImport = ::Struct.new(
      :resource_type,
      :logical_resource_id,
      :resource_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Structure containing the rollback triggers for CloudFormation to monitor during stack creation
    #          and updating operations, and for the specified monitoring period afterwards.</p>
    #          <p>Rollback triggers enable you to have CloudFormation monitor the state of your application during
    #          stack creation and updating, and to roll back that operation if the application breaches
    #          the threshold of any of the alarms you've specified. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-rollback-triggers.html">Monitor and Roll Back Stack
    #             Operations</a>.</p>
    #
    # @!attribute rollback_triggers
    #   <p>The triggers to monitor during stack creation or update actions.</p>
    #            <p>By default, CloudFormation saves the rollback triggers specified for a stack and applies them to
    #            any subsequent update operations for the stack, unless you specify otherwise. If you do
    #            specify rollback triggers for this parameter, those triggers replace any list of triggers
    #            previously specified for the stack. This means:</p>
    #            <ul>
    #               <li>
    #                  <p>To use the rollback triggers previously specified for this stack, if any, don't
    #                  specify this parameter.</p>
    #               </li>
    #               <li>
    #                  <p>To specify new or updated rollback triggers, you must specify
    #                     <i>all</i> the triggers that you want used for this stack, even
    #                  triggers you've specified before (for example, when creating the stack or during a
    #                  previous stack update). Any triggers that you don't include in the updated list of
    #                  triggers are no longer applied to the stack.</p>
    #               </li>
    #               <li>
    #                  <p>To remove all currently specified triggers, specify an empty list for this
    #                  parameter.</p>
    #               </li>
    #            </ul>
    #            <p>If a specified trigger is missing, the entire stack operation fails and is rolled
    #            back.</p>
    #
    #   @return [Array<RollbackTrigger>]
    #
    # @!attribute monitoring_time_in_minutes
    #   <p>The amount of time, in minutes, during which CloudFormation should monitor all
    #            the rollback triggers after the stack creation or update operation deploys all necessary
    #            resources.</p>
    #            <p>The default is 0 minutes.</p>
    #            <p>If you specify a monitoring period but don't specify any rollback triggers, CloudFormation still waits the specified period of time before cleaning up old
    #            resources after update operations. You can use this monitoring period to perform any manual
    #            stack validation desired, and manually cancel the stack creation or update (using <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CancelUpdateStack.html">CancelUpdateStack</a>, for example) as necessary.</p>
    #            <p>If you specify 0 for this parameter, CloudFormation still monitors the
    #            specified rollback triggers during stack creation and update operations. Then, for update
    #            operations, it begins disposing of old resources immediately once the operation
    #            completes.</p>
    #
    #   @return [Integer]
    #
    RollbackConfiguration = ::Struct.new(
      :rollback_triggers,
      :monitoring_time_in_minutes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_name
    #   <p>The name that's associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management role that CloudFormation
    #            assumes to rollback the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>RollbackStack</code> request.</p>
    #
    #   @return [String]
    #
    RollbackStackInput = ::Struct.new(
      :stack_name,
      :role_arn,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #
    #   @return [String]
    #
    RollbackStackOutput = ::Struct.new(
      :stack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rollback trigger CloudFormation monitors during creation and updating of stacks. If any of the
    #          alarms you specify goes to ALARM state during the stack operation or within the specified
    #          monitoring period afterwards, CloudFormation rolls back the entire stack
    #          operation.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the rollback trigger.</p>
    #            <p>If a specified trigger is missing, the entire stack operation fails and is rolled
    #            back.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The resource type of the rollback trigger. Specify either <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cw-alarm.html">AWS::CloudWatch::Alarm</a> or <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-cloudwatch-compositealarm.html">AWS::CloudWatch::CompositeAlarm</a> resource types.</p>
    #
    #   @return [String]
    #
    RollbackTrigger = ::Struct.new(
      :arn,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>SetStackPolicy</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or unique stack ID that you want to associate a policy with.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_policy_body
    #   <p>Structure containing the stack policy body. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent updates
    #               to stack resources</a> in the CloudFormation User Guide. You can specify either the
    #               <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
    #            both.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_policy_url
    #   <p>Location of a file containing the stack policy. The URL must point to a policy (maximum
    #            size: 16 KB) located in an Amazon S3 bucket in the same Amazon Web Services Region
    #            as the stack. You can specify either the <code>StackPolicyBody</code> or the
    #               <code>StackPolicyURL</code> parameter, but not both.</p>
    #
    #   @return [String]
    #
    SetStackPolicyInput = ::Struct.new(
      :stack_name,
      :stack_policy_body,
      :stack_policy_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetStackPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">activate the type</a> in this account and region. For private extensions, this will
    #            be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">register the type</a> in this account and region.</p>
    #            <p>Do not include the extension versions suffix at the end of the ARN. You can set the
    #            configuration for an extension, but not for a specific extension version.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration data for the extension, in this account and region.</p>
    #            <p>The configuration data must be formatted as JSON, and validate against the schema
    #            returned in the <code>ConfigurationSchema</code> response element of <a href="AWSCloudFormation/latest/APIReference/API_DescribeType.html">API_DescribeType</a>. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html resource-type-howto-configuration">Defining account-level configuration data for an extension</a> in the
    #                  <i>CloudFormation CLI User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_alias
    #   <p>An alias by which to refer to this extension configuration data.</p>
    #            <p>Conditional: Specifying a configuration alias is required when setting a configuration
    #            for a resource type extension.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #               <code>TypeName</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #               <code>TypeName</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    SetTypeConfigurationInput = ::Struct.new(
      :type_arn,
      :configuration,
      :configuration_alias,
      :type_name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the configuration data, in this account and
    #            region.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #               <code>TypeName</code>.</p>
    #
    #   @return [String]
    #
    SetTypeConfigurationOutput = ::Struct.new(
      :configuration_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #            information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it is
    #            registered.</p>
    #
    #   @return [String]
    #
    SetTypeDefaultVersionInput = ::Struct.new(
      :arn,
      :type,
      :type_name,
      :version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SetTypeDefaultVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for the <a>SignalResource</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The stack name or unique stack ID that includes the resource that you want to
    #            signal.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical ID of the resource that you want to signal. The logical ID is the name of
    #            the resource that given in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute unique_id
    #   <p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If
    #            you send multiple signals to a single resource (such as signaling a wait condition), each
    #            signal requires a different unique ID.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the signal, which is either success or failure. A failure signal causes
    #               CloudFormation to immediately fail the stack creation or update.</p>
    #
    #   Enum, one of: ["SUCCESS", "FAILURE"]
    #
    #   @return [String]
    #
    SignalResourceInput = ::Struct.new(
      :stack_name,
      :logical_resource_id,
      :unique_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    SignalResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Stack data type.</p>
    #
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute change_set_id
    #   <p>The unique ID of the change set.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A user-defined description associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute creation_time
    #   <p>The time at which the stack was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute deletion_time
    #   <p>The time the stack was deleted.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time the stack was last updated. This field will only be returned if the stack has
    #            been updated at least once.</p>
    #
    #   @return [Time]
    #
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    #   @return [RollbackConfiguration]
    #
    # @!attribute stack_status
    #   <p>Current status of the stack.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"]
    #
    #   @return [String]
    #
    # @!attribute stack_status_reason
    #   <p>Success/failure message associated with the stack status.</p>
    #
    #   @return [String]
    #
    # @!attribute disable_rollback
    #   <p>Boolean to enable or disable rollback on stack creation failures:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>true</code>: disable rollback.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>false</code>: enable rollback.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Boolean]
    #
    # @!attribute notification_ar_ns
    #   <p>Amazon SNS topic Amazon Resource Names (ARNs) to which stack related events are
    #            published.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute timeout_in_minutes
    #   <p>The amount of time within which stack creation should complete.</p>
    #
    #   @return [Integer]
    #
    # @!attribute capabilities
    #   <p>The capabilities allowed in the stack.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute outputs
    #   <p>A list of output structures.</p>
    #
    #   @return [Array<Output>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that's associated with the stack. During a stack operation, CloudFormation uses this
    #            role's credentials to make calls on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of <code>Tag</code>s that specify information about the stack.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute enable_termination_protection
    #   <p>Whether termination protection is enabled for the stack.</p>
    #            <p>For <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #            termination protection is set on the root stack and can't be changed directly on the nested
    #            stack. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a Stack From Being Deleted</a> in the
    #               <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parent_id
    #   <p>For nested stacks--stacks created as resources for another stack--the stack ID of the
    #            direct parent of this stack. For the first level of nested stacks, the root stack is also
    #            the parent stack.</p>
    #            <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute root_id
    #   <p>For nested stacks--stacks created as resources for another stack--the stack ID of the
    #            top-level stack to which the nested stack ultimately belongs.</p>
    #            <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_information
    #   <p>Information about whether a stack's actual configuration differs, or has
    #               <i>drifted</i>, from it's expected configuration, as defined in the stack
    #            template and any values specified as template parameters. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration
    #               Changes to Stacks and Resources</a>.</p>
    #
    #   @return [StackDriftInformation]
    #
    Stack = ::Struct.new(
      :stack_id,
      :stack_name,
      :change_set_id,
      :description,
      :parameters,
      :creation_time,
      :deletion_time,
      :last_updated_time,
      :rollback_configuration,
      :stack_status,
      :stack_status_reason,
      :disable_rollback,
      :notification_ar_ns,
      :timeout_in_minutes,
      :capabilities,
      :outputs,
      :role_arn,
      :tags,
      :enable_termination_protection,
      :parent_id,
      :root_id,
      :drift_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackDriftDetectionStatus
    #
    module StackDriftDetectionStatus
      # No documentation available.
      #
      DETECTION_IN_PROGRESS = "DETECTION_IN_PROGRESS"

      # No documentation available.
      #
      DETECTION_FAILED = "DETECTION_FAILED"

      # No documentation available.
      #
      DETECTION_COMPLETE = "DETECTION_COMPLETE"
    end

    # <p>Contains information about whether the stack's actual configuration differs, or has
    #             <i>drifted</i>, from its expected configuration, as defined in the stack
    #          template and any values specified as template parameters. A stack is considered to have
    #          drifted if one or more of its resources have drifted.</p>
    #
    # @!attribute stack_drift_status
    #   <p>Status of the stack's actual configuration compared to its expected template
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from its expected template configuration.
    #                  A stack is considered to have drifted if one or more of its resources have
    #                  drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack differs from its
    #                  expected template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack's actual configuration matches its expected
    #                  template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_check_timestamp
    #   <p>Most recent time when a drift detection operation was initiated on the stack, or any of
    #            its individual resources that support drift detection.</p>
    #
    #   @return [Time]
    #
    StackDriftInformation = ::Struct.new(
      :stack_drift_status,
      :last_check_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about whether the stack's actual configuration differs, or has
    #             <i>drifted</i>, from its expected configuration, as defined in the stack
    #          template and any values specified as template parameters. A stack is considered to have
    #          drifted if one or more of its resources have drifted.</p>
    #
    # @!attribute stack_drift_status
    #   <p>Status of the stack's actual configuration compared to its expected template
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from its expected template configuration.
    #                  A stack is considered to have drifted if one or more of its resources have
    #                  drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack differs from its
    #                  expected template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack's actual configuration matches its expected
    #                  template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_check_timestamp
    #   <p>Most recent time when a drift detection operation was initiated on the stack, or any of
    #            its individual resources that support drift detection.</p>
    #
    #   @return [Time]
    #
    StackDriftInformationSummary = ::Struct.new(
      :stack_drift_status,
      :last_check_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackDriftStatus
    #
    module StackDriftStatus
      # No documentation available.
      #
      DRIFTED = "DRIFTED"

      # No documentation available.
      #
      IN_SYNC = "IN_SYNC"

      # No documentation available.
      #
      UNKNOWN = "UNKNOWN"

      # No documentation available.
      #
      NOT_CHECKED = "NOT_CHECKED"
    end

    # <p>The StackEvent data type.</p>
    #
    # @!attribute stack_id
    #   <p>The unique ID name of the instance of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute event_id
    #   <p>The unique ID of this event.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name associated with a stack.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier associated with the physical instance of the
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a> in the CloudFormation User Guide.)</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>Time the status was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_properties
    #   <p>BLOB of the properties used to create the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The token passed to the operation that generated this event.</p>
    #            <p>All events triggered by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute hook_type
    #   <p>The name of the hook.</p>
    #
    #   @return [String]
    #
    # @!attribute hook_status
    #   <p>Provides the status of the change set hook.</p>
    #
    #   Enum, one of: ["HOOK_IN_PROGRESS", "HOOK_COMPLETE_SUCCEEDED", "HOOK_COMPLETE_FAILED", "HOOK_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute hook_status_reason
    #   <p>Provides the reason for the hook status.</p>
    #
    #   @return [String]
    #
    # @!attribute hook_invocation_point
    #   <p>Invocation points are points in provisioning logic where hooks are initiated.</p>
    #
    #   Enum, one of: ["PRE_PROVISION"]
    #
    #   @return [String]
    #
    # @!attribute hook_failure_mode
    #   <p>Specify the hook failure mode for non-compliant resources in the followings ways.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code> Stops provisioning resources.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>WARN</code> Allows provisioning to continue with a warning message.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["FAIL", "WARN"]
    #
    #   @return [String]
    #
    StackEvent = ::Struct.new(
      :stack_id,
      :event_id,
      :stack_name,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :timestamp,
      :resource_status,
      :resource_status_reason,
      :resource_properties,
      :client_request_token,
      :hook_type,
      :hook_status,
      :hook_status_reason,
      :hook_invocation_point,
      :hook_failure_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An CloudFormation stack, in a specific account and Region, that's part of a
    #          stack set operation. A stack instance is a reference to an attempted or actual stack in a
    #          given account within a given Region. A stack instance can exist without a stack—for
    #          example, if the stack couldn't be created for some reason. A stack instance is associated
    #          with only one stack set. Each stack instance contains the ID of its associated stack set,
    #          in addition to the ID of the actual stack and the stack status.</p>
    #
    # @!attribute stack_set_id
    #   <p>The name or unique ID of the stack set that the stack instance is associated
    #            with.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region that the stack instance is associated
    #            with.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>[Self-managed permissions] The name of the Amazon Web Services account that the stack
    #            instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The ID of the stack instance.</p>
    #
    #   @return [String]
    #
    # @!attribute parameter_overrides
    #   <p>A list of parameters from the stack set template whose values have been overridden in
    #            this stack instance.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute status
    #   <p>The status of the stack instance, in terms of its synchronization with its associated
    #            stack set.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed
    #                  and left the stack in an unstable state. Stacks in this state are excluded from
    #                  further <code>UpdateStackSet</code> operations. You might need to perform a
    #                     <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
    #                     <code>true</code>, to delete the stack instance, and then delete the stack
    #                  manually.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTDATED</code>: The stack isn't currently up to date with the stack set
    #                  because:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The associated stack failed during a <code>CreateStackSet</code> or
    #                           <code>UpdateStackSet</code> operation.</p>
    #                     </li>
    #                     <li>
    #                        <p>The stack was part of a <code>CreateStackSet</code> or
    #                           <code>UpdateStackSet</code> operation that failed or was stopped before the
    #                        stack was created or updated.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CURRENT</code>: The stack is currently up to date with the stack set.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CURRENT", "OUTDATED", "INOPERABLE"]
    #
    #   @return [String]
    #
    # @!attribute stack_instance_status
    #   <p>The detailed status of the stack instance.</p>
    #
    #   @return [StackInstanceComprehensiveStatus]
    #
    # @!attribute status_reason
    #   <p>The explanation for the specific status code that's assigned to this stack
    #            instance.</p>
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_id
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs
    #            that you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_status
    #   <p>Status of the stack instance's actual configuration compared to the expected template
    #            and parameter configuration of the stack set to which it belongs.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from the expected template and parameter
    #                  configuration of the stack set to which it belongs. A stack instance is considered to
    #                  have drifted if one or more of the resources in the associated stack have
    #                  drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack instance differs from
    #                  its expected stack set configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack instance's actual configuration matches its
    #                  expected stack set configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on
    #            the stack instance. This value will be <code>NULL</code> for any stack instance on which
    #            drift detection hasn't yet been performed.</p>
    #
    #   @return [Time]
    #
    StackInstance = ::Struct.new(
      :stack_set_id,
      :region,
      :account,
      :stack_id,
      :parameter_overrides,
      :status,
      :stack_instance_status,
      :status_reason,
      :organizational_unit_id,
      :drift_status,
      :last_drift_check_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The detailed status of the stack instance.</p>
    #
    # @!attribute detailed_status
    #   <ul>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code>: The operation in the specified account and Region has been
    #                  canceled. This is either because a user has stopped the stack set operation, or
    #                  because the failure tolerance of the stack set operation has been exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation in the specified account and Region failed. If
    #                  the stack set operation fails in enough accounts within a Region, the failure
    #                  tolerance for the stack set operation as a whole might be exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed
    #                  and left the stack in an unstable state. Stacks in this state are excluded from
    #                  further <code>UpdateStackSet</code> operations. You might need to perform a
    #                     <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
    #                     <code>true</code>, to delete the stack instance, and then delete the stack
    #                  manually.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The operation in the specified account and Region has yet to
    #                  start.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation in the specified account and Region is
    #                  currently in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation in the specified account and Region
    #                  completed successfully.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE"]
    #
    #   @return [String]
    #
    StackInstanceComprehensiveStatus = ::Struct.new(
      :detailed_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackInstanceDetailedStatus
    #
    module StackInstanceDetailedStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"

      # No documentation available.
      #
      INOPERABLE = "INOPERABLE"
    end

    # <p>The status that stack instances are filtered by.</p>
    #
    # @!attribute name
    #   <p>The type of filter to apply.</p>
    #
    #   Enum, one of: ["DETAILED_STATUS"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The status to filter by.</p>
    #
    #   @return [String]
    #
    StackInstanceFilter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackInstanceFilterName
    #
    module StackInstanceFilterName
      # No documentation available.
      #
      DETAILED_STATUS = "DETAILED_STATUS"
    end

    # <p>The specified stack instance doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StackInstanceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackInstanceStatus
    #
    module StackInstanceStatus
      # No documentation available.
      #
      CURRENT = "CURRENT"

      # No documentation available.
      #
      OUTDATED = "OUTDATED"

      # No documentation available.
      #
      INOPERABLE = "INOPERABLE"
    end

    # <p>The structure that contains summary information about a stack instance.</p>
    #
    # @!attribute stack_set_id
    #   <p>The name or unique ID of the stack set that the stack instance is associated
    #            with.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region that the stack instance is associated
    #            with.</p>
    #
    #   @return [String]
    #
    # @!attribute account
    #   <p>[Self-managed permissions] The name of the Amazon Web Services account that the stack
    #            instance is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>The ID of the stack instance.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the stack instance, in terms of its synchronization with its associated
    #            stack set.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INOPERABLE</code>: A <code>DeleteStackInstances</code> operation has failed
    #                  and left the stack in an unstable state. Stacks in this state are excluded from
    #                  further <code>UpdateStackSet</code> operations. You might need to perform a
    #                     <code>DeleteStackInstances</code> operation, with <code>RetainStacks</code> set to
    #                     <code>true</code>, to delete the stack instance, and then delete the stack
    #                  manually.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>OUTDATED</code>: The stack isn't currently up to date with the stack set
    #                  because:</p>
    #                  <ul>
    #                     <li>
    #                        <p>The associated stack failed during a <code>CreateStackSet</code> or
    #                           <code>UpdateStackSet</code> operation.</p>
    #                     </li>
    #                     <li>
    #                        <p>The stack was part of a <code>CreateStackSet</code> or
    #                           <code>UpdateStackSet</code> operation that failed or was stopped before the
    #                        stack was created or updated.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CURRENT</code>: The stack is currently up to date with the stack set.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CURRENT", "OUTDATED", "INOPERABLE"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The explanation for the specific status code assigned to this stack instance.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_instance_status
    #   <p>The detailed status of the stack instance.</p>
    #
    #   @return [StackInstanceComprehensiveStatus]
    #
    # @!attribute organizational_unit_id
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs
    #            that you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_status
    #   <p>Status of the stack instance's actual configuration compared to the expected template
    #            and parameter configuration of the stack set to which it belongs.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: The stack differs from the expected template and parameter
    #                  configuration of the stack set to which it belongs. A stack instance is considered to
    #                  have drifted if one or more of the resources in the associated stack have
    #                  drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the stack instance differs from
    #                  its expected stack set configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The stack instance's actual configuration matches its
    #                  expected stack set configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on
    #            the stack instance. This value will be <code>NULL</code> for any stack instance on which
    #            drift detection hasn't yet been performed.</p>
    #
    #   @return [Time]
    #
    StackInstanceSummary = ::Struct.new(
      :stack_set_id,
      :region,
      :account,
      :stack_id,
      :status,
      :status_reason,
      :stack_instance_status,
      :organizational_unit_id,
      :drift_status,
      :last_drift_check_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified stack ARN doesn't exist or stack doesn't exist corresponding to the ARN in
    #          input.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StackNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The StackResource data type.</p>
    #
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #            supported by CloudFormation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a> in the CloudFormation User
    #            Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>Time the status was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>User defined description associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_information
    #   <p>Information about whether the resource's actual configuration differs, or has
    #               <i>drifted</i>, from its expected configuration, as defined in the stack
    #            template and any values specified as template parameters. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration
    #               Changes to Stacks and Resources</a>.</p>
    #
    #   @return [StackResourceDriftInformation]
    #
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the
    #            resource was created from a module included in the stack template.</p>
    #
    #   @return [ModuleInfo]
    #
    StackResource = ::Struct.new(
      :stack_name,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :timestamp,
      :resource_status,
      :resource_status_reason,
      :description,
      :drift_information,
      :module_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains detailed information about the specified stack resource.</p>
    #
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #            supported by CloudFormation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a> in the CloudFormation User Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   <p>Time the status was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>User defined description associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>The content of the <code>Metadata</code> attribute declared for the resource. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-metadata.html">Metadata
    #               Attribute</a> in the CloudFormation User Guide.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_information
    #   <p>Information about whether the resource's actual configuration differs, or has
    #               <i>drifted</i>, from its expected configuration, as defined in the stack
    #            template and any values specified as template parameters. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration
    #               Changes to Stacks and Resources</a>.</p>
    #
    #   @return [StackResourceDriftInformation]
    #
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the
    #            resource was created from a module included in the stack template.</p>
    #
    #   @return [ModuleInfo]
    #
    StackResourceDetail = ::Struct.new(
      :stack_name,
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason,
      :description,
      :metadata,
      :drift_information,
      :module_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains the drift information for a resource that has been checked for drift. This
    #          includes actual and expected property values for resources in which CloudFormation has detected
    #          drift. Only resource properties explicitly defined in the stack template are checked for
    #          drift. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
    #             Unregulated Configuration Changes to Stacks and Resources</a>.</p>
    #          <p>Resources that don't currently support drift detection can't be checked. For a list of
    #          resources that support drift detection, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support
    #             Drift Detection</a>.</p>
    #          <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual resources,
    #          or <a>DetectStackDrift</a> to detect drift on all resources in a given stack
    #          that support drift detection.</p>
    #
    # @!attribute stack_id
    #   <p>The ID of the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #            supported by CloudFormation.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id_context
    #   <p>Context information that enables CloudFormation to uniquely identify a resource. CloudFormation uses
    #            context key-value pairs in cases where a resource's logical and physical IDs aren't enough
    #            to uniquely identify that resource. Each context key-value pair specifies a unique resource
    #            that contains the targeted resource.</p>
    #
    #   @return [Array<PhysicalResourceIdContextKeyValuePair>]
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute expected_properties
    #   <p>A JSON structure containing the expected property values of the stack resource, as
    #            defined in the stack template and any values specified as template parameters.</p>
    #            <p>For resources whose <code>StackResourceDriftStatus</code> is <code>DELETED</code>, this
    #            structure will not be present.</p>
    #
    #   @return [String]
    #
    # @!attribute actual_properties
    #   <p>A JSON structure containing the actual property values of the stack resource.</p>
    #            <p>For resources whose <code>StackResourceDriftStatus</code> is <code>DELETED</code>, this
    #            structure will not be present.</p>
    #
    #   @return [String]
    #
    # @!attribute property_differences
    #   <p>A collection of the resource properties whose actual values differ from their expected
    #            values. These will be present only for resources whose
    #               <code>StackResourceDriftStatus</code> is
    #            <code>MODIFIED</code>.</p>
    #
    #   @return [Array<PropertyDifference>]
    #
    # @!attribute stack_resource_drift_status
    #   <p>Status of the resource's actual configuration compared to its expected
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template
    #                  configuration because the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #                  values (as defined in the stack template and any values specified as template
    #                  parameters).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #                  template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation does not currently return this value.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>Time at which CloudFormation performed drift detection on the stack resource.</p>
    #
    #   @return [Time]
    #
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the
    #            resource was created from a module included in the stack template.</p>
    #
    #   @return [ModuleInfo]
    #
    StackResourceDrift = ::Struct.new(
      :stack_id,
      :logical_resource_id,
      :physical_resource_id,
      :physical_resource_id_context,
      :resource_type,
      :expected_properties,
      :actual_properties,
      :property_differences,
      :stack_resource_drift_status,
      :timestamp,
      :module_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about whether the resource's actual configuration differs, or has
    #             <i>drifted</i>, from its expected configuration.</p>
    #
    # @!attribute stack_resource_drift_status
    #   <p>Status of the resource's actual configuration compared to its expected
    #            configuration</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected configuration in that
    #                  it has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: The resource differs from its expected
    #                  configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation has not checked if the resource differs from its
    #                  expected configuration.</p>
    #                  <p>Any resources that do not currently support drift detection have a status of
    #                     <code>NOT_CHECKED</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_check_timestamp
    #   <p>When CloudFormation last checked if the resource had drifted from its expected
    #            configuration.</p>
    #
    #   @return [Time]
    #
    StackResourceDriftInformation = ::Struct.new(
      :stack_resource_drift_status,
      :last_check_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summarizes information about whether the resource's actual configuration differs, or has
    #             <i>drifted</i>, from its expected configuration.</p>
    #
    # @!attribute stack_resource_drift_status
    #   <p>Status of the resource's actual configuration compared to its expected
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected configuration in that
    #                  it has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: The resource differs from its expected
    #                  configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked if the resource differs from its
    #                  expected configuration.</p>
    #                  <p>Any resources that don't currently support drift detection have a status of
    #                     <code>NOT_CHECKED</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>. If you performed an <a>ContinueUpdateRollback</a> operation on a stack, any resources included in
    #                     <code>ResourcesToSkip</code> will also have a status of <code>NOT_CHECKED</code>.
    #                  For more information about skipping resources during rollback operations, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html">Continue Rolling Back an Update</a> in the CloudFormation User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #                  configuration.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_check_timestamp
    #   <p>When CloudFormation last checked if the resource had drifted from its expected
    #            configuration.</p>
    #
    #   @return [Time]
    #
    StackResourceDriftInformationSummary = ::Struct.new(
      :stack_resource_drift_status,
      :last_check_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackResourceDriftStatus
    #
    module StackResourceDriftStatus
      # No documentation available.
      #
      IN_SYNC = "IN_SYNC"

      # No documentation available.
      #
      MODIFIED = "MODIFIED"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      NOT_CHECKED = "NOT_CHECKED"
    end

    # <p>Contains high-level information about the specified stack resource.</p>
    #
    # @!attribute logical_resource_id
    #   <p>The logical name of the resource specified in the template.</p>
    #
    #   @return [String]
    #
    # @!attribute physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of the
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Type of resource. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a> in the CloudFormation User Guide.)</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   <p>Time the status was updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_status
    #   <p>Current status of the resource.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute resource_status_reason
    #   <p>Success/failure message associated with the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_information
    #   <p>Information about whether the resource's actual configuration differs, or has
    #               <i>drifted</i>, from its expected configuration, as defined in the stack
    #            template and any values specified as template parameters. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration
    #               Changes to Stacks and Resources</a>.</p>
    #
    #   @return [StackResourceDriftInformationSummary]
    #
    # @!attribute module_info
    #   <p>Contains information about the module from which the resource was created, if the
    #            resource was created from a module included in the stack template.</p>
    #
    #   @return [ModuleInfo]
    #
    StackResourceSummary = ::Struct.new(
      :logical_resource_id,
      :physical_resource_id,
      :resource_type,
      :last_updated_timestamp,
      :resource_status,
      :resource_status_reason,
      :drift_information,
      :module_info,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about a stack set. A stack set enables you to
    #          provision stacks into Amazon Web Services accounts and across Regions by using a single
    #             CloudFormation template. In the stack set, you specify the template to use, in
    #          addition to any parameters and capabilities that the template requires.</p>
    #
    # @!attribute stack_set_name
    #   <p>The name that's associated with the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_set_id
    #   <p>The ID of the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the stack set that you specify when the stack set is created or
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the stack set.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>The structure that contains the body of the template that was used to create or update
    #            the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of input parameters for a stack set.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute capabilities
    #   <p>The capabilities that are allowed in the stack set. Some stack set templates might
    #            include resources that can affect permissions in your Amazon Web Services account—for
    #            example, by creating new Identity and Access Management (IAM) users. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation
    #            Templates.</a>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>A list of tags that specify information about the stack set. A maximum number of 50 tags
    #            can be specified.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute stack_set_arn
    #   <p>The Amazon Resource Name (ARN) of the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to create or update
    #            the stack set.</p>
    #            <p>Use customized administrator roles to control which users or groups can manage specific
    #            stack sets within the same administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites: Granting Permissions for Stack
    #               Set Operations</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role used to create or update the stack
    #            set.</p>
    #            <p>Use customized execution roles to control which stack resources users and groups can
    #            include in their stack sets.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_set_drift_detection_details
    #   <p>Detailed information about the drift status of the stack set.</p>
    #            <p>For stack sets, contains information about the last <i>completed</i> drift
    #            operation performed on the stack set. Information about drift operations currently in
    #            progress isn't included.</p>
    #
    #   @return [StackSetDriftDetectionDetails]
    #
    # @!attribute auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to
    #               Organizations accounts that are added to a target organization or organizational
    #            unit (OU).</p>
    #
    #   @return [AutoDeployment]
    #
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for stack set operations are
    #            created.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #                  execution roles required to deploy to target accounts. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #                     Self-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #                     IAM roles required to deploy to accounts managed by Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "SELF_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute organizational_unit_ids
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs
    #            that you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #            conflicting operations.</p>
    #
    #   @return [ManagedExecution]
    #
    StackSet = ::Struct.new(
      :stack_set_name,
      :stack_set_id,
      :description,
      :status,
      :template_body,
      :parameters,
      :capabilities,
      :tags,
      :stack_set_arn,
      :administration_role_arn,
      :execution_role_name,
      :stack_set_drift_detection_details,
      :auto_deployment,
      :permission_model,
      :organizational_unit_ids,
      :managed_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about the drift status of the stack set.</p>
    #          <p>For stack sets, contains information about the last <i>completed</i> drift
    #          operation performed on the stack set. Information about drift operations in-progress isn't
    #          included.</p>
    #          <p>For stack set operations, includes information about drift operations currently being
    #          performed on the stack set.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Detecting unmanaged
    #             changes in stack sets</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    # @!attribute drift_status
    #   <p>Status of the stack set's actual configuration compared to its expected template and
    #            parameter configuration. A stack set is considered to have drifted if one or more of its
    #            stack instances have drifted from their expected template and parameter
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: One or more of the stack instances belonging to the stack
    #                  set stack differs from the expected template and parameter configuration. A stack
    #                  instance is considered to have drifted if one or more of the resources in the
    #                  associated stack have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked the stack set for drift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: All of the stack instances belonging to the stack set stack
    #                  match from the expected template and parameter configuration.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute drift_detection_status
    #   <p>The status of the stack set drift detection operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>COMPLETED</code>: The drift detection operation completed without failing on
    #                  any stack instances.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The drift detection operation exceeded the specified failure
    #                  tolerance.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PARTIAL_SUCCESS</code>: The drift detection operation completed without
    #                  exceeding the failure tolerance for the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_PROGRESS</code>: The drift detection operation is currently being
    #                  performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The user has canceled the drift detection operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on
    #            the stack set. This value will be <code>NULL</code> for any stack set on which drift
    #            detection hasn't yet been performed.</p>
    #
    #   @return [Time]
    #
    # @!attribute total_stack_instances_count
    #   <p>The total number of stack instances belonging to this stack set.</p>
    #            <p>The total number of stack instances is equal to the total of:</p>
    #            <ul>
    #               <li>
    #                  <p>Stack instances that match the stack set configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Stack instances that have drifted from the stack set configuration.</p>
    #               </li>
    #               <li>
    #                  <p>Stack instances where the drift detection operation has failed.</p>
    #               </li>
    #               <li>
    #                  <p>Stack instances currently being checked for drift.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Integer]
    #
    # @!attribute drifted_stack_instances_count
    #   <p>The number of stack instances that have drifted from the expected template and parameter
    #            configuration of the stack set. A stack instance is considered to have drifted if one or
    #            more of the resources in the associated stack don't match their expected
    #            configuration.</p>
    #
    #   @return [Integer]
    #
    # @!attribute in_sync_stack_instances_count
    #   <p>The number of stack instances which match the expected template and parameter
    #            configuration of the stack set.</p>
    #
    #   @return [Integer]
    #
    # @!attribute in_progress_stack_instances_count
    #   <p>The number of stack instances that are currently being checked for drift.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_stack_instances_count
    #   <p>The number of stack instances for which the drift detection operation failed.</p>
    #
    #   @return [Integer]
    #
    StackSetDriftDetectionDetails = ::Struct.new(
      :drift_status,
      :drift_detection_status,
      :last_drift_check_timestamp,
      :total_stack_instances_count,
      :drifted_stack_instances_count,
      :in_sync_stack_instances_count,
      :in_progress_stack_instances_count,
      :failed_stack_instances_count,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.total_stack_instances_count ||= 0
        self.drifted_stack_instances_count ||= 0
        self.in_sync_stack_instances_count ||= 0
        self.in_progress_stack_instances_count ||= 0
        self.failed_stack_instances_count ||= 0
      end

    end

    # Includes enum constants for StackSetDriftDetectionStatus
    #
    module StackSetDriftDetectionStatus
      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PARTIAL_SUCCESS = "PARTIAL_SUCCESS"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # Includes enum constants for StackSetDriftStatus
    #
    module StackSetDriftStatus
      # No documentation available.
      #
      DRIFTED = "DRIFTED"

      # No documentation available.
      #
      IN_SYNC = "IN_SYNC"

      # No documentation available.
      #
      NOT_CHECKED = "NOT_CHECKED"
    end

    # <p>You can't yet delete this stack set, because it still contains one or more stack
    #          instances. Delete all stack instances from the stack set before deleting the stack
    #          set.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StackSetNotEmptyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified stack set doesn't exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StackSetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure that contains information about a stack set operation.</p>
    #
    # @!attribute operation_id
    #   <p>The unique ID of a stack set operation.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_set_id
    #   <p>The ID of the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The type of stack set operation: <code>CREATE</code>, <code>UPDATE</code>, or
    #               <code>DELETE</code>. Create and delete operations affect only the specified stack set
    #            instances that are associated with the specified stack set. Update operations affect both
    #            the stack set itself, in addition to <i>all</i> associated stack set
    #            instances.</p>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation exceeded the specified failure tolerance. The
    #                  failure tolerance value that you've set for an operation is applied for each Region
    #                  during stack create and update operations. If the number of failed stacks within a
    #                  Region exceeds the failure tolerance, the status of the operation in the Region is
    #                  set to <code>FAILED</code>. This in turn sets the status of the operation as a whole
    #                  to <code>FAILED</code>, and CloudFormation cancels the operation in any
    #                  remaining Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUED</code>: [Service-managed permissions] For automatic deployments that
    #                  require a sequence of operations, the operation is queued to be performed. For more
    #                  information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html stackset-status-codes">stack set operation status codes</a> in the CloudFormation User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation is currently being performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The user has canceled the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: The operation is in the process of stopping, at user
    #                  request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation completed creating or updating all the
    #                  specified stacks without exceeding the failure tolerance for the operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"]
    #
    #   @return [String]
    #
    # @!attribute operation_preferences
    #   <p>The preferences for how CloudFormation performs this stack set operation.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute retain_stacks
    #   <p>For stack set operations of action type <code>DELETE</code>, specifies whether to remove
    #            the stack instances from the specified stack set, but doesn't delete the stacks. You can't
    #            re-associate a retained stack, or add an existing, saved stack to a new stack set.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role used to perform this
    #            stack set operation.</p>
    #            <p>Use customized administrator roles to control which users or groups can manage specific
    #            stack sets within the same administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Define Permissions for Multiple
    #               Administrators</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role used to create or update the stack
    #            set.</p>
    #            <p>Use customized execution roles to control which stack resources users and groups can
    #            include in their stack sets.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the operation was initiated. Note that the creation times for the
    #            stack set operation might differ from the creation time of the individual stacks
    #            themselves. This is because CloudFormation needs to perform preparatory work for
    #            the operation, such as dispatching the work to the requested Regions, before actually
    #            creating the first stacks.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_timestamp
    #   <p>The time at which the stack set operation ended, across all accounts and Regions
    #            specified. Note that this doesn't necessarily mean that the stack set operation was
    #            successful, or even attempted, in each account or Region.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts affected by the stack
    #            operation.</p>
    #
    #   @return [DeploymentTargets]
    #
    # @!attribute stack_set_drift_detection_details
    #   <p>Detailed information about the drift status of the stack set. This includes information
    #            about drift operations currently being performed on the stack set.</p>
    #            <p>This information will only be present for stack set operations whose <code>Action</code>
    #            type is <code>DETECT_DRIFT</code>.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Detecting Unmanaged
    #               Changes in Stack Sets</a> in the CloudFormation User Guide.</p>
    #
    #   @return [StackSetDriftDetectionDetails]
    #
    # @!attribute status_reason
    #   <p>The status of the operation in details.</p>
    #
    #   @return [String]
    #
    StackSetOperation = ::Struct.new(
      :operation_id,
      :stack_set_id,
      :action,
      :status,
      :operation_preferences,
      :retain_stacks,
      :administration_role_arn,
      :execution_role_name,
      :creation_timestamp,
      :end_timestamp,
      :deployment_targets,
      :stack_set_drift_detection_details,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackSetOperationAction
    #
    module StackSetOperationAction
      # No documentation available.
      #
      CREATE = "CREATE"

      # No documentation available.
      #
      UPDATE = "UPDATE"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      DETECT_DRIFT = "DETECT_DRIFT"
    end

    # <p>The user-specified preferences for how CloudFormation performs a stack set
    #          operation.</p>
    #          <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
    #
    # @!attribute region_concurrency_type
    #   <p>The concurrency type of deploying StackSets operations in Regions, could be in parallel
    #            or one Region at a time.</p>
    #
    #   Enum, one of: ["SEQUENTIAL", "PARALLEL"]
    #
    #   @return [String]
    #
    # @!attribute region_order
    #   <p>The order of the Regions in where you want to perform the stack operation.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failure_tolerance_count
    #   <p>The number of accounts, per Region, for which this operation can fail before CloudFormation stops the operation in that Region. If the operation is stopped in a
    #            Region, CloudFormation doesn't attempt the operation in any subsequent
    #            Regions.</p>
    #            <p>Conditional: You must specify either <code>FailureToleranceCount</code> or
    #               <code>FailureTolerancePercentage</code> (but not both).</p>
    #            <p>By default, <code>0</code> is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_tolerance_percentage
    #   <p>The percentage of accounts, per Region, for which this stack operation can fail before
    #               CloudFormation stops the operation in that Region. If the operation is stopped
    #            in a Region, CloudFormation doesn't attempt the operation in any subsequent
    #            Regions.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, CloudFormation rounds <i>down</i> to the next whole number.</p>
    #            <p>Conditional: You must specify either <code>FailureToleranceCount</code> or
    #               <code>FailureTolerancePercentage</code>, but not both.</p>
    #            <p>By default, <code>0</code> is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrent_count
    #   <p>The maximum number of accounts in which to perform this operation at one time. This is
    #            dependent on the value of
    #               <code>FailureToleranceCount</code>.<code>MaxConcurrentCount</code> is at most one more
    #            than the <code>FailureToleranceCount</code>.</p>
    #            <p>Note that this setting lets you specify the <i>maximum</i> for operations.
    #            For large deployments, under certain circumstances the actual number of accounts acted upon
    #            concurrently may be lower due to service throttling.</p>
    #            <p>Conditional: You must specify either <code>MaxConcurrentCount</code> or
    #               <code>MaxConcurrentPercentage</code>, but not both.</p>
    #            <p>By default, <code>1</code> is specified.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrent_percentage
    #   <p>The maximum percentage of accounts in which to perform this operation at one
    #            time.</p>
    #            <p>When calculating the number of accounts based on the specified percentage, CloudFormation rounds down to the next whole number. This is true except in cases where
    #            rounding down would result is zero. In this case, CloudFormation sets the number
    #            as one instead.</p>
    #            <p>Note that this setting lets you specify the <i>maximum</i> for operations.
    #            For large deployments, under certain circumstances the actual number of accounts acted upon
    #            concurrently may be lower due to service throttling.</p>
    #            <p>Conditional: You must specify either <code>MaxConcurrentCount</code> or
    #               <code>MaxConcurrentPercentage</code>, but not both.</p>
    #            <p>By default, <code>1</code> is specified.</p>
    #
    #   @return [Integer]
    #
    StackSetOperationPreferences = ::Struct.new(
      :region_concurrency_type,
      :region_order,
      :failure_tolerance_count,
      :failure_tolerance_percentage,
      :max_concurrent_count,
      :max_concurrent_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackSetOperationResultStatus
    #
    module StackSetOperationResultStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # <p>The structure that contains information about a specified operation's results for a
    #          given account in a given Region.</p>
    #
    # @!attribute account
    #   <p>[Self-managed permissions] The name of the Amazon Web Services account for this operation
    #            result.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The name of the Amazon Web Services Region for this operation result.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The result status of the stack set operation for the given account in the given
    #            Region.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CANCELLED</code>: The operation in the specified account and Region has been
    #                  canceled. This is either because a user has stopped the stack set operation, or
    #                  because the failure tolerance of the stack set operation has been exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation in the specified account and Region
    #                  failed.</p>
    #                  <p>If the stack set operation fails in enough accounts within a Region, the failure
    #                  tolerance for the stack set operation as a whole might be exceeded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation in the specified account and Region is
    #                  currently in progress.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: The operation in the specified account and Region has yet to
    #                  start.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation in the specified account and Region
    #                  completed successfully.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>The reason for the assigned result status.</p>
    #
    #   @return [String]
    #
    # @!attribute account_gate_result
    #   <p>The results of the account gate function CloudFormation invokes, if present,
    #            before proceeding with stack set operations in an account.</p>
    #
    #   @return [AccountGateResult]
    #
    # @!attribute organizational_unit_id
    #   <p>[Service-managed permissions] The organization root ID or organizational unit (OU) IDs
    #            that you specified for <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DeploymentTargets.html">DeploymentTargets</a>.</p>
    #
    #   @return [String]
    #
    StackSetOperationResultSummary = ::Struct.new(
      :account,
      :region,
      :status,
      :status_reason,
      :account_gate_result,
      :organizational_unit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackSetOperationStatus
    #
    module StackSetOperationStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOPPING = "STOPPING"

      # No documentation available.
      #
      STOPPED = "STOPPED"

      # No documentation available.
      #
      QUEUED = "QUEUED"
    end

    # <p>The structures that contain summary information about the specified operation.</p>
    #
    # @!attribute operation_id
    #   <p>The unique ID of the stack set operation.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The type of operation: <code>CREATE</code>, <code>UPDATE</code>, or <code>DELETE</code>.
    #            Create and delete operations affect only the specified stack instances that are associated
    #            with the specified stack set. Update operations affect both the stack set itself and
    #               <i>all</i> associated stack set instances.</p>
    #
    #   Enum, one of: ["CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The overall status of the operation.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FAILED</code>: The operation exceeded the specified failure tolerance. The
    #                  failure tolerance value that you've set for an operation is applied for each Region
    #                  during stack create and update operations. If the number of failed stacks within a
    #                  Region exceeds the failure tolerance, the status of the operation in the Region is
    #                  set to <code>FAILED</code>. This in turn sets the status of the operation as a whole
    #                  to <code>FAILED</code>, and CloudFormation cancels the operation in any
    #                  remaining Regions.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUED</code>: [Service-managed permissions] For automatic deployments that
    #                  require a sequence of operations, the operation is queued to be performed. For more
    #                  information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html stackset-status-codes">stack set operation status codes</a> in the CloudFormation User Guide.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: The operation is currently being performed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code>: The user has canceled the operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: The operation is in the process of stopping, at user
    #                  request.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SUCCEEDED</code>: The operation completed creating or updating all the
    #                  specified stacks without exceeding the failure tolerance for the operation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"]
    #
    #   @return [String]
    #
    # @!attribute creation_timestamp
    #   <p>The time at which the operation was initiated. Note that the creation times for the
    #            stack set operation might differ from the creation time of the individual stacks
    #            themselves. This is because CloudFormation needs to perform preparatory work for
    #            the operation, such as dispatching the work to the requested Regions, before actually
    #            creating the first stacks.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_timestamp
    #   <p>The time at which the stack set operation ended, across all accounts and Regions
    #            specified. Note that this doesn't necessarily mean that the stack set operation was
    #            successful, or even attempted, in each account or Region.</p>
    #
    #   @return [Time]
    #
    # @!attribute status_reason
    #   <p>The status of the operation in details.</p>
    #
    #   @return [String]
    #
    StackSetOperationSummary = ::Struct.new(
      :operation_id,
      :action,
      :status,
      :creation_timestamp,
      :end_timestamp,
      :status_reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackSetStatus
    #
    module StackSetStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>The structures that contain summary information about the specified stack set.</p>
    #
    # @!attribute stack_set_name
    #   <p>The name of the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_set_id
    #   <p>The ID of the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the stack set that you specify when the stack set is created or
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the stack set.</p>
    #
    #   Enum, one of: ["ACTIVE", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to
    #               Organizations accounts that are added to a target organizational unit
    #            (OU).</p>
    #
    #   @return [AutoDeployment]
    #
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for stack set operations are
    #            created.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #                  execution roles required to deploy to target accounts. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #                     Self-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #                     IAM roles required to deploy to accounts managed by Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "SELF_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute drift_status
    #   <p>Status of the stack set's actual configuration compared to its expected template and
    #            parameter configuration. A stack set is considered to have drifted if one or more of its
    #            stack instances have drifted from their expected template and parameter
    #            configuration.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DRIFTED</code>: One or more of the stack instances belonging to the stack
    #                  set stack differs from the expected template and parameter configuration. A stack
    #                  instance is considered to have drifted if one or more of the resources in the
    #                  associated stack have drifted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation hasn't checked the stack set for drift.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: All the stack instances belonging to the stack set stack
    #                  match from the expected template and parameter configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>UNKNOWN</code>: This value is reserved for future use.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #
    #   @return [String]
    #
    # @!attribute last_drift_check_timestamp
    #   <p>Most recent time when CloudFormation performed a drift detection operation on
    #            the stack set. This value will be <code>NULL</code> for any stack set on which drift
    #            detection hasn't yet been performed.</p>
    #
    #   @return [Time]
    #
    # @!attribute managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #            conflicting operations.</p>
    #
    #   @return [ManagedExecution]
    #
    StackSetSummary = ::Struct.new(
      :stack_set_name,
      :stack_set_id,
      :description,
      :status,
      :auto_deployment,
      :permission_model,
      :drift_status,
      :last_drift_check_timestamp,
      :managed_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StackStatus
    #
    module StackStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      CREATE_COMPLETE = "CREATE_COMPLETE"

      # No documentation available.
      #
      ROLLBACK_IN_PROGRESS = "ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      ROLLBACK_FAILED = "ROLLBACK_FAILED"

      # No documentation available.
      #
      ROLLBACK_COMPLETE = "ROLLBACK_COMPLETE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETE_COMPLETE = "DELETE_COMPLETE"

      # No documentation available.
      #
      UPDATE_IN_PROGRESS = "UPDATE_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_COMPLETE_CLEANUP_IN_PROGRESS = "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_COMPLETE = "UPDATE_COMPLETE"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"

      # No documentation available.
      #
      UPDATE_ROLLBACK_IN_PROGRESS = "UPDATE_ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_ROLLBACK_FAILED = "UPDATE_ROLLBACK_FAILED"

      # No documentation available.
      #
      UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS = "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS"

      # No documentation available.
      #
      UPDATE_ROLLBACK_COMPLETE = "UPDATE_ROLLBACK_COMPLETE"

      # No documentation available.
      #
      REVIEW_IN_PROGRESS = "REVIEW_IN_PROGRESS"

      # No documentation available.
      #
      IMPORT_IN_PROGRESS = "IMPORT_IN_PROGRESS"

      # No documentation available.
      #
      IMPORT_COMPLETE = "IMPORT_COMPLETE"

      # No documentation available.
      #
      IMPORT_ROLLBACK_IN_PROGRESS = "IMPORT_ROLLBACK_IN_PROGRESS"

      # No documentation available.
      #
      IMPORT_ROLLBACK_FAILED = "IMPORT_ROLLBACK_FAILED"

      # No documentation available.
      #
      IMPORT_ROLLBACK_COMPLETE = "IMPORT_ROLLBACK_COMPLETE"
    end

    # <p>The StackSummary Data Type</p>
    #
    # @!attribute stack_id
    #   <p>Unique stack identifier.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_name
    #   <p>The name associated with the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute template_description
    #   <p>The template description of the template used to create the stack.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time the stack was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The time the stack was last updated. This field will only be returned if the stack has
    #            been updated at least once.</p>
    #
    #   @return [Time]
    #
    # @!attribute deletion_time
    #   <p>The time the stack was deleted.</p>
    #
    #   @return [Time]
    #
    # @!attribute stack_status
    #   <p>The current status of the stack.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"]
    #
    #   @return [String]
    #
    # @!attribute stack_status_reason
    #   <p>Success/Failure message associated with the stack status.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_id
    #   <p>For nested stacks--stacks created as resources for another stack--the stack ID of the
    #            direct parent of this stack. For the first level of nested stacks, the root stack is also
    #            the parent stack.</p>
    #            <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute root_id
    #   <p>For nested stacks--stacks created as resources for another stack--the stack ID of the
    #            top-level stack to which the nested stack ultimately belongs.</p>
    #            <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">Working with Nested Stacks</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute drift_information
    #   <p>Summarizes information about whether a stack's actual configuration differs, or has
    #               <i>drifted</i>, from it's expected configuration, as defined in the stack
    #            template and any values specified as template parameters. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting Unregulated Configuration
    #               Changes to Stacks and Resources</a>.</p>
    #
    #   @return [StackDriftInformationSummary]
    #
    StackSummary = ::Struct.new(
      :stack_id,
      :stack_name,
      :template_description,
      :creation_time,
      :last_updated_time,
      :deletion_time,
      :stack_status,
      :stack_status_reason,
      :parent_id,
      :root_id,
      :drift_information,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Another operation has been performed on this stack set since the specified operation was
    #          performed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    StaleRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to stop the operation for.</p>
    #
    #   @return [String]
    #
    # @!attribute operation_id
    #   <p>The ID of the stack operation.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    StopStackSetOperationInput = ::Struct.new(
      :stack_set_name,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StopStackSetOperationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Tag type enables you to specify a key-value pair that can be used to store
    #          information about an CloudFormation stack.</p>
    #
    # @!attribute key
    #   <p>
    #               <i>Required</i>. A string used to identify this tag. You can specify a
    #            maximum of 128 characters for a tag key. Tags owned by Amazon Web Services (Amazon Web Services) have the reserved prefix: <code>aws:</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>
    #               <i>Required</i>. A string containing the value for this tag. You can specify
    #            a maximum of 256 characters for a tag value.</p>
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

    # <p>The TemplateParameter data type.</p>
    #
    # @!attribute parameter_key
    #   <p>The name associated with the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute default_value
    #   <p>The default value associated with the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute no_echo
    #   <p>Flag indicating whether the parameter should be displayed as plain text in logs and
    #            UIs.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>User defined description associated with the parameter.</p>
    #
    #   @return [String]
    #
    TemplateParameter = ::Struct.new(
      :parameter_key,
      :default_value,
      :no_echo,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TemplateStage
    #
    module TemplateStage
      # No documentation available.
      #
      Original = "Original"

      # No documentation available.
      #
      Processed = "Processed"
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The version of the extension to test.</p>
    #            <p>You can specify the version id with either <code>Arn</code>, or with
    #               <code>TypeName</code> and <code>Type</code>.</p>
    #            <p>If you don't specify a version, CloudFormation uses the default version of the
    #            extension in this account and region for testing.</p>
    #
    #   @return [String]
    #
    # @!attribute log_delivery_bucket
    #   <p>The S3 bucket to which CloudFormation delivers the contract test execution
    #            logs.</p>
    #            <p>CloudFormation delivers the logs by the time contract testing has completed and
    #            the extension has been assigned a test type status of <code>PASSED</code> or
    #               <code>FAILED</code>.</p>
    #            <p>The user calling <code>TestType</code> must be able to access items in the specified S3
    #            bucket. Specifically, the user needs the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GetObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutObject</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">Actions, Resources, and
    #               Condition Keys for Amazon S3</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #
    #   @return [String]
    #
    TestTypeInput = ::Struct.new(
      :arn,
      :type,
      :type_name,
      :version_id,
      :log_delivery_bucket,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute type_version_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #
    #   @return [String]
    #
    TestTypeOutput = ::Struct.new(
      :type_version_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ThirdPartyType
    #
    module ThirdPartyType
      # No documentation available.
      #
      RESOURCE = "RESOURCE"

      # No documentation available.
      #
      MODULE = "MODULE"

      # No documentation available.
      #
      HOOK = "HOOK"
    end

    # <p>A client request token already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TokenAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information concerning the specification of a CloudFormation extension
    #          in a given account and region.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration">Configuring extensions at the account level</a> in the
    #             <i>CloudFormation User Guide</i>.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) for the configuration data, in this account and
    #            region.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias specified for this configuration, if one was specified when the configuration
    #            was set.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>A JSON string specifying the configuration data for the extension, in this account and
    #            region.</p>
    #            <p>If a configuration hasn't been set for a specified extension, CloudFormation
    #            returns <code>{}</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>When the configuration data was last updated for this extension.</p>
    #            <p>If a configuration hasn't been set for a specified extension, CloudFormation
    #            returns <code>null</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">activate the type</a> in this account and region. For private extensions, this will
    #            be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">register the type</a> in this account and region.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default_configuration
    #   <p>Whether this configuration data is the default configuration for the extension.</p>
    #
    #   @return [Boolean]
    #
    TypeConfigurationDetails = ::Struct.new(
      :arn,
      :alias,
      :configuration,
      :last_updated,
      :type_arn,
      :type_name,
      :is_default_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifying information for the configuration of a CloudFormation
    #          extension.</p>
    #
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">activate the type</a> in this account and region. For private extensions, this will
    #            be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">register the type</a> in this account and region.</p>
    #
    #   @return [String]
    #
    # @!attribute type_configuration_alias
    #   <p>The alias specified for this configuration, if one was specified when the configuration
    #            was set.</p>
    #
    #   @return [String]
    #
    # @!attribute type_configuration_arn
    #   <p>The Amazon Resource Name (ARN) for the configuration, in this account and region.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of extension.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension type to which this configuration applies.</p>
    #
    #   @return [String]
    #
    TypeConfigurationIdentifier = ::Struct.new(
      :type_arn,
      :type_configuration_alias,
      :type_configuration_arn,
      :type,
      :type_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified extension configuration can't be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TypeConfigurationNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filter criteria to use in determining which extensions to return.</p>
    #
    # @!attribute category
    #   <p>The category of extensions to return.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>REGISTERED</code>: Private extensions that have been registered for this
    #                  account and region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACTIVATED</code>: Public extensions that have been activated for this
    #                  account and region.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>THIRD_PARTY</code>: Extensions available for use from publishers other than
    #                  Amazon. This includes:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Private extensions registered in the account.</p>
    #                     </li>
    #                     <li>
    #                        <p>Public extensions from publishers other than Amazon, whether activated or
    #                        not.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>AWS_TYPES</code>: Extensions available for use from Amazon.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REGISTERED", "ACTIVATED", "THIRD_PARTY", "AWS_TYPES"]
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The id of the publisher of the extension.</p>
    #            <p>Extensions published by Amazon aren't assigned a publisher ID. Use the
    #               <code>AWS_TYPES</code> category to specify a list of types published by Amazon.</p>
    #
    #   @return [String]
    #
    # @!attribute type_name_prefix
    #   <p>A prefix to use as a filter for results.</p>
    #
    #   @return [String]
    #
    TypeFilters = ::Struct.new(
      :category,
      :publisher_id,
      :type_name_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified extension doesn't exist in the CloudFormation registry.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TypeNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about the specified CloudFormation
    #          extension.</p>
    #
    # @!attribute type
    #   <p>The kind of extension.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">activate this extension</a> in your account and region, CloudFormation
    #            considers that alias as the type name.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version_id
    #   <p>The ID of the default version of the extension. The default version is used when the
    #            extension version isn't specified.</p>
    #            <p>This applies only to private extensions you have registered in your account. For public
    #            extensions, both those provided by Amazon and published by third parties, CloudFormation returns <code>null</code>. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #            <p>To set the default version of an extension, use <code>
    #                  <a>SetTypeDefaultVersion</a>
    #               </code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated
    #   <p>When the specified extension version was registered. This applies only to:</p>
    #            <ul>
    #               <li>
    #                  <p>Private extensions you have registered in your account. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #               </li>
    #               <li>
    #                  <p>Public extensions you have activated in your account with auto-update specified.
    #                  For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">ActivateType</a>.</p>
    #               </li>
    #            </ul>
    #            <p>For all other extension types, CloudFormation returns <code>null</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_id
    #   <p>The ID of the extension publisher, if the extension is published by a third party.
    #            Extensions published by Amazon don't return a publisher ID.</p>
    #
    #   @return [String]
    #
    # @!attribute original_type_name
    #   <p>For public extensions that have been activated for this account and region, the type
    #            name of the public extension.</p>
    #            <p>If you specified a <code>TypeNameAlias</code> when enabling the extension in this
    #            account and region, CloudFormation treats that alias as the extension's type name
    #            within the account and region, not the type name of the public extension. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable-alias">Specifying aliases to refer to extensions</a> in the
    #               <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute public_version_number
    #   <p>For public extensions that have been activated for this account and region, the version
    #            of the public extension to be used for CloudFormation operations in this account
    #            and Region.</p>
    #            <p>How you specified <code>AutoUpdate</code> when enabling the extension affects whether
    #               CloudFormation automatically updates the extension in this account and region
    #            when a new version is released. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable-auto">Setting CloudFormation to automatically use new versions
    #               of extensions</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_public_version
    #   <p>For public extensions that have been activated for this account and region, the latest
    #            version of the public extension <i>that is available</i>. For any extensions
    #            other than activated third-arty extensions, CloudFormation returns
    #               <code>null</code>.</p>
    #            <p>How you specified <code>AutoUpdate</code> when enabling the extension affects whether
    #               CloudFormation automatically updates the extension in this account and region
    #            when a new version is released. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable-auto">Setting CloudFormation to automatically use new versions
    #               of extensions</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute publisher_identity
    #   <p>The service used to verify the publisher identity.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html">Registering your account to publish CloudFormation extensions</a> in the
    #               <i> CFN-CLI User Guide for Extension Development</i>.</p>
    #
    #   Enum, one of: ["AWS_Marketplace", "GitHub", "Bitbucket"]
    #
    #   @return [String]
    #
    # @!attribute publisher_name
    #   <p>The publisher name, as defined in the public profile for that publisher in the service
    #            used to verify the publisher identity.</p>
    #
    #   @return [String]
    #
    # @!attribute is_activated
    #   <p>Whether the extension is activated for this account and region.</p>
    #            <p>This applies only to third-party public extensions. Extensions published by Amazon are
    #            activated by default.</p>
    #
    #   @return [Boolean]
    #
    TypeSummary = ::Struct.new(
      :type,
      :type_name,
      :default_version_id,
      :type_arn,
      :last_updated,
      :description,
      :publisher_id,
      :original_type_name,
      :public_version_number,
      :latest_public_version,
      :publisher_identity,
      :publisher_name,
      :is_activated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TypeTestsStatus
    #
    module TypeTestsStatus
      # No documentation available.
      #
      PASSED = "PASSED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      NOT_TESTED = "NOT_TESTED"
    end

    # <p>Contains summary information about a specific version of a CloudFormation
    #          extension.</p>
    #
    # @!attribute type
    #   <p>The kind of extension.</p>
    #
    #   Enum, one of: ["RESOURCE", "MODULE", "HOOK"]
    #
    #   @return [String]
    #
    # @!attribute type_name
    #   <p>The name of the extension.</p>
    #
    #   @return [String]
    #
    # @!attribute version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it's
    #            registered.</p>
    #
    #   @return [String]
    #
    # @!attribute is_default_version
    #   <p>Whether the specified extension version is set as the default version.</p>
    #            <p>This applies only to private extensions you have registered in your account, and
    #            extensions published by Amazon. For public third-party extensions, CloudFormation
    #            returns <code>null</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the extension version.</p>
    #
    #   @return [String]
    #
    # @!attribute time_created
    #   <p>When the version was registered.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the extension version.</p>
    #
    #   @return [String]
    #
    # @!attribute public_version_number
    #   <p>For public extensions that have been activated for this account and region, the version
    #            of the public extension to be used for CloudFormation operations in this account
    #            and region. For any extensions other than activated third-arty extensions, CloudFormation returns <code>null</code>.</p>
    #            <p>How you specified <code>AutoUpdate</code> when enabling the extension affects whether
    #               CloudFormation automatically updates the extension in this account and region
    #            when a new version is released. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html registry-public-enable-auto">Setting CloudFormation to automatically use new versions
    #               of extensions</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    #   @return [String]
    #
    TypeVersionSummary = ::Struct.new(
      :type,
      :type_name,
      :version_id,
      :is_default_version,
      :arn,
      :time_created,
      :description,
      :public_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for an <a>UpdateStack</a> action.</p>
    #
    # @!attribute stack_name
    #   <p>The name or unique stack ID of the stack to update.</p>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.)</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #               <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>Location of file containing the template body. The URL must point to a template that's
    #            located in an Amazon S3 bucket or a Systems Manager document. For more information,
    #            go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #               <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute use_previous_template
    #   <p>Reuse the existing template that is associated with the stack that you are
    #            updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #               <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute stack_policy_during_update_body
    #   <p>Structure containing the temporary overriding stack policy body. You can specify either
    #            the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code>
    #            parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #            during this update. If you don't specify a stack policy, the current policy that is
    #            associated with the stack will be used.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_policy_during_update_url
    #   <p>Location of a file containing the temporary overriding stack policy. The URL must point
    #            to a policy (max size: 16KB) located in an S3 bucket in the same Region as the stack. You
    #            can specify either the <code>StackPolicyDuringUpdateBody</code> or the
    #               <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #            during this update. If you don't specify a stack policy, the current policy that is
    #            associated with the stack will be used.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #            For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #            type.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to update the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks, you must explicitly acknowledge this
    #                  by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this
    #                  can include simple actions like find-and-replace operations, all the way to extensive
    #                  transformations of entire templates. Because of this, users typically create a change
    #                  set from the processed template, so that they can review the changes resulting from
    #                  the macros before actually updating the stack. If your stack template contains one or
    #                  more macros, and you choose to update a stack directly from the processed template,
    #                  without first reviewing the resulting changes in a change set, you must acknowledge
    #                  this capability. This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to update a stack from a stack template that contains macros
    #                     <i>and</i> nested stacks, you must update the stack directly from
    #                  the template using this capability.</p>
    #                  <important>
    #                     <p>You should only update stacks directly from a stack template that contains
    #                     macros if you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for
    #                     processing stack templates. Be aware that the Lambda function owner can update the
    #                     function operation without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
    #                        CloudFormation Macros to Perform Custom Processing on
    #                  Templates</a>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_types
    #   <p>The template resource types that you have permissions to work with for this update stack
    #            action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #               <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource that you're updating, the stack
    #            update fails. By default, CloudFormation grants permissions to all resource types.
    #               Identity and Access Management (IAM) uses this parameter for CloudFormation-specific condition keys in IAM policies. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with Identity and Access Management</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to update the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation always uses this
    #            role for all future operations on the stack. Provided that users have permission to operate
    #            on the stack, CloudFormation uses this role even if the users don't have permission
    #            to pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that is generated from your user credentials.</p>
    #
    #   @return [String]
    #
    # @!attribute rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    #   @return [RollbackConfiguration]
    #
    # @!attribute stack_policy_body
    #   <p>Structure containing a new stack policy body. You can specify either the
    #               <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
    #            both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #            you created during a stack update. If you don't specify a stack policy, the current policy
    #            that is associated with the stack is unchanged.</p>
    #
    #   @return [String]
    #
    # @!attribute stack_policy_url
    #   <p>Location of a file containing the updated stack policy. The URL must point to a policy
    #            (max size: 16KB) located in an S3 bucket in the same Region as the stack. You can specify
    #            either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but
    #            not both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #            you created during a stack update. If you don't specify a stack policy, the current policy
    #            that is associated with the stack is unchanged.</p>
    #
    #   @return [String]
    #
    # @!attribute notification_ar_ns
    #   <p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that CloudFormation associates with the stack. Specify an empty list to remove all
    #            notification topics.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates
    #            these tags to supported resources in the stack. You can specify a maximum number of 50
    #            tags.</p>
    #            <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's
    #            tags. If you specify an empty value, CloudFormation removes all associated
    #            tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute disable_rollback
    #   <p>Preserve the state of previously provisioned resources when an operation fails.</p>
    #            <p>Default: <code>False</code>
    #            </p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you
    #            plan to retry requests so that CloudFormation knows that you're not attempting to
    #            update a stack with the same name. You might retry <code>UpdateStack</code> requests to
    #            ensure that CloudFormation successfully received them.</p>
    #            <p>All events triggered by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    #   @return [String]
    #
    UpdateStackInput = ::Struct.new(
      :stack_name,
      :template_body,
      :template_url,
      :use_previous_template,
      :stack_policy_during_update_body,
      :stack_policy_during_update_url,
      :parameters,
      :capabilities,
      :resource_types,
      :role_arn,
      :rollback_configuration,
      :stack_policy_body,
      :stack_policy_url,
      :notification_ar_ns,
      :tags,
      :disable_rollback,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set associated with the stack instances.</p>
    #
    #   @return [String]
    #
    # @!attribute accounts
    #   <p>[Self-managed permissions] The names of one or more Amazon Web Services accounts for
    #            which you want to update parameter values for stack instances. The overridden parameter
    #            values will be applied to all stack instances in the specified accounts and Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts for which you want to
    #            update parameter values for stack instances. If your update targets OUs, the overridden
    #            parameter values only apply to the accounts that are currently in the target OUs and their
    #            child OUs. Accounts added to the target OUs and their child OUs in the future won't use the
    #            overridden values.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    #   @return [DeploymentTargets]
    #
    # @!attribute regions
    #   <p>The names of one or more Amazon Web Services Regions in which you want to update
    #            parameter values for stack instances. The overridden parameter values will be applied to
    #            all stack instances in the specified accounts and Amazon Web Services Regions.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute parameter_overrides
    #   <p>A list of input parameters whose values you want to update for the specified stack
    #            instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #            accounts and Amazon Web Services Regions. When specifying parameters and their values, be
    #            aware of how CloudFormation sets parameter values during stack instance update
    #            operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify
    #                  its value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter
    #                  and specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify
    #                  both a value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the stack set,
    #                  specify a parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property
    #                  at all.</p>
    #               </li>
    #            </ul>
    #            <p>During stack set updates, any parameter values overridden for a stack instance aren't
    #            updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in
    #            the stack set; to add or delete a parameter itself, use <code>UpdateStackSet</code> to
    #            update the stack set template. If you add a parameter to a template, before you can
    #            override the parameter value specified in the stack set you must first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update all stack instances with the updated template and
    #            parameter value specified in the stack set. Once a stack instance has been updated with the
    #            new parameter, you can then override the parameter value using
    #               <code>UpdateStackInstances</code>.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #
    #   @return [String]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    UpdateStackInstancesInput = ::Struct.new(
      :stack_set_name,
      :accounts,
      :deployment_targets,
      :regions,
      :parameter_overrides,
      :operation_preferences,
      :operation_id,
      :call_as,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #
    #   @return [String]
    #
    UpdateStackInstancesOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for an <a>UpdateStack</a> action.</p>
    #
    # @!attribute stack_id
    #   <p>Unique identifier of the stack.</p>
    #
    #   @return [String]
    #
    UpdateStackOutput = ::Struct.new(
      :stack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_set_name
    #   <p>The name or unique ID of the stack set that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A brief description of updates that you are making.</p>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #            maximum length of 51,200 bytes. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #               <code>UsePreviousTemplate</code> to true.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>The location of the file that contains the template body. The URL must point to a
    #            template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket or a
    #            Systems Manager document. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #               <code>UsePreviousTemplate</code> to true.</p>
    #
    #   @return [String]
    #
    # @!attribute use_previous_template
    #   <p>Use the existing template that's associated with the stack set that you're
    #            updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #               <code>UsePreviousTemplate</code> to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute parameters
    #   <p>A list of input parameters for the stack set template.</p>
    #
    #   @return [Array<Parameter>]
    #
    # @!attribute capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to update the stack set and its associated stack
    #            instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks sets, you must explicitly acknowledge
    #                  this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your stack set template references one or more
    #                  macros, you must update the stack set directly from the processed template, without
    #                  first reviewing the resulting changes in a change set. To update the stack set
    #                  directly, you must acknowledge this capability. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using CloudFormation Macros to
    #                     Perform Custom Processing on Templates</a>.</p>
    #                  <important>
    #                     <p>Stack sets with service-managed permissions do not currently support the use of
    #                     macros in templates. (This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
    #                     transforms, which are macros hosted by CloudFormation.) Even if you specify this capability
    #                     for a stack set with service-managed permissions, if you reference a macro in your
    #                     template the stack set operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>The key-value pairs to associate with this stack set and the stacks created from it.
    #               CloudFormation also propagates these tags to supported resources that are created in
    #            the stacks. You can specify a maximum number of 50 tags.</p>
    #            <p>If you specify tags for this parameter, those tags replace any list of tags that are
    #            currently associated with this stack set. This means:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's
    #                  tags.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <i>any</i> tags using this parameter, you must
    #                  specify <i>all</i> the tags that you want associated with this stack
    #                  set, even tags you've specified before (for example, when creating the stack set or
    #                  during a previous update of the stack set.). Any tags that you don't include in the
    #                  updated list of tags are removed from the stack set, and therefore from the stacks
    #                  and resources as well.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify an empty value, CloudFormation removes all currently associated
    #                  tags.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, CloudFormation checks to see if you have the required IAM permission to tag
    #            resources. If you omit tags that are currently associated with the stack set from the list
    #            of tags you specify, CloudFormation assumes that you want to remove those tags from the
    #            stack set, and checks to see if you have permission to untag resources. If you don't have
    #            the necessary permission(s), the entire <code>UpdateStackSet</code> action fails with an
    #               <code>access denied</code> error, and the stack set is not updated.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    #   @return [StackSetOperationPreferences]
    #
    # @!attribute administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use to update this
    #            stack set.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles
    #            to control which users or groups can manage specific stack sets within the same
    #            administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Granting Permissions for Stack Set
    #               Operations</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <p>If you specified a customized administrator role when you created the stack set, you
    #            must specify a customized administrator role, even if it is the same customized
    #            administrator role used with this stack set previously.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_role_name
    #   <p>The name of the IAM execution role to use to update the stack set. If you
    #            do not specify an execution role, CloudFormation uses the
    #               <code>AWSCloudFormationStackSetExecutionRole</code> role for the stack set
    #            operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to
    #            control which stack resources users and groups can include in their stack sets.</p>
    #            <p>If you specify a customized execution role, CloudFormation uses that role to update the stack. If
    #            you do not specify a customized execution role, CloudFormation performs the update using the role
    #            previously associated with the stack set, so long as you have permissions to perform
    #            operations on the stack set.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which to update
    #            associated stack instances.</p>
    #            <p>To update all the stack instances associated with this stack set, do not specify
    #               <code>DeploymentTargets</code> or <code>Regions</code>.</p>
    #            <p>If the stack set update includes changes to the template (that is, if
    #               <code>TemplateBody</code> or <code>TemplateURL</code> is specified), or the
    #               <code>Parameters</code>, CloudFormation marks all stack instances with a status of
    #               <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    #            and Amazon Web Services Regions. If the stack set update doesn't include changes to the
    #            template or parameters, CloudFormation updates the stack instances in the specified
    #            accounts and Regions, while leaving all other stack instances with their existing stack
    #            instance status.</p>
    #
    #   @return [DeploymentTargets]
    #
    # @!attribute permission_model
    #   <p>Describes how the IAM roles required for stack set operations are
    #            created. You cannot modify <code>PermissionModel</code> if there are stack instances
    #            associated with your stack set.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #                  execution roles required to deploy to target accounts. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #                     Self-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #                     IAM roles required to deploy to accounts managed by Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SERVICE_MANAGED", "SELF_MANAGED"]
    #
    #   @return [String]
    #
    # @!attribute auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to
    #               Organizations accounts that are added to a target organization or organizational
    #            unit (OU).</p>
    #            <p>If you specify <code>AutoDeployment</code>, don't specify <code>DeploymentTargets</code>
    #            or <code>Regions</code>.</p>
    #
    #   @return [AutoDeployment]
    #
    # @!attribute operation_id
    #   <p>The unique ID for this stack set operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, CloudFormation generates one
    #            automatically.</p>
    #            <p>Repeating this stack set operation with a new operation ID retries all stack instances
    #            whose status is <code>OUTDATED</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute accounts
    #   <p>[Self-managed permissions] The accounts in which to update associated stack instances.
    #            If you specify accounts, you must also specify the Amazon Web Services Regions in which to
    #            update stack set instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this stack set,
    #            don't specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the stack set update includes changes to the template (that is, if the
    #               <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #               <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #               <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    #            and Amazon Web Services Regions. If the stack set update does not include changes to the
    #            template or parameters, CloudFormation updates the stack instances in the specified accounts and
    #               Amazon Web Services Regions, while leaving all other stack instances with their existing
    #            stack instance status.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute regions
    #   <p>The Amazon Web Services Regions in which to update associated stack instances. If you
    #            specify Regions, you must also specify accounts in which to update stack set
    #            instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this stack set,
    #            do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the stack set update includes changes to the template (that is, if the
    #               <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #               <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #               <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    #            and Regions. If the stack set update does not include changes to the template or
    #            parameters, CloudFormation updates the stack instances in the specified accounts and Regions, while
    #            leaving all other stack instances with their existing stack instance status.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SELF", "DELEGATED_ADMIN"]
    #
    #   @return [String]
    #
    # @!attribute managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #            conflicting operations.</p>
    #
    #   @return [ManagedExecution]
    #
    UpdateStackSetInput = ::Struct.new(
      :stack_set_name,
      :description,
      :template_body,
      :template_url,
      :use_previous_template,
      :parameters,
      :capabilities,
      :tags,
      :operation_preferences,
      :administration_role_arn,
      :execution_role_name,
      :deployment_targets,
      :permission_model,
      :auto_deployment,
      :operation_id,
      :accounts,
      :regions,
      :call_as,
      :managed_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute operation_id
    #   <p>The unique ID for this stack set operation.</p>
    #
    #   @return [String]
    #
    UpdateStackSetOutput = ::Struct.new(
      :operation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute stack_name
    #   <p>The name or unique ID of the stack for which you want to set termination
    #            protection.</p>
    #
    #   @return [String]
    #
    UpdateTerminationProtectionInput = ::Struct.new(
      :enable_termination_protection,
      :stack_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stack_id
    #   <p>The unique ID of the stack.</p>
    #
    #   @return [String]
    #
    UpdateTerminationProtectionOutput = ::Struct.new(
      :stack_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input for <a>ValidateTemplate</a> action.</p>
    #
    # @!attribute template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    #   @return [String]
    #
    # @!attribute template_url
    #   <p>Location of file containing the template body. The URL must point to a template (max
    #            size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager
    #            document. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    #   @return [String]
    #
    ValidateTemplateInput = ::Struct.new(
      :template_body,
      :template_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output for <a>ValidateTemplate</a> action.</p>
    #
    # @!attribute parameters
    #   <p>A list of <code>TemplateParameter</code> structures.</p>
    #
    #   @return [Array<TemplateParameter>]
    #
    # @!attribute description
    #   <p>The description found within the template.</p>
    #
    #   @return [String]
    #
    # @!attribute capabilities
    #   <p>The capabilities found within the template. If your template contains IAM
    #            resources, you must specify the CAPABILITY_IAM or CAPABILITY_NAMED_IAM value for this
    #            parameter when you use the <a>CreateStack</a> or <a>UpdateStack</a>
    #            actions with your template; otherwise, those actions return an InsufficientCapabilities
    #            error.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html capabilities">Acknowledging IAM Resources in CloudFormation
    #            Templates</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute capabilities_reason
    #   <p>The list of resources that generated the values in the <code>Capabilities</code>
    #            response element.</p>
    #
    #   @return [String]
    #
    # @!attribute declared_transforms
    #   <p>A list of the transforms that are declared in the template.</p>
    #
    #   @return [Array<String>]
    #
    ValidateTemplateOutput = ::Struct.new(
      :parameters,
      :description,
      :capabilities,
      :capabilities_reason,
      :declared_transforms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VersionBump
    #
    module VersionBump
      # No documentation available.
      #
      MAJOR = "MAJOR"

      # No documentation available.
      #
      MINOR = "MINOR"
    end

    # Includes enum constants for Visibility
    #
    module Visibility
      # No documentation available.
      #
      PUBLIC = "PUBLIC"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

  end
end
