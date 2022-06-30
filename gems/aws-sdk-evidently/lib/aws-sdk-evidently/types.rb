# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Evidently
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

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature being evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute requests
    #   <p>An array of structures, where each structure assigns a feature variation to one user session.</p>
    #
    #   @return [Array<EvaluationRequest>]
    #
    BatchEvaluateFeatureInput = ::Struct.new(
      :project,
      :requests,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute results
    #   <p>An array of structures, where each structure displays the results of one feature evaluation
    #          assignment to one user session.</p>
    #
    #   @return [Array<EvaluationResult>]
    #
    BatchEvaluateFeatureOutput = ::Struct.new(
      :results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeDirectionEnum
    #
    module ChangeDirectionEnum
      # No documentation available.
      #
      INCREASE = "INCREASE"

      # No documentation available.
      #
      DECREASE = "DECREASE"
    end

    # <p>A structure containing the CloudWatch Logs log group where the project stores evaluation
    #        events.</p>
    #
    # @!attribute log_group
    #   <p>The name of the log group where the project stores evaluation
    #          events.</p>
    #
    #   @return [String]
    #
    CloudWatchLogsDestination = ::Struct.new(
      :log_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing the CloudWatch Logs log group where the project stores evaluation
    #        events.</p>
    #
    # @!attribute log_group
    #   <p>The name of the log group where the project stores evaluation
    #          events.</p>
    #
    #   @return [String]
    #
    CloudWatchLogsDestinationConfig = ::Struct.new(
      :log_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A resource was in an inconsistent state during an update or a deletion.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
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

    # @!attribute project
    #   <p>The name or ARN of the project that you want to create the new experiment in.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name for the new experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute treatments
    #   <p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>
    #
    #   @return [Array<TreatmentConfig>]
    #
    # @!attribute metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #
    #   @return [Array<MetricGoalConfig>]
    #
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #          to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #          and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #          the experiment name as the <code>randomizationSalt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 10,000 to allocate 10% of the available audience.</p>
    #
    #   @return [Integer]
    #
    # @!attribute online_ab_config
    #   <p>A structure that contains the configuration of which variation to use as the "control"
    #         version. tThe "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #
    #   @return [OnlineAbConfig]
    #
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the experiment.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with an experiment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateExperimentInput = ::Struct.new(
      :project,
      :name,
      :description,
      :treatments,
      :metric_goals,
      :randomization_salt,
      :sampling_rate,
      :online_ab_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment
    #   <p>A structure containing the configuration details of the experiment
    #          that you created.</p>
    #
    #   @return [Experiment]
    #
    CreateExperimentOutput = ::Struct.new(
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that is to contain the new feature.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the new feature.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any
    #         ongoing launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default
    #         variation to all users instead.</p>
    #
    #   Enum, one of: ["ALL_RULES", "DEFAULT_VARIATION"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute variations
    #   <p>An array of structures that contain the configuration of the feature's different variations.</p>
    #
    #   @return [Array<VariationConfig>]
    #
    # @!attribute default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #            <p>This variation must also be listed in the <code>variations</code> structure.</p>
    #            <p>If you omit <code>defaultVariation</code>, the first variation listed in
    #          the <code>variations</code> structure is used as the default variation.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the feature.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with a feature.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute entity_overrides
    #   <p>Specify users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFeatureInput = ::Struct.new(
      :project,
      :name,
      :evaluation_strategy,
      :description,
      :variations,
      :default_variation,
      :tags,
      :entity_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature
    #   <p>A structure that contains information about the new feature.</p>
    #
    #   @return [Feature]
    #
    CreateFeatureOutput = ::Struct.new(
      :feature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to create the launch in.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the new launch.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #
    #   @return [ScheduledSplitsLaunchConfig]
    #
    # @!attribute metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor
    #          the launch performance.</p>
    #
    #   @return [Array<MetricMonitorConfig>]
    #
    # @!attribute groups
    #   <p>An array of structures that contains the feature and variations that are to be used for the launch.</p>
    #
    #   @return [Array<LaunchGroupConfig>]
    #
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #           to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #           and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationsSalt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the launch.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with a launch.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateLaunchInput = ::Struct.new(
      :project,
      :name,
      :description,
      :scheduled_splits_config,
      :metric_monitors,
      :groups,
      :randomization_salt,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch
    #   <p>A structure that contains the configuration of the launch that was created.</p>
    #
    #   @return [Launch]
    #
    CreateLaunchOutput = ::Struct.new(
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name for the project.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute data_delivery
    #   <p>A structure that contains information about where Evidently is to store
    #         evaluation events for longer term storage, if you choose to do so. If you choose
    #         not to store these events, Evidently deletes them after using them to produce metrics and other experiment
    #         results that you can view.</p>
    #
    #   @return [ProjectDataDeliveryConfig]
    #
    # @!attribute tags
    #   <p>Assigns one or more tags (key-value pairs) to the project.</p>
    #            <p>Tags can help you organize and categorize your resources. You can also use them to scope user
    #          permissions by granting a user
    #          permission to access or change only resources with certain tag values.</p>
    #            <p>Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters.</p>
    #
    #            <p>You can associate as many as 50 tags with a project.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateProjectInput = ::Struct.new(
      :name,
      :description,
      :data_delivery,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>A structure that contains information about the created project.</p>
    #
    #   @return [Project]
    #
    CreateProjectOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment
    #   <p>The name of the experiment to delete.</p>
    #
    #   @return [String]
    #
    DeleteExperimentInput = ::Struct.new(
      :project,
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteExperimentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The name of the feature to delete.</p>
    #
    #   @return [String]
    #
    DeleteFeatureInput = ::Struct.new(
      :project,
      :feature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteFeatureOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute launch
    #   <p>The name of the launch to delete.</p>
    #
    #   @return [String]
    #
    DeleteLaunchInput = ::Struct.new(
      :project,
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteLaunchOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to delete.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteProjectOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains this feature.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The name of the feature being evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>An internal ID that represents a unique user of the application. This
    #           <code>entityID</code> is checked against any override rules assigned for this
    #         feature.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_context
    #   <p>A JSON block of attributes that you can optionally pass in. This JSON block is included
    #         in the evaluation events sent to Evidently from the user session. </p>
    #
    #   @return [String]
    #
    EvaluateFeatureInput = ::Struct.new(
      :project,
      :feature,
      :entity_id,
      :evaluation_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute variation
    #   <p>The name of the variation that was served to the user session.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value assigned to this variation to differentiate it from the other variations of this feature.</p>
    #
    #   @return [VariableValue]
    #
    # @!attribute reason
    #   <p>Specifies the reason that the user session was assigned this variation. Possible values
    #         include <code>DEFAULT</code>, meaning the user was served the default variation;
    #           <code>LAUNCH_RULE_MATCH</code>, if the user session was enrolled in a launch;
    #           <code>EXPERIMENT_RULE_MATCH</code>, if the user session was enrolled in an experiment; or
    #           <code>ENTITY_OVERRIDES_MATCH</code>, if the user's <code>entityId</code> matches an override
    #         rule.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>If this user was assigned to a launch or experiment, this field lists the launch or experiment name.</p>
    #
    #   @return [String]
    #
    EvaluateFeatureOutput = ::Struct.new(
      :variation,
      :value,
      :reason,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure assigns a feature variation to one user session.</p>
    #
    # @!attribute feature
    #   <p>The name of the feature being evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>An internal ID that represents a unique user session of the application. This
    #           <code>entityID</code> is checked against any override rules assigned for this
    #         feature.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_context
    #   <p>A JSON block of attributes that you can optionally pass in. This JSON block is included
    #          in the evaluation events sent to Evidently from the user session. </p>
    #
    #   @return [String]
    #
    EvaluationRequest = ::Struct.new(
      :feature,
      :entity_id,
      :evaluation_context,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure displays the results of one feature evaluation assignment to one user
    #       session.</p>
    #
    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature being evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The name of the feature being evaluated.</p>
    #
    #   @return [String]
    #
    # @!attribute variation
    #   <p>The name of the variation that was served to the user session.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value assigned to this variation to differentiate it from the other variations of this feature.</p>
    #
    #   @return [VariableValue]
    #
    # @!attribute entity_id
    #   <p>An internal ID that represents a unique user session of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>Specifies the reason that the user session was assigned this variation. Possible values
    #         include <code>DEFAULT</code>, meaning the user was served the default variation;
    #           <code>LAUNCH_RULE_MATCH</code>, if the user session was enrolled in a launch; or
    #           <code>EXPERIMENT_RULE_MATCH</code>, if the user session was enrolled in an
    #         experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>If this user was assigned to a launch or experiment, this field lists the launch or experiment name.</p>
    #
    #   @return [String]
    #
    EvaluationResult = ::Struct.new(
      :project,
      :feature,
      :variation,
      :value,
      :entity_id,
      :reason,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the information about an evaluation rule for this feature,
    #       if it is used in a launch or experiment.</p>
    #
    # @!attribute name
    #   <p>The name of the experiment or launch.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>This value is <code>aws.evidently.splits</code> if this is an evaluation rule for a launch, and it is
    #          <code>aws.evidently.onlineab</code> if this is an evaluation rule for an experiment.</p>
    #
    #   @return [String]
    #
    EvaluationRule = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the information about one evaluation event or custom event sent to Evidently.
    #         This is a JSON payload. If this event specifies a pre-defined event type, the payload must follow the
    #         defined event schema.</p>
    #
    # @!attribute timestamp
    #   <p>The timestamp of the event.</p>
    #
    #   @return [Time]
    #
    # @!attribute type
    #   <p>
    #               <code>aws.evidently.evaluation</code> specifies an evaluation event, which determines
    #         which feature variation that a user sees. <code>aws.evidently.custom</code> specifies a custom
    #         event, which generates metrics from user actions such as clicks and checkouts.</p>
    #
    #   Enum, one of: ["aws.evidently.evaluation", "aws.evidently.custom"]
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The event data.</p>
    #
    #   @return [String]
    #
    Event = ::Struct.new(
      :timestamp,
      :type,
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EventType
    #
    module EventType
      # No documentation available.
      #
      EVALUATION = "aws.evidently.evaluation"

      # No documentation available.
      #
      CUSTOM = "aws.evidently.custom"
    end

    # <p>A structure containing the configuration details of an experiment.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute project
    #   <p>The name or ARN of the project that contains this experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of the experiment.</p>
    #
    #   Enum, one of: ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>If the experiment was stopped, this is the string that was entered by the person who
    #         stopped the experiment, to explain why it was stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the experiment is first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the experiment was most recently updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute schedule
    #   <p>A structure that contains the time and date that Evidently completed the analysis of the experiment.</p>
    #
    #   @return [ExperimentSchedule]
    #
    # @!attribute execution
    #   <p>A structure that contains the date and time that the experiment started and ended.</p>
    #
    #   @return [ExperimentExecution]
    #
    # @!attribute treatments
    #   <p>An array of structures that describe the configuration of each feature variation used in the experiment.</p>
    #
    #   @return [Array<Treatment>]
    #
    # @!attribute metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #
    #   @return [Array<MetricGoal>]
    #
    # @!attribute randomization_salt
    #   <p>This value is used when Evidently assigns a particular user session to the experiment. It
    #         helps create a randomization ID to determine which variation the user session is served. This
    #         randomization ID is a combination of the entity ID and <code>randomizationSalt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sampling_rate
    #   <p>In thousandths of a percent, the amount of the available audience that is allocated to this experiment.
    #         The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent, so a value of 10,000 is 10% of the available audience.</p>
    #
    #   @return [Integer]
    #
    # @!attribute type
    #   <p>The type of this experiment. Currently, this value must be <code>aws.experiment.onlineab</code>.</p>
    #
    #   Enum, one of: ["aws.evidently.onlineab"]
    #
    #   @return [String]
    #
    # @!attribute online_ab_definition
    #   <p>A structure that contains the configuration of which variation to use as the "control"
    #         version. The "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #
    #   @return [OnlineAbDefinition]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this experiment.</p>
    #
    #   @return [Hash<String, String>]
    #
    Experiment = ::Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :status_reason,
      :description,
      :created_time,
      :last_updated_time,
      :schedule,
      :execution,
      :treatments,
      :metric_goals,
      :randomization_salt,
      :sampling_rate,
      :type,
      :online_ab_definition,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.sampling_rate ||= 0
      end

    end

    # Includes enum constants for ExperimentBaseStat
    #
    module ExperimentBaseStat
      # No documentation available.
      #
      MEAN = "Mean"
    end

    # <p>This structure contains the date and time that the experiment started and ended.</p>
    #
    # @!attribute started_time
    #   <p>The date and time that the experiment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_time
    #   <p>The date and time that the experiment ended.</p>
    #
    #   @return [Time]
    #
    ExperimentExecution = ::Struct.new(
      :started_time,
      :ended_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains results of an experiment.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the metric that is analyzed in this experiment report.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_name
    #   <p>The name of the variation that this report pertains to.</p>
    #
    #   @return [String]
    #
    # @!attribute report_name
    #   <p>The type of analysis used for this report.</p>
    #
    #   Enum, one of: ["BayesianInference"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the report.</p>
    #
    #   @return [String]
    #
    ExperimentReport = ::Struct.new(
      :metric_name,
      :treatment_name,
      :report_name,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExperimentReportName
    #
    module ExperimentReportName
      # No documentation available.
      #
      BAYESIAN_INFERENCE = "BayesianInference"
    end

    # Includes enum constants for ExperimentResultRequestType
    #
    module ExperimentResultRequestType
      # No documentation available.
      #
      BASE_STAT = "BaseStat"

      # No documentation available.
      #
      TREATMENT_EFFECT = "TreatmentEffect"

      # No documentation available.
      #
      CONFIDENCE_INTERVAL = "ConfidenceInterval"

      # No documentation available.
      #
      P_VALUE = "PValue"
    end

    # Includes enum constants for ExperimentResultResponseType
    #
    module ExperimentResultResponseType
      # No documentation available.
      #
      MEAN = "Mean"

      # No documentation available.
      #
      TREATMENT_EFFECT = "TreatmentEffect"

      # No documentation available.
      #
      CONFIDENCE_INTERVAL_UPPERBOUND = "ConfidenceIntervalUpperBound"

      # No documentation available.
      #
      CONFIDENCE_INTERVAL_LOWERBOUND = "ConfidenceIntervalLowerBound"

      # No documentation available.
      #
      P_VALUE = "PValue"
    end

    # <p>A structure that contains experiment results for one metric that is monitored in
    #       the experiment.</p>
    #
    # @!attribute metric_name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_name
    #   <p>The treatment, or variation, that returned the <code>values</code> in this structure.</p>
    #
    #   @return [String]
    #
    # @!attribute result_stat
    #   <p>The experiment statistic that these results pertain to.</p>
    #
    #   Enum, one of: ["Mean", "TreatmentEffect", "ConfidenceIntervalUpperBound", "ConfidenceIntervalLowerBound", "PValue"]
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>The values for the <code>metricName</code> that were recorded in the experiment.</p>
    #
    #   @return [Array<Float>]
    #
    ExperimentResultsData = ::Struct.new(
      :metric_name,
      :treatment_name,
      :result_stat,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains the time and date that Evidently completed the analysis of the experiment.</p>
    #
    # @!attribute analysis_complete_time
    #   <p>The time and date that Evidently completed the analysis of the experiment.</p>
    #
    #   @return [Time]
    #
    ExperimentSchedule = ::Struct.new(
      :analysis_complete_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExperimentStatus
    #
    module ExperimentStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for ExperimentStopDesiredState
    #
    module ExperimentStopDesiredState
      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for ExperimentType
    #
    module ExperimentType
      # No documentation available.
      #
      ONLINE_AB_EXPERIMENT = "aws.evidently.onlineab"
    end

    # <p>This structure contains information about one Evidently feature in your account.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of the feature.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the feature is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the feature was most recently updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute description
    #   <p>The description of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_strategy
    #   <p>If this value is <code>ALL_RULES</code>, the traffic allocation specified by
    #         any ongoing launches or experiments is being used. If this is <code>DEFAULT_VARIATION</code>,
    #         the default variation is being served to all users.</p>
    #
    #   Enum, one of: ["ALL_RULES", "DEFAULT_VARIATION"]
    #
    #   @return [String]
    #
    # @!attribute value_type
    #   <p>Defines the type of value used to define the different feature variations.
    #         For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-Evidently-variationtypes.html">Variation types</a>
    #            </p>
    #
    #   Enum, one of: ["STRING", "LONG", "DOUBLE", "BOOLEAN"]
    #
    #   @return [String]
    #
    # @!attribute variations
    #   <p>An array of structures that contain the configuration of the feature's different variations.</p>
    #
    #   @return [Array<Variation>]
    #
    # @!attribute default_variation
    #   <p>The name of the variation that is used as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #            <p>This variation must also be listed in the <code>variations</code> structure.</p>
    #            <p>If you omit <code>defaultVariation</code>, the first variation listed in
    #       the <code>variations</code> structure is used as the default variation.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_rules
    #   <p>An array of structures that define the evaluation rules for the feature.</p>
    #
    #   @return [Array<EvaluationRule>]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this feature.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute entity_overrides
    #   <p>A set of key-value pairs  that specify users who should always be served a specific
    #         variation of a feature. Each key specifies a user using their user ID, account ID, or some
    #         other identifier. The value specifies the name of the variation that the user is to be
    #         served.</p>
    #            <p>For the override to be successful, the value of the key must match the <code>entityId</code> used
    #         in the <a href="https://docs.aws.amazon.com/cloudwatchevidently/latest/APIReference/API_EvaluateFeature.html">EvaluateFeature</a> operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    Feature = ::Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :created_time,
      :last_updated_time,
      :description,
      :evaluation_strategy,
      :value_type,
      :variations,
      :default_variation,
      :evaluation_rules,
      :tags,
      :entity_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FeatureEvaluationStrategy
    #
    module FeatureEvaluationStrategy
      # No documentation available.
      #
      ALL_RULES = "ALL_RULES"

      # No documentation available.
      #
      DEFAULT_VARIATION = "DEFAULT_VARIATION"
    end

    # Includes enum constants for FeatureStatus
    #
    module FeatureStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>This structure contains information about one Evidently feature in your account.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of the feature.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the feature is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the feature was most recently updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute evaluation_strategy
    #   <p>If this value is <code>ALL_RULES</code>, the traffic allocation specified by
    #         any ongoing launches or experiments is being used. If this is <code>DEFAULT_VARIATION</code>,
    #         the default variation is being served to all users.</p>
    #
    #   Enum, one of: ["ALL_RULES", "DEFAULT_VARIATION"]
    #
    #   @return [String]
    #
    # @!attribute evaluation_rules
    #   <p>An array of structures that define</p>
    #
    #   @return [Array<EvaluationRule>]
    #
    # @!attribute default_variation
    #   <p>The name of the variation that is used as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this feature.</p>
    #
    #   @return [Hash<String, String>]
    #
    FeatureSummary = ::Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :created_time,
      :last_updated_time,
      :evaluation_strategy,
      :evaluation_rules,
      :default_variation,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment
    #   <p>The name of the experiment that you want to see the details of.</p>
    #
    #   @return [String]
    #
    GetExperimentInput = ::Struct.new(
      :project,
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment
    #   <p>A structure containing the configuration details of the experiment.</p>
    #
    #   @return [Experiment]
    #
    GetExperimentOutput = ::Struct.new(
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment that you want to see the results of.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment
    #   <p>The name of the experiment to retrieve the results of.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time that the experiment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time that the experiment ended, if it is completed. This must be no longer than 30 days
    #         after the experiment start time.</p>
    #
    #   @return [Time]
    #
    # @!attribute metric_names
    #   <p>The names of the experiment metrics that you want to see the results of.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute treatment_names
    #   <p>The names of the experiment treatments that you want to see the results for.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute base_stat
    #   <p>The statistic used to calculate experiment results. Currently the only valid value is <code>mean</code>,
    #         which uses the mean of the collected values as the statistic.</p>
    #
    #   Enum, one of: ["Mean"]
    #
    #   @return [String]
    #
    # @!attribute result_stats
    #   <p>The statistics that you want to see in the returned results.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PValue</code> specifies to use p-values for the results. A p-value is used in hypothesis
    #             testing to measure how often you are willing to make a mistake in rejecting the null
    #             hypothesis. A general practice is to reject the null hypothesis and declare that the
    #             results are statistically significant when the p-value is less than 0.05.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ConfidenceInterval</code> specifies a confidence interval for the results. The
    #             confidence interval represents the range of values for the chosen metric that is likely to
    #             contain the true difference between the <code>baseStat</code> of a variation and the
    #             baseline. Evidently returns the 95% confidence interval. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>TreatmentEffect</code> is the difference in the statistic specified by the
    #               <code>baseStat</code> parameter between each variation and the default variation. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BaseStat</code> returns the statistical values collected for the metric for each
    #             variation. The statistic uses the same statistic specified in the <code>baseStat</code>
    #             parameter. Therefore, if <code>baseStat</code> is <code>mean</code>, this returns the mean
    #             of the values collected for each variation.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<String>]
    #
    # @!attribute report_names
    #   <p>The names of the report types that you want to see. Currently, <code>BayesianInference</code>
    #          is the only valid value.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute period
    #   <p>In seconds, the amount of time to aggregate results together. </p>
    #
    #   @return [Integer]
    #
    GetExperimentResultsInput = ::Struct.new(
      :project,
      :experiment,
      :start_time,
      :end_time,
      :metric_names,
      :treatment_names,
      :base_stat,
      :result_stats,
      :report_names,
      :period,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.period ||= 0
      end

    end

    # @!attribute results_data
    #   <p>An array of structures that include experiment results including metric names and values. </p>
    #
    #   @return [Array<ExperimentResultsData>]
    #
    # @!attribute reports
    #   <p>An array of structures that include the reports that you requested.</p>
    #
    #   @return [Array<ExperimentReport>]
    #
    # @!attribute timestamps
    #   <p>The timestamps of each result returned.</p>
    #
    #   @return [Array<Time>]
    #
    # @!attribute details
    #   <p>If the experiment doesn't yet have enough events to provide valid results, this
    #         field is returned with the message <code>Not enough events to generate results</code>. If there are
    #         enough events to provide valid results, this field is not returned.</p>
    #
    #   @return [String]
    #
    GetExperimentResultsOutput = ::Struct.new(
      :results_data,
      :reports,
      :timestamps,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The name of the feature that you want to retrieve information for.</p>
    #
    #   @return [String]
    #
    GetFeatureInput = ::Struct.new(
      :project,
      :feature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature
    #   <p>A structure containing the configuration details of the feature.</p>
    #
    #   @return [Feature]
    #
    GetFeatureOutput = ::Struct.new(
      :feature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute launch
    #   <p>The name of the launch that you want to see the details of.</p>
    #
    #   @return [String]
    #
    GetLaunchInput = ::Struct.new(
      :project,
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch
    #   <p>A structure containing the configuration details of the launch.</p>
    #
    #   @return [Launch]
    #
    GetLaunchOutput = ::Struct.new(
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to see the details of.</p>
    #
    #   @return [String]
    #
    GetProjectInput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>A structure containing the configuration details of the project.</p>
    #
    #   @return [Project]
    #
    GetProjectOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unexpected error while processing the request. Retry the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains the configuration details of one Evidently launch.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of the launch.</p>
    #
    #   Enum, one of: ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute status_reason
    #   <p>If the launch was stopped, this is the string that was entered by the person who
    #         stopped the launch, to explain why it was stopped.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the launch is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the launch was most recently updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute execution
    #   <p>A structure that contains information about the start and end times of the launch.</p>
    #
    #   @return [LaunchExecution]
    #
    # @!attribute groups
    #   <p>An array of structures that define the feature variations that are being used in the launch.</p>
    #
    #   @return [Array<LaunchGroup>]
    #
    # @!attribute metric_monitors
    #   <p>An array of structures that define the metrics that are being used to monitor the launch performance.</p>
    #
    #   @return [Array<MetricMonitor>]
    #
    # @!attribute randomization_salt
    #   <p>This value is used when Evidently assigns a particular user session to the launch, to help create a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of launch.</p>
    #
    #   Enum, one of: ["aws.evidently.splits"]
    #
    #   @return [String]
    #
    # @!attribute scheduled_splits_definition
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #
    #   @return [ScheduledSplitsLaunchDefinition]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this launch.</p>
    #
    #   @return [Hash<String, String>]
    #
    Launch = ::Struct.new(
      :arn,
      :name,
      :project,
      :status,
      :status_reason,
      :description,
      :created_time,
      :last_updated_time,
      :execution,
      :groups,
      :metric_monitors,
      :randomization_salt,
      :type,
      :scheduled_splits_definition,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains information about the start and end times of the launch.</p>
    #
    # @!attribute started_time
    #   <p>The date and time that the launch started.</p>
    #
    #   @return [Time]
    #
    # @!attribute ended_time
    #   <p>The date and time that the launch ended.</p>
    #
    #   @return [Time]
    #
    LaunchExecution = ::Struct.new(
      :started_time,
      :ended_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines one launch group in a launch. A launch group is a variation of the feature
    #       that you are including in the launch.</p>
    #
    # @!attribute name
    #   <p>The name of the launch group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the launch group.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_variations
    #   <p>The feature variation for this launch group. This is a key-value pair.</p>
    #
    #   @return [Hash<String, String>]
    #
    LaunchGroup = ::Struct.new(
      :name,
      :description,
      :feature_variations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines one launch group in a launch. A launch group is a variation of
    #       the feature that you are including in the launch.</p>
    #
    # @!attribute name
    #   <p>A name for this launch group.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the launch group.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The feature that this launch is using.</p>
    #
    #   @return [String]
    #
    # @!attribute variation
    #   <p>The feature variation to use for this launch group.</p>
    #
    #   @return [String]
    #
    LaunchGroupConfig = ::Struct.new(
      :name,
      :description,
      :feature,
      :variation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LaunchStatus
    #
    module LaunchStatus
      # No documentation available.
      #
      CREATED = "CREATED"

      # No documentation available.
      #
      UPDATING = "UPDATING"

      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for LaunchStopDesiredState
    #
    module LaunchStopDesiredState
      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # Includes enum constants for LaunchType
    #
    module LaunchType
      # No documentation available.
      #
      SCHEDULED_SPLITS_LAUNCH = "aws.evidently.splits"
    end

    # @!attribute project
    #   <p>The name or ARN of the project to return the experiment list from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListExperiments</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Use this optional parameter to limit the returned results to only the experiments with the status that you specify here.</p>
    #
    #   Enum, one of: ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    ListExperimentsInput = ::Struct.new(
      :project,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiments
    #   <p>An array of structures that contain the configuration details of the experiments in the
    #         specified project.</p>
    #
    #   @return [Array<Experiment>]
    #
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListExperiments</code> operation to return
    #          the next set of results.</p>
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

    # @!attribute project
    #   <p>The name or ARN of the project to return the feature list from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListFeatures</code> operation.</p>
    #
    #   @return [String]
    #
    ListFeaturesInput = ::Struct.new(
      :project,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute features
    #   <p>An array of structures that contain the configuration details of the features in the
    #          specified project.</p>
    #
    #   @return [Array<FeatureSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListFeatures</code> operation to return
    #          the next set of results.</p>
    #
    #   @return [String]
    #
    ListFeaturesOutput = ::Struct.new(
      :features,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to return the launch list from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListLaunches</code> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Use this optional parameter to limit the returned results to only the launches with the status that you specify here.</p>
    #
    #   Enum, one of: ["CREATED", "UPDATING", "RUNNING", "COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    ListLaunchesInput = ::Struct.new(
      :project,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launches
    #   <p>An array of structures that contain the configuration details of the launches in the
    #          specified project.</p>
    #
    #   @return [Array<Launch>]
    #
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListLaunches</code> operation to return
    #          the next set of results.</p>
    #
    #   @return [String]
    #
    ListLaunchesOutput = ::Struct.new(
      :launches,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to include in the response.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use when requesting the next set of results. You received this token from a previous
    #          <code>ListProjects</code> operation.</p>
    #
    #   @return [String]
    #
    ListProjectsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute projects
    #   <p>An array of structures that contain the configuration details of the projects in the Region.</p>
    #
    #   @return [Array<ProjectSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use in a subsequent <code>ListProjects</code> operation to return
    #          the next set of results.</p>
    #
    #   @return [String]
    #
    ListProjectsOutput = ::Struct.new(
      :projects,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource that you want to see the tags of.</p>
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
    #   <p>The list of tag keys and values associated with the resource you specified.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure defines a metric that is being used to evaluate the variations
    #       during a launch or experiment.</p>
    #
    # @!attribute name
    #   <p>The name of the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id_key
    #   <p>The entity, such as a user or session, that does an action that causes a metric
    #         value to be recorded.</p>
    #
    #   @return [String]
    #
    # @!attribute value_key
    #   <p>The value that is tracked to produce the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The EventBridge event pattern that defines how the metric is recorded.</p>
    #            <p>For more information about EventBridge event patterns, see
    #          <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute unit_label
    #   <p>The label for the units that the metric is measuring.</p>
    #
    #   @return [String]
    #
    MetricDefinition = ::Struct.new(
      :name,
      :entity_id_key,
      :value_key,
      :event_pattern,
      :unit_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure defines a metric that you want to use to evaluate the variations
    #        during a launch or experiment.</p>
    #
    # @!attribute name
    #   <p>A name for the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id_key
    #   <p>The entity, such as a user or session, that does an action that causes a metric
    #          value to be recorded. An example is <code>userDetails.userID</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value_key
    #   <p>The value that is tracked to produce the metric.</p>
    #
    #   @return [String]
    #
    # @!attribute event_pattern
    #   <p>The EventBridge event pattern that defines how the metric is recorded.</p>
    #            <p>For more information about EventBridge event patterns, see
    #          <a href="https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-event-patterns.html">Amazon EventBridge event patterns</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute unit_label
    #   <p>A label for the units that the metric is measuring.</p>
    #
    #   @return [String]
    #
    MetricDefinitionConfig = ::Struct.new(
      :name,
      :entity_id_key,
      :value_key,
      :event_pattern,
      :unit_label,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that tells Evidently whether higher or lower values are desired for a metric that is
    #        used in an experiment.</p>
    #
    # @!attribute metric_definition
    #   <p>A structure that contains details about the metric.</p>
    #
    #   @return [MetricDefinition]
    #
    # @!attribute desired_change
    #   <p>
    #               <code>INCREASE</code> means that a variation with a higher number for this metric is performing
    #         better.</p>
    #            <p>
    #               <code>DECREASE</code> means that a variation with a lower number for this metric is performing
    #        better.</p>
    #
    #   Enum, one of: ["INCREASE", "DECREASE"]
    #
    #   @return [String]
    #
    MetricGoal = ::Struct.new(
      :metric_definition,
      :desired_change,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Use this structure to tell Evidently whether higher or lower values are desired for a metric that is
    #        used in an experiment.</p>
    #
    # @!attribute metric_definition
    #   <p>A structure that contains details about the metric.</p>
    #
    #   @return [MetricDefinitionConfig]
    #
    # @!attribute desired_change
    #   <p>
    #               <code>INCREASE</code> means that a variation with a higher number for this metric is performing
    #          better.</p>
    #            <p>
    #               <code>DECREASE</code> means that a variation with a lower number for this metric is performing
    #          better.</p>
    #
    #   Enum, one of: ["INCREASE", "DECREASE"]
    #
    #   @return [String]
    #
    MetricGoalConfig = ::Struct.new(
      :metric_definition,
      :desired_change,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines a metric to be used to monitor performance of the variations during a launch.</p>
    #
    # @!attribute metric_definition
    #   <p>A structure that defines the metric.</p>
    #
    #   @return [MetricDefinition]
    #
    MetricMonitor = ::Struct.new(
      :metric_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines a metric to be used to monitor performance of the variations during a launch.</p>
    #
    # @!attribute metric_definition
    #   <p>A structure that defines the metric.</p>
    #
    #   @return [MetricDefinitionConfig]
    #
    MetricMonitorConfig = ::Struct.new(
      :metric_definition,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration of which variation to use as the "control"
    #       version. The "control" version  is used for comparison with other variations. This structure
    #       also specifies how much experiment traffic is allocated to each variation.</p>
    #
    # @!attribute control_treatment_name
    #   <p>The name of the variation that is to be the default variation that the other variations are compared to.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_weights
    #   <p>A set of key-value pairs. The keys are variation names, and the values are the portion
    #         of experiment traffic to be assigned to that variation. Specify the traffic portion in
    #         thousandths of a percent, so 20,000 for a variation would allocate 20% of the experiment
    #         traffic to that variation.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    OnlineAbConfig = ::Struct.new(
      :control_treatment_name,
      :treatment_weights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains the configuration of which variation to use as the "control"
    #       version. The "control" version is used for comparison with other variations. This structure
    #       also specifies how much experiment traffic is allocated to each variation.</p>
    #
    # @!attribute control_treatment_name
    #   <p>The name of the variation that is the default variation that the other variations are compared to.</p>
    #
    #   @return [String]
    #
    # @!attribute treatment_weights
    #   <p>A set of key-value pairs.  The keys are variation names, and the values are the portion
    #         of experiment traffic to be assigned to that variation. The traffic portion is specified in
    #         thousandths of a percent, so 20,000 for a variation would allocate 20% of the experiment
    #         traffic to that variation.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    OnlineAbDefinition = ::Struct.new(
      :control_treatment_name,
      :treatment_weights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure defines a project, which is the logical object in Evidently that can contain features, launches, and
    #       experiments. Use projects to group similar features together.</p>
    #
    # @!attribute arn
    #   <p>The name or ARN of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of the project.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The user-entered description of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the project is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the project was most recently updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute feature_count
    #   <p>The number of features currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_count
    #   <p>The number of launches currently in the project. This includes all launches that have been created
    #          and not deleted, whether they are ongoing or not.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_launch_count
    #   <p>The number of ongoing launches currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute experiment_count
    #   <p>The number of experiments currently in the project. This includes all experiments that have been created
    #         and not deleted, whether they are ongoing or not.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_experiment_count
    #   <p>The number of ongoing experiments currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute data_delivery
    #   <p>A structure that contains information about where Evidently is to store
    #          evaluation events for longer term storage.</p>
    #
    #   @return [ProjectDataDelivery]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this project.</p>
    #
    #   @return [Hash<String, String>]
    #
    Project = ::Struct.new(
      :arn,
      :name,
      :status,
      :description,
      :created_time,
      :last_updated_time,
      :feature_count,
      :launch_count,
      :active_launch_count,
      :experiment_count,
      :active_experiment_count,
      :data_delivery,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about where Evidently is to store
    #        evaluation events for longer term storage.</p>
    #
    # @!attribute s3_destination
    #   <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #          stores the bucket name and bucket prefix.</p>
    #
    #   @return [S3Destination]
    #
    # @!attribute cloud_watch_logs
    #   <p>If the project stores evaluation events in CloudWatch Logs, this structure
    #         stores the log group name.</p>
    #
    #   @return [CloudWatchLogsDestination]
    #
    ProjectDataDelivery = ::Struct.new(
      :s3_destination,
      :cloud_watch_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains information about where Evidently is to store
    #        evaluation events for longer term storage.</p>
    #
    # @!attribute s3_destination
    #   <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #          stores the bucket name and bucket prefix.</p>
    #
    #   @return [S3DestinationConfig]
    #
    # @!attribute cloud_watch_logs
    #   <p>If the project stores evaluation events in CloudWatch Logs, this structure
    #          stores the log group name.</p>
    #
    #   @return [CloudWatchLogsDestinationConfig]
    #
    ProjectDataDeliveryConfig = ::Struct.new(
      :s3_destination,
      :cloud_watch_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProjectStatus
    #
    module ProjectStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      UPDATING = "UPDATING"
    end

    # <p>A structure that contains configuration information about an Evidently project.</p>
    #
    # @!attribute arn
    #   <p>The name or ARN of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current state of the project.</p>
    #
    #   Enum, one of: ["AVAILABLE", "UPDATING"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the project is created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time that the project was most recently updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute feature_count
    #   <p>The number of features currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute launch_count
    #   <p>The number of launches currently in the project, including launches that are ongoing, completed, and not started yet.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_launch_count
    #   <p>The number of ongoing launches currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute experiment_count
    #   <p>The number of experiments currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute active_experiment_count
    #   <p>The number of experiments currently in the project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute tags
    #   <p>The list of tag keys and values associated with this project.</p>
    #
    #   @return [Hash<String, String>]
    #
    ProjectSummary = ::Struct.new(
      :arn,
      :name,
      :status,
      :description,
      :created_time,
      :last_updated_time,
      :feature_count,
      :launch_count,
      :active_launch_count,
      :experiment_count,
      :active_experiment_count,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to write the events to.</p>
    #
    #   @return [String]
    #
    # @!attribute events
    #   <p>An array of event structures that contain the performance data that is being sent to
    #         Evidently.</p>
    #
    #   @return [Array<Event>]
    #
    PutProjectEventsInput = ::Struct.new(
      :project,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute failed_event_count
    #   <p>The number of events in the operation that could not be used by Evidently.</p>
    #
    #   @return [Integer]
    #
    # @!attribute event_results
    #   <p>A structure that contains Evidently's response to the sent events, including an event ID and
    #         error codes, if any.</p>
    #
    #   @return [Array<PutProjectEventsResultEntry>]
    #
    PutProjectEventsOutput = ::Struct.new(
      :failed_event_count,
      :event_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains Evidently's response to the sent events, including an event ID and error codes, if any. </p>
    #
    # @!attribute event_id
    #   <p>A unique ID assigned to this <code>PutProjectEvents</code> operation. </p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>If the <code>PutProjectEvents</code> operation has an error, the error code is returned
    #         here.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>If the <code>PutProjectEvents</code> operation has an error, the error message is
    #         returned here.</p>
    #
    #   @return [String]
    #
    PutProjectEventsResultEntry = ::Struct.new(
      :event_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request references a resource that does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
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

    # <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #        stores the bucket name and bucket prefix.</p>
    #
    # @!attribute bucket
    #   <p>The name of the bucket in which Evidently stores evaluation events.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The bucket prefix in which Evidently stores evaluation events.</p>
    #
    #   @return [String]
    #
    S3Destination = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If the project stores evaluation events in an Amazon S3 bucket, this structure
    #        stores the bucket name and bucket prefix.</p>
    #
    # @!attribute bucket
    #   <p>The name of the bucket in which Evidently stores evaluation events.</p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p>The bucket prefix in which Evidently stores evaluation events.</p>
    #
    #   @return [String]
    #
    S3DestinationConfig = ::Struct.new(
      :bucket,
      :prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure defines the traffic allocation percentages among the feature
    #        variations during one step of a launch, and the start time of that step.</p>
    #
    # @!attribute start_time
    #   <p>The date and time that this step of the launch starts.</p>
    #
    #   @return [Time]
    #
    # @!attribute group_weights
    #   <p>The traffic allocation percentages among the feature variations during one step of a
    #         launch. This is a set of key-value pairs.   The keys are variation names. The values represent
    #         the percentage of traffic to allocate to that variation during this step.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    ScheduledSplit = ::Struct.new(
      :start_time,
      :group_weights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure defines the traffic allocation percentages among the feature
    #        variations during one step of a launch, and the start time of that step.</p>
    #
    # @!attribute start_time
    #   <p>The date and time that this step of the launch starts.</p>
    #
    #   @return [Time]
    #
    # @!attribute group_weights
    #   <p>The traffic allocation percentages among the feature variations during one step of a
    #         launch. This is a set of key-value pairs. The keys are variation names. The values represent
    #         the percentage of traffic to allocate to that variation during this step.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    ScheduledSplitConfig = ::Struct.new(
      :start_time,
      :group_weights,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array of structures that define the traffic allocation percentages among the feature
    #       variations during each step of a launch. This also defines the start time of each step.</p>
    #
    # @!attribute steps
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch. This also defines the start time of each
    #         step.</p>
    #
    #   @return [Array<ScheduledSplitConfig>]
    #
    ScheduledSplitsLaunchConfig = ::Struct.new(
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array of structures that define the traffic allocation percentages among the feature
    #       variations during each step of a launch. This also defines the start time of each step.</p>
    #
    # @!attribute steps
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch. This also defines the start time of each
    #         step.</p>
    #
    #   @return [Array<ScheduledSplit>]
    #
    ScheduledSplitsLaunchDefinition = ::Struct.new(
      :steps,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request would cause a service quota to be exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The ID of the resource that caused the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of the resource that is associated with the error.</p>
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

    # <p>The service was unavailable. Retry the request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment to start.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment
    #   <p>The name of the experiment to start.</p>
    #
    #   @return [String]
    #
    # @!attribute analysis_complete_time
    #   <p>The date and time to end the experiment. This must be no more than 30 days after
    #         the experiment starts.</p>
    #
    #   @return [Time]
    #
    StartExperimentInput = ::Struct.new(
      :project,
      :experiment,
      :analysis_complete_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute started_time
    #   <p>A timestamp that indicates when the experiment started.</p>
    #
    #   @return [Time]
    #
    StartExperimentOutput = ::Struct.new(
      :started_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch to start.</p>
    #
    #   @return [String]
    #
    # @!attribute launch
    #   <p>The name of the launch to start.</p>
    #
    #   @return [String]
    #
    StartLaunchInput = ::Struct.new(
      :project,
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch
    #   <p>A structure that contains information about the launch that was started.</p>
    #
    #   @return [Launch]
    #
    StartLaunchOutput = ::Struct.new(
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment
    #   <p>The name of the experiment to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_state
    #   <p>Specify whether the experiment is to be considered <code>COMPLETED</code> or
    #         <code>CANCELLED</code> after it stops.</p>
    #
    #   Enum, one of: ["COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A string that describes why you are stopping the experiment.</p>
    #
    #   @return [String]
    #
    StopExperimentInput = ::Struct.new(
      :project,
      :experiment,
      :desired_state,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ended_time
    #   <p>The date and time that the experiment stopped.</p>
    #
    #   @return [Time]
    #
    StopExperimentOutput = ::Struct.new(
      :ended_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch that you want to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute launch
    #   <p>The name of the launch to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute desired_state
    #   <p>Specify whether to consider the launch as <code>COMPLETED</code> or
    #           <code>CANCELLED</code> after it stops.</p>
    #
    #   Enum, one of: ["COMPLETED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A string that describes why you are stopping the launch.</p>
    #
    #   @return [String]
    #
    StopLaunchInput = ::Struct.new(
      :project,
      :launch,
      :desired_state,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ended_time
    #   <p>The date and time that the launch stopped.</p>
    #
    #   @return [Time]
    #
    StopLaunchOutput = ::Struct.new(
      :ended_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're adding tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
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
    ThrottlingException = ::Struct.new(
      :message,
      :service_code,
      :quota_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines one treatment in an experiment. A treatment is a variation of the feature
    #        that you are including in the experiment.</p>
    #
    # @!attribute name
    #   <p>The name of this treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_variations
    #   <p>The feature variation used for this treatment. This is a key-value pair. The key is the
    #         feature name, and the value is the variation name.</p>
    #
    #   @return [Hash<String, String>]
    #
    Treatment = ::Struct.new(
      :name,
      :description,
      :feature_variations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that defines one treatment in an experiment. A treatment is a variation of the feature
    #       that you are including in the experiment.</p>
    #
    # @!attribute name
    #   <p>A name for this treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description for this treatment.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The feature that this experiment is testing.</p>
    #
    #   @return [String]
    #
    # @!attribute variation
    #   <p>The name of the variation to use as this treatment in the experiment.</p>
    #
    #   @return [String]
    #
    TreatmentConfig = ::Struct.new(
      :name,
      :description,
      :feature,
      :variation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch Evidently resource that you're removing tags from.</p>
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

    # @!attribute project
    #   <p>The name or ARN of the project that contains the experiment that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute experiment
    #   <p>The name of the experiment to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the experiment.</p>
    #
    #   @return [String]
    #
    # @!attribute treatments
    #   <p>An array of structures that define the variations being tested in the experiment.</p>
    #
    #   @return [Array<TreatmentConfig>]
    #
    # @!attribute metric_goals
    #   <p>An array of structures that defines the metrics used for the experiment, and whether a higher
    #         or lower value for each metric is the goal.</p>
    #
    #   @return [Array<MetricGoalConfig>]
    #
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to an experiment, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the experiment name as the <code>randomizationSalt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute sampling_rate
    #   <p>The portion of the available audience that you want to allocate to this experiment, in thousandths of a percent. The available audience
    #         is the total audience minus the audience that you have allocated to overrides or current launches of
    #         this feature.</p>
    #            <p>This is represented in thousandths of a percent. For example, specify 20,000 to allocate 20% of the available audience.</p>
    #
    #   @return [Integer]
    #
    # @!attribute online_ab_config
    #   <p>A structure that contains the configuration of which variation o use as the "control"
    #         version. The "control" version is used for comparison with other variations. This structure
    #         also specifies how much experiment traffic is allocated to each variation.</p>
    #
    #   @return [OnlineAbConfig]
    #
    UpdateExperimentInput = ::Struct.new(
      :project,
      :experiment,
      :description,
      :treatments,
      :metric_goals,
      :randomization_salt,
      :sampling_rate,
      :online_ab_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute experiment
    #   <p>A structure containing the configuration details of the experiment
    #       that was updated.</p>
    #
    #   @return [Experiment]
    #
    UpdateExperimentOutput = ::Struct.new(
      :experiment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the feature to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute feature
    #   <p>The name of the feature to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute evaluation_strategy
    #   <p>Specify <code>ALL_RULES</code> to activate the traffic allocation specified by any ongoing
    #         launches or experiments. Specify <code>DEFAULT_VARIATION</code> to serve the default variation
    #         to all users instead.</p>
    #
    #   Enum, one of: ["ALL_RULES", "DEFAULT_VARIATION"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the feature.</p>
    #
    #   @return [String]
    #
    # @!attribute add_or_update_variations
    #   <p>To update variation configurations for this feature, or add new ones, specify this structure.
    #         In this array, include any variations that you want to add or update. If the array includes a variation name that
    #         already exists for this feature, it is updated. If it includes a new variation name, it is added
    #         as a new variation.</p>
    #
    #   @return [Array<VariationConfig>]
    #
    # @!attribute remove_variations
    #   <p>Removes a variation from the feature. If the variation you specify doesn't exist, then this
    #       makes no change and does not report an error.</p>
    #            <p>This operation fails if you try to remove a variation that is part of an
    #       ongoing launch or experiment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute default_variation
    #   <p>The name of the variation to use as the default variation. The default
    #         variation is served to users who are not allocated to any ongoing launches
    #         or experiments of this feature.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_overrides
    #   <p>Specified users that should always be served a specific variation of a feature. Each user
    #         is specified by a key-value pair . For each key, specify a user by entering their user ID,
    #         account ID, or some other identifier. For the value, specify the name of the variation that
    #         they are to be served.</p>
    #
    #   @return [Hash<String, String>]
    #
    UpdateFeatureInput = ::Struct.new(
      :project,
      :feature,
      :evaluation_strategy,
      :description,
      :add_or_update_variations,
      :remove_variations,
      :default_variation,
      :entity_overrides,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature
    #   <p>A structure that contains information about the updated feature.</p>
    #
    #   @return [Feature]
    #
    UpdateFeatureOutput = ::Struct.new(
      :feature,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that contains the launch that you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute launch
    #   <p>The name of the launch that is to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description for the launch.</p>
    #
    #   @return [String]
    #
    # @!attribute groups
    #   <p>An array of structures that contains the feature and variations that are to be used for
    #         the launch.</p>
    #
    #   @return [Array<LaunchGroupConfig>]
    #
    # @!attribute metric_monitors
    #   <p>An array of structures that define the metrics that will be used to monitor
    #       the launch performance.</p>
    #
    #   @return [Array<MetricMonitorConfig>]
    #
    # @!attribute randomization_salt
    #   <p>When Evidently assigns a particular user session to a launch, it must use a randomization ID
    #         to determine which variation the user session is served. This randomization ID is a combination of the entity ID
    #         and <code>randomizationSalt</code>. If you omit <code>randomizationSalt</code>, Evidently uses
    #         the launch name as the <code>randomizationSalt</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute scheduled_splits_config
    #   <p>An array of structures that define the traffic allocation percentages among the feature
    #         variations during each step of the launch.</p>
    #
    #   @return [ScheduledSplitsLaunchConfig]
    #
    UpdateLaunchInput = ::Struct.new(
      :project,
      :launch,
      :description,
      :groups,
      :metric_monitors,
      :randomization_salt,
      :scheduled_splits_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute launch
    #   <p>A structure that contains the new configuration of the launch that was updated.</p>
    #
    #   @return [Launch]
    #
    UpdateLaunchOutput = ::Struct.new(
      :launch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project that you want to modify the data storage options for.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p>A structure containing the S3 bucket name and bucket prefix where you want to store evaluation events.</p>
    #
    #   @return [S3DestinationConfig]
    #
    # @!attribute cloud_watch_logs
    #   <p>A structure containing the CloudWatch Logs log group where you want to store evaluation
    #         events.</p>
    #
    #   @return [CloudWatchLogsDestinationConfig]
    #
    UpdateProjectDataDeliveryInput = ::Struct.new(
      :project,
      :s3_destination,
      :cloud_watch_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>A structure containing details about the project that you updated.</p>
    #
    #   @return [Project]
    #
    UpdateProjectDataDeliveryOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>The name or ARN of the project to update.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description of the project.</p>
    #
    #   @return [String]
    #
    UpdateProjectInput = ::Struct.new(
      :project,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>A structure containing information about the updated project.</p>
    #
    #   @return [Project]
    #
    UpdateProjectOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of a parameter in the request caused an error.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>A reason for the error.</p>
    #
    #   Enum, one of: ["unknownOperation", "cannotParse", "fieldValidationFailed", "other"]
    #
    #   @return [String]
    #
    # @!attribute field_list
    #   <p>The parameter that caused the exception.</p>
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

    # <p>A structure containing an error name and message.</p>
    #
    # @!attribute name
    #   <p>The error name.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The error message.</p>
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

    # <p>The value assigned to a feature variation. This structure must contain exactly one
    #       field. It can be <code>boolValue</code>, <code>doubleValue</code>, <code>longValue</code>, or
    #         <code>stringValue</code>.</p>
    #
    class VariableValue < Hearth::Union
      # <p>If this feature uses the Boolean variation type, this field contains the Boolean value of
      #       this variation.</p>
      #
      class BoolValue < VariableValue
        def to_h
          { bool_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Evidently::Types::BoolValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>If this feature uses the string variation type, this field contains the string value of
      #        this variation.</p>
      #
      class StringValue < VariableValue
        def to_h
          { string_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Evidently::Types::StringValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>If this feature uses the long variation type, this field contains the long value of
      #        this variation.</p>
      #
      class LongValue < VariableValue
        def to_h
          { long_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Evidently::Types::LongValue #{__getobj__ || 'nil'}>"
        end
      end

      # <p>If this feature uses the double integer variation type, this field contains the double integer value of
      #        this variation.</p>
      #
      class DoubleValue < VariableValue
        def to_h
          { double_value: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Evidently::Types::DoubleValue #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < VariableValue
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Evidently::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>This structure contains the name and variation value of one variation of a feature.</p>
    #
    # @!attribute name
    #   <p>The name of the variation.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value assigned to this variation.</p>
    #
    #   @return [VariableValue]
    #
    Variation = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This structure contains the name and variation value of one variation of a feature.</p>
    #
    # @!attribute name
    #   <p>The name of the variation.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value assigned to this variation.</p>
    #
    #   @return [VariableValue]
    #
    VariationConfig = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for VariationValueType
    #
    module VariationValueType
      # No documentation available.
      #
      STRING = "STRING"

      # No documentation available.
      #
      LONG = "LONG"

      # No documentation available.
      #
      DOUBLE = "DOUBLE"

      # No documentation available.
      #
      BOOLEAN = "BOOLEAN"
    end

  end
end
