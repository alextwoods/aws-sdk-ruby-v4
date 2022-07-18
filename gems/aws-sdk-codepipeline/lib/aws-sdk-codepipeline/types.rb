# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodePipeline
  module Types

    # <p>Represents an AWS session credentials object. These credentials are temporary
    #             credentials that are issued by AWS Secure Token Service (STS). They can be used to
    #             access input and output artifacts in the S3 bucket used to store artifact for the
    #             pipeline in AWS CodePipeline.</p>
    #
    # @note
    #   This shape is sensitive and must be handled with care.
    #
    # @!attribute access_key_id
    #   <p>The access key for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_access_key
    #   <p>The secret access key for the session.</p>
    #
    #   @return [String]
    #
    # @!attribute session_token
    #   <p>The token for the session.</p>
    #
    #   @return [String]
    #
    AWSSessionCredentials = ::Struct.new(
      :access_key_id,
      :secret_access_key,
      :session_token,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodePipeline::Types::AWSSessionCredentials [SENSITIVE]>"
      end
    end

    # <p>Represents the input of an AcknowledgeJob action.</p>
    #
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job for which you want to confirm
    #               receipt.</p>
    #
    #   @return [String]
    #
    # @!attribute nonce
    #   <p>A system-generated random number that AWS CodePipeline uses to ensure that the job
    #               is being worked on by only one job worker. Get this number from the response of the
    #                   <a>PollForJobs</a> request that returned this job.</p>
    #
    #   @return [String]
    #
    AcknowledgeJobInput = ::Struct.new(
      :job_id,
      :nonce,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of an AcknowledgeJob action.</p>
    #
    # @!attribute status
    #   <p>Whether the job worker has received the specified job.</p>
    #
    #   Enum, one of: ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    AcknowledgeJobOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of an AcknowledgeThirdPartyJob action.</p>
    #
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute nonce
    #   <p>A system-generated random number that AWS CodePipeline uses to ensure that the job
    #               is being worked on by only one job worker. Get this number from the response to a <a>GetThirdPartyJobDetails</a> request.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    #   @return [String]
    #
    AcknowledgeThirdPartyJobInput = ::Struct.new(
      :job_id,
      :nonce,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of an AcknowledgeThirdPartyJob action.</p>
    #
    # @!attribute status
    #   <p>The status information for the third party job, if any.</p>
    #
    #   Enum, one of: ["Created", "Queued", "Dispatched", "InProgress", "TimedOut", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    AcknowledgeThirdPartyJobOutput = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActionCategory
    #
    module ActionCategory
      # No documentation available.
      #
      Source = "Source"

      # No documentation available.
      #
      Build = "Build"

      # No documentation available.
      #
      Deploy = "Deploy"

      # No documentation available.
      #
      Test = "Test"

      # No documentation available.
      #
      Invoke = "Invoke"

      # No documentation available.
      #
      Approval = "Approval"
    end

    # <p>Represents information about an action configuration.</p>
    #
    # @!attribute configuration
    #   <p>The configuration data for the action.</p>
    #
    #   @return [Hash<String, String>]
    #
    ActionConfiguration = ::Struct.new(
      :configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about an action configuration property.</p>
    #
    # @!attribute name
    #   <p>The name of the action configuration property.</p>
    #
    #   @return [String]
    #
    # @!attribute required
    #   <p>Whether the configuration property is a required value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute key
    #   <p>Whether the configuration property is a key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute secret
    #   <p>Whether the configuration property is secret. Secrets are hidden from all calls
    #               except for <code>GetJobDetails</code>, <code>GetThirdPartyJobDetails</code>,
    #                   <code>PollForJobs</code>, and <code>PollForThirdPartyJobs</code>.</p>
    #           <p>When updating a pipeline, passing * * * * * without changing any other values of
    #               the action preserves the previous value of the secret.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute queryable
    #   <p>Indicates that the property is used with <code>PollForJobs</code>. When creating a
    #               custom action, an action can have up to one queryable property. If it has one, that
    #               property must be both required and not secret.</p>
    #           <p>If you create a pipeline with a custom action type, and that custom action contains
    #               a queryable property, the value for that configuration property is subject to other
    #               restrictions. The value must be less than or equal to twenty (20) characters. The value
    #               can contain only alphanumeric characters, underscores, and hyphens.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description of the action configuration property that is displayed to
    #               users.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the configuration property.</p>
    #
    #   Enum, one of: ["String", "Number", "Boolean"]
    #
    #   @return [String]
    #
    ActionConfigurationProperty = ::Struct.new(
      :name,
      :required,
      :key,
      :secret,
      :queryable,
      :description,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.required ||= false
        self.key ||= false
        self.secret ||= false
        self.queryable ||= false
      end
    end

    # Includes enum constants for ActionConfigurationPropertyType
    #
    module ActionConfigurationPropertyType
      # No documentation available.
      #
      String = "String"

      # No documentation available.
      #
      Number = "Number"

      # No documentation available.
      #
      Boolean = "Boolean"
    end

    # <p>Represents the context of an action in the stage of a pipeline to a job
    #             worker.</p>
    #
    # @!attribute name
    #   <p>The name of the action in the context of a job.</p>
    #
    #   @return [String]
    #
    # @!attribute action_execution_id
    #   <p>The system-generated unique ID that corresponds to an action's execution.</p>
    #
    #   @return [String]
    #
    ActionContext = ::Struct.new(
      :name,
      :action_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about an action declaration.</p>
    #
    # @!attribute name
    #   <p>The action declaration's name.</p>
    #
    #   @return [String]
    #
    # @!attribute action_type_id
    #   <p>Specifies the action type and the provider of the action.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute run_order
    #   <p>The order in which actions are run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration
    #   <p>The action's configuration. These are key-value pairs that specify input values for
    #               an action. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html action-requirements">Action Structure Requirements in CodePipeline</a>. For the list of
    #               configuration properties for the AWS CloudFormation action type in CodePipeline, see
    #                   <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-action-reference.html">Configuration Properties Reference</a> in the <i>AWS CloudFormation User
    #                   Guide</i>. For template snippets with examples, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/continuous-delivery-codepipeline-parameter-override-functions.html">Using Parameter Override Functions with CodePipeline Pipelines</a> in the
    #                   <i>AWS CloudFormation User Guide</i>.</p>
    #           <p>The values can be represented in either JSON or YAML format. For example, the JSON
    #               configuration item format is as follows: </p>
    #           <p>
    #               <i>JSON:</i>
    #            </p>
    #           <p>
    #               <code>"Configuration" : { Key : Value },</code>
    #           </p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute output_artifacts
    #   <p>The name or ID of the result of the action declaration, such as a test or build
    #               artifact.</p>
    #
    #   @return [Array<OutputArtifact>]
    #
    # @!attribute input_artifacts
    #   <p>The name or ID of the artifact consumed by the action, such as a test or build
    #               artifact.</p>
    #
    #   @return [Array<InputArtifact>]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM service role that performs the declared action. This is assumed
    #               through the roleArn for the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The action declaration's AWS Region, such as us-east-1.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace
    #   <p>The variable namespace associated with the action. All variables produced as output by
    #               this action fall under this namespace.</p>
    #
    #   @return [String]
    #
    ActionDeclaration = ::Struct.new(
      :name,
      :action_type_id,
      :run_order,
      :configuration,
      :output_artifacts,
      :input_artifacts,
      :role_arn,
      :region,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the run of an action.</p>
    #
    # @!attribute action_execution_id
    #   <p>ID of the workflow action execution in the current stage. Use the <a>GetPipelineState</a> action to retrieve the current action execution details
    #               of the current stage.</p>
    #           <note>
    #               <p>For older executions, this field might be empty. The action execution ID is
    #                   available for executions run on or after March 2020.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the action, or for a completed action, the last status of the
    #               action.</p>
    #
    #   Enum, one of: ["InProgress", "Abandoned", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute summary
    #   <p>A summary of the run of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute last_status_change
    #   <p>The last status change of the action.</p>
    #
    #   @return [Time]
    #
    # @!attribute token
    #   <p>The system-generated token used to identify a unique approval request. The token
    #               for each open approval request can be obtained using the <code>GetPipelineState</code>
    #               command. It is used to validate that the approval request corresponding to this token is
    #               still valid.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_by
    #   <p>The ARN of the user who last changed the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute external_execution_id
    #   <p>The external ID of the run of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute external_execution_url
    #   <p>The URL of a resource external to AWS that is used when running the action (for
    #               example, an external repository URL).</p>
    #
    #   @return [String]
    #
    # @!attribute percent_complete
    #   <p>A percentage of completeness of the action as it runs.</p>
    #
    #   @return [Integer]
    #
    # @!attribute error_details
    #   <p>The details of an error returned by a URL external to AWS.</p>
    #
    #   @return [ErrorDetails]
    #
    ActionExecution = ::Struct.new(
      :action_execution_id,
      :status,
      :summary,
      :last_status_change,
      :token,
      :last_updated_by,
      :external_execution_id,
      :external_execution_url,
      :percent_complete,
      :error_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an execution of an action, including the action execution
    #             ID, and the name, version, and timing of the action. </p>
    #
    # @!attribute pipeline_execution_id
    #   <p>The pipeline execution ID for the action execution.</p>
    #
    #   @return [String]
    #
    # @!attribute action_execution_id
    #   <p>The action execution ID.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_version
    #   <p>The version of the pipeline where the action was run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute stage_name
    #   <p>The name of the stage that contains the action.</p>
    #
    #   @return [String]
    #
    # @!attribute action_name
    #   <p>The name of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The start time of the action execution.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The last update time of the action execution.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p> The status of the action execution. Status categories are <code>InProgress</code>,
    #                   <code>Succeeded</code>, and <code>Failed</code>.</p>
    #
    #   Enum, one of: ["InProgress", "Abandoned", "Succeeded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute input
    #   <p>Input details for the action execution, such as role ARN, Region, and input
    #               artifacts.</p>
    #
    #   @return [ActionExecutionInput]
    #
    # @!attribute output
    #   <p>Output details for the action execution, such as the action execution result.</p>
    #
    #   @return [ActionExecutionOutput]
    #
    ActionExecutionDetail = ::Struct.new(
      :pipeline_execution_id,
      :action_execution_id,
      :pipeline_version,
      :stage_name,
      :action_name,
      :start_time,
      :last_update_time,
      :status,
      :input,
      :output,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Filter values for the action execution.</p>
    #
    # @!attribute pipeline_execution_id
    #   <p>The pipeline execution ID used to filter action execution history.</p>
    #
    #   @return [String]
    #
    ActionExecutionFilter = ::Struct.new(
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Input information used for an action execution.</p>
    #
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute configuration
    #   <p>Configuration data for an action execution.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute resolved_configuration
    #   <p>Configuration data for an action execution with all variable references replaced with
    #               their real values for the execution.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute role_arn
    #   <p>The ARN of the IAM service role that performs the declared action. This is assumed
    #               through the roleArn for the pipeline. </p>
    #
    #   @return [String]
    #
    # @!attribute region
    #   <p>The AWS Region for the action, such as us-east-1.</p>
    #
    #   @return [String]
    #
    # @!attribute input_artifacts
    #   <p>Details of input artifacts of the action that correspond to the action
    #               execution.</p>
    #
    #   @return [Array<ArtifactDetail>]
    #
    # @!attribute namespace
    #   <p>The variable namespace associated with the action. All variables produced as output by
    #               this action fall under this namespace.</p>
    #
    #   @return [String]
    #
    ActionExecutionInput = ::Struct.new(
      :action_type_id,
      :configuration,
      :resolved_configuration,
      :role_arn,
      :region,
      :input_artifacts,
      :namespace,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Output details listed for an action execution, such as the action execution
    #             result.</p>
    #
    # @!attribute output_artifacts
    #   <p>Details of output artifacts of the action that correspond to the action
    #               execution.</p>
    #
    #   @return [Array<ArtifactDetail>]
    #
    # @!attribute execution_result
    #   <p>Execution result information listed in the output details for an action
    #               execution.</p>
    #
    #   @return [ActionExecutionResult]
    #
    # @!attribute output_variables
    #   <p>The outputVariables field shows the key-value pairs that were output as part of that
    #               execution.</p>
    #
    #   @return [Hash<String, String>]
    #
    ActionExecutionOutput = ::Struct.new(
      :output_artifacts,
      :execution_result,
      :output_variables,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Execution result information, such as the external execution ID.</p>
    #
    # @!attribute external_execution_id
    #   <p>The action provider's external ID for the action execution.</p>
    #
    #   @return [String]
    #
    # @!attribute external_execution_summary
    #   <p>The action provider's summary for the action execution.</p>
    #
    #   @return [String]
    #
    # @!attribute external_execution_url
    #   <p>The deepest external link to the external resource (for example, a repository URL or
    #               deployment endpoint) that is used when running the action.</p>
    #
    #   @return [String]
    #
    ActionExecutionResult = ::Struct.new(
      :external_execution_id,
      :external_execution_summary,
      :external_execution_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActionExecutionStatus
    #
    module ActionExecutionStatus
      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Abandoned = "Abandoned"

      # No documentation available.
      #
      Succeeded = "Succeeded"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>The specified action cannot be found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    ActionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ActionOwner
    #
    module ActionOwner
      # No documentation available.
      #
      AWS = "AWS"

      # No documentation available.
      #
      ThirdParty = "ThirdParty"

      # No documentation available.
      #
      Custom = "Custom"
    end

    # <p>Represents information about the version (or revision) of an action.</p>
    #
    # @!attribute revision_id
    #   <p>The system-generated unique ID that identifies the revision number of the
    #               action.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_change_id
    #   <p>The unique identifier of the change that set the state to this revision (for
    #               example, a deployment ID or timestamp).</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time when the most recent version of the action was created, in
    #               timestamp format.</p>
    #
    #   @return [Time]
    #
    ActionRevision = ::Struct.new(
      :revision_id,
      :revision_change_id,
      :created,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the state of an action.</p>
    #
    # @!attribute action_name
    #   <p>The name of the action.</p>
    #
    #   @return [String]
    #
    # @!attribute current_revision
    #   <p>Represents information about the version (or revision) of an action.</p>
    #
    #   @return [ActionRevision]
    #
    # @!attribute latest_execution
    #   <p>Represents information about the run of an action.</p>
    #
    #   @return [ActionExecution]
    #
    # @!attribute entity_url
    #   <p>A URL link for more information about the state of the action, such as a deployment
    #               group details page.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_url
    #   <p>A URL link for more information about the revision, such as a commit details
    #               page.</p>
    #
    #   @return [String]
    #
    ActionState = ::Struct.new(
      :action_name,
      :current_revision,
      :latest_execution,
      :entity_url,
      :revision_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the details of an action type.</p>
    #
    # @!attribute id
    #   <p>Represents information about an action type.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute settings
    #   <p>The settings for the action type.</p>
    #
    #   @return [ActionTypeSettings]
    #
    # @!attribute action_configuration_properties
    #   <p>The configuration properties for the action type.</p>
    #
    #   @return [Array<ActionConfigurationProperty>]
    #
    # @!attribute input_artifact_details
    #   <p>The details of the input artifact for the action, such as its commit ID.</p>
    #
    #   @return [ArtifactDetails]
    #
    # @!attribute output_artifact_details
    #   <p>The details of the output artifact of the action, such as its commit ID.</p>
    #
    #   @return [ArtifactDetails]
    #
    ActionType = ::Struct.new(
      :id,
      :settings,
      :action_configuration_properties,
      :input_artifact_details,
      :output_artifact_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about parameters for artifacts associated with the action type, such as
    #             the minimum and maximum artifacts allowed.</p>
    #
    # @!attribute minimum_count
    #   <p>The minimum number of artifacts that can be used with the action type. For example,
    #               you should specify a minimum and maximum of zero input artifacts for an action type with
    #               a category of <code>source</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_count
    #   <p>The maximum number of artifacts that can be used with the actiontype. For example, you
    #               should specify a minimum and maximum of zero input artifacts for an action type with a
    #               category of <code>source</code>.</p>
    #
    #   @return [Integer]
    #
    ActionTypeArtifactDetails = ::Struct.new(
      :minimum_count,
      :maximum_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.minimum_count ||= 0
        self.maximum_count ||= 0
      end
    end

    # <p>The parameters for the action type definition that are provided when the action type
    #             is created or updated.</p>
    #
    # @!attribute description
    #   <p>The description for the action type to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute executor
    #   <p>Information about the executor for an action type that was created with any supported
    #               integration model.</p>
    #
    #   @return [ActionTypeExecutor]
    #
    # @!attribute id
    #   <p>The action category, owner, provider, and version of the action type to be
    #               updated.</p>
    #
    #   @return [ActionTypeIdentifier]
    #
    # @!attribute input_artifact_details
    #   <p>Details for the artifacts, such as application files, to be worked on by the action.
    #               For example, the minimum and maximum number of input artifacts allowed.</p>
    #
    #   @return [ActionTypeArtifactDetails]
    #
    # @!attribute output_artifact_details
    #   <p>Details for the output artifacts, such as a built application, that are the result of
    #               the action. For example, the minimum and maximum number of output artifacts
    #               allowed.</p>
    #
    #   @return [ActionTypeArtifactDetails]
    #
    # @!attribute permissions
    #   <p>Details identifying the accounts with permissions to use the action type.</p>
    #
    #   @return [ActionTypePermissions]
    #
    # @!attribute properties
    #   <p>The properties of the action type to be updated.</p>
    #
    #   @return [Array<ActionTypeProperty>]
    #
    # @!attribute urls
    #   <p>The links associated with the action type to be updated.</p>
    #
    #   @return [ActionTypeUrls]
    #
    ActionTypeDeclaration = ::Struct.new(
      :description,
      :executor,
      :id,
      :input_artifact_details,
      :output_artifact_details,
      :permissions,
      :properties,
      :urls,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action engine, or executor, for an action type created for a provider, where the
    #             action is to be used by customers of the provider. The action engine is associated with
    #             the model used to create and update the action, such as the Lambda integration
    #             model.</p>
    #
    # @!attribute configuration
    #   <p>The action configuration properties for the action type. These properties are
    #               specified in the action definition when the action type is created.</p>
    #
    #   @return [ExecutorConfiguration]
    #
    # @!attribute type
    #   <p>The integration model used to create and update the action type, <code>Lambda</code>
    #               or <code>JobWorker</code>. </p>
    #
    #   Enum, one of: ["JobWorker", "Lambda"]
    #
    #   @return [String]
    #
    # @!attribute policy_statements_template
    #   <p>The policy statement that specifies the permissions in the CodePipeline customer’s
    #               account that are needed to successfully run an action.</p>
    #           <p>To grant permission to another account, specify the account ID as the Principal, a
    #               domain-style identifier defined by the service, for example
    #                   <code>codepipeline.amazonaws.com</code>.</p>
    #           <note>
    #               <p>The size of the passed JSON policy document cannot exceed 2048 characters.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute job_timeout
    #   <p>The timeout in seconds for the job. An action execution can have multiple jobs. This
    #               is the timeout for a single job, not the entire action execution.</p>
    #
    #   @return [Integer]
    #
    ActionTypeExecutor = ::Struct.new(
      :configuration,
      :type,
      :policy_statements_template,
      :job_timeout,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about an action type.</p>
    #
    # @!attribute category
    #   <p>A category defines what kind of action can be taken in the stage, and constrains
    #               the provider type for the action. Valid categories are limited to one of the following
    #               values. </p>
    #           <ul>
    #               <li>
    #                   <p>Source</p>
    #               </li>
    #               <li>
    #                   <p>Build</p>
    #               </li>
    #               <li>
    #                   <p>Test</p>
    #               </li>
    #               <li>
    #                   <p>Deploy</p>
    #               </li>
    #               <li>
    #                   <p>Invoke</p>
    #               </li>
    #               <li>
    #                   <p>Approval</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The creator of the action being called. There are three valid values for the
    #                   <code>Owner</code> field in the action category section within your pipeline
    #               structure: <code>AWS</code>, <code>ThirdParty</code>, and <code>Custom</code>. For more
    #               information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html actions-valid-providers">Valid Action Types and Providers in CodePipeline</a>.</p>
    #
    #   Enum, one of: ["AWS", "ThirdParty", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The provider of the service being called by the action. Valid providers are
    #               determined by the action category. For example, an action in the Deploy category type
    #               might have a provider of AWS CodeDeploy, which would be specified as CodeDeploy. For
    #               more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html actions-valid-providers">Valid Action Types and Providers in CodePipeline</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>A string that describes the action version.</p>
    #
    #   @return [String]
    #
    ActionTypeId = ::Struct.new(
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Specifies the category, owner, provider, and version of the action type.</p>
    #
    # @!attribute category
    #   <p>Defines what kind of action can be taken in the stage, one of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Build</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Approval</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invoke</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The creator of the action type being called: <code>AWS</code> or
    #                   <code>ThirdParty</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The provider of the action type being called. The provider name is supplied when the
    #               action type is created.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>A string that describes the action type version.</p>
    #
    #   @return [String]
    #
    ActionTypeIdentifier = ::Struct.new(
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified action type cannot be found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    ActionTypeNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details identifying the users with permissions to use the action type.</p>
    #
    # @!attribute allowed_accounts
    #   <p>A list of AWS account IDs with access to use the action type in their
    #               pipelines.</p>
    #
    #   @return [Array<String>]
    #
    ActionTypePermissions = ::Struct.new(
      :allowed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about each property specified in the action configuration, such
    #             as the description and key name that display for the customer using the action
    #             type.</p>
    #
    # @!attribute name
    #   <p>The property name that is displayed to users.</p>
    #
    #   @return [String]
    #
    # @!attribute optional
    #   <p>Whether the configuration property is an optional value.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute key
    #   <p>Whether the configuration property is a key.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute no_echo
    #   <p>Whether to omit the field value entered by the customer in the log. If
    #                   <code>true</code>, the value is not saved in CloudTrail logs for the action
    #               execution.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute queryable
    #   <p>Indicates that the property is used with polling. An action type can have up to one
    #               queryable property. If it has one, that property must be both required and not
    #               secret.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute description
    #   <p>The description of the property that is displayed to users.</p>
    #
    #   @return [String]
    #
    ActionTypeProperty = ::Struct.new(
      :name,
      :optional,
      :key,
      :no_echo,
      :queryable,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.optional ||= false
        self.key ||= false
        self.no_echo ||= false
        self.queryable ||= false
      end
    end

    # <p>Returns information about the settings for an action type.</p>
    #
    # @!attribute third_party_configuration_url
    #   <p>The URL of a sign-up page where users can sign up for an external service and
    #               perform initial configuration of the action provided by that service.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_url_template
    #   <p>The URL returned to the AWS CodePipeline console that provides a deep link to the
    #               resources of the external system, such as the configuration page for an AWS CodeDeploy
    #               deployment group. This link is provided as part of the action display in the
    #               pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_url_template
    #   <p>The URL returned to the AWS CodePipeline console that contains a link to the
    #               top-level landing page for the external system, such as the console page for AWS
    #               CodeDeploy. This link is shown on the pipeline view page in the AWS CodePipeline console
    #               and provides a link to the execution entity of the external action.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_url_template
    #   <p>The URL returned to the AWS CodePipeline console that contains a link to the page
    #               where customers can update or change the configuration of the external action.</p>
    #
    #   @return [String]
    #
    ActionTypeSettings = ::Struct.new(
      :third_party_configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about URLs for web pages that display to customers as links on the
    #             pipeline view, such as an external configuration page for the action type.</p>
    #
    # @!attribute configuration_url
    #   <p>The URL returned to the CodePipeline console that contains a link to the page where
    #               customers can configure the external action.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_url_template
    #   <p>The URL returned to the CodePipeline console that provides a deep link to the
    #               resources of the external system, such as a status page. This link is provided as part
    #               of the action display in the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_url_template
    #   <p>The link to an execution page for the action type in progress. For example, for a
    #               CodeDeploy action, this link is shown on the pipeline view page in the CodePipeline
    #               console, and it links to a CodeDeploy status page.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_url_template
    #   <p>The URL returned to the CodePipeline console that contains a link to the page where
    #               customers can update or change the configuration of the external action.</p>
    #
    #   @return [String]
    #
    ActionTypeUrls = ::Struct.new(
      :configuration_url,
      :entity_url_template,
      :execution_url_template,
      :revision_url_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval action has already been approved or rejected.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    ApprovalAlreadyCompletedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the result of an approval request.</p>
    #
    # @!attribute summary
    #   <p>The summary of the current status of the approval request.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The response submitted by a reviewer assigned to an approval action
    #               request.</p>
    #
    #   Enum, one of: ["Approved", "Rejected"]
    #
    #   @return [String]
    #
    ApprovalResult = ::Struct.new(
      :summary,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApprovalStatus
    #
    module ApprovalStatus
      # No documentation available.
      #
      Approved = "Approved"

      # No documentation available.
      #
      Rejected = "Rejected"
    end

    # <p>Represents information about an artifact that is worked on by actions in the
    #             pipeline.</p>
    #
    # @!attribute name
    #   <p>The artifact's name.</p>
    #
    #   @return [String]
    #
    # @!attribute revision
    #   <p>The artifact's revision ID. Depending on the type of object, this could be a commit
    #               ID (GitHub) or a revision ID (Amazon S3).</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of an artifact.</p>
    #
    #   @return [ArtifactLocation]
    #
    Artifact = ::Struct.new(
      :name,
      :revision,
      :location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Artifact details for the action execution, such as the artifact location.</p>
    #
    # @!attribute name
    #   <p>The artifact object name for the action execution.</p>
    #
    #   @return [String]
    #
    # @!attribute s3location
    #   <p>The Amazon S3 artifact location for the action execution.</p>
    #
    #   @return [S3Location]
    #
    ArtifactDetail = ::Struct.new(
      :name,
      :s3location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the details of an artifact.</p>
    #
    # @!attribute minimum_count
    #   <p>The minimum number of artifacts allowed for the action type.</p>
    #
    #   @return [Integer]
    #
    # @!attribute maximum_count
    #   <p>The maximum number of artifacts allowed for the action type.</p>
    #
    #   @return [Integer]
    #
    ArtifactDetails = ::Struct.new(
      :minimum_count,
      :maximum_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.minimum_count ||= 0
        self.maximum_count ||= 0
      end
    end

    # <p>Represents information about the location of an artifact.</p>
    #
    # @!attribute type
    #   <p>The type of artifact in the location.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    # @!attribute s3_location
    #   <p>The S3 bucket that contains the artifact.</p>
    #
    #   @return [S3ArtifactLocation]
    #
    ArtifactLocation = ::Struct.new(
      :type,
      :s3_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ArtifactLocationType
    #
    module ArtifactLocationType
      # No documentation available.
      #
      S3 = "S3"
    end

    # <p>Represents revision details of an artifact. </p>
    #
    # @!attribute name
    #   <p>The name of an artifact. This name might be system-generated, such as "MyApp", or
    #               defined by the user when an action is created.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The revision ID of the artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_change_identifier
    #   <p>An additional identifier for a revision, such as a commit date or, for artifacts
    #               stored in Amazon S3 buckets, the ETag value.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_summary
    #   <p>Summary information about the most recent revision of the artifact. For GitHub and
    #               AWS CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the
    #               user-provided content of a <code>codepipeline-artifact-revision-summary</code> key
    #               specified in the object metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time when the most recent revision of the artifact was created, in
    #               timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_url
    #   <p>The commit ID for the artifact revision. For artifacts stored in GitHub or AWS
    #               CodeCommit repositories, the commit ID is linked to a commit details page.</p>
    #
    #   @return [String]
    #
    ArtifactRevision = ::Struct.new(
      :name,
      :revision_id,
      :revision_change_identifier,
      :revision_summary,
      :created,
      :revision_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The S3 bucket where artifacts for the pipeline are stored.</p>
    #         <note>
    #             <p>You must include either <code>artifactStore</code> or
    #                     <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                 create a cross-region action in your pipeline, you must use
    #                     <code>artifactStores</code>.</p>
    #         </note>
    #
    # @!attribute type
    #   <p>The type of the artifact store, such as S3.</p>
    #
    #   Enum, one of: ["S3"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The S3 bucket used for storing the artifacts for a pipeline. You can specify the
    #               name of an S3 bucket but not a folder in the bucket. A folder to contain the pipeline
    #               artifacts is created for you based on the name of the pipeline. You can use any S3
    #               bucket in the same AWS Region as the pipeline to store your pipeline
    #               artifacts.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt the data in the artifact store, such as an AWS
    #               Key Management Service (AWS KMS) key. If this is undefined, the default key for Amazon
    #               S3 is used.</p>
    #
    #   @return [EncryptionKey]
    #
    ArtifactStore = ::Struct.new(
      :type,
      :location,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ArtifactStoreType
    #
    module ArtifactStoreType
      # No documentation available.
      #
      S3 = "S3"
    end

    # <p>Reserved for future use.</p>
    #
    # @!attribute name
    #   <p>Reserved for future use.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>Reserved for future use.</p>
    #
    #   Enum, one of: ["Schedule"]
    #
    #   @return [String]
    #
    BlockerDeclaration = ::Struct.new(
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BlockerType
    #
    module BlockerType
      # No documentation available.
      #
      Schedule = "Schedule"
    end

    # <p>Unable to modify the tag due to a simultaneous update request.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Your request cannot be handled because the pipeline is busy handling ongoing
    #             activities. Try again later.</p>
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

    # <p>Represents the input of a CreateCustomActionType operation.</p>
    #
    # @!attribute category
    #   <p>The category of the custom action, such as a build action or a test
    #               action.</p>
    #
    #   Enum, one of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The provider of the service used in the custom action, such as AWS
    #               CodeDeploy.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version identifier of the custom action.</p>
    #
    #   @return [String]
    #
    # @!attribute settings
    #   <p>URLs that provide users information about this custom action.</p>
    #
    #   @return [ActionTypeSettings]
    #
    # @!attribute configuration_properties
    #   <p>The configuration properties for the custom action.</p>
    #           <note>
    #               <p>You can refer to a name in the configuration properties of the custom action
    #                   within the URL templates by following the format of {Config:name}, as long as the
    #                   configuration property is both required and not secret. For more information, see
    #                       <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/how-to-create-custom-action.html">Create a
    #                       Custom Action for a Pipeline</a>.</p>
    #           </note>
    #
    #   @return [Array<ActionConfigurationProperty>]
    #
    # @!attribute input_artifact_details
    #   <p>The details of the input artifact for the action, such as its commit ID.</p>
    #
    #   @return [ArtifactDetails]
    #
    # @!attribute output_artifact_details
    #   <p>The details of the output artifact of the action, such as its commit ID.</p>
    #
    #   @return [ArtifactDetails]
    #
    # @!attribute tags
    #   <p>The tags for the custom action.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateCustomActionTypeInput = ::Struct.new(
      :category,
      :provider,
      :version,
      :settings,
      :configuration_properties,
      :input_artifact_details,
      :output_artifact_details,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>CreateCustomActionType</code> operation.</p>
    #
    # @!attribute action_type
    #   <p>Returns information about the details of an action type.</p>
    #
    #   @return [ActionType]
    #
    # @!attribute tags
    #   <p>Specifies the tags applied to the custom action.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateCustomActionTypeOutput = ::Struct.new(
      :action_type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>CreatePipeline</code> action.</p>
    #
    # @!attribute pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #
    #   @return [PipelineDeclaration]
    #
    # @!attribute tags
    #   <p>The tags for the pipeline.</p>
    #
    #   @return [Array<Tag>]
    #
    CreatePipelineInput = ::Struct.new(
      :pipeline,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>CreatePipeline</code> action.</p>
    #
    # @!attribute pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #
    #   @return [PipelineDeclaration]
    #
    # @!attribute tags
    #   <p>Specifies the tags applied to the pipeline.</p>
    #
    #   @return [Array<Tag>]
    #
    CreatePipelineOutput = ::Struct.new(
      :pipeline,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about a current revision.</p>
    #
    # @!attribute revision
    #   <p>The revision ID of the current version of an artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute change_identifier
    #   <p>The change identifier for the current revision.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time when the most recent revision of the artifact was created, in
    #               timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_summary
    #   <p>The summary of the most recent revision of the artifact.</p>
    #
    #   @return [String]
    #
    CurrentRevision = ::Struct.new(
      :revision,
      :change_identifier,
      :created,
      :revision_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>DeleteCustomActionType</code> operation. The custom
    #             action will be marked as deleted.</p>
    #
    # @!attribute category
    #   <p>The category of the custom action that you want to delete, such as source or
    #               deploy.</p>
    #
    #   Enum, one of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The provider of the service used in the custom action, such as AWS
    #               CodeDeploy.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the custom action to delete.</p>
    #
    #   @return [String]
    #
    DeleteCustomActionTypeInput = ::Struct.new(
      :category,
      :provider,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteCustomActionTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>DeletePipeline</code> action.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline to be deleted.</p>
    #
    #   @return [String]
    #
    DeletePipelineInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePipelineOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the webhook you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteWebhookInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWebhookOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute webhook_name
    #   <p>The name of the webhook you want to deregister.</p>
    #
    #   @return [String]
    #
    DeregisterWebhookWithThirdPartyInput = ::Struct.new(
      :webhook_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterWebhookWithThirdPartyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>DisableStageTransition</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline in which you want to disable the flow of artifacts from
    #               one stage to another.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage where you want to disable the inbound or outbound transition
    #               of artifacts.</p>
    #
    #   @return [String]
    #
    # @!attribute transition_type
    #   <p>Specifies whether artifacts are prevented from transitioning into the stage and
    #               being processed by the actions in that stage (inbound), or prevented from transitioning
    #               from the stage after they have been processed by the actions in that stage
    #               (outbound).</p>
    #
    #   Enum, one of: ["Inbound", "Outbound"]
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason given to the user that a stage is disabled, such as waiting for manual
    #               approval or manual tests. This message is displayed in the pipeline console
    #               UI.</p>
    #
    #   @return [String]
    #
    DisableStageTransitionInput = ::Struct.new(
      :pipeline_name,
      :stage_name,
      :transition_type,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableStageTransitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pipeline execution is already in a <code>Stopping</code> state. If you already
    #             chose to stop and wait, you cannot make that request again. You can choose to stop and
    #             abandon now, but be aware that this option can lead to failed tasks or out of sequence
    #             tasks. If you already chose to stop and abandon, you cannot make that request
    #             again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicatedStopRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of an <code>EnableStageTransition</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline in which you want to enable the flow of artifacts from one
    #               stage to another.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage where you want to enable the transition of artifacts, either
    #               into the stage (inbound) or from that stage to the next stage (outbound).</p>
    #
    #   @return [String]
    #
    # @!attribute transition_type
    #   <p>Specifies whether artifacts are allowed to enter the stage and be processed by the
    #               actions in that stage (inbound) or whether already processed artifacts are allowed to
    #               transition to the next stage (outbound).</p>
    #
    #   Enum, one of: ["Inbound", "Outbound"]
    #
    #   @return [String]
    #
    EnableStageTransitionInput = ::Struct.new(
      :pipeline_name,
      :stage_name,
      :transition_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableStageTransitionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the key used to encrypt data in the artifact store,
    #             such as an AWS Key Management Service (AWS KMS) key.</p>
    #
    # @!attribute id
    #   <p>The ID used to identify the key. For an AWS KMS key, you can use the key ID, the
    #               key ARN, or the alias ARN.</p>
    #           <note>
    #               <p>Aliases are recognized only in the account that created the customer master key
    #                   (CMK). For cross-account actions, you can only use the key ID or key ARN to identify
    #                   the key.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of encryption key, such as an AWS Key Management Service (AWS KMS) key.
    #               When creating or updating a pipeline, the value must be set to 'KMS'.</p>
    #
    #   Enum, one of: ["KMS"]
    #
    #   @return [String]
    #
    EncryptionKey = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EncryptionKeyType
    #
    module EncryptionKeyType
      # No documentation available.
      #
      KMS = "KMS"
    end

    # <p>Represents information about an error in AWS CodePipeline.</p>
    #
    # @!attribute code
    #   <p>The system ID or number code of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The text of the error message.</p>
    #
    #   @return [String]
    #
    ErrorDetails = ::Struct.new(
      :code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The details of the actions taken and results produced on an artifact as it passes
    #             through stages in the pipeline.</p>
    #
    # @!attribute summary
    #   <p>The summary of the current status of the actions.</p>
    #
    #   @return [String]
    #
    # @!attribute external_execution_id
    #   <p>The system-generated unique ID of this action used to identify this job worker in
    #               any external systems, such as AWS CodeDeploy.</p>
    #
    #   @return [String]
    #
    # @!attribute percent_complete
    #   <p>The percentage of work completed on the action, represented on a scale of 0 to 100
    #               percent.</p>
    #
    #   @return [Integer]
    #
    ExecutionDetails = ::Struct.new(
      :summary,
      :external_execution_id,
      :percent_complete,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The interaction or event that started a pipeline execution.</p>
    #
    # @!attribute trigger_type
    #   <p>The type of change-detection method, command, or user interaction that started a
    #               pipeline execution.</p>
    #
    #   Enum, one of: ["CreatePipeline", "StartPipelineExecution", "PollForSourceChanges", "Webhook", "CloudWatchEvent", "PutActionRevision"]
    #
    #   @return [String]
    #
    # @!attribute trigger_detail
    #   <p>Detail related to the event that started a pipeline execution, such as the webhook ARN
    #               of the webhook that triggered the pipeline execution or the user ARN for a
    #               user-initiated <code>start-pipeline-execution</code> CLI command.</p>
    #
    #   @return [String]
    #
    ExecutionTrigger = ::Struct.new(
      :trigger_type,
      :trigger_detail,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action engine, or executor, related to the supported integration model used to
    #             create and update the action type. The available executor types are <code>Lambda</code>
    #             and <code>JobWorker</code>.</p>
    #
    # @!attribute lambda_executor_configuration
    #   <p>Details about the <code>Lambda</code> executor of the action type.</p>
    #
    #   @return [LambdaExecutorConfiguration]
    #
    # @!attribute job_worker_executor_configuration
    #   <p>Details about the <code>JobWorker</code> executor of the action type.</p>
    #
    #   @return [JobWorkerExecutorConfiguration]
    #
    ExecutorConfiguration = ::Struct.new(
      :lambda_executor_configuration,
      :job_worker_executor_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExecutorType
    #
    module ExecutorType
      # No documentation available.
      #
      JobWorker = "JobWorker"

      # No documentation available.
      #
      Lambda = "Lambda"
    end

    # <p>Represents information about failure details.</p>
    #
    # @!attribute type
    #   <p>The type of the failure.</p>
    #
    #   Enum, one of: ["JobFailed", "ConfigurationError", "PermissionError", "RevisionOutOfSync", "RevisionUnavailable", "SystemUnavailable"]
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message about the failure.</p>
    #
    #   @return [String]
    #
    # @!attribute external_execution_id
    #   <p>The external ID of the run of the action that failed.</p>
    #
    #   @return [String]
    #
    FailureDetails = ::Struct.new(
      :type,
      :message,
      :external_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FailureType
    #
    module FailureType
      # No documentation available.
      #
      JobFailed = "JobFailed"

      # No documentation available.
      #
      ConfigurationError = "ConfigurationError"

      # No documentation available.
      #
      PermissionError = "PermissionError"

      # No documentation available.
      #
      RevisionOutOfSync = "RevisionOutOfSync"

      # No documentation available.
      #
      RevisionUnavailable = "RevisionUnavailable"

      # No documentation available.
      #
      SystemUnavailable = "SystemUnavailable"
    end

    # @!attribute category
    #   <p>Defines what kind of action can be taken in the stage. The following are the valid
    #               values:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>Source</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Build</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Test</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Deploy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Approval</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Invoke</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Source", "Build", "Deploy", "Test", "Invoke", "Approval"]
    #
    #   @return [String]
    #
    # @!attribute owner
    #   <p>The creator of an action type that was created with any supported integration model.
    #               There are two valid values: <code>AWS</code> and <code>ThirdParty</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute provider
    #   <p>The provider of the action type being called. The provider name is specified when the
    #               action type is created.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>A string that describes the action type version.</p>
    #
    #   @return [String]
    #
    GetActionTypeInput = ::Struct.new(
      :category,
      :owner,
      :provider,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action_type
    #   <p>The action type information for the requested action type, such as the action type
    #               ID.</p>
    #
    #   @return [ActionTypeDeclaration]
    #
    GetActionTypeOutput = ::Struct.new(
      :action_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>GetJobDetails</code> action.</p>
    #
    # @!attribute job_id
    #   <p>The unique system-generated ID for the job.</p>
    #
    #   @return [String]
    #
    GetJobDetailsInput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>GetJobDetails</code> action.</p>
    #
    # @!attribute job_details
    #   <p>The details of the job.</p>
    #           <note>
    #               <p>If AWSSessionCredentials is used, a long-running job can call
    #                       <code>GetJobDetails</code> again to obtain new credentials.</p>
    #           </note>
    #
    #   @return [JobDetails]
    #
    GetJobDetailsOutput = ::Struct.new(
      :job_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>GetPipelineExecution</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline about which you want to get execution details.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution about which you want to get execution
    #               details.</p>
    #
    #   @return [String]
    #
    GetPipelineExecutionInput = ::Struct.new(
      :pipeline_name,
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>GetPipelineExecution</code> action.</p>
    #
    # @!attribute pipeline_execution
    #   <p>Represents information about the execution of a pipeline.</p>
    #
    #   @return [PipelineExecution]
    #
    GetPipelineExecutionOutput = ::Struct.new(
      :pipeline_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>GetPipeline</code> action.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline for which you want to get information. Pipeline names must
    #               be unique under an AWS user account.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number of the pipeline. If you do not specify a version, defaults to
    #               the current version.</p>
    #
    #   @return [Integer]
    #
    GetPipelineInput = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>GetPipeline</code> action.</p>
    #
    # @!attribute pipeline
    #   <p>Represents the structure of actions and stages to be performed in the pipeline.
    #           </p>
    #
    #   @return [PipelineDeclaration]
    #
    # @!attribute metadata
    #   <p>Represents the pipeline metadata information returned as part of the output of a
    #                   <code>GetPipeline</code> action.</p>
    #
    #   @return [PipelineMetadata]
    #
    GetPipelineOutput = ::Struct.new(
      :pipeline,
      :metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>GetPipelineState</code> action.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline about which you want to get information.</p>
    #
    #   @return [String]
    #
    GetPipelineStateInput = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>GetPipelineState</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline for which you want to get the state.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_version
    #   <p>The version number of the pipeline.</p>
    #           <note>
    #               <p>A newly created pipeline is always assigned a version number of
    #                   <code>1</code>.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute stage_states
    #   <p>A list of the pipeline stage output information, including stage name, state, most
    #               recent run details, whether the stage is disabled, and other data.</p>
    #
    #   @return [Array<StageState>]
    #
    # @!attribute created
    #   <p>The date and time the pipeline was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated
    #   <p>The date and time the pipeline was last updated, in timestamp format.</p>
    #
    #   @return [Time]
    #
    GetPipelineStateOutput = ::Struct.new(
      :pipeline_name,
      :pipeline_version,
      :stage_states,
      :created,
      :updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>GetThirdPartyJobDetails</code> action.</p>
    #
    # @!attribute job_id
    #   <p>The unique system-generated ID used for identifying the job.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    #   @return [String]
    #
    GetThirdPartyJobDetailsInput = ::Struct.new(
      :job_id,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>GetThirdPartyJobDetails</code> action.</p>
    #
    # @!attribute job_details
    #   <p>The details of the job, including any protected values defined for the
    #               job.</p>
    #
    #   @return [ThirdPartyJobDetails]
    #
    GetThirdPartyJobDetailsOutput = ::Struct.new(
      :job_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about an artifact to be worked on, such as a test or build
    #             artifact.</p>
    #
    # @!attribute name
    #   <p>The name of the artifact to be worked on (for example, "My App").</p>
    #           <p>The input artifact of an action must exactly match the output artifact declared in
    #               a preceding action, but the input artifact does not have to be the next action in strict
    #               sequence from the action that provided the output artifact. Actions in parallel can
    #               declare different output artifacts, which are in turn consumed by different following
    #               actions.</p>
    #
    #   @return [String]
    #
    InputArtifact = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The action declaration was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidActionDeclarationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval request already received a response or has expired.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource ARN is invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Reserved for future use.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidBlockerDeclarationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client token was specified in an invalid format</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidClientTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The job was specified in an invalid format or cannot be found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidJobException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The job state was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidJobStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The next token was specified in an invalid format. Make sure that the next token
    #             you provide is the token returned by a previous call.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The nonce was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidNonceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The stage declaration was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidStageDeclarationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The structure was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidStructureException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource tags are invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified authentication type is in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidWebhookAuthenticationParametersException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified event filter rule is in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    InvalidWebhookFilterPatternException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about a job.</p>
    #
    # @!attribute id
    #   <p>The unique system-generated ID of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>Other data about a job.</p>
    #
    #   @return [JobData]
    #
    # @!attribute nonce
    #   <p>A system-generated random number that AWS CodePipeline uses to ensure that the job
    #               is being worked on by only one job worker. Use this number in an <a>AcknowledgeJob</a> request.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The ID of the AWS account to use when performing the job.</p>
    #
    #   @return [String]
    #
    Job = ::Struct.new(
      :id,
      :data,
      :nonce,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents other information about a job required for a job worker to complete the
    #             job.</p>
    #
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute action_configuration
    #   <p>Represents information about an action configuration.</p>
    #
    #   @return [ActionConfiguration]
    #
    # @!attribute pipeline_context
    #   <p>Represents information about a pipeline to a job worker.</p>
    #           <note>
    #               <p>Includes <code>pipelineArn</code> and <code>pipelineExecutionId</code> for
    #                   custom jobs.</p>
    #           </note>
    #
    #   @return [PipelineContext]
    #
    # @!attribute input_artifacts
    #   <p>The artifact supplied to the job.</p>
    #
    #   @return [Array<Artifact>]
    #
    # @!attribute output_artifacts
    #   <p>The output of the job.</p>
    #
    #   @return [Array<Artifact>]
    #
    # @!attribute artifact_credentials
    #   <p>Represents an AWS session credentials object. These credentials are temporary
    #               credentials that are issued by AWS Secure Token Service (STS). They can be used to
    #               access input and output artifacts in the S3 bucket used to store artifacts for the
    #               pipeline in AWS CodePipeline.</p>
    #
    #   @return [AWSSessionCredentials]
    #
    # @!attribute continuation_token
    #   <p>A system-generated token, such as a AWS CodeDeploy deployment ID, required by a job
    #               to continue the job asynchronously.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>Represents information about the key used to encrypt data in the artifact store,
    #               such as an AWS Key Management Service (AWS KMS) key. </p>
    #
    #   @return [EncryptionKey]
    #
    JobData = ::Struct.new(
      :action_type_id,
      :action_configuration,
      :pipeline_context,
      :input_artifacts,
      :output_artifacts,
      :artifact_credentials,
      :continuation_token,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodePipeline::Types::JobData "\
          "action_type_id=#{action_type_id || 'nil'}, "\
          "action_configuration=#{action_configuration || 'nil'}, "\
          "pipeline_context=#{pipeline_context || 'nil'}, "\
          "input_artifacts=#{input_artifacts || 'nil'}, "\
          "output_artifacts=#{output_artifacts || 'nil'}, "\
          "artifact_credentials=\"[SENSITIVE]\", "\
          "continuation_token=#{continuation_token || 'nil'}, "\
          "encryption_key=#{encryption_key || 'nil'}>"
      end
    end

    # <p>Represents information about the details of a job.</p>
    #
    # @!attribute id
    #   <p>The unique system-generated ID of the job.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>Represents other information about a job required for a job worker to complete the
    #               job. </p>
    #
    #   @return [JobData]
    #
    # @!attribute account_id
    #   <p>The AWS account ID associated with the job.</p>
    #
    #   @return [String]
    #
    JobDetails = ::Struct.new(
      :id,
      :data,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The job was specified in an invalid format or cannot be found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    JobNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for JobStatus
    #
    module JobStatus
      # No documentation available.
      #
      Created = "Created"

      # No documentation available.
      #
      Queued = "Queued"

      # No documentation available.
      #
      Dispatched = "Dispatched"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      TimedOut = "TimedOut"

      # No documentation available.
      #
      Succeeded = "Succeeded"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>Details about the polling configuration for the <code>JobWorker</code> action engine,
    #             or executor.</p>
    #
    # @!attribute polling_accounts
    #   <p>The accounts in which the job worker is configured and might poll for jobs as part of
    #               the action execution.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute polling_service_principals
    #   <p>The service Principals in which the job worker is configured and might poll for jobs
    #               as part of the action execution.</p>
    #
    #   @return [Array<String>]
    #
    JobWorkerExecutorConfiguration = ::Struct.new(
      :polling_accounts,
      :polling_service_principals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about the configuration for the <code>Lambda</code> action engine, or
    #             executor.</p>
    #
    # @!attribute lambda_function_arn
    #   <p>The ARN of the Lambda function used by the action engine.</p>
    #
    #   @return [String]
    #
    LambdaExecutorConfiguration = ::Struct.new(
      :lambda_function_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of pipelines associated with the AWS account has exceeded the limit
    #             allowed for the account.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p> The name of the pipeline for which you want to list action execution history.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>Input information used to filter action execution history.</p>
    #
    #   @return [ActionExecutionFilter]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Action execution history
    #               is retained for up to 12 months, based on action execution start times. Default value is
    #               100. </p>
    #           <note>
    #               <p>Detailed execution history is available for executions run on or after February
    #                   21, 2019.</p>
    #           </note>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListActionExecutions</code> call,
    #               which can be used to return the next set of action executions in the list.</p>
    #
    #   @return [String]
    #
    ListActionExecutionsInput = ::Struct.new(
      :pipeline_name,
      :filter,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute action_execution_details
    #   <p>The details for a list of recent executions, such as action execution ID.</p>
    #
    #   @return [Array<ActionExecutionDetail>]
    #
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned and can be used in a subsequent <code>ListActionExecutions</code> call to
    #               return the next set of action executions in the list.</p>
    #
    #   @return [String]
    #
    ListActionExecutionsOutput = ::Struct.new(
      :action_execution_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>ListActionTypes</code> action.</p>
    #
    # @!attribute action_owner_filter
    #   <p>Filters the list of action types to those created by a specified entity.</p>
    #
    #   Enum, one of: ["AWS", "ThirdParty", "Custom"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous list action types call, which can
    #               be used to return the next set of action types in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute region_filter
    #   <p>The Region to filter on for the list of action types.</p>
    #
    #   @return [String]
    #
    ListActionTypesInput = ::Struct.new(
      :action_owner_filter,
      :next_token,
      :region_filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>ListActionTypes</code> action.</p>
    #
    # @!attribute action_types
    #   <p>Provides details of the action types.</p>
    #
    #   @return [Array<ActionType>]
    #
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned. It can be used in a subsequent list action types call to return the next set
    #               of action types in the list.</p>
    #
    #   @return [String]
    #
    ListActionTypesOutput = ::Struct.new(
      :action_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>ListPipelineExecutions</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline for which you want to get execution summary
    #               information.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value. Pipeline history is
    #               limited to the most recent 12 months, based on pipeline execution start times. Default
    #               value is 100.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token that was returned from the previous <code>ListPipelineExecutions</code>
    #               call, which can be used to return the next set of pipeline executions in the
    #               list.</p>
    #
    #   @return [String]
    #
    ListPipelineExecutionsInput = ::Struct.new(
      :pipeline_name,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>ListPipelineExecutions</code> action.</p>
    #
    # @!attribute pipeline_execution_summaries
    #   <p>A list of executions in the history of a pipeline.</p>
    #
    #   @return [Array<PipelineExecutionSummary>]
    #
    # @!attribute next_token
    #   <p>A token that can be used in the next <code>ListPipelineExecutions</code> call. To
    #               view all items in the list, continue to call this operation with each subsequent token
    #               until no more nextToken values are returned.</p>
    #
    #   @return [String]
    #
    ListPipelineExecutionsOutput = ::Struct.new(
      :pipeline_execution_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>ListPipelines</code> action.</p>
    #
    # @!attribute next_token
    #   <p>An identifier that was returned from the previous list pipelines call. It can be
    #               used to return the next set of pipelines in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of pipelines to return in a single call. To retrieve the remaining
    #               pipelines, make another call with the returned nextToken value. The minimum value you
    #               can specify is 1. The maximum accepted value is 1000.</p>
    #
    #   @return [Integer]
    #
    ListPipelinesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>ListPipelines</code> action.</p>
    #
    # @!attribute pipelines
    #   <p>The list of pipelines.</p>
    #
    #   @return [Array<PipelineSummary>]
    #
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned. It can be used in a subsequent list pipelines call to return the next set of
    #               pipelines in the list.</p>
    #
    #   @return [String]
    #
    ListPipelinesOutput = ::Struct.new(
      :pipelines,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token that was returned from the previous API call, which would be used to return
    #               the next page of the list. The ListTagsforResource call lists all available tags in one
    #               call and does not use pagination.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned and can be used in a subsequent API call to return the next page of the list.
    #               The ListTagsforResource call lists all available tags in one call and does not use
    #               pagination.</p>
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

    # <p>The detail returned for each webhook after listing webhooks, such as the webhook
    #             URL, the webhook name, and the webhook ARN.</p>
    #
    # @!attribute definition
    #   <p>The detail returned for each webhook, such as the webhook authentication type and
    #               filter rules.</p>
    #
    #   @return [WebhookDefinition]
    #
    # @!attribute url
    #   <p>A unique URL generated by CodePipeline. When a POST request is made to this URL,
    #               the defined pipeline is started as long as the body of the post request satisfies the
    #               defined authentication and filtering conditions. Deleting and re-creating a webhook
    #               makes the old URL invalid and generates a new one.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The text of the error message about the webhook.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>The number code of the error.</p>
    #
    #   @return [String]
    #
    # @!attribute last_triggered
    #   <p>The date and time a webhook was last successfully triggered, in timestamp
    #               format.</p>
    #
    #   @return [Time]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the webhook.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Specifies the tags applied to the webhook.</p>
    #
    #   @return [Array<Tag>]
    #
    ListWebhookItem = ::Struct.new(
      :definition,
      :url,
      :error_message,
      :error_code,
      :last_triggered,
      :arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token that was returned from the previous ListWebhooks call, which can be used
    #               to return the next set of webhooks in the list.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. To retrieve the remaining
    #               results, make another call with the returned nextToken value.</p>
    #
    #   @return [Integer]
    #
    ListWebhooksInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute webhooks
    #   <p>The JSON detail returned for each webhook in the list output for the ListWebhooks
    #               call.</p>
    #
    #   @return [Array<ListWebhookItem>]
    #
    # @!attribute next_token
    #   <p>If the amount of returned information is significantly large, an identifier is also
    #               returned and can be used in a subsequent ListWebhooks call to return the next set of
    #               webhooks in the list. </p>
    #
    #   @return [String]
    #
    ListWebhooksOutput = ::Struct.new(
      :webhooks,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The stage has failed in a later run of the pipeline and the pipelineExecutionId
    #             associated with the request is out of date.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    NotLatestPipelineExecutionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the output of an action.</p>
    #
    # @!attribute name
    #   <p>The name of the output of an artifact, such as "My App".</p>
    #           <p>The input artifact of an action must exactly match the output artifact declared in
    #               a preceding action, but the input artifact does not have to be the next action in strict
    #               sequence from the action that provided the output artifact. Actions in parallel can
    #               declare different output artifacts, which are in turn consumed by different following
    #               actions.</p>
    #           <p>Output artifact names must be unique within a pipeline.</p>
    #
    #   @return [String]
    #
    OutputArtifact = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Exceeded the total size limit for all variables in the pipeline.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OutputVariablesSizeExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about a pipeline to a job worker.</p>
    #         <note>
    #             <p>PipelineContext contains <code>pipelineArn</code> and
    #                     <code>pipelineExecutionId</code> for custom action jobs. The
    #                     <code>pipelineArn</code> and <code>pipelineExecutionId</code> fields are not
    #                 populated for ThirdParty action jobs.</p>
    #         </note>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline. This is a user-specified value. Pipeline names must be
    #               unique across all pipeline names under an Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute stage
    #   <p>The stage of the pipeline.</p>
    #
    #   @return [StageContext]
    #
    # @!attribute action
    #   <p>The context of an action to a job worker in the stage of a pipeline.</p>
    #
    #   @return [ActionContext]
    #
    # @!attribute pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_execution_id
    #   <p>The execution ID of the pipeline.</p>
    #
    #   @return [String]
    #
    PipelineContext = ::Struct.new(
      :pipeline_name,
      :stage,
      :action,
      :pipeline_arn,
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the structure of actions and stages to be performed in the
    #             pipeline.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) for AWS CodePipeline to use to either perform
    #               actions with no <code>actionRoleArn</code>, or to use to assume roles for actions with
    #               an <code>actionRoleArn</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute artifact_store
    #   <p>Represents information about the S3 bucket where artifacts are stored for the
    #               pipeline.</p>
    #           <note>
    #               <p>You must include either <code>artifactStore</code> or
    #                       <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                   create a cross-region action in your pipeline, you must use
    #                       <code>artifactStores</code>.</p>
    #           </note>
    #
    #   @return [ArtifactStore]
    #
    # @!attribute artifact_stores
    #   <p>A mapping of <code>artifactStore</code> objects and their corresponding AWS
    #               Regions. There must be an artifact store for the pipeline Region and for each
    #               cross-region action in the pipeline.</p>
    #           <note>
    #               <p>You must include either <code>artifactStore</code> or
    #                       <code>artifactStores</code> in your pipeline, but you cannot use both. If you
    #                   create a cross-region action in your pipeline, you must use
    #                       <code>artifactStores</code>.</p>
    #           </note>
    #
    #   @return [Hash<String, ArtifactStore>]
    #
    # @!attribute stages
    #   <p>The stage in which to perform the action.</p>
    #
    #   @return [Array<StageDeclaration>]
    #
    # @!attribute version
    #   <p>The version number of the pipeline. A new pipeline always has a version number of
    #               1. This number is incremented when a pipeline is updated.</p>
    #
    #   @return [Integer]
    #
    PipelineDeclaration = ::Struct.new(
      :name,
      :role_arn,
      :artifact_store,
      :artifact_stores,
      :stages,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about an execution of a pipeline.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline with the specified pipeline execution.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_version
    #   <p>The version number of the pipeline with the specified pipeline execution.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the pipeline execution.</p>
    #           <ul>
    #               <li>
    #                   <p>Cancelled: The pipeline’s definition was updated before the pipeline
    #                       execution could be completed.</p>
    #               </li>
    #               <li>
    #                   <p>InProgress: The pipeline execution is currently running.</p>
    #               </li>
    #               <li>
    #                   <p>Stopped: The pipeline execution was manually stopped. For more information,
    #                       see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                   <p>Stopping: The pipeline execution received a request to be manually stopped.
    #                       Depending on the selected stop mode, the execution is either completing or
    #                       abandoning in-progress actions. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                   <p>Succeeded: The pipeline execution was completed successfully. </p>
    #               </li>
    #               <li>
    #                   <p>Superseded: While this pipeline execution was waiting for the next stage to
    #                       be completed, a newer pipeline execution advanced and continued through the
    #                       pipeline instead. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html concepts-superseded">Superseded Executions</a>.</p>
    #               </li>
    #               <li>
    #                   <p>Failed: The pipeline execution was not completed successfully.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute status_summary
    #   <p>A summary that contains a description of the pipeline execution status.</p>
    #
    #   @return [String]
    #
    # @!attribute artifact_revisions
    #   <p>A list of <code>ArtifactRevision</code> objects included in a pipeline
    #               execution.</p>
    #
    #   @return [Array<ArtifactRevision>]
    #
    PipelineExecution = ::Struct.new(
      :pipeline_name,
      :pipeline_version,
      :pipeline_execution_id,
      :status,
      :status_summary,
      :artifact_revisions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pipeline execution was specified in an invalid format or cannot be found, or an
    #             execution ID does not belong to the specified pipeline. </p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    PipelineExecutionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unable to stop the pipeline execution. The execution might already be in a
    #                 <code>Stopped</code> state, or it might no longer be in progress.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PipelineExecutionNotStoppableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PipelineExecutionStatus
    #
    module PipelineExecutionStatus
      # No documentation available.
      #
      Cancelled = "Cancelled"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Stopped = "Stopped"

      # No documentation available.
      #
      Stopping = "Stopping"

      # No documentation available.
      #
      Succeeded = "Succeeded"

      # No documentation available.
      #
      Superseded = "Superseded"

      # No documentation available.
      #
      Failed = "Failed"
    end

    # <p>Summary information about a pipeline execution.</p>
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the pipeline execution.</p>
    #           <ul>
    #               <li>
    #                   <p>InProgress: The pipeline execution is currently running.</p>
    #               </li>
    #               <li>
    #                   <p>Stopped: The pipeline execution was manually stopped. For more information,
    #                       see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                   <p>Stopping: The pipeline execution received a request to be manually stopped.
    #                       Depending on the selected stop mode, the execution is either completing or
    #                       abandoning in-progress actions. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html concepts-executions-stopped">Stopped Executions</a>.</p>
    #               </li>
    #               <li>
    #                   <p>Succeeded: The pipeline execution was completed successfully. </p>
    #               </li>
    #               <li>
    #                   <p>Superseded: While this pipeline execution was waiting for the next stage to
    #                       be completed, a newer pipeline execution advanced and continued through the
    #                       pipeline instead. For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/concepts.html concepts-superseded">Superseded Executions</a>.</p>
    #               </li>
    #               <li>
    #                   <p>Failed: The pipeline execution was not completed successfully.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["Cancelled", "InProgress", "Stopped", "Stopping", "Succeeded", "Superseded", "Failed"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time when the pipeline execution began, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_update_time
    #   <p>The date and time of the last change to the pipeline execution, in timestamp
    #               format.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_revisions
    #   <p>A list of the source artifact revisions that initiated a pipeline
    #               execution.</p>
    #
    #   @return [Array<SourceRevision>]
    #
    # @!attribute trigger
    #   <p>The interaction or event that started a pipeline execution, such as automated change
    #               detection or a <code>StartPipelineExecution</code> API call.</p>
    #
    #   @return [ExecutionTrigger]
    #
    # @!attribute stop_trigger
    #   <p>The interaction that stopped a pipeline execution.</p>
    #
    #   @return [StopExecutionTrigger]
    #
    PipelineExecutionSummary = ::Struct.new(
      :pipeline_execution_id,
      :status,
      :start_time,
      :last_update_time,
      :source_revisions,
      :trigger,
      :stop_trigger,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a pipeline.</p>
    #
    # @!attribute pipeline_arn
    #   <p>The Amazon Resource Name (ARN) of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p>The date and time the pipeline was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated
    #   <p>The date and time the pipeline was last updated, in timestamp format.</p>
    #
    #   @return [Time]
    #
    PipelineMetadata = ::Struct.new(
      :pipeline_arn,
      :created,
      :updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified pipeline name is already in use.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    PipelineNameInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pipeline was specified in an invalid format or cannot be found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    PipelineNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns a summary of a pipeline.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version number of the pipeline.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created
    #   <p>The date and time the pipeline was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated
    #   <p>The date and time of the last update to the pipeline, in timestamp
    #               format.</p>
    #
    #   @return [Time]
    #
    PipelineSummary = ::Struct.new(
      :name,
      :version,
      :created,
      :updated,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pipeline version was specified in an invalid format or cannot be
    #             found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    PipelineVersionNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PollForJobs</code> action.</p>
    #
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute query_param
    #   <p>A map of property names and values. For an action type with no queryable
    #               properties, this value must be null or an empty map. For an action type with a queryable
    #               property, you must supply that property as a key in the map. Only jobs whose action
    #               configuration matches the mapped value are returned.</p>
    #
    #   @return [Hash<String, String>]
    #
    PollForJobsInput = ::Struct.new(
      :action_type_id,
      :max_batch_size,
      :query_param,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>PollForJobs</code> action.</p>
    #
    # @!attribute jobs
    #   <p>Information about the jobs to take action on.</p>
    #
    #   @return [Array<Job>]
    #
    PollForJobsOutput = ::Struct.new(
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PollForThirdPartyJobs</code> action.</p>
    #
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute max_batch_size
    #   <p>The maximum number of jobs to return in a poll for jobs call.</p>
    #
    #   @return [Integer]
    #
    PollForThirdPartyJobsInput = ::Struct.new(
      :action_type_id,
      :max_batch_size,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>PollForThirdPartyJobs</code> action.</p>
    #
    # @!attribute jobs
    #   <p>Information about the jobs to take action on.</p>
    #
    #   @return [Array<ThirdPartyJob>]
    #
    PollForThirdPartyJobsOutput = ::Struct.new(
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PutActionRevision</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline that starts processing the revision to the
    #               source.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage that contains the action that acts on the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute action_name
    #   <p>The name of the action that processes the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute action_revision
    #   <p>Represents information about the version (or revision) of an action.</p>
    #
    #   @return [ActionRevision]
    #
    PutActionRevisionInput = ::Struct.new(
      :pipeline_name,
      :stage_name,
      :action_name,
      :action_revision,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>PutActionRevision</code> action.</p>
    #
    # @!attribute new_revision
    #   <p>Indicates whether the artifact revision was previously used in an execution of the
    #               specified pipeline.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the current workflow state of the pipeline.</p>
    #
    #   @return [String]
    #
    PutActionRevisionOutput = ::Struct.new(
      :new_revision,
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.new_revision ||= false
      end
    end

    # <p>Represents the input of a <code>PutApprovalResult</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline that contains the action. </p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the stage that contains the action.</p>
    #
    #   @return [String]
    #
    # @!attribute action_name
    #   <p>The name of the action for which approval is requested.</p>
    #
    #   @return [String]
    #
    # @!attribute result
    #   <p>Represents information about the result of the approval request.</p>
    #
    #   @return [ApprovalResult]
    #
    # @!attribute token
    #   <p>The system-generated token used to identify a unique approval request. The token
    #               for each open approval request can be obtained using the <a>GetPipelineState</a> action. It is used to validate that the approval
    #               request corresponding to this token is still valid.</p>
    #
    #   @return [String]
    #
    PutApprovalResultInput = ::Struct.new(
      :pipeline_name,
      :stage_name,
      :action_name,
      :result,
      :token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>PutApprovalResult</code> action.</p>
    #
    # @!attribute approved_at
    #   <p>The timestamp showing when the approval or rejection was submitted.</p>
    #
    #   @return [Time]
    #
    PutApprovalResultOutput = ::Struct.new(
      :approved_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PutJobFailureResult</code> action.</p>
    #
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job that failed. This is the same ID returned
    #               from <code>PollForJobs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_details
    #   <p>The details about the failure of a job.</p>
    #
    #   @return [FailureDetails]
    #
    PutJobFailureResultInput = ::Struct.new(
      :job_id,
      :failure_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutJobFailureResultOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PutJobSuccessResult</code> action.</p>
    #
    # @!attribute job_id
    #   <p>The unique system-generated ID of the job that succeeded. This is the same ID
    #               returned from <code>PollForJobs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute current_revision
    #   <p>The ID of the current revision of the artifact successfully worked on by the
    #               job.</p>
    #
    #   @return [CurrentRevision]
    #
    # @!attribute continuation_token
    #   <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a
    #               successful job provides to identify a custom action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the custom action. When the action is complete, no
    #               continuation token should be supplied.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_details
    #   <p>The execution details of the successful job, such as the actions taken by the job
    #               worker.</p>
    #
    #   @return [ExecutionDetails]
    #
    # @!attribute output_variables
    #   <p>Key-value pairs produced as output by a job worker that can be made available to a
    #               downstream action configuration. <code>outputVariables</code> can be included only when
    #               there is no continuation token on the request.</p>
    #
    #   @return [Hash<String, String>]
    #
    PutJobSuccessResultInput = ::Struct.new(
      :job_id,
      :current_revision,
      :continuation_token,
      :execution_details,
      :output_variables,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutJobSuccessResultOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PutThirdPartyJobFailureResult</code>
    #             action.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the job that failed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_details
    #   <p>Represents information about failure details.</p>
    #
    #   @return [FailureDetails]
    #
    PutThirdPartyJobFailureResultInput = ::Struct.new(
      :job_id,
      :client_token,
      :failure_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutThirdPartyJobFailureResultOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>PutThirdPartyJobSuccessResult</code>
    #             action.</p>
    #
    # @!attribute job_id
    #   <p>The ID of the job that successfully completed. This is the same ID returned from
    #                   <code>PollForThirdPartyJobs</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The clientToken portion of the clientId and clientToken pair used to verify that
    #               the calling entity is allowed access to the job and its details.</p>
    #
    #   @return [String]
    #
    # @!attribute current_revision
    #   <p>Represents information about a current revision.</p>
    #
    #   @return [CurrentRevision]
    #
    # @!attribute continuation_token
    #   <p>A token generated by a job worker, such as an AWS CodeDeploy deployment ID, that a
    #               successful job provides to identify a partner action in progress. Future jobs use this
    #               token to identify the running instance of the action. It can be reused to return more
    #               information about the progress of the partner action. When the action is complete, no
    #               continuation token should be supplied.</p>
    #
    #   @return [String]
    #
    # @!attribute execution_details
    #   <p>The details of the actions taken and results produced on an artifact as it passes
    #               through stages in the pipeline. </p>
    #
    #   @return [ExecutionDetails]
    #
    PutThirdPartyJobSuccessResultInput = ::Struct.new(
      :job_id,
      :client_token,
      :current_revision,
      :continuation_token,
      :execution_details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutThirdPartyJobSuccessResultOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute webhook
    #   <p>The detail provided in an input file to create the webhook, such as the webhook
    #               name, the pipeline name, and the action name. Give the webhook a unique name that helps
    #               you identify it. You might name the webhook after the pipeline and action it targets so
    #               that you can easily recognize what it's used for later.</p>
    #
    #   @return [WebhookDefinition]
    #
    # @!attribute tags
    #   <p>The tags for the webhook.</p>
    #
    #   @return [Array<Tag>]
    #
    PutWebhookInput = ::Struct.new(
      :webhook,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute webhook
    #   <p>The detail returned from creating the webhook, such as the webhook name, webhook
    #               URL, and webhook ARN.</p>
    #
    #   @return [ListWebhookItem]
    #
    PutWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute webhook_name
    #   <p>The name of an existing webhook created with PutWebhook to register with a
    #               supported third party. </p>
    #
    #   @return [String]
    #
    RegisterWebhookWithThirdPartyInput = ::Struct.new(
      :webhook_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterWebhookWithThirdPartyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because of an unknown error, exception, or failure.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RequestFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a <code>RetryStageExecution</code> action.</p>
    #
    # @!attribute pipeline_name
    #   <p>The name of the pipeline that contains the failed stage.</p>
    #
    #   @return [String]
    #
    # @!attribute stage_name
    #   <p>The name of the failed stage to be retried.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution in the failed stage to be retried. Use the <a>GetPipelineState</a> action to retrieve the current pipelineExecutionId of
    #               the failed stage</p>
    #
    #   @return [String]
    #
    # @!attribute retry_mode
    #   <p>The scope of the retry attempt. Currently, the only supported value is
    #               FAILED_ACTIONS.</p>
    #
    #   Enum, one of: ["FAILED_ACTIONS"]
    #
    #   @return [String]
    #
    RetryStageExecutionInput = ::Struct.new(
      :pipeline_name,
      :stage_name,
      :pipeline_execution_id,
      :retry_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>RetryStageExecution</code> action.</p>
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the current workflow execution in the failed stage.</p>
    #
    #   @return [String]
    #
    RetryStageExecutionOutput = ::Struct.new(
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location of the S3 bucket that contains a revision.</p>
    #
    # @!attribute bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute object_key
    #   <p>The key of the object in the S3 bucket, which uniquely identifies the object in the
    #               bucket.</p>
    #
    #   @return [String]
    #
    S3ArtifactLocation = ::Struct.new(
      :bucket_name,
      :object_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon S3 artifact location for an action's artifacts.</p>
    #
    # @!attribute bucket
    #   <p>The Amazon S3 artifact bucket for an action's artifacts.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The artifact name.</p>
    #
    #   @return [String]
    #
    S3Location = ::Struct.new(
      :bucket,
      :key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the version (or revision) of a source artifact that initiated a
    #             pipeline execution.</p>
    #
    # @!attribute action_name
    #   <p>The name of the action that processed the revision to the source
    #               artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated unique ID that identifies the revision number of the
    #               artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_summary
    #   <p>Summary information about the most recent revision of the artifact. For GitHub and
    #               AWS CodeCommit repositories, the commit message. For Amazon S3 buckets or actions, the
    #               user-provided content of a <code>codepipeline-artifact-revision-summary</code> key
    #               specified in the object metadata.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_url
    #   <p>The commit ID for the artifact revision. For artifacts stored in GitHub or AWS
    #               CodeCommit repositories, the commit ID is linked to a commit details page.</p>
    #
    #   @return [String]
    #
    SourceRevision = ::Struct.new(
      :action_name,
      :revision_id,
      :revision_summary,
      :revision_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about a stage to a job worker.</p>
    #
    # @!attribute name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    StageContext = ::Struct.new(
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about a stage and its definition.</p>
    #
    # @!attribute name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute blockers
    #   <p>Reserved for future use.</p>
    #
    #   @return [Array<BlockerDeclaration>]
    #
    # @!attribute actions
    #   <p>The actions included in a stage.</p>
    #
    #   @return [Array<ActionDeclaration>]
    #
    StageDeclaration = ::Struct.new(
      :name,
      :blockers,
      :actions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the run of a stage.</p>
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution associated with the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the stage, or for a completed stage, the last status of the
    #               stage.</p>
    #           <note>
    #               <p>A status of cancelled means that the pipeline’s definition was updated before the
    #                   stage execution could be completed.</p>
    #           </note>
    #
    #   Enum, one of: ["Cancelled", "InProgress", "Failed", "Stopped", "Stopping", "Succeeded"]
    #
    #   @return [String]
    #
    StageExecution = ::Struct.new(
      :pipeline_execution_id,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StageExecutionStatus
    #
    module StageExecutionStatus
      # No documentation available.
      #
      Cancelled = "Cancelled"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Stopped = "Stopped"

      # No documentation available.
      #
      Stopping = "Stopping"

      # No documentation available.
      #
      Succeeded = "Succeeded"
    end

    # <p>The stage was specified in an invalid format or cannot be found.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    StageNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Unable to retry. The pipeline structure or stage state might have changed while
    #             actions awaited retry, or the stage contains no failed
    #             actions.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    StageNotRetryableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StageRetryMode
    #
    module StageRetryMode
      # No documentation available.
      #
      FAILED_ACTIONS = "FAILED_ACTIONS"
    end

    # <p>Represents information about the state of the stage.</p>
    #
    # @!attribute stage_name
    #   <p>The name of the stage.</p>
    #
    #   @return [String]
    #
    # @!attribute inbound_execution
    #   <p>Represents information about the run of a stage.</p>
    #
    #   @return [StageExecution]
    #
    # @!attribute inbound_transition_state
    #   <p>The state of the inbound transition, which is either enabled or disabled.</p>
    #
    #   @return [TransitionState]
    #
    # @!attribute action_states
    #   <p>The state of the stage.</p>
    #
    #   @return [Array<ActionState>]
    #
    # @!attribute latest_execution
    #   <p>Information about the latest execution in the stage, including its ID and
    #               status.</p>
    #
    #   @return [StageExecution]
    #
    StageState = ::Struct.new(
      :stage_name,
      :inbound_execution,
      :inbound_transition_state,
      :action_states,
      :latest_execution,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StageTransitionType
    #
    module StageTransitionType
      # No documentation available.
      #
      Inbound = "Inbound"

      # No documentation available.
      #
      Outbound = "Outbound"
    end

    # <p>Represents the input of a <code>StartPipelineExecution</code> action.</p>
    #
    # @!attribute name
    #   <p>The name of the pipeline to start.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>The system-generated unique ID used to identify a unique execution
    #               request.</p>
    #
    #   @return [String]
    #
    StartPipelineExecutionInput = ::Struct.new(
      :name,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a <code>StartPipelineExecution</code> action.</p>
    #
    # @!attribute pipeline_execution_id
    #   <p>The unique system-generated ID of the pipeline execution that was
    #               started.</p>
    #
    #   @return [String]
    #
    StartPipelineExecutionOutput = ::Struct.new(
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The interaction that stopped a pipeline execution.</p>
    #
    # @!attribute reason
    #   <p>The user-specified reason the pipeline was stopped.</p>
    #
    #   @return [String]
    #
    StopExecutionTrigger = ::Struct.new(
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pipeline_name
    #   <p>The name of the pipeline to stop.</p>
    #
    #   @return [String]
    #
    # @!attribute pipeline_execution_id
    #   <p>The ID of the pipeline execution to be stopped in the current stage. Use the
    #                   <code>GetPipelineState</code> action to retrieve the current
    #               pipelineExecutionId.</p>
    #
    #   @return [String]
    #
    # @!attribute abandon
    #   <p>Use this option to stop the pipeline execution by abandoning, rather than finishing,
    #               in-progress actions.</p>
    #           <note>
    #               <p>This option can lead to failed or out-of-sequence tasks.</p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute reason
    #   <p>Use this option to enter comments, such as the reason the pipeline was stopped.</p>
    #
    #   @return [String]
    #
    StopPipelineExecutionInput = ::Struct.new(
      :pipeline_name,
      :pipeline_execution_id,
      :abandon,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.abandon ||= false
      end
    end

    # @!attribute pipeline_execution_id
    #   <p>The unique system-generated ID of the pipeline execution that was stopped.</p>
    #
    #   @return [String]
    #
    StopPipelineExecutionOutput = ::Struct.new(
      :pipeline_execution_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag is a key-value pair that is used to manage the resource.</p>
    #
    # @!attribute key
    #   <p>The tag's key.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The tag's value.</p>
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
    #   <p>The Amazon Resource Name (ARN) of the resource you want to add tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags you want to modify or add to the resource.</p>
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

    # <p>A response to a <code>PollForThirdPartyJobs</code> request returned by AWS
    #             CodePipeline when there is a job to be worked on by a partner action.</p>
    #
    # @!attribute client_id
    #   <p>The <code>clientToken</code> portion of the <code>clientId</code> and
    #                   <code>clientToken</code> pair used to verify that the calling entity is allowed
    #               access to the job and its details.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The identifier used to identify the job in AWS CodePipeline.</p>
    #
    #   @return [String]
    #
    ThirdPartyJob = ::Struct.new(
      :client_id,
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the job data for a partner action.</p>
    #
    # @!attribute action_type_id
    #   <p>Represents information about an action type.</p>
    #
    #   @return [ActionTypeId]
    #
    # @!attribute action_configuration
    #   <p>Represents information about an action configuration.</p>
    #
    #   @return [ActionConfiguration]
    #
    # @!attribute pipeline_context
    #   <p>Represents information about a pipeline to a job worker.</p>
    #           <note>
    #               <p>Does not include <code>pipelineArn</code> and <code>pipelineExecutionId</code>
    #                   for ThirdParty jobs.</p>
    #           </note>
    #
    #   @return [PipelineContext]
    #
    # @!attribute input_artifacts
    #   <p>The name of the artifact that is worked on by the action, if any. This name might
    #               be system-generated, such as "MyApp", or it might be defined by the user when the action
    #               is created. The input artifact name must match the name of an output artifact generated
    #               by an action in an earlier action or stage of the pipeline.</p>
    #
    #   @return [Array<Artifact>]
    #
    # @!attribute output_artifacts
    #   <p>The name of the artifact that is the result of the action, if any. This name might
    #               be system-generated, such as "MyBuiltApp", or it might be defined by the user when the
    #               action is created.</p>
    #
    #   @return [Array<Artifact>]
    #
    # @!attribute artifact_credentials
    #   <p>Represents an AWS session credentials object. These credentials are temporary
    #               credentials that are issued by AWS Secure Token Service (STS). They can be used to
    #               access input and output artifacts in the S3 bucket used to store artifact for the
    #               pipeline in AWS CodePipeline. </p>
    #
    #   @return [AWSSessionCredentials]
    #
    # @!attribute continuation_token
    #   <p>A system-generated token, such as a AWS CodeDeploy deployment ID, that a job
    #               requires to continue the job asynchronously.</p>
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p>The encryption key used to encrypt and decrypt data in the artifact store for the
    #               pipeline, such as an AWS Key Management Service (AWS KMS) key. This is optional and
    #               might not be present.</p>
    #
    #   @return [EncryptionKey]
    #
    ThirdPartyJobData = ::Struct.new(
      :action_type_id,
      :action_configuration,
      :pipeline_context,
      :input_artifacts,
      :output_artifacts,
      :artifact_credentials,
      :continuation_token,
      :encryption_key,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodePipeline::Types::ThirdPartyJobData "\
          "action_type_id=#{action_type_id || 'nil'}, "\
          "action_configuration=#{action_configuration || 'nil'}, "\
          "pipeline_context=#{pipeline_context || 'nil'}, "\
          "input_artifacts=#{input_artifacts || 'nil'}, "\
          "output_artifacts=#{output_artifacts || 'nil'}, "\
          "artifact_credentials=\"[SENSITIVE]\", "\
          "continuation_token=#{continuation_token || 'nil'}, "\
          "encryption_key=#{encryption_key || 'nil'}>"
      end
    end

    # <p>The details of a job sent in response to a <code>GetThirdPartyJobDetails</code>
    #             request.</p>
    #
    # @!attribute id
    #   <p>The identifier used to identify the job details in AWS CodePipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The data to be returned by the third party job worker.</p>
    #
    #   @return [ThirdPartyJobData]
    #
    # @!attribute nonce
    #   <p>A system-generated random number that AWS CodePipeline uses to ensure that the job
    #               is being worked on by only one job worker. Use this number in an <a>AcknowledgeThirdPartyJob</a> request.</p>
    #
    #   @return [String]
    #
    ThirdPartyJobDetails = ::Struct.new(
      :id,
      :data,
      :nonce,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tags limit for a resource has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents information about the state of transitions between one stage and another
    #             stage.</p>
    #
    # @!attribute enabled
    #   <p>Whether the transition between stages is enabled (true) or disabled
    #               (false).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute last_changed_by
    #   <p>The ID of the user who last changed the transition state.</p>
    #
    #   @return [String]
    #
    # @!attribute last_changed_at
    #   <p>The timestamp when the transition state was last changed.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_reason
    #   <p>The user-specified reason why the transition between two stages of a pipeline was
    #               disabled.</p>
    #
    #   @return [String]
    #
    TransitionState = ::Struct.new(
      :enabled,
      :last_changed_by,
      :last_changed_at,
      :disabled_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enabled ||= false
      end
    end

    # Includes enum constants for TriggerType
    #
    module TriggerType
      # No documentation available.
      #
      CreatePipeline = "CreatePipeline"

      # No documentation available.
      #
      StartPipelineExecution = "StartPipelineExecution"

      # No documentation available.
      #
      PollForSourceChanges = "PollForSourceChanges"

      # No documentation available.
      #
      Webhook = "Webhook"

      # No documentation available.
      #
      CloudWatchEvent = "CloudWatchEvent"

      # No documentation available.
      #
      PutActionRevision = "PutActionRevision"
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource to remove tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of keys for the tags to be removed from the resource.</p>
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

    # @!attribute action_type
    #   <p>The action type definition for the action type to be updated.</p>
    #
    #   @return [ActionTypeDeclaration]
    #
    UpdateActionTypeInput = ::Struct.new(
      :action_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateActionTypeOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of an <code>UpdatePipeline</code> action.</p>
    #
    # @!attribute pipeline
    #   <p>The name of the pipeline to be updated.</p>
    #
    #   @return [PipelineDeclaration]
    #
    UpdatePipelineInput = ::Struct.new(
      :pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of an <code>UpdatePipeline</code> action.</p>
    #
    # @!attribute pipeline
    #   <p>The structure of the updated pipeline.</p>
    #
    #   @return [PipelineDeclaration]
    #
    UpdatePipelineOutput = ::Struct.new(
      :pipeline,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The validation was specified in an invalid format.</p>
    #
    # @!attribute message
    #   <p>The message provided to the user in the event of an exception.</p>
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The authentication applied to incoming webhook trigger requests.</p>
    #
    # @!attribute allowed_ip_range
    #   <p>The property used to configure acceptance of webhooks in an IP address range. For
    #               IP, only the <code>AllowedIPRange</code> property must be set. This property must be set
    #               to a valid CIDR range.</p>
    #
    #   @return [String]
    #
    # @!attribute secret_token
    #   <p>The property used to configure GitHub authentication. For GITHUB_HMAC, only the
    #                   <code>SecretToken</code> property must be set.</p>
    #
    #   @return [String]
    #
    WebhookAuthConfiguration = ::Struct.new(
      :allowed_ip_range,
      :secret_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WebhookAuthenticationType
    #
    module WebhookAuthenticationType
      # No documentation available.
      #
      GITHUB_HMAC = "GITHUB_HMAC"

      # No documentation available.
      #
      IP = "IP"

      # No documentation available.
      #
      UNAUTHENTICATED = "UNAUTHENTICATED"
    end

    # <p>Represents information about a webhook and its definition.</p>
    #
    # @!attribute name
    #   <p>The name of the webhook.</p>
    #
    #   @return [String]
    #
    # @!attribute target_pipeline
    #   <p>The name of the pipeline you want to connect to the webhook.</p>
    #
    #   @return [String]
    #
    # @!attribute target_action
    #   <p>The name of the action in a pipeline you want to connect to the webhook. The action
    #               must be from the source (first) stage of the pipeline.</p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>A list of rules applied to the body/payload sent in the POST request to a webhook
    #               URL. All defined rules must pass for the request to be accepted and the pipeline
    #               started.</p>
    #
    #   @return [Array<WebhookFilterRule>]
    #
    # @!attribute authentication
    #   <p>Supported options are GITHUB_HMAC, IP, and UNAUTHENTICATED.</p>
    #           <ul>
    #               <li>
    #                   <p>For information about the authentication scheme implemented by GITHUB_HMAC,
    #                       see <a href="https://developer.github.com/webhooks/securing/">Securing your
    #                           webhooks</a> on the GitHub Developer website.</p>
    #               </li>
    #               <li>
    #                   <p> IP rejects webhooks trigger requests unless they originate from an IP
    #                       address in the IP range whitelisted in the authentication
    #                       configuration.</p>
    #               </li>
    #               <li>
    #                   <p> UNAUTHENTICATED accepts all webhook trigger requests regardless of
    #                       origin.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["GITHUB_HMAC", "IP", "UNAUTHENTICATED"]
    #
    #   @return [String]
    #
    # @!attribute authentication_configuration
    #   <p>Properties that configure the authentication applied to incoming webhook trigger
    #               requests. The required properties depend on the authentication type. For GITHUB_HMAC,
    #               only the <code>SecretToken </code>property must be set. For IP, only the
    #                   <code>AllowedIPRange </code>property must be set to a valid CIDR range. For
    #               UNAUTHENTICATED, no properties can be set.</p>
    #
    #   @return [WebhookAuthConfiguration]
    #
    WebhookDefinition = ::Struct.new(
      :name,
      :target_pipeline,
      :target_action,
      :filters,
      :authentication,
      :authentication_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The event criteria that specify when a webhook notification is sent to your
    #             URL.</p>
    #
    # @!attribute json_path
    #   <p>A JsonPath expression that is applied to the body/payload of the webhook. The value
    #               selected by the JsonPath expression must match the value specified in the
    #                   <code>MatchEquals</code> field. Otherwise, the request is ignored. For more
    #               information, see <a href="https://github.com/json-path/JsonPath">Java JsonPath
    #                   implementation</a> in GitHub.</p>
    #
    #   @return [String]
    #
    # @!attribute match_equals
    #   <p>The value selected by the <code>JsonPath</code> expression must match what is
    #               supplied in the <code>MatchEquals</code> field. Otherwise, the request is ignored.
    #               Properties from the target action configuration can be included as placeholders in this
    #               value by surrounding the action configuration key with curly brackets. For example, if
    #               the value supplied here is "refs/heads/{Branch}" and the target action has an action
    #               configuration property called "Branch" with a value of "master", the
    #                   <code>MatchEquals</code> value is evaluated as "refs/heads/master". For a list of
    #               action configuration properties for built-in action types, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-pipeline-structure.html action-requirements">Pipeline Structure Reference Action Requirements</a>.</p>
    #
    #   @return [String]
    #
    WebhookFilterRule = ::Struct.new(
      :json_path,
      :match_equals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified webhook was entered in an invalid format or cannot be
    #             found.</p>
    #
    WebhookNotFoundException = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
