# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppConfig
  module Types

    # @!attribute id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The application name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    Application = ::Struct.new(
      :id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Detailed information about the input that failed to satisfy the constraints specified by
    #          a call.</p>
    #
    class BadRequestDetails < Hearth::Union
      # <p>Detailed information about the bad request exception error when creating a hosted
      #          configuration version.</p>
      #
      class InvalidConfiguration < BadRequestDetails
        def to_h
          { invalid_configuration: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppConfig::Types::InvalidConfiguration #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < BadRequestDetails
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::AppConfig::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Enum, one of: ["InvalidConfiguration"]
    #
    #   @return [String]
    #
    # @!attribute details
    #   <p>Detailed information about the input that failed to satisfy the constraints specified by
    #            a call.</p>
    #
    #   @return [BadRequestDetails]
    #
    BadRequestException = ::Struct.new(
      :message,
      :reason,
      :details,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BadRequestReason
    #
    module BadRequestReason
      # No documentation available.
      #
      INVALID_CONFIGURATION = "InvalidConfiguration"
    end

    # Includes enum constants for BytesMeasure
    #
    module BytesMeasure
      # No documentation available.
      #
      KILOBYTES = "KILOBYTES"
    end

    # <p>A summary of a configuration profile.</p>
    #
    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The ID of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute validator_types
    #   <p>The types of validators in the configuration profile.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports <code>feature
    #               flags</code> and <code>freeform</code> configurations. We recommend you create feature
    #            flag configurations to enable or disable new features and freeform configurations to
    #            distribute configurations to an application. When calling this API, enter one of the
    #            following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #
    #   @return [String]
    #
    ConfigurationProfileSummary = ::Struct.new(
      :application_id,
      :id,
      :name,
      :location_uri,
      :validator_types,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #          resource.</p>
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

    # @!attribute name
    #   <p>A name for the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata to assign to the application. Tags help organize and categorize your AppConfig
    #            resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateApplicationInput = ::Struct.new(
      :name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The application name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    CreateApplicationOutput = ::Struct.new(
      :id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name for the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>A URI to locate the configuration. You can specify the AppConfig hosted configuration
    #            store, Systems Manager (SSM) document, an SSM Parameter Store parameter, or an Amazon S3 object. For the
    #            hosted configuration store and for feature flags, specify <code>hosted</code>. For an SSM
    #            document, specify either the document name in the format
    #               <code>ssm-document://<Document_name></code> or the Amazon Resource Name (ARN). For
    #            a parameter, specify either the parameter name in the format
    #               <code>ssm-parameter://<Parameter_name></code> or the ARN. For an Amazon S3 object,
    #            specify the URI in the following format: <code>s3://<bucket>/<objectKey>
    #            </code>. Here is an example:
    #            <code>s3://my-bucket/my-app/us-east-1/my-config.json</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #            <important>
    #               <p>A retrieval role ARN is not required for configurations stored in the AppConfig
    #               hosted configuration store. It is required for all other sources that store your
    #               configuration. </p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    #   @return [Array<Validator>]
    #
    # @!attribute tags
    #   <p>Metadata to assign to the configuration profile. Tags help organize and categorize your
    #            AppConfig resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports <code>feature
    #               flags</code> and <code>freeform</code> configurations. We recommend you create feature
    #            flag configurations to enable or disable new features and freeform configurations to
    #            distribute configurations to an application. When calling this API, enter one of the
    #            following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateConfigurationProfileInput = ::Struct.new(
      :application_id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :tags,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The configuration profile description.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    #   @return [Array<Validator>]
    #
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports <code>feature
    #               flags</code> and <code>freeform</code> configurations. We recommend you create feature
    #            flag configurations to enable or disable new features and freeform configurations to
    #            distribute configurations to an application. When calling this API, enter one of the
    #            following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #
    #   @return [String]
    #
    CreateConfigurationProfileOutput = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>A name for the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    #
    #   @return [Integer]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time AppConfig monitors for alarms before considering the deployment to be
    #            complete and no longer eligible for automatic roll back.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig supports the
    #            following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes the
    #            deployment by dividing the total number of targets by the value specified for <code>Step
    #               percentage</code>. For example, a linear deployment that uses a <code>Step
    #               percentage</code> of 10 deploys the configuration to 10 percent of the hosts. After
    #            those deployments are complete, the system deploys the configuration to the next 10
    #            percent. This continues until 100% of the targets have successfully received the
    #            configuration.</p>
    #
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig processes the
    #            deployment exponentially using the following formula: <code>G*(2^N)</code>. In this
    #            formula, <code>G</code> is the growth factor specified by the user and <code>N</code> is
    #            the number of steps until the configuration is deployed to all targets. For example, if you
    #            specify a growth factor of 2, then the system rolls out the configuration as
    #            follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #
    #   Enum, one of: ["NONE", "SSM_DOCUMENT"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata to assign to the deployment strategy. Tags help organize and categorize your
    #            AppConfig resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDeploymentStrategyInput = ::Struct.new(
      :name,
      :description,
      :deployment_duration_in_minutes,
      :final_bake_time_in_minutes,
      :growth_factor,
      :growth_type,
      :replicate_to,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.final_bake_time_in_minutes ||= 0
      end

    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #
    #   Enum, one of: ["NONE", "SSM_DOCUMENT"]
    #
    #   @return [String]
    #
    CreateDeploymentStrategyOutput = ::Struct.new(
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>A name for the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #
    #   @return [Array<Monitor>]
    #
    # @!attribute tags
    #   <p>Metadata to assign to the environment. Tags help organize and categorize your AppConfig
    #            resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateEnvironmentInput = ::Struct.new(
      :application_id,
      :name,
      :description,
      :monitors,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #
    #   Enum, one of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #
    #   @return [Array<Monitor>]
    #
    CreateEnvironmentOutput = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.17">Content-Type</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute latest_version_number
    #   <p>An optional locking token used to prevent race conditions from overwriting configuration
    #            updates when creating a new version. To ensure your data is not overwritten when creating
    #            multiple hosted configuration versions in rapid succession, specify the version number of
    #            the latest hosted configuration version.</p>
    #
    #   @return [Integer]
    #
    CreateHostedConfigurationVersionInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :description,
      :content,
      :content_type,
      :latest_version_number,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppConfig::Types::CreateHostedConfigurationVersionInput "\
          "application_id=#{application_id || 'nil'}, "\
          "configuration_profile_id=#{configuration_profile_id || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}, "\
          "latest_version_number=#{latest_version_number || 'nil'}>"
      end
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The configuration version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.17">Content-Type</a>.</p>
    #
    #   @return [String]
    #
    CreateHostedConfigurationVersionOutput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

      def to_s
        "#<struct AWS::SDK::AppConfig::Types::CreateHostedConfigurationVersionOutput "\
          "application_id=#{application_id || 'nil'}, "\
          "configuration_profile_id=#{configuration_profile_id || 'nil'}, "\
          "version_number=#{version_number || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}>"
      end
    end

    # @!attribute application_id
    #   <p>The ID of the application to delete.</p>
    #
    #   @return [String]
    #
    DeleteApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID that includes the configuration profile you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteConfigurationProfileInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteConfigurationProfileOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteDeploymentStrategyInput = ::Struct.new(
      :deployment_strategy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteDeploymentStrategyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID that includes the environment that you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment that you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteEnvironmentInput = ::Struct.new(
      :application_id,
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEnvironmentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The versions number to delete.</p>
    #
    #   @return [Integer]
    #
    DeleteHostedConfigurationVersionInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    DeleteHostedConfigurationVersionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object that describes a deployment event.</p>
    #
    # @!attribute event_type
    #   <p>The type of deployment event. Deployment event types include the start, stop, or
    #            completion of a deployment; a percentage update; the start or stop of a bake period; and
    #            the start or completion of a rollback.</p>
    #
    #   Enum, one of: ["PERCENTAGE_UPDATED", "ROLLBACK_STARTED", "ROLLBACK_COMPLETED", "BAKE_TIME_STARTED", "DEPLOYMENT_STARTED", "DEPLOYMENT_COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute triggered_by
    #   <p>The entity that triggered the deployment event. Events can be triggered by a user,
    #            AppConfig, an Amazon CloudWatch alarm, or an internal error.</p>
    #
    #   Enum, one of: ["USER", "APPCONFIG", "CLOUDWATCH_ALARM", "INTERNAL_ERROR"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the deployment event. Descriptions include, but are not limited to, the
    #            user account or the Amazon CloudWatch alarm ARN that initiated a rollback, the percentage of hosts
    #            that received the deployment, or in the case of an internal error, a recommendation to
    #            attempt a new deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute occurred_at
    #   <p>The date and time the event occurred.</p>
    #
    #   @return [Time]
    #
    DeploymentEvent = ::Struct.new(
      :event_type,
      :triggered_by,
      :description,
      :occurred_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentEventType
    #
    module DeploymentEventType
      # No documentation available.
      #
      PERCENTAGE_UPDATED = "PERCENTAGE_UPDATED"

      # No documentation available.
      #
      ROLLBACK_STARTED = "ROLLBACK_STARTED"

      # No documentation available.
      #
      ROLLBACK_COMPLETED = "ROLLBACK_COMPLETED"

      # No documentation available.
      #
      BAKE_TIME_STARTED = "BAKE_TIME_STARTED"

      # No documentation available.
      #
      DEPLOYMENT_STARTED = "DEPLOYMENT_STARTED"

      # No documentation available.
      #
      DEPLOYMENT_COMPLETED = "DEPLOYMENT_COMPLETED"
    end

    # Includes enum constants for DeploymentState
    #
    module DeploymentState
      # No documentation available.
      #
      BAKING = "BAKING"

      # No documentation available.
      #
      VALIDATING = "VALIDATING"

      # No documentation available.
      #
      DEPLOYING = "DEPLOYING"

      # No documentation available.
      #
      COMPLETE = "COMPLETE"

      # No documentation available.
      #
      ROLLING_BACK = "ROLLING_BACK"

      # No documentation available.
      #
      ROLLED_BACK = "ROLLED_BACK"
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #
    #   Enum, one of: ["NONE", "SSM_DOCUMENT"]
    #
    #   @return [String]
    #
    DeploymentStrategy = ::Struct.new(
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
      end

    end

    # <p>Information about the deployment.</p>
    #
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The version of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grows over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitors for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #
    #   Enum, one of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #
    #   @return [Float]
    #
    # @!attribute started_at
    #   <p>Time the deployment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_at
    #   <p>Time the deployment completed.</p>
    #
    #   @return [Time]
    #
    DeploymentSummary = ::Struct.new(
      :deployment_number,
      :configuration_name,
      :configuration_version,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :percentage_complete,
      :started_at,
      :completed_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_number ||= 0
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
        self.percentage_complete ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #
    #   Enum, one of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #
    #   @return [Array<Monitor>]
    #
    Environment = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentState
    #
    module EnvironmentState
      # No documentation available.
      #
      READY_FOR_DEPLOYMENT = "READY_FOR_DEPLOYMENT"

      # No documentation available.
      #
      DEPLOYING = "DEPLOYING"

      # No documentation available.
      #
      ROLLING_BACK = "ROLLING_BACK"

      # No documentation available.
      #
      ROLLED_BACK = "ROLLED_BACK"
    end

    # @!attribute application_id
    #   <p>The ID of the application you want to get.</p>
    #
    #   @return [String]
    #
    GetApplicationInput = ::Struct.new(
      :application_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The application name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    GetApplicationOutput = ::Struct.new(
      :id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The application to get. Specify either the application name or the application
    #            ID.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The environment to get. Specify either the environment name or the environment
    #            ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration
    #   <p>The configuration to get. Specify either the configuration name or the configuration
    #            ID.</p>
    #
    #   @return [String]
    #
    # @!attribute client_id
    #   <p>The clientId parameter in the following command is a unique, user-specified ID to
    #            identify the client for the configuration. This ID enables AppConfig to deploy the
    #            configuration in intervals, as defined in the deployment strategy. </p>
    #
    #   @return [String]
    #
    # @!attribute client_configuration_version
    #   <p>The configuration version returned in the most recent <code>GetConfiguration</code>
    #            response.</p>
    #            <important>
    #               <p>AppConfig uses the value of the <code>ClientConfigurationVersion</code> parameter to
    #               identify the configuration version on your clients. If you don’t send
    #                  <code>ClientConfigurationVersion</code> with each call to
    #                  <code>GetConfiguration</code>, your clients receive the current configuration. You
    #               are charged each time your clients receive a configuration.</p>
    #               <p>To avoid excess charges, we recommend that you include the
    #                  <code>ClientConfigurationVersion</code> value with every call to
    #                  <code>GetConfiguration</code>. This value must be saved on your client. Subsequent
    #               calls to <code>GetConfiguration</code> must pass this value by using the
    #                  <code>ClientConfigurationVersion</code> parameter. </p>
    #            </important>
    #            <p>For more information about working with configurations, see <a href="http://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-retrieving-the-configuration.html">Retrieving the
    #               Configuration</a> in the <i>AppConfig User Guide</i>.</p>
    #
    #   @return [String]
    #
    GetConfigurationInput = ::Struct.new(
      :application,
      :environment,
      :configuration,
      :client_id,
      :client_configuration_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #            <important>
    #               <p>The <code>Content</code> attribute only contains data if the system finds new or
    #               updated configuration data. If there is no new or updated data and
    #                  <code>ClientConfigurationVersion</code> matches the version of the current
    #               configuration, AppConfig returns a <code>204 No Content</code> HTTP response code and
    #               the <code>Content</code> value will be empty.</p>
    #            </important>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The configuration version.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.17">Content-Type</a>.</p>
    #
    #   @return [String]
    #
    GetConfigurationOutput = ::Struct.new(
      :content,
      :configuration_version,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppConfig::Types::GetConfigurationOutput "\
          "content=\"[SENSITIVE]\", "\
          "configuration_version=#{configuration_version || 'nil'}, "\
          "content_type=#{content_type || 'nil'}>"
      end
    end

    # @!attribute application_id
    #   <p>The ID of the application that includes the configuration profile you want to
    #            get.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that you want to get.</p>
    #
    #   @return [String]
    #
    GetConfigurationProfileInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The configuration profile description.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    #   @return [Array<Validator>]
    #
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports <code>feature
    #               flags</code> and <code>freeform</code> configurations. We recommend you create feature
    #            flag configurations to enable or disable new features and freeform configurations to
    #            distribute configurations to an application. When calling this API, enter one of the
    #            following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #
    #   @return [String]
    #
    GetConfigurationProfileOutput = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that includes the deployment you want to get. </p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment that includes the deployment you want to get. </p>
    #
    #   @return [String]
    #
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    #   @return [Integer]
    #
    GetDeploymentInput = ::Struct.new(
      :application_id,
      :environment_id,
      :deployment_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_location_uri
    #   <p>Information about the source location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The configuration version that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #
    #   Enum, one of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute event_log
    #   <p>A list containing all events related to a deployment. The most recent events are
    #            displayed first.</p>
    #
    #   @return [Array<DeploymentEvent>]
    #
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #
    #   @return [Float]
    #
    # @!attribute started_at
    #   <p>The time the deployment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_at
    #   <p>The time the deployment completed. </p>
    #
    #   @return [Time]
    #
    GetDeploymentOutput = ::Struct.new(
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :deployment_number,
      :configuration_name,
      :configuration_location_uri,
      :configuration_version,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :event_log,
      :percentage_complete,
      :started_at,
      :completed_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_number ||= 0
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
        self.percentage_complete ||= 0
      end

    end

    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy to get.</p>
    #
    #   @return [String]
    #
    GetDeploymentStrategyInput = ::Struct.new(
      :deployment_strategy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #
    #   Enum, one of: ["NONE", "SSM_DOCUMENT"]
    #
    #   @return [String]
    #
    GetDeploymentStrategyOutput = ::Struct.new(
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The ID of the application that includes the environment you want to get.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment that you want to get.</p>
    #
    #   @return [String]
    #
    GetEnvironmentInput = ::Struct.new(
      :application_id,
      :environment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #
    #   Enum, one of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #
    #   @return [Array<Monitor>]
    #
    GetEnvironmentOutput = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The version.</p>
    #
    #   @return [Integer]
    #
    GetHostedConfigurationVersionInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The configuration version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the configuration or the configuration data.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.17">Content-Type</a>.</p>
    #
    #   @return [String]
    #
    GetHostedConfigurationVersionOutput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

      def to_s
        "#<struct AWS::SDK::AppConfig::Types::GetHostedConfigurationVersionOutput "\
          "application_id=#{application_id || 'nil'}, "\
          "configuration_profile_id=#{configuration_profile_id || 'nil'}, "\
          "version_number=#{version_number || 'nil'}, "\
          "description=#{description || 'nil'}, "\
          "content=\"[SENSITIVE]\", "\
          "content_type=#{content_type || 'nil'}>"
      end
    end

    # Includes enum constants for GrowthType
    #
    module GrowthType
      # No documentation available.
      #
      LINEAR = "LINEAR"

      # No documentation available.
      #
      EXPONENTIAL = "EXPONENTIAL"
    end

    # <p>Information about the configuration.</p>
    #
    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute version_number
    #   <p>The configuration version.</p>
    #
    #   @return [Integer]
    #
    # @!attribute description
    #   <p>A description of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>A standard MIME type describing the format of the configuration content. For more
    #            information, see <a href="https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html sec14.17">Content-Type</a>.</p>
    #
    #   @return [String]
    #
    HostedConfigurationVersionSummary = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :version_number,
      :description,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.version_number ||= 0
      end

    end

    # <p>There was an internal failure in the AppConfig service.</p>
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

    # <p>Detailed information about the bad request exception error when creating a hosted
    #          configuration version.</p>
    #
    # @!attribute constraint
    #   <p>The invalid or out-of-range validation constraint in your JSON schema that failed
    #            validation.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Location of the validation constraint in the configuration JSON schema that failed
    #            validation.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason for an invalid configuration error.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of error for an invalid configuration.</p>
    #
    #   @return [String]
    #
    InvalidConfigurationDetail = ::Struct.new(
      :constraint,
      :location,
      :reason,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Next token is a pagination token generated by AppConfig to
    #            describe what page the previous List call ended on. For the first List request, the
    #            nextToken should not be set. On subsequent calls, the nextToken parameter should be set to
    #            the previous responses nextToken value. Use this token to get the next set of results.
    #         </p>
    #
    #   @return [String]
    #
    ListApplicationsInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #
    #   @return [Array<Application>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListApplicationsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>A filter based on the type of configurations that the configuration profile contains. A
    #            configuration can be a feature flag or a freeform configuration.</p>
    #
    #   @return [String]
    #
    ListConfigurationProfilesInput = ::Struct.new(
      :application_id,
      :max_results,
      :next_token,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #
    #   @return [Array<ConfigurationProfileSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListConfigurationProfilesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListDeploymentStrategiesInput = ::Struct.new(
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #
    #   @return [Array<DeploymentStrategy>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListDeploymentStrategiesOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items that may be returned for this call. If there are items that
    #            have not yet been returned, the response will include a non-null <code>NextToken</code>
    #            that you can provide in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token returned by a prior call to this operation indicating the next set of results
    #            to be returned. If not specified, the operation will return the first set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListDeploymentsInput = ::Struct.new(
      :application_id,
      :environment_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #
    #   @return [Array<DeploymentSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListDeploymentsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    #   @return [String]
    #
    ListEnvironmentsInput = ::Struct.new(
      :application_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #
    #   @return [Array<Environment>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListEnvironmentsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of items to return for this call. The call also returns a token that
    #            you can specify in a subsequent call to get the next set of results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>A token to start the list. Use this token to get the next set of results. </p>
    #
    #   @return [String]
    #
    ListHostedConfigurationVersionsInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute items
    #   <p>The elements from this collection.</p>
    #
    #   @return [Array<HostedConfigurationVersionSummary>]
    #
    # @!attribute next_token
    #   <p>The token for the next set of items to return. Use this token to get the next set of
    #            results.</p>
    #
    #   @return [String]
    #
    ListHostedConfigurationVersionsOutput = ::Struct.new(
      :items,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
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
    #   <p>Metadata to assign to AppConfig resources. Tags help organize and categorize your
    #            AppConfig resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #
    # @!attribute alarm_arn
    #   <p>Amazon Resource Name (ARN) of the Amazon CloudWatch alarm.</p>
    #
    #   @return [String]
    #
    # @!attribute alarm_role_arn
    #   <p>ARN of an Identity and Access Management (IAM) role for AppConfig to monitor <code>AlarmArn</code>.</p>
    #
    #   @return [String]
    #
    Monitor = ::Struct.new(
      :alarm_arn,
      :alarm_role_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration size is too large.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute measure
    #   Enum, one of: ["KILOBYTES"]
    #
    #   @return [String]
    #
    # @!attribute limit
    #
    #   @return [Float]
    #
    # @!attribute size
    #
    #   @return [Float]
    #
    PayloadTooLargeException = ::Struct.new(
      :message,
      :measure,
      :limit,
      :size,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.limit ||= 0
        self.size ||= 0
      end

    end

    # Includes enum constants for ReplicateTo
    #
    module ReplicateTo
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      SSM_DOCUMENT = "SSM_DOCUMENT"
    end

    # <p>The requested resource could not be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of hosted configuration versions exceeds the limit for the AppConfig hosted
    #          configuration store. Delete one or more versions and try again.</p>
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

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The configuration version to deploy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>Metadata to assign to the deployment. Tags help organize and categorize your AppConfig
    #            resources. Each tag consists of a key and an optional value, both of which you
    #            define.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartDeploymentInput = ::Struct.new(
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :configuration_version,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_location_uri
    #   <p>Information about the source location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The configuration version that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #
    #   Enum, one of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute event_log
    #   <p>A list containing all events related to a deployment. The most recent events are
    #            displayed first.</p>
    #
    #   @return [Array<DeploymentEvent>]
    #
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #
    #   @return [Float]
    #
    # @!attribute started_at
    #   <p>The time the deployment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_at
    #   <p>The time the deployment completed. </p>
    #
    #   @return [Time]
    #
    StartDeploymentOutput = ::Struct.new(
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :deployment_number,
      :configuration_name,
      :configuration_location_uri,
      :configuration_version,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :event_log,
      :percentage_complete,
      :started_at,
      :completed_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_number ||= 0
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
        self.percentage_complete ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    #   @return [Integer]
    #
    StopDeploymentInput = ::Struct.new(
      :application_id,
      :environment_id,
      :deployment_number,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The ID of the application that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The ID of the environment that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_strategy_id
    #   <p>The ID of the deployment strategy that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_number
    #   <p>The sequence number of the deployment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute configuration_name
    #   <p>The name of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_location_uri
    #   <p>Information about the source location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The configuration version that was deployed.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the deployment.</p>
    #
    #   Enum, one of: ["BAKING", "VALIDATING", "DEPLOYING", "COMPLETE", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute event_log
    #   <p>A list containing all events related to a deployment. The most recent events are
    #            displayed first.</p>
    #
    #   @return [Array<DeploymentEvent>]
    #
    # @!attribute percentage_complete
    #   <p>The percentage of targets for which the deployment is available.</p>
    #
    #   @return [Float]
    #
    # @!attribute started_at
    #   <p>The time the deployment started.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_at
    #   <p>The time the deployment completed. </p>
    #
    #   @return [Time]
    #
    StopDeploymentOutput = ::Struct.new(
      :application_id,
      :environment_id,
      :deployment_strategy_id,
      :configuration_profile_id,
      :deployment_number,
      :configuration_name,
      :configuration_location_uri,
      :configuration_version,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :state,
      :event_log,
      :percentage_complete,
      :started_at,
      :completed_at,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_number ||= 0
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
        self.percentage_complete ||= 0
      end

    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which to retrieve tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value string map. The valid character set is [a-zA-Z+-=._:/]. The tag key can be
    #            up to 128 characters and must not start with <code>aws:</code>. The tag value can be up to
    #            256 characters.</p>
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

    # Includes enum constants for TriggeredBy
    #
    module TriggeredBy
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      APPCONFIG = "APPCONFIG"

      # No documentation available.
      #
      CLOUDWATCH_ALARM = "CLOUDWATCH_ALARM"

      # No documentation available.
      #
      INTERNAL_ERROR = "INTERNAL_ERROR"
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource for which to remove tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys to delete.</p>
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

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the application.</p>
    #
    #   @return [String]
    #
    UpdateApplicationInput = ::Struct.new(
      :application_id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The application name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the application.</p>
    #
    #   @return [String]
    #
    UpdateApplicationOutput = ::Struct.new(
      :id,
      :name,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The ID of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    #   @return [Array<Validator>]
    #
    UpdateConfigurationProfileInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :name,
      :description,
      :retrieval_role_arn,
      :validators,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the configuration profile.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The configuration profile description.</p>
    #
    #   @return [String]
    #
    # @!attribute location_uri
    #   <p>The URI location of the configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute retrieval_role_arn
    #   <p>The ARN of an IAM role with permission to access the configuration at the specified
    #               <code>LocationUri</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute validators
    #   <p>A list of methods for validating the configuration.</p>
    #
    #   @return [Array<Validator>]
    #
    # @!attribute type
    #   <p>The type of configurations contained in the profile. AppConfig supports <code>feature
    #               flags</code> and <code>freeform</code> configurations. We recommend you create feature
    #            flag configurations to enable or disable new features and freeform configurations to
    #            distribute configurations to an application. When calling this API, enter one of the
    #            following values for <code>Type</code>:</p>
    #            <p>
    #               <code>AWS.AppConfig.FeatureFlags</code>
    #            </p>
    #            <p>
    #               <code>AWS.Freeform</code>
    #            </p>
    #
    #   @return [String]
    #
    UpdateConfigurationProfileOutput = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :location_uri,
      :retrieval_role_arn,
      :validators,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute deployment_strategy_id
    #   <p>The deployment strategy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time for a deployment to last.</p>
    #
    #   @return [Integer]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitors for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets to receive a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grows over time. AppConfig supports the
    #            following growth types:</p>
    #            <p>
    #               <b>Linear</b>: For this type, AppConfig processes the
    #            deployment by increments of the growth factor evenly distributed over the deployment time.
    #            For example, a linear deployment that uses a growth factor of 20 initially makes the
    #            configuration available to 20 percent of the targets. After 1/5th of the deployment time
    #            has passed, the system updates the percentage to 40 percent. This continues until 100% of
    #            the targets are set to receive the deployed configuration.</p>
    #
    #            <p>
    #               <b>Exponential</b>: For this type, AppConfig processes the
    #            deployment exponentially using the following formula: <code>G*(2^N)</code>. In this
    #            formula, <code>G</code> is the growth factor specified by the user and <code>N</code> is
    #            the number of steps until the configuration is deployed to all targets. For example, if you
    #            specify a growth factor of 2, then the system rolls out the configuration as
    #            follows:</p>
    #            <p>
    #               <code>2*(2^0)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^1)</code>
    #            </p>
    #            <p>
    #               <code>2*(2^2)</code>
    #            </p>
    #            <p>Expressed numerically, the deployment rolls out as follows: 2% of the targets, 4% of the
    #            targets, 8% of the targets, and continues until the configuration has been deployed to all
    #            targets.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    UpdateDeploymentStrategyInput = ::Struct.new(
      :deployment_strategy_id,
      :description,
      :deployment_duration_in_minutes,
      :final_bake_time_in_minutes,
      :growth_factor,
      :growth_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The deployment strategy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the deployment strategy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_duration_in_minutes
    #   <p>Total amount of time the deployment lasted.</p>
    #
    #   @return [Integer]
    #
    # @!attribute growth_type
    #   <p>The algorithm used to define how percentage grew over time.</p>
    #
    #   Enum, one of: ["LINEAR", "EXPONENTIAL"]
    #
    #   @return [String]
    #
    # @!attribute growth_factor
    #   <p>The percentage of targets that received a deployed configuration during each
    #            interval.</p>
    #
    #   @return [Float]
    #
    # @!attribute final_bake_time_in_minutes
    #   <p>The amount of time that AppConfig monitored for alarms before considering the deployment
    #            to be complete and no longer eligible for automatic rollback.</p>
    #
    #   @return [Integer]
    #
    # @!attribute replicate_to
    #   <p>Save the deployment strategy to a Systems Manager (SSM) document.</p>
    #
    #   Enum, one of: ["NONE", "SSM_DOCUMENT"]
    #
    #   @return [String]
    #
    UpdateDeploymentStrategyOutput = ::Struct.new(
      :id,
      :name,
      :description,
      :deployment_duration_in_minutes,
      :growth_type,
      :growth_factor,
      :final_bake_time_in_minutes,
      :replicate_to,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deployment_duration_in_minutes ||= 0
        self.growth_factor ||= 0
        self.final_bake_time_in_minutes ||= 0
      end

    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms to monitor during the deployment process.</p>
    #
    #   @return [Array<Monitor>]
    #
    UpdateEnvironmentInput = ::Struct.new(
      :application_id,
      :environment_id,
      :name,
      :description,
      :monitors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The environment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the environment.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the environment. An environment can be in one of the following states:
    #               <code>READY_FOR_DEPLOYMENT</code>, <code>DEPLOYING</code>, <code>ROLLING_BACK</code>, or
    #               <code>ROLLED_BACK</code>
    #            </p>
    #
    #   Enum, one of: ["READY_FOR_DEPLOYMENT", "DEPLOYING", "ROLLING_BACK", "ROLLED_BACK"]
    #
    #   @return [String]
    #
    # @!attribute monitors
    #   <p>Amazon CloudWatch alarms monitored during the deployment.</p>
    #
    #   @return [Array<Monitor>]
    #
    UpdateEnvironmentOutput = ::Struct.new(
      :application_id,
      :id,
      :name,
      :description,
      :state,
      :monitors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application_id
    #   <p>The application ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_profile_id
    #   <p>The configuration profile ID.</p>
    #
    #   @return [String]
    #
    # @!attribute configuration_version
    #   <p>The version of the configuration to validate.</p>
    #
    #   @return [String]
    #
    ValidateConfigurationInput = ::Struct.new(
      :application_id,
      :configuration_profile_id,
      :configuration_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ValidateConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A validator provides a syntactic or semantic check to ensure the configuration that you
    #          want to deploy functions as intended. To validate your application configuration data, you
    #          provide a schema or an Amazon Web Services Lambda function that runs against the configuration. The
    #          configuration deployment or update can only proceed when the configuration data is
    #          valid.</p>
    #
    # @!attribute type
    #   <p>AppConfig supports validators of type <code>JSON_SCHEMA</code> and
    #            <code>LAMBDA</code>
    #            </p>
    #
    #   Enum, one of: ["JSON_SCHEMA", "LAMBDA"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>Either the JSON Schema content or the Amazon Resource Name (ARN) of an Lambda
    #            function.</p>
    #
    #   @return [String]
    #
    Validator = ::Struct.new(
      :type,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::AppConfig::Types::Validator "\
          "type=#{type || 'nil'}, "\
          "content=\"[SENSITIVE]\">"
      end
    end

    # Includes enum constants for ValidatorType
    #
    module ValidatorType
      # No documentation available.
      #
      JSON_SCHEMA = "JSON_SCHEMA"

      # No documentation available.
      #
      LAMBDA = "LAMBDA"
    end

  end
end
