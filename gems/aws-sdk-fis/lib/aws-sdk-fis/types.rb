# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Fis
  module Types

    # <p>Describes an action. For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html">FIS actions</a>
    #          in the <i>Fault Injection Simulator User Guide</i>.</p>
    #
    # @!attribute id
    #   <p>The ID of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The action parameters, if applicable.</p>
    #
    #   @return [Hash<String, ActionParameter>]
    #
    # @!attribute targets
    #   <p>The supported targets for the action.</p>
    #
    #   @return [Hash<String, ActionTarget>]
    #
    # @!attribute tags
    #   <p>The tags for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    Action = ::Struct.new(
      :id,
      :description,
      :parameters,
      :targets,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a parameter for an action.</p>
    #
    # @!attribute description
    #   <p>The parameter description.</p>
    #
    #   @return [String]
    #
    # @!attribute required
    #   <p>Indicates whether the parameter is required.</p>
    #
    #   @return [Boolean]
    #
    ActionParameter = ::Struct.new(
      :description,
      :required,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a summary of an action.</p>
    #
    # @!attribute id
    #   <p>The ID of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #
    #   @return [Hash<String, ActionTarget>]
    #
    # @!attribute tags
    #   <p>The tags for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    ActionSummary = ::Struct.new(
      :id,
      :description,
      :targets,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a target for an action.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type of the target.</p>
    #
    #   @return [String]
    #
    ActionTarget = ::Struct.new(
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request could not be processed because of a conflict.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies an action for an experiment template.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/actions.html">Actions</a>
    #          in the <i>Fault Injection Simulator User Guide</i>.</p>
    #
    # @!attribute action_id
    #   <p>The ID of the action. The format of the action ID is: aws:<i>service-name</i>:<i>action-type</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the action, if applicable.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute start_after
    #   <p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>
    #
    #   @return [Array<String>]
    #
    CreateExperimentTemplateActionInput = ::Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute stop_conditions
    #   <p>The stop conditions.</p>
    #
    #   @return [Array<CreateExperimentTemplateStopConditionInput>]
    #
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #
    #   @return [Hash<String, CreateExperimentTemplateTargetInput>]
    #
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #
    #   @return [Hash<String, CreateExperimentTemplateActionInput>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the experiment template.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #
    #   @return [CreateExperimentTemplateLogConfigurationInput]
    #
    CreateExperimentTemplateInput = ::Struct.new(
      :client_token,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn,
      :tags,
      :log_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for experiment logging.</p>
    #
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    #   @return [ExperimentTemplateCloudWatchLogsLogConfigurationInput]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #
    #   @return [ExperimentTemplateS3LogConfigurationInput]
    #
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #
    #   @return [Integer]
    #
    CreateExperimentTemplateLogConfigurationInput = ::Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #
    #   @return [ExperimentTemplate]
    #
    CreateExperimentTemplateOutput = ::Struct.new(
      :experiment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a stop condition for an experiment template.</p>
    #
    # @!attribute source
    #   <p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop
    #            condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop
    #            condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm. This is required if the source is
    #            a CloudWatch alarm.</p>
    #
    #   @return [String]
    #
    CreateExperimentTemplateStopConditionInput = ::Struct.new(
      :source,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN) or
    #          at least one resource tag. You cannot specify both ARNs and tags.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/targets.html">Targets</a>
    #          in the <i>Fault Injection Simulator User Guide</i>.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type. The resource type must be supported for the specified action.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #
    #   @return [Array<ExperimentTemplateTargetInputFilter>]
    #
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count of the resources at random, or a percentage of the resources. All identified resources are included in the target.</p>
    #            <ul>
    #               <li>
    #                  <p>ALL - Run the action on all identified targets. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>COUNT(n) - Run the action on the specified number of targets, chosen from the identified targets at random.
    #                   For example, COUNT(1) selects one of the targets.</p>
    #               </li>
    #               <li>
    #                  <p>PERCENT(n) - Run the action on the specified percentage of targets, chosen from the identified targets
    #                  at random. For example, PERCENT(25) selects 25% of the targets.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateExperimentTemplateTargetInput = ::Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    DeleteExperimentTemplateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #
    #   @return [ExperimentTemplate]
    #
    DeleteExperimentTemplateOutput = ::Struct.new(
      :experiment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an experiment.</p>
    #
    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the experiment.</p>
    #
    #   @return [ExperimentState]
    #
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #
    #   @return [Hash<String, ExperimentTarget>]
    #
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #
    #   @return [Hash<String, ExperimentAction>]
    #
    # @!attribute stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #
    #   @return [Array<ExperimentStopCondition>]
    #
    # @!attribute creation_time
    #   <p>The time that the experiment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute start_time
    #   <p>The time that the experiment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the experiment ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags for the experiment.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #
    #   @return [ExperimentLogConfiguration]
    #
    Experiment = ::Struct.new(
      :id,
      :experiment_template_id,
      :role_arn,
      :state,
      :targets,
      :actions,
      :stop_conditions,
      :creation_time,
      :start_time,
      :end_time,
      :tags,
      :log_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the action for an experiment.</p>
    #
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute start_after
    #   <p>The name of the action that must be completed before this action starts.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute state
    #   <p>The state of the action.</p>
    #
    #   @return [ExperimentActionState]
    #
    # @!attribute start_time
    #   <p>The time that the action started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The time that the action ended.</p>
    #
    #   @return [Time]
    #
    ExperimentAction = ::Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      :state,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the state of an action.</p>
    #
    # @!attribute status
    #   <p>The state of the action.</p>
    #
    #   Enum, one of: ["pending", "initiating", "running", "completed", "cancelled", "stopping", "stopped", "failed"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the state.</p>
    #
    #   @return [String]
    #
    ExperimentActionState = ::Struct.new(
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExperimentActionStatus
    #
    module ExperimentActionStatus
      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      initiating = "initiating"

      # No documentation available.
      #
      running = "running"

      # No documentation available.
      #
      completed = "completed"

      # No documentation available.
      #
      cancelled = "cancelled"

      # No documentation available.
      #
      stopping = "stopping"

      # No documentation available.
      #
      stopped = "stopped"

      # No documentation available.
      #
      failed = "failed"
    end

    # <p>Describes the configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>
    #
    #   @return [String]
    #
    ExperimentCloudWatchLogsLogConfiguration = ::Struct.new(
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for experiment logging.</p>
    #
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    #   @return [ExperimentCloudWatchLogsLogConfiguration]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #
    #   @return [ExperimentS3LogConfiguration]
    #
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #
    #   @return [Integer]
    #
    ExperimentLogConfiguration = ::Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for experiment logging to Amazon S3.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the destination bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The bucket prefix.</p>
    #
    #   @return [String]
    #
    ExperimentS3LogConfiguration = ::Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the state of an experiment.</p>
    #
    # @!attribute status
    #   <p>The state of the experiment.</p>
    #
    #   Enum, one of: ["pending", "initiating", "running", "completed", "stopping", "stopped", "failed"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for the state.</p>
    #
    #   @return [String]
    #
    ExperimentState = ::Struct.new(
      :status,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExperimentStatus
    #
    module ExperimentStatus
      # No documentation available.
      #
      pending = "pending"

      # No documentation available.
      #
      initiating = "initiating"

      # No documentation available.
      #
      running = "running"

      # No documentation available.
      #
      completed = "completed"

      # No documentation available.
      #
      stopping = "stopping"

      # No documentation available.
      #
      stopped = "stopped"

      # No documentation available.
      #
      failed = "failed"
    end

    # <p>Describes the stop condition for an experiment.</p>
    #
    # @!attribute source
    #   <p>The source for the stop condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>
    #
    #   @return [String]
    #
    ExperimentStopCondition = ::Struct.new(
      :source,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a summary of an experiment.</p>
    #
    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the experiment.</p>
    #
    #   @return [ExperimentState]
    #
    # @!attribute creation_time
    #   <p>The time that the experiment was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags for the experiment.</p>
    #
    #   @return [Hash<String, String>]
    #
    ExperimentSummary = ::Struct.new(
      :id,
      :experiment_template_id,
      :state,
      :creation_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a target for an experiment.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the resources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #
    #   @return [Array<ExperimentTargetFilter>]
    #
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count or percentage.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    ExperimentTarget = ::Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter used for the target resources in an experiment.</p>
    #
    # @!attribute path
    #   <p>The attribute path for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The attribute values for the filter.</p>
    #
    #   @return [Array<String>]
    #
    ExperimentTargetFilter = ::Struct.new(
      :path,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an experiment template.</p>
    #
    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description for the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #
    #   @return [Hash<String, ExperimentTemplateTarget>]
    #
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #
    #   @return [Hash<String, ExperimentTemplateAction>]
    #
    # @!attribute stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #
    #   @return [Array<ExperimentTemplateStopCondition>]
    #
    # @!attribute creation_time
    #   <p>The time the experiment template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The time the experiment template was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the experiment template.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #
    #   @return [ExperimentTemplateLogConfiguration]
    #
    ExperimentTemplate = ::Struct.new(
      :id,
      :description,
      :targets,
      :actions,
      :stop_conditions,
      :creation_time,
      :last_update_time,
      :role_arn,
      :tags,
      :log_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an action for an experiment template.</p>
    #
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute start_after
    #   <p>The name of the action that must be completed before the current action starts.</p>
    #
    #   @return [Array<String>]
    #
    ExperimentTemplateAction = ::Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>
    #
    #   @return [String]
    #
    ExperimentTemplateCloudWatchLogsLogConfiguration = ::Struct.new(
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the destination Amazon CloudWatch Logs log group.</p>
    #
    #   @return [String]
    #
    ExperimentTemplateCloudWatchLogsLogConfigurationInput = ::Struct.new(
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for experiment logging.</p>
    #
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    #   @return [ExperimentTemplateCloudWatchLogsLogConfiguration]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #
    #   @return [ExperimentTemplateS3LogConfiguration]
    #
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #
    #   @return [Integer]
    #
    ExperimentTemplateLogConfiguration = ::Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the configuration for experiment logging to Amazon S3.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the destination bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The bucket prefix.</p>
    #
    #   @return [String]
    #
    ExperimentTemplateS3LogConfiguration = ::Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for experiment logging to Amazon S3.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the destination bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The bucket prefix.</p>
    #
    #   @return [String]
    #
    ExperimentTemplateS3LogConfigurationInput = ::Struct.new(
      :bucket_name,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a stop condition for an experiment template.</p>
    #
    # @!attribute source
    #   <p>The source for the stop condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm, if applicable.</p>
    #
    #   @return [String]
    #
    ExperimentTemplateStopCondition = ::Struct.new(
      :source,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides a summary of an experiment template.</p>
    #
    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The time that the experiment template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The time that the experiment template was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The tags for the experiment template.</p>
    #
    #   @return [Hash<String, String>]
    #
    ExperimentTemplateSummary = ::Struct.new(
      :id,
      :description,
      :creation_time,
      :last_update_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a target for an experiment template.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the targets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #
    #   @return [Array<ExperimentTemplateTargetFilter>]
    #
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count or percentage.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    ExperimentTemplateTarget = ::Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a filter used for the target resources in an experiment template.</p>
    #
    # @!attribute path
    #   <p>The attribute path for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The attribute values for the filter.</p>
    #
    #   @return [Array<String>]
    #
    ExperimentTemplateTargetFilter = ::Struct.new(
      :path,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a filter used for the target resource input in an experiment template.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/fis/latest/userguide/targets.html#target-filters">Resource filters</a>
    #          in the <i>Fault Injection Simulator User Guide</i>.</p>
    #
    # @!attribute path
    #   <p>The attribute path for the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The attribute values for the filter.</p>
    #
    #   @return [Array<String>]
    #
    ExperimentTemplateTargetInputFilter = ::Struct.new(
      :path,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the action.</p>
    #
    #   @return [String]
    #
    GetActionInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action
    #   <p>Information about the action.</p>
    #
    #   @return [Action]
    #
    GetActionOutput = ::Struct.new(
      :action,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #
    #   @return [String]
    #
    GetExperimentInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment
    #   <p>Information about the experiment.</p>
    #
    #   @return [Experiment]
    #
    GetExperimentOutput = ::Struct.new(
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    GetExperimentTemplateInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #
    #   @return [ExperimentTemplate]
    #
    GetExperimentTemplateOutput = ::Struct.new(
      :experiment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    GetTargetResourceTypeInput = ::Struct.new(
      :resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_resource_type
    #   <p>Information about the resource type.</p>
    #
    #   @return [TargetResourceType]
    #
    GetTargetResourceTypeOutput = ::Struct.new(
      :target_resource_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListActionsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute actions
    #   <p>The actions.</p>
    #
    #   @return [Array<ActionSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListActionsOutput = ::Struct.new(
      :actions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListExperimentTemplatesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment_templates
    #   <p>The experiment templates.</p>
    #
    #   @return [Array<ExperimentTemplateSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListExperimentTemplatesOutput = ::Struct.new(
      :experiment_templates,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListExperimentsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiments
    #   <p>The experiments.</p>
    #
    #   @return [Array<ExperimentSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListExperimentsOutput = ::Struct.new(
      :experiments,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
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
    #   <p>The tags for the resource.</p>
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
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make another call with the returned <code>nextToken</code> value.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #
    #   @return [String]
    #
    ListTargetResourceTypesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_resource_types
    #   <p>The target resource types.</p>
    #
    #   @return [Array<TargetResourceTypeSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. This value is <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListTargetResourceTypesOutput = ::Struct.new(
      :target_resource_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource cannot be found.</p>
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

    # <p>You have exceeded your service quota.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment_template_id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to apply to the experiment.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartExperimentInput = ::Struct.new(
      :client_token,
      :experiment_template_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment
    #   <p>Information about the experiment.</p>
    #
    #   @return [Experiment]
    #
    StartExperimentOutput = ::Struct.new(
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment.</p>
    #
    #   @return [String]
    #
    StopExperimentInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment
    #   <p>Information about the experiment.</p>
    #
    #   @return [Experiment]
    #
    StopExperimentOutput = ::Struct.new(
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags for the resource.</p>
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

    # <p>Describes a resource type.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the resource type.</p>
    #
    #   @return [Hash<String, TargetResourceTypeParameter>]
    #
    TargetResourceType = ::Struct.new(
      :resource_type,
      :description,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes the parameters for a resource type. Use parameters to determine which tasks are
    #           identified during target resolution.</p>
    #
    # @!attribute description
    #   <p>A description of the parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute required
    #   <p>Indicates whether the parameter is required.</p>
    #
    #   @return [Boolean]
    #
    TargetResourceTypeParameter = ::Struct.new(
      :description,
      :required,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resource type.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the resource type.</p>
    #
    #   @return [String]
    #
    TargetResourceTypeSummary = ::Struct.new(
      :resource_type,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys to remove.</p>
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

    # <p>Specifies an action for an experiment template.</p>
    #
    # @!attribute action_id
    #   <p>The ID of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the action.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The parameters for the action, if applicable.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute targets
    #   <p>The targets for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute start_after
    #   <p>The name of the action that must be completed before the current action starts. Omit this parameter to run the action at the start of the experiment.</p>
    #
    #   @return [Array<String>]
    #
    UpdateExperimentTemplateActionInputItem = ::Struct.new(
      :action_id,
      :description,
      :parameters,
      :targets,
      :start_after,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the experiment template.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for the template.</p>
    #
    #   @return [String]
    #
    # @!attribute stop_conditions
    #   <p>The stop conditions for the experiment.</p>
    #
    #   @return [Array<UpdateExperimentTemplateStopConditionInput>]
    #
    # @!attribute targets
    #   <p>The targets for the experiment.</p>
    #
    #   @return [Hash<String, UpdateExperimentTemplateTargetInput>]
    #
    # @!attribute actions
    #   <p>The actions for the experiment.</p>
    #
    #   @return [Hash<String, UpdateExperimentTemplateActionInputItem>]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role that grants the FIS service permission to perform service actions on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute log_configuration
    #   <p>The configuration for experiment logging.</p>
    #
    #   @return [UpdateExperimentTemplateLogConfigurationInput]
    #
    UpdateExperimentTemplateInput = ::Struct.new(
      :id,
      :description,
      :stop_conditions,
      :targets,
      :actions,
      :role_arn,
      :log_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the configuration for experiment logging.</p>
    #
    # @!attribute cloud_watch_logs_configuration
    #   <p>The configuration for experiment logging to Amazon CloudWatch Logs.</p>
    #
    #   @return [ExperimentTemplateCloudWatchLogsLogConfigurationInput]
    #
    # @!attribute s3_configuration
    #   <p>The configuration for experiment logging to Amazon S3.</p>
    #
    #   @return [ExperimentTemplateS3LogConfigurationInput]
    #
    # @!attribute log_schema_version
    #   <p>The schema version.</p>
    #
    #   @return [Integer]
    #
    UpdateExperimentTemplateLogConfigurationInput = ::Struct.new(
      :cloud_watch_logs_configuration,
      :s3_configuration,
      :log_schema_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment_template
    #   <p>Information about the experiment template.</p>
    #
    #   @return [ExperimentTemplate]
    #
    UpdateExperimentTemplateOutput = ::Struct.new(
      :experiment_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a stop condition for an experiment. You can define a stop condition as a CloudWatch alarm.</p>
    #
    # @!attribute source
    #   <p>The source for the stop condition. Specify <code>aws:cloudwatch:alarm</code> if the stop
    #            condition is defined by a CloudWatch alarm. Specify <code>none</code> if there is no stop
    #            condition.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch alarm.</p>
    #
    #   @return [String]
    #
    UpdateExperimentTemplateStopConditionInput = ::Struct.new(
      :source,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies a target for an experiment. You must specify at least one Amazon Resource Name (ARN) or at least one resource tag. You cannot specify both.</p>
    #
    # @!attribute resource_type
    #   <p>The resource type. The resource type must be supported for the specified action.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>The Amazon Resource Names (ARNs) of the targets.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_tags
    #   <p>The tags for the target resources.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filters
    #   <p>The filters to apply to identify target resources using specific attributes.</p>
    #
    #   @return [Array<ExperimentTemplateTargetInputFilter>]
    #
    # @!attribute selection_mode
    #   <p>Scopes the identified resources to a specific count or percentage.</p>
    #
    #   @return [String]
    #
    # @!attribute parameters
    #   <p>The resource type parameters.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateExperimentTemplateTargetInput = ::Struct.new(
      :resource_type,
      :resource_arns,
      :resource_tags,
      :filters,
      :selection_mode,
      :parameters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified input is not valid, or fails to satisfy the constraints for the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
