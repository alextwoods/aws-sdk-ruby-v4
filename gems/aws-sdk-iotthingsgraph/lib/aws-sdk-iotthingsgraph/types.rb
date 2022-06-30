# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTThingsGraph
  module Types

    # @!attribute thing_name
    #   <p>The name of the thing to which the entity is to be associated.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The ID of the device to be associated with the thing.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    #   @return [Integer]
    #
    AssociateEntityToThingInput = ::Struct.new(
      :thing_name,
      :entity_id,
      :namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateEntityToThingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definition
    #   <p>The workflow <code>DefinitionDocument</code>.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute compatible_namespace_version
    #   <p>The namespace version in which the workflow is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #
    #   @return [Integer]
    #
    CreateFlowTemplateInput = ::Struct.new(
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>The summary object that describes the created workflow.</p>
    #
    #   @return [FlowTemplateSummary]
    #
    CreateFlowTemplateOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>Metadata, consisting of key-value pairs, that can be used to categorize your system instances.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute definition
    #   <p>A document that defines an entity. </p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute target
    #   <p>The target type of the deployment. Valid values are <code>GREENGRASS</code> and <code>CLOUD</code>.</p>
    #
    #   Enum, one of: ["GREENGRASS", "CLOUD"]
    #
    #   @return [String]
    #
    # @!attribute greengrass_group_name
    #   <p>The name of the Greengrass group where the system instance will be deployed. This value is required if
    #         the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon Simple Storage Service bucket that will be used to store and deploy the system instance's resource file. This value is required if
    #            the value of the <code>target</code> parameter is <code>GREENGRASS</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics_configuration
    #   <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    #
    #   @return [MetricsConfiguration]
    #
    # @!attribute flow_actions_role_arn
    #   <p>The ARN of the IAM role that AWS IoT Things Graph will assume when it executes the flow. This role must have
    #         read and write access to AWS Lambda and AWS IoT and any other AWS services that the flow uses when it executes.  This
    #         value is required if the value of the <code>target</code> parameter is <code>CLOUD</code>.</p>
    #
    #   @return [String]
    #
    CreateSystemInstanceInput = ::Struct.new(
      :tags,
      :definition,
      :target,
      :greengrass_group_name,
      :s3_bucket_name,
      :metrics_configuration,
      :flow_actions_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>The summary object that describes the new system instance.</p>
    #
    #   @return [SystemInstanceSummary]
    #
    CreateSystemInstanceOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute definition
    #   <p>The <code>DefinitionDocument</code> used to create the system.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute compatible_namespace_version
    #   <p>The namespace version in which the system is to be created.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #
    #   @return [Integer]
    #
    CreateSystemTemplateInput = ::Struct.new(
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>The summary object that describes the created system.</p>
    #
    #   @return [SystemTemplateSummary]
    #
    CreateSystemTemplateOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A document that defines an entity. </p>
    #
    # @!attribute language
    #   <p>The language used to define the entity. <code>GRAPHQL</code> is the only valid value.</p>
    #
    #   Enum, one of: ["GRAPHQL"]
    #
    #   @return [String]
    #
    # @!attribute text
    #   <p>The GraphQL text that defines the entity.</p>
    #
    #   @return [String]
    #
    DefinitionDocument = ::Struct.new(
      :language,
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DefinitionLanguage
    #
    module DefinitionLanguage
      # No documentation available.
      #
      GRAPHQL = "GRAPHQL"
    end

    # @!attribute id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    DeleteFlowTemplateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFlowTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteNamespaceInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace_arn
    #   <p>The ARN of the namespace to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_name
    #   <p>The name of the namespace to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteNamespaceOutput = ::Struct.new(
      :namespace_arn,
      :namespace_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system instance to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteSystemInstanceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSystemInstanceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    DeleteSystemTemplateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSystemTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains the ID and revision number of a workflow or system that is part of a deployment.</p>
    #
    # @!attribute id
    #   <p>The ID of the workflow or system.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_number
    #   <p>The revision number of the workflow or system.</p>
    #
    #   @return [Integer]
    #
    DependencyRevision = ::Struct.new(
      :id,
      :revision_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system instance. This value is returned by the <code>CreateSystemInstance</code> action.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    DeploySystemInstanceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>An object that contains summary information about a system instance that was deployed. </p>
    #
    #   @return [SystemInstanceSummary]
    #
    # @!attribute greengrass_deployment_id
    #   <p>The ID of the Greengrass deployment used to deploy the system instance.</p>
    #
    #   @return [String]
    #
    DeploySystemInstanceOutput = ::Struct.new(
      :summary,
      :greengrass_deployment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentTarget
    #
    module DeploymentTarget
      # No documentation available.
      #
      GREENGRASS = "GREENGRASS"

      # No documentation available.
      #
      CLOUD = "CLOUD"
    end

    # @!attribute id
    #   <p>The ID of the workflow to be deleted.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    DeprecateFlowTemplateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeprecateFlowTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to delete.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    DeprecateSystemTemplateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeprecateSystemTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace_name
    #   <p>The name of the user's namespace. Set this to <code>aws</code> to get the public namespace.</p>
    #
    #   @return [String]
    #
    DescribeNamespaceInput = ::Struct.new(
      :namespace_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace_arn
    #   <p>The ARN of the namespace.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_name
    #   <p>The name of the namespace.</p>
    #
    #   @return [String]
    #
    # @!attribute tracking_namespace_name
    #   <p>The name of the public namespace that the latest namespace version is tracking.</p>
    #
    #   @return [String]
    #
    # @!attribute tracking_namespace_version
    #   <p>The version of the public namespace that the latest version is tracking.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace_version
    #   <p>The version of the user's namespace to describe.</p>
    #
    #   @return [Integer]
    #
    DescribeNamespaceOutput = ::Struct.new(
      :namespace_arn,
      :namespace_name,
      :tracking_namespace_name,
      :tracking_namespace_version,
      :namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the thing to disassociate.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_type
    #   <p>The entity type from which to disassociate the thing.</p>
    #
    #   Enum, one of: ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]
    #
    #   @return [String]
    #
    DissociateEntityFromThingInput = ::Struct.new(
      :thing_name,
      :entity_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DissociateEntityFromThingOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the properties of an entity.</p>
    #
    # @!attribute id
    #   <p>The entity ID.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The entity ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The entity type.</p>
    #
    #   Enum, one of: ["DEVICE", "SERVICE", "DEVICE_MODEL", "CAPABILITY", "STATE", "ACTION", "EVENT", "PROPERTY", "MAPPING", "ENUM"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time at which the entity was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute definition
    #   <p>The definition document of the entity.</p>
    #
    #   @return [DefinitionDocument]
    #
    EntityDescription = ::Struct.new(
      :id,
      :arn,
      :type,
      :created_at,
      :definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters an entity search. Multiple filters function as OR criteria in the search. For example a search that includes
    #       a <code>NAMESPACE</code> and a <code>REFERENCED_ENTITY_ID</code> filter searches for entities in the specified namespace that use the entity specified by
    #       the value of <code>REFERENCED_ENTITY_ID</code>.</p>
    #
    # @!attribute name
    #   <p>The name of the entity search filter field. <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example,
    #            you can filter on the ID of a property that is used in a state.</p>
    #
    #   Enum, one of: ["NAME", "NAMESPACE", "SEMANTIC_TYPE_PATH", "REFERENCED_ENTITY_ID"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>
    #
    #   @return [Array<String>]
    #
    EntityFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityFilterName
    #
    module EntityFilterName
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      NAMESPACE = "NAMESPACE"

      # No documentation available.
      #
      SEMANTIC_TYPE_PATH = "SEMANTIC_TYPE_PATH"

      # No documentation available.
      #
      REFERENCED_ENTITY_ID = "REFERENCED_ENTITY_ID"
    end

    # Includes enum constants for EntityType
    #
    module EntityType
      # No documentation available.
      #
      DEVICE = "DEVICE"

      # No documentation available.
      #
      SERVICE = "SERVICE"

      # No documentation available.
      #
      DEVICE_MODEL = "DEVICE_MODEL"

      # No documentation available.
      #
      CAPABILITY = "CAPABILITY"

      # No documentation available.
      #
      STATE = "STATE"

      # No documentation available.
      #
      ACTION = "ACTION"

      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      PROPERTY = "PROPERTY"

      # No documentation available.
      #
      MAPPING = "MAPPING"

      # No documentation available.
      #
      ENUM = "ENUM"
    end

    # Includes enum constants for FlowExecutionEventType
    #
    module FlowExecutionEventType
      # No documentation available.
      #
      EXECUTION_STARTED = "EXECUTION_STARTED"

      # No documentation available.
      #
      EXECUTION_FAILED = "EXECUTION_FAILED"

      # No documentation available.
      #
      EXECUTION_ABORTED = "EXECUTION_ABORTED"

      # No documentation available.
      #
      EXECUTION_SUCCEEDED = "EXECUTION_SUCCEEDED"

      # No documentation available.
      #
      STEP_STARTED = "STEP_STARTED"

      # No documentation available.
      #
      STEP_FAILED = "STEP_FAILED"

      # No documentation available.
      #
      STEP_SUCCEEDED = "STEP_SUCCEEDED"

      # No documentation available.
      #
      ACTIVITY_SCHEDULED = "ACTIVITY_SCHEDULED"

      # No documentation available.
      #
      ACTIVITY_STARTED = "ACTIVITY_STARTED"

      # No documentation available.
      #
      ACTIVITY_FAILED = "ACTIVITY_FAILED"

      # No documentation available.
      #
      ACTIVITY_SUCCEEDED = "ACTIVITY_SUCCEEDED"

      # No documentation available.
      #
      START_FLOW_EXECUTION_TASK = "START_FLOW_EXECUTION_TASK"

      # No documentation available.
      #
      SCHEDULE_NEXT_READY_STEPS_TASK = "SCHEDULE_NEXT_READY_STEPS_TASK"

      # No documentation available.
      #
      THING_ACTION_TASK = "THING_ACTION_TASK"

      # No documentation available.
      #
      THING_ACTION_TASK_FAILED = "THING_ACTION_TASK_FAILED"

      # No documentation available.
      #
      THING_ACTION_TASK_SUCCEEDED = "THING_ACTION_TASK_SUCCEEDED"

      # No documentation available.
      #
      ACKNOWLEDGE_TASK_MESSAGE = "ACKNOWLEDGE_TASK_MESSAGE"
    end

    # <p>An object that contains information about a flow event.</p>
    #
    # @!attribute message_id
    #   <p>The unique identifier of the message.</p>
    #
    #   @return [String]
    #
    # @!attribute event_type
    #   <p>The type of flow event .</p>
    #
    #   Enum, one of: ["EXECUTION_STARTED", "EXECUTION_FAILED", "EXECUTION_ABORTED", "EXECUTION_SUCCEEDED", "STEP_STARTED", "STEP_FAILED", "STEP_SUCCEEDED", "ACTIVITY_SCHEDULED", "ACTIVITY_STARTED", "ACTIVITY_FAILED", "ACTIVITY_SUCCEEDED", "START_FLOW_EXECUTION_TASK", "SCHEDULE_NEXT_READY_STEPS_TASK", "THING_ACTION_TASK", "THING_ACTION_TASK_FAILED", "THING_ACTION_TASK_SUCCEEDED", "ACKNOWLEDGE_TASK_MESSAGE"]
    #
    #   @return [String]
    #
    # @!attribute timestamp
    #   <p>The date and time when the message was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute payload
    #   <p>A string containing information about the flow event.</p>
    #
    #   @return [String]
    #
    FlowExecutionMessage = ::Struct.new(
      :message_id,
      :event_type,
      :timestamp,
      :payload,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FlowExecutionStatus
    #
    module FlowExecutionStatus
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      ABORTED = "ABORTED"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>An object that contains summary information about a flow execution.</p>
    #
    # @!attribute flow_execution_id
    #   <p>The ID of the flow execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the flow execution.</p>
    #
    #   Enum, one of: ["RUNNING", "ABORTED", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute system_instance_id
    #   <p>The ID of the system instance that contains the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_template_id
    #   <p>The ID of the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date and time when the flow execution summary was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>The date and time when the flow execution summary was last updated.</p>
    #
    #   @return [Time]
    #
    FlowExecutionSummary = ::Struct.new(
      :flow_execution_id,
      :status,
      :system_instance_id,
      :flow_template_id,
      :created_at,
      :updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains a workflow's definition and summary information.</p>
    #
    # @!attribute summary
    #   <p>An object that contains summary information about a workflow.</p>
    #
    #   @return [FlowTemplateSummary]
    #
    # @!attribute definition
    #   <p>A workflow's definition document.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute validated_namespace_version
    #   <p>The version of the user's namespace against which the workflow was validated. Use this value in your system instance.</p>
    #
    #   @return [Integer]
    #
    FlowTemplateDescription = ::Struct.new(
      :summary,
      :definition,
      :validated_namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters a workflow search.</p>
    #
    # @!attribute name
    #   <p>The name of the search filter field.</p>
    #
    #   Enum, one of: ["DEVICE_MODEL_ID"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>
    #
    #   @return [Array<String>]
    #
    FlowTemplateFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FlowTemplateFilterName
    #
    module FlowTemplateFilterName
      # No documentation available.
      #
      DEVICE_MODEL_ID = "DEVICE_MODEL_ID"
    end

    # <p>An object that contains summary information about a workflow.</p>
    #
    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the workflow.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_number
    #   <p>The revision number of the workflow.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The date when the workflow was created.</p>
    #
    #   @return [Time]
    #
    FlowTemplateSummary = ::Struct.new(
      :id,
      :arn,
      :revision_number,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>An array of entity IDs.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    #   @return [Integer]
    #
    GetEntitiesInput = ::Struct.new(
      :ids,
      :namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute descriptions
    #   <p>An array of descriptions for the specified entities.</p>
    #
    #   @return [Array<EntityDescription>]
    #
    GetEntitiesOutput = ::Struct.new(
      :descriptions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute revision_number
    #   <p>The number of the workflow revision to retrieve.</p>
    #
    #   @return [Integer]
    #
    GetFlowTemplateInput = ::Struct.new(
      :id,
      :revision_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>The object that describes the specified workflow.</p>
    #
    #   @return [FlowTemplateDescription]
    #
    GetFlowTemplateOutput = ::Struct.new(
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the workflow.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    GetFlowTemplateRevisionsInput = ::Struct.new(
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that provide summary data about each revision.</p>
    #
    #   @return [Array<FlowTemplateSummary>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #
    #   @return [String]
    #
    GetFlowTemplateRevisionsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    GetNamespaceDeletionStatusInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute namespace_arn
    #   <p>The ARN of the namespace that is being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_name
    #   <p>The name of the namespace that is being deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the deletion request.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code returned by the namespace deletion task.</p>
    #
    #   Enum, one of: ["VALIDATION_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error code returned by the namespace deletion task.</p>
    #
    #   @return [String]
    #
    GetNamespaceDeletionStatusOutput = ::Struct.new(
      :namespace_arn,
      :namespace_name,
      :status,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system deployment instance. This value is returned by <code>CreateSystemInstance</code>.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:deployment:DEPLOYMENTNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    GetSystemInstanceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>An object that describes the system instance.</p>
    #
    #   @return [SystemInstanceDescription]
    #
    GetSystemInstanceOutput = ::Struct.new(
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to get. This ID must be in the user's namespace.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute revision_number
    #   <p>The number that specifies the revision of the system to get.</p>
    #
    #   @return [Integer]
    #
    GetSystemTemplateInput = ::Struct.new(
      :id,
      :revision_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute description
    #   <p>An object that contains summary data about the system.</p>
    #
    #   @return [SystemTemplateDescription]
    #
    GetSystemTemplateOutput = ::Struct.new(
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system template.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    GetSystemTemplateRevisionsInput = ::Struct.new(
      :id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary data about the system template revisions.</p>
    #
    #   @return [Array<SystemTemplateSummary>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>
    #
    #   @return [String]
    #
    GetSystemTemplateRevisionsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute upload_id
    #   <p>The ID of the upload. This value is returned by the <code>UploadEntityDefinitions</code> action.</p>
    #
    #   @return [String]
    #
    GetUploadStatusInput = ::Struct.new(
      :upload_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute upload_id
    #   <p>The ID of the upload.</p>
    #
    #   @return [String]
    #
    # @!attribute upload_status
    #   <p>The status of the upload. The initial status is <code>IN_PROGRESS</code>. The response show all validation failures if the upload fails.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute namespace_arn
    #   <p>The ARN of the upload.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_name
    #   <p>The name of the upload's namespace.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_reason
    #   <p>The reason for an upload failure.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute created_date
    #   <p>The date at which the upload was created.</p>
    #
    #   @return [Time]
    #
    GetUploadStatusOutput = ::Struct.new(
      :upload_id,
      :upload_status,
      :namespace_arn,
      :namespace_name,
      :namespace_version,
      :failure_reason,
      :created_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalFailureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
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

    # @!attribute flow_execution_id
    #   <p>The ID of the flow execution.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    ListFlowExecutionMessagesInput = ::Struct.new(
      :flow_execution_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute messages
    #   <p>A list of objects that contain information about events in the specified flow execution.</p>
    #
    #   @return [Array<FlowExecutionMessage>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>
    #
    #   @return [String]
    #
    ListFlowExecutionMessagesOutput = ::Struct.new(
      :messages,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of tags to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be returned.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :max_results,
      :resource_arn,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>List of tags returned by the <code>ListTagsForResource</code> operation.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>The token that specifies the next page of results to return.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    #
    # @!attribute cloud_metric_enabled
    #   <p>A Boolean that specifies whether cloud metrics are collected.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute metric_rule_role_arn
    #   <p>The ARN of the role that is used to collect cloud metrics.</p>
    #
    #   @return [String]
    #
    MetricsConfiguration = ::Struct.new(
      :cloud_metric_enabled,
      :metric_rule_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.cloud_metric_enabled ||= false
      end

    end

    # Includes enum constants for NamespaceDeletionStatus
    #
    module NamespaceDeletionStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # Includes enum constants for NamespaceDeletionStatusErrorCodes
    #
    module NamespaceDeletionStatusErrorCodes
      # No documentation available.
      #
      VALIDATION_FAILED = "VALIDATION_FAILED"
    end

    # <p></p>
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

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_types
    #   <p>The entity types for which to search.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>NAME</code>
    #               <code>NAMESPACE</code>, <code>SEMANTIC_TYPE_PATH</code> and <code>REFERENCED_ENTITY_ID</code>.
    #            <code>REFERENCED_ENTITY_ID</code> filters on entities that are used by the entity in the result set. For example,
    #         you can filter on the ID of a property that is used in a state.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    #
    #   @return [Array<EntityFilter>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    #   @return [Integer]
    #
    SearchEntitiesInput = ::Struct.new(
      :entity_types,
      :filters,
      :next_token,
      :max_results,
      :namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute descriptions
    #   <p>An array of descriptions for each entity returned in the search result.</p>
    #
    #   @return [Array<EntityDescription>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #
    #   @return [String]
    #
    SearchEntitiesOutput = ::Struct.new(
      :descriptions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute system_instance_id
    #   <p>The ID of the system instance that contains the flow.</p>
    #
    #   @return [String]
    #
    # @!attribute flow_execution_id
    #   <p>The ID of a flow execution.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time of the earliest flow execution to return.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time of the latest flow execution to return.</p>
    #
    #   @return [Time]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    SearchFlowExecutionsInput = ::Struct.new(
      :system_instance_id,
      :flow_execution_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary information about each workflow execution in the result set.</p>
    #
    #   @return [Array<FlowExecutionSummary>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #
    #   @return [String]
    #
    SearchFlowExecutionsOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>An array of objects that limit the result set. The only valid filter is <code>DEVICE_MODEL_ID</code>.</p>
    #
    #   @return [Array<FlowTemplateFilter>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    SearchFlowTemplatesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary information about each workflow in the result set.</p>
    #
    #   @return [Array<FlowTemplateSummary>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #
    #   @return [String]
    #
    SearchFlowTemplatesOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>Optional filter to apply to the search. Valid filters are <code>SYSTEM_TEMPLATE_ID</code>, <code>STATUS</code>, and
    #            <code>GREENGRASS_GROUP_NAME</code>.</p>
    #            <p>Multiple filters function as OR criteria in the query. Multiple values passed inside the filter function as AND criteria.</p>
    #
    #   @return [Array<SystemInstanceFilter>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    SearchSystemInstancesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary data abour the system instances in the result set.</p>
    #
    #   @return [Array<SystemInstanceSummary>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results. </p>
    #
    #   @return [String]
    #
    SearchSystemInstancesOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filters
    #   <p>An array of filters that limit the result set. The only valid filter is <code>FLOW_TEMPLATE_ID</code>.</p>
    #
    #   @return [Array<SystemTemplateFilter>]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    SearchSystemTemplatesInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summaries
    #   <p>An array of objects that contain summary information about each system deployment in the result set.</p>
    #
    #   @return [Array<SystemTemplateSummary>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #
    #   @return [String]
    #
    SearchSystemTemplatesOutput = ::Struct.new(
      :summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_id
    #   <p>The ID of the entity to which the things are associated.</p>
    #            <p>The IDs should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:device:DEVICENAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The string that specifies the next page of results. Use this when you're paginating results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #
    #   @return [Integer]
    #
    SearchThingsInput = ::Struct.new(
      :entity_id,
      :next_token,
      :max_results,
      :namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute things
    #   <p>An array of things in the result set.</p>
    #
    #   @return [Array<Thing>]
    #
    # @!attribute next_token
    #   <p>The string to specify as <code>nextToken</code> when you request the next page of results.</p>
    #
    #   @return [String]
    #
    SearchThingsOutput = ::Struct.new(
      :things,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SystemInstanceDeploymentStatus
    #
    module SystemInstanceDeploymentStatus
      # No documentation available.
      #
      NOT_DEPLOYED = "NOT_DEPLOYED"

      # No documentation available.
      #
      BOOTSTRAP = "BOOTSTRAP"

      # No documentation available.
      #
      DEPLOY_IN_PROGRESS = "DEPLOY_IN_PROGRESS"

      # No documentation available.
      #
      DEPLOYED_IN_TARGET = "DEPLOYED_IN_TARGET"

      # No documentation available.
      #
      UNDEPLOY_IN_PROGRESS = "UNDEPLOY_IN_PROGRESS"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      PENDING_DELETE = "PENDING_DELETE"

      # No documentation available.
      #
      DELETED_IN_TARGET = "DELETED_IN_TARGET"
    end

    # <p>An object that contains a system instance definition and summary information.</p>
    #
    # @!attribute summary
    #   <p>An object that contains summary information about a system instance.</p>
    #
    #   @return [SystemInstanceSummary]
    #
    # @!attribute definition
    #   <p>A document that defines an entity. </p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute s3_bucket_name
    #   <p>The Amazon Simple Storage Service bucket where information about a system instance is stored.</p>
    #
    #   @return [String]
    #
    # @!attribute metrics_configuration
    #   <p>An object that specifies whether cloud metrics are collected in a deployment and, if so, what role is used to collect metrics.</p>
    #
    #   @return [MetricsConfiguration]
    #
    # @!attribute validated_namespace_version
    #   <p>The version of the user's namespace against which the system instance was validated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute validated_dependency_revisions
    #   <p>A list of objects that contain all of the IDs and revision numbers of workflows and systems that are used in a system instance.</p>
    #
    #   @return [Array<DependencyRevision>]
    #
    # @!attribute flow_actions_role_arn
    #   <p>The AWS Identity and Access Management (IAM) role that AWS IoT Things Graph assumes during flow execution in a
    #         cloud deployment. This role must have read and write permissionss to AWS Lambda and AWS IoT and to any other
    #         AWS services that the flow uses.</p>
    #
    #   @return [String]
    #
    SystemInstanceDescription = ::Struct.new(
      :summary,
      :definition,
      :s3_bucket_name,
      :metrics_configuration,
      :validated_namespace_version,
      :validated_dependency_revisions,
      :flow_actions_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters a system instance search.
    #          Multiple filters function as OR criteria in the search. For example a search that includes a GREENGRASS_GROUP_NAME and a
    #          STATUS filter searches for system instances in the specified Greengrass group that have the specified status.</p>
    #
    # @!attribute name
    #   <p>The name of the search filter field.</p>
    #
    #   Enum, one of: ["SYSTEM_TEMPLATE_ID", "STATUS", "GREENGRASS_GROUP_NAME"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search. </p>
    #
    #   @return [Array<String>]
    #
    SystemInstanceFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SystemInstanceFilterName
    #
    module SystemInstanceFilterName
      # No documentation available.
      #
      SYSTEM_TEMPLATE_ID = "SYSTEM_TEMPLATE_ID"

      # No documentation available.
      #
      STATUS = "STATUS"

      # No documentation available.
      #
      GREENGRASS_GROUP_NAME = "GREENGRASS_GROUP_NAME"
    end

    # <p>An object that contains summary information about a system instance.</p>
    #
    # @!attribute id
    #   <p>The ID of the system instance.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the system instance.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the system instance.</p>
    #
    #   Enum, one of: ["NOT_DEPLOYED", "BOOTSTRAP", "DEPLOY_IN_PROGRESS", "DEPLOYED_IN_TARGET", "UNDEPLOY_IN_PROGRESS", "FAILED", "PENDING_DELETE", "DELETED_IN_TARGET"]
    #
    #   @return [String]
    #
    # @!attribute target
    #   <p>The target of the system instance.</p>
    #
    #   Enum, one of: ["GREENGRASS", "CLOUD"]
    #
    #   @return [String]
    #
    # @!attribute greengrass_group_name
    #   <p>The ID of the Greengrass group where the system instance is deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The date when the system instance was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_at
    #   <p>
    #
    #            The date and time when the system instance was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute greengrass_group_id
    #   <p>The ID of the Greengrass group where the system instance is deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute greengrass_group_version_id
    #   <p>The version of the Greengrass group where the system instance is deployed.</p>
    #
    #   @return [String]
    #
    SystemInstanceSummary = ::Struct.new(
      :id,
      :arn,
      :status,
      :target,
      :greengrass_group_name,
      :created_at,
      :updated_at,
      :greengrass_group_id,
      :greengrass_group_version_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that contains a system's definition document and summary information.</p>
    #
    # @!attribute summary
    #   <p>An object that contains summary information about a system.</p>
    #
    #   @return [SystemTemplateSummary]
    #
    # @!attribute definition
    #   <p>The definition document of a system.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute validated_namespace_version
    #   <p>The namespace version against which the system was validated. Use this value in your system instance.</p>
    #
    #   @return [Integer]
    #
    SystemTemplateDescription = ::Struct.new(
      :summary,
      :definition,
      :validated_namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that filters a system search.</p>
    #
    # @!attribute name
    #   <p>The name of the system search filter field.</p>
    #
    #   Enum, one of: ["FLOW_TEMPLATE_ID"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>An array of string values for the search filter field. Multiple values function as AND criteria in the search.</p>
    #
    #   @return [Array<String>]
    #
    SystemTemplateFilter = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SystemTemplateFilterName
    #
    module SystemTemplateFilterName
      # No documentation available.
      #
      FLOW_TEMPLATE_ID = "FLOW_TEMPLATE_ID"
    end

    # <p>An object that contains information about a system.</p>
    #
    # @!attribute id
    #   <p>The ID of the system.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the system.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_number
    #   <p>The revision number of the system.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_at
    #   <p>The date when the system was created.</p>
    #
    #   @return [Time]
    #
    SystemTemplateSummary = ::Struct.new(
      :id,
      :arn,
      :revision_number,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata assigned to an AWS IoT Things Graph resource consisting of a key-value pair.</p>
    #
    # @!attribute key
    #   <p>The required name of the tag. The string value can be from 1 to 128 Unicode characters in length.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The optional value of the tag. The string value can be from 1 to 256 Unicode characters in length.</p>
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

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to add to the resource.></p>
    #
    #   @return [Array<Tag>]
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

    # <p>An AWS IoT thing.</p>
    #
    # @!attribute thing_arn
    #   <p>The ARN of the thing.</p>
    #
    #   @return [String]
    #
    # @!attribute thing_name
    #   <p>The name of the thing.</p>
    #
    #   @return [String]
    #
    Thing = ::Struct.new(
      :thing_arn,
      :thing_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p></p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system instance to remove from its target.</p>
    #
    #   @return [String]
    #
    UndeploySystemInstanceInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>An object that contains summary information about the system instance that was removed from its target.</p>
    #
    #   @return [SystemInstanceSummary]
    #
    UndeploySystemInstanceOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource whose tags are to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A list of tag key names to remove from the resource. You don't specify the value. Both the key and its associated value are removed. </p>
    #            <p>This parameter to the API requires a JSON text string argument. For information on how to format a JSON parameter for the various command line tool environments, see <a href="https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters.html cli-using-param-json">Using JSON for Parameters</a> in the <i>AWS CLI User Guide</i>. </p>
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

    # @!attribute id
    #   <p>The ID of the workflow to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:workflow:WORKFLOWNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated workflow definition.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute compatible_namespace_version
    #   <p>The version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default. Use the <code>GetFlowTemplateRevisions</code> if you want to find earlier revisions of the flow
    #         to update.</p>
    #
    #   @return [Integer]
    #
    UpdateFlowTemplateInput = ::Struct.new(
      :id,
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>An object containing summary information about the updated workflow.</p>
    #
    #   @return [FlowTemplateSummary]
    #
    UpdateFlowTemplateOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the system to be updated.</p>
    #            <p>The ID should be in the following format.</p>
    #            <p>
    #               <code>urn:tdm:REGION/ACCOUNT ID/default:system:SYSTEMNAME</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute definition
    #   <p>The <code>DefinitionDocument</code> that contains the updated system definition.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute compatible_namespace_version
    #   <p>The version of the user's namespace. Defaults to the latest version of the user's namespace.</p>
    #            <p>If no value is specified, the latest version is used by default.</p>
    #
    #   @return [Integer]
    #
    UpdateSystemTemplateInput = ::Struct.new(
      :id,
      :definition,
      :compatible_namespace_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute summary
    #   <p>An object containing summary information about the updated system.</p>
    #
    #   @return [SystemTemplateSummary]
    #
    UpdateSystemTemplateOutput = ::Struct.new(
      :summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute document
    #   <p>The <code>DefinitionDocument</code> that defines the updated entities.</p>
    #
    #   @return [DefinitionDocument]
    #
    # @!attribute sync_with_public_namespace
    #   <p>A Boolean that specifies whether to synchronize with the latest version of the public namespace. If set to <code>true</code>, the upload will create a new namespace version.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute deprecate_existing_entities
    #   <p>A Boolean that specifies whether to deprecate all entities in the latest version before uploading the new <code>DefinitionDocument</code>.
    #            If set to <code>true</code>, the upload will create a new namespace version.</p>
    #
    #   @return [Boolean]
    #
    UploadEntityDefinitionsInput = ::Struct.new(
      :document,
      :sync_with_public_namespace,
      :deprecate_existing_entities,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sync_with_public_namespace ||= false
        self.deprecate_existing_entities ||= false
      end

    end

    # @!attribute upload_id
    #   <p>The ID that specifies the upload action. You can use this to track the status of the upload.</p>
    #
    #   @return [String]
    #
    UploadEntityDefinitionsOutput = ::Struct.new(
      :upload_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UploadStatus
    #
    module UploadStatus
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

  end
end
