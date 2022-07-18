# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RoboMaker
  module Types

    # Includes enum constants for Architecture
    #
    module Architecture
      # No documentation available.
      #
      X86_64 = "X86_64"

      # No documentation available.
      #
      ARM64 = "ARM64"

      # No documentation available.
      #
      ARMHF = "ARMHF"
    end

    # @!attribute worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to delete.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteWorldsInput = ::Struct.new(
      :worlds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute unprocessed_worlds
    #   <p>A list of unprocessed worlds associated with the call. These worlds were not
    #            deleted.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteWorldsOutput = ::Struct.new(
      :unprocessed_worlds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>A list of Amazon Resource Names (ARNs) of simulation jobs to describe.</p>
    #
    #   @return [Array<String>]
    #
    BatchDescribeSimulationJobInput = ::Struct.new(
      :jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>A list of simulation jobs.</p>
    #
    #   @return [Array<SimulationJob>]
    #
    # @!attribute unprocessed_jobs
    #   <p>A list of unprocessed simulation job Amazon Resource Names (ARNs).</p>
    #
    #   @return [Array<String>]
    #
    BatchDescribeSimulationJobOutput = ::Struct.new(
      :jobs,
      :unprocessed_jobs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the batch policy.</p>
    #
    # @!attribute timeout_in_seconds
    #   <p>The amount of time, in seconds, to wait for the batch to complete.
    #
    #         </p>
    #            <p>If a batch times out, and there are pending requests that were failing due to an
    #            internal failure (like <code>InternalServiceError</code>), they will be moved to the failed
    #            list and the batch status will be <code>Failed</code>. If the pending requests were failing
    #            for any other reason, the failed pending requests will be moved to the failed list and the
    #            batch status will be <code>TimedOut</code>. </p>
    #
    #   @return [Integer]
    #
    # @!attribute max_concurrency
    #   <p>The number of active simulation jobs create as part of the batch that can be in an
    #            active state at the same time. </p>
    #            <p>Active states include: <code>Pending</code>,<code>Preparing</code>,
    #            <code>Running</code>, <code>Restarting</code>, <code>RunningFailed</code> and
    #               <code>Terminating</code>. All other states are terminal states. </p>
    #
    #   @return [Integer]
    #
    BatchPolicy = ::Struct.new(
      :timeout_in_seconds,
      :max_concurrency,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute job
    #   <p>The deployment job ARN to cancel.</p>
    #
    #   @return [String]
    #
    CancelDeploymentJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    CancelDeploymentJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch
    #   <p>The id of the batch to cancel.</p>
    #
    #   @return [String]
    #
    CancelSimulationJobBatchInput = ::Struct.new(
      :batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelSimulationJobBatchOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The simulation job ARN to cancel.</p>
    #
    #   @return [String]
    #
    CancelSimulationJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelSimulationJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The Amazon Resource Name (arn) of the world export job to cancel.</p>
    #
    #   @return [String]
    #
    CancelWorldExportJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelWorldExportJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The Amazon Resource Name (arn) of the world generator job to cancel.</p>
    #
    #   @return [String]
    #
    CancelWorldGenerationJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelWorldGenerationJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Compute information for the simulation job.</p>
    #
    # @!attribute simulation_unit_limit
    #   <p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to
    #            the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are
    #           only billed for the SU utilization you consume up to the maximum value provided. The
    #            default is 15. </p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_type
    #   <p>Compute type information for the simulation job.</p>
    #
    #   Enum, one of: ["CPU", "GPU_AND_CPU"]
    #
    #   @return [String]
    #
    # @!attribute gpu_unit_limit
    #   <p>Compute GPU unit limit for the simulation job. It is the same as the number of GPUs
    #           allocated to the SimulationJob.</p>
    #
    #   @return [Integer]
    #
    Compute = ::Struct.new(
      :simulation_unit_limit,
      :compute_type,
      :gpu_unit_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Compute information for the simulation job</p>
    #
    # @!attribute simulation_unit_limit
    #   <p>The simulation unit limit. Your simulation is allocated CPU and memory proportional to
    #            the supplied simulation unit limit. A simulation unit is 1 vcpu and 2GB of memory. You are
    #            only billed for the SU utilization you consume up to the maximum value provided. The
    #            default is 15. </p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_type
    #   <p>Compute type response information for the simulation job.</p>
    #
    #   Enum, one of: ["CPU", "GPU_AND_CPU"]
    #
    #   @return [String]
    #
    # @!attribute gpu_unit_limit
    #   <p>Compute GPU unit limit for the simulation job. It is the same as the number of GPUs
    #            allocated to the SimulationJob.</p>
    #
    #   @return [Integer]
    #
    ComputeResponse = ::Struct.new(
      :simulation_unit_limit,
      :compute_type,
      :gpu_unit_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComputeType
    #
    module ComputeType
      # No documentation available.
      #
      CPU = "CPU"

      # No documentation available.
      #
      GPU_AND_CPU = "GPU_AND_CPU"
    end

    # <p>The failure percentage threshold percentage was met.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentDeploymentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute deployment_config
    #   <p>The requested deployment configuration.</p>
    #
    #   @return [DeploymentConfig]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet to deploy.</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_application_configs
    #   <p>The deployment application configuration.</p>
    #
    #   @return [Array<DeploymentApplicationConfig>]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDeploymentJobInput = ::Struct.new(
      :deployment_config,
      :client_request_token,
      :fleet,
      :deployment_application_configs,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet
    #   <p>The target fleet for the deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the deployment job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute deployment_application_configs
    #   <p>The deployment application configuration.</p>
    #
    #   @return [Array<DeploymentApplicationConfig>]
    #
    # @!attribute failure_reason
    #   <p>The failure reason of the deployment job if it failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code of the simulation job if it failed:</p>
    #            <dl>
    #               <dt>BadPermissionError</dt>
    #               <dd>
    #                  <p>AWS Greengrass requires a service-level role permission to access other
    #                     services. The role must include the <a href="https://console.aws.amazon.com/iam/home? /policies/arn:aws:iam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy$jsonEditor">
    #                        <code>AWSGreengrassResourceAccessRolePolicy</code> managed policy</a>.
    #                  </p>
    #               </dd>
    #               <dt>ExtractingBundleFailure</dt>
    #               <dd>
    #                  <p>The robot application could not be extracted from the bundle.</p>
    #               </dd>
    #               <dt>FailureThresholdBreached</dt>
    #               <dd>
    #                  <p>The percentage of robots that could not be updated exceeded the percentage set
    #                     for the deployment.</p>
    #               </dd>
    #               <dt>GreengrassDeploymentFailed</dt>
    #               <dd>
    #                  <p>The robot application could not be deployed to the robot.</p>
    #               </dd>
    #               <dt>GreengrassGroupVersionDoesNotExist</dt>
    #               <dd>
    #                  <p>The AWS Greengrass group or version associated with a robot is missing.</p>
    #               </dd>
    #               <dt>InternalServerError</dt>
    #               <dd>
    #                  <p>An internal error has occurred. Retry your request, but if the problem
    #                     persists, contact us with details.</p>
    #               </dd>
    #               <dt>MissingRobotApplicationArchitecture</dt>
    #               <dd>
    #                  <p>The robot application does not have a source that matches the architecture of
    #                     the robot.</p>
    #               </dd>
    #               <dt>MissingRobotDeploymentResource</dt>
    #               <dd>
    #                  <p>One or more of the resources specified for the robot application are missing.
    #                     For example, does the robot application have the correct launch package and launch
    #                     file?</p>
    #               </dd>
    #               <dt>PostLaunchFileFailure</dt>
    #               <dd>
    #                  <p>The post-launch script failed.</p>
    #               </dd>
    #               <dt>PreLaunchFileFailure</dt>
    #               <dd>
    #                  <p>The pre-launch script failed.</p>
    #               </dd>
    #               <dt>ResourceNotFound</dt>
    #               <dd>
    #                  <p>One or more deployment resources are missing. For example, do robot application
    #                     source bundles still exist? </p>
    #               </dd>
    #               <dt>RobotDeploymentNoResponse</dt>
    #               <dd>
    #                  <p>There is no response from the robot. It might not be powered on or connected to
    #                     the internet.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_config
    #   <p>The deployment configuration.</p>
    #
    #   @return [DeploymentConfig]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the deployment job.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateDeploymentJobOutput = ::Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_application_configs,
      :failure_reason,
      :failure_code,
      :created_at,
      :deployment_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the fleet.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFleetInput = ::Struct.new(
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the fleet.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateFleetOutput = ::Struct.new(
      :arn,
      :name,
      :created_at,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the robot application.</p>
    #
    #   @return [Array<SourceConfig>]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribuition) used by the robot application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the robot
    #            application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment
    #   <p>The object that contains that URI of the Docker image that you use for your robot
    #            application.</p>
    #
    #   @return [Environment]
    #
    CreateRobotApplicationInput = ::Struct.new(
      :name,
      :sources,
      :robot_software_suite,
      :tags,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the robot application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the robot application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the robot application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_id
    #   <p>The revision id of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the robot application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment
    #   <p>An object that contains the Docker image URI used to a create your robot
    #            application.</p>
    #
    #   @return [Environment]
    #
    CreateRobotApplicationOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :last_updated_at,
      :revision_id,
      :tags,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The application information for the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_revision_id
    #   <p>The current revision id for the robot application. If you provide a value and it matches
    #            the latest revision ID, a new version will be created.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_etags
    #   <p>The Amazon S3 identifier for the zip file bundle that you use for your robot
    #            application.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_digest
    #   <p>A SHA256 identifier for the Docker image that you use for your robot application.</p>
    #
    #   @return [String]
    #
    CreateRobotApplicationVersionInput = ::Struct.new(
      :application,
      :current_revision_id,
      :s3_etags,
      :image_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the robot application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the robot application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the robot application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_id
    #   <p>The revision id of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI used to create your robot
    #            application.</p>
    #
    #   @return [Environment]
    #
    CreateRobotApplicationVersionOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :last_updated_at,
      :revision_id,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute name
    #   <p>The name for the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The target architecture of the robot.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64", "ARMHF"]
    #
    #   @return [String]
    #
    # @!attribute greengrass_group_id
    #   <p>The Greengrass group id.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the robot.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRobotInput = ::Struct.new(
      :name,
      :architecture,
      :greengrass_group_id,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the robot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute greengrass_group_id
    #   <p>The Amazon Resource Name (ARN) of the Greengrass group associated with the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The target architecture of the robot.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64", "ARMHF"]
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the robot.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRobotOutput = ::Struct.new(
      :arn,
      :name,
      :created_at,
      :greengrass_group_id,
      :architecture,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the simulation application.</p>
    #
    #   @return [Array<SourceConfig>]
    #
    # @!attribute simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the simulation application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    #   @return [RenderingEngine]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI used to create your simulation
    #            application.</p>
    #
    #   @return [Environment]
    #
    CreateSimulationApplicationInput = ::Struct.new(
      :name,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :tags,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the simulation application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    # @!attribute robot_software_suite
    #   <p>Information about the robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    #   @return [RenderingEngine]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_id
    #   <p>The revision id of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the simulation application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI that you used to create your simulation
    #            application.</p>
    #
    #   @return [Environment]
    #
    CreateSimulationApplicationOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :last_updated_at,
      :revision_id,
      :tags,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The application information for the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute current_revision_id
    #   <p>The current revision id for the simulation application. If you provide a value and it
    #            matches the latest revision ID, a new version will be created.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_etags
    #   <p>The Amazon S3 eTag identifier for the zip file bundle that you use to create the
    #            simulation application.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute image_digest
    #   <p>The SHA256 digest used to identify the Docker image URI used to created the simulation
    #            application.</p>
    #
    #   @return [String]
    #
    CreateSimulationApplicationVersionInput = ::Struct.new(
      :application,
      :current_revision_id,
      :s3_etags,
      :image_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the simulation application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    # @!attribute robot_software_suite
    #   <p>Information about the robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    #   @return [RenderingEngine]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_id
    #   <p>The revision ID of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI used to create the simulation
    #            application.</p>
    #
    #   @return [Environment]
    #
    CreateSimulationApplicationVersionOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :last_updated_at,
      :revision_id,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>Location for output files generated by the simulation job.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute logging_config
    #   <p>The logging configuration.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute max_job_duration_in_seconds
    #   <p>The maximum simulation job duration in seconds (up to 14 days or 1,209,600 seconds. When
    #               <code>maxJobDurationInSeconds</code> is reached, the simulation job will status will
    #            transition to <code>Completed</code>.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role
    #   <p>The IAM role name that allows the simulation instance to call the AWS APIs that are
    #            specified in its associated policies on your behalf. This is how credentials are passed in
    #            to your simulation job. </p>
    #
    #   @return [String]
    #
    # @!attribute failure_behavior
    #   <p>The failure behavior the simulation job.</p>
    #            <dl>
    #               <dt>Continue</dt>
    #               <dd>
    #                  <p>Leaves the instance running for its maximum timeout duration after a
    #                        <code>4XX</code> error code.</p>
    #               </dd>
    #               <dt>Fail</dt>
    #               <dd>
    #                  <p>Stop the simulation job and terminate the instance.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Fail", "Continue"]
    #
    #   @return [String]
    #
    # @!attribute robot_applications
    #   <p>The robot application to use in the simulation job.</p>
    #
    #   @return [Array<RobotApplicationConfig>]
    #
    # @!attribute simulation_applications
    #   <p>The simulation application to use in the simulation job.</p>
    #
    #   @return [Array<SimulationApplicationConfig>]
    #
    # @!attribute data_sources
    #   <p>Specify data sources to mount read-only files from S3 into your simulation. These files
    #            are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>
    #            <note>
    #               <p>There is a limit of 100 files and a combined size of 25GB for all
    #                  <code>DataSourceConfig</code> objects. </p>
    #            </note>
    #
    #   @return [Array<DataSourceConfig>]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc_config
    #   <p>If your simulation job accesses resources in a VPC, you provide this parameter
    #            identifying the list of security group IDs and subnet IDs. These must belong to the same
    #            VPC. You must provide at least one security group and one subnet ID. </p>
    #
    #   @return [VPCConfig]
    #
    # @!attribute compute
    #   <p>Compute information for the simulation job.</p>
    #
    #   @return [Compute]
    #
    CreateSimulationJobInput = ::Struct.new(
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :iam_role,
      :failure_behavior,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :compute,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_job_duration_in_seconds ||= 0
      end
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the simulation job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute last_started_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_behavior
    #   <p>the failure behavior for the simulation job.</p>
    #
    #   Enum, one of: ["Fail", "Continue"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code of the simulation job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>RobotApplicationCrash</dt>
    #               <dd>
    #                  <p>Robot application exited abnormally.</p>
    #               </dd>
    #               <dt>SimulationApplicationCrash</dt>
    #               <dd>
    #                  <p> Simulation application exited abnormally.</p>
    #               </dd>
    #               <dt>BadPermissionsRobotApplication</dt>
    #               <dd>
    #                  <p>Robot application bundle could not be downloaded.</p>
    #               </dd>
    #               <dt>BadPermissionsSimulationApplication</dt>
    #               <dd>
    #                  <p>Simulation application bundle could not be downloaded.</p>
    #               </dd>
    #               <dt>BadPermissionsS3Output</dt>
    #               <dd>
    #                  <p>Unable to publish outputs to customer-provided S3 bucket.</p>
    #               </dd>
    #               <dt>BadPermissionsCloudwatchLogs</dt>
    #               <dd>
    #                  <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>
    #               </dd>
    #               <dt>SubnetIpLimitExceeded</dt>
    #               <dd>
    #                  <p>Subnet IP limit exceeded.</p>
    #               </dd>
    #               <dt>ENILimitExceeded</dt>
    #               <dd>
    #                  <p>ENI limit exceeded.</p>
    #               </dd>
    #               <dt>BadPermissionsUserCredentials</dt>
    #               <dd>
    #                  <p>Unable to use the Role provided.</p>
    #               </dd>
    #               <dt>InvalidBundleRobotApplication</dt>
    #               <dd>
    #                  <p>Robot bundle cannot be extracted (invalid format, bundling error, or other
    #                     issue).</p>
    #               </dd>
    #               <dt>InvalidBundleSimulationApplication</dt>
    #               <dd>
    #                  <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other
    #                     issue).</p>
    #               </dd>
    #               <dt>RobotApplicationVersionMismatchedEtag</dt>
    #               <dd>
    #                  <p>Etag for RobotApplication does not match value during version creation.</p>
    #               </dd>
    #               <dt>SimulationApplicationVersionMismatchedEtag</dt>
    #               <dd>
    #                  <p>Etag for SimulationApplication does not match value during version
    #                     creation.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>Simulation job output files location.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute logging_config
    #   <p>The logging configuration.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute max_job_duration_in_seconds
    #   <p>The maximum simulation job duration in seconds. </p>
    #
    #   @return [Integer]
    #
    # @!attribute simulation_time_millis
    #   <p>The simulation job execution duration in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role
    #   <p>The IAM role that allows the simulation job to call the AWS APIs that are specified in
    #            its associated policies on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute robot_applications
    #   <p>The robot application used by the simulation job.</p>
    #
    #   @return [Array<RobotApplicationConfig>]
    #
    # @!attribute simulation_applications
    #   <p>The simulation application used by the simulation job.</p>
    #
    #   @return [Array<SimulationApplicationConfig>]
    #
    # @!attribute data_sources
    #   <p>The data sources for the simulation job.</p>
    #
    #   @return [Array<DataSource>]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the simulation job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc_config
    #   <p>Information about the vpc configuration.</p>
    #
    #   @return [VPCConfigResponse]
    #
    # @!attribute compute
    #   <p>Compute information for the simulation job.</p>
    #
    #   @return [ComputeResponse]
    #
    CreateSimulationJobOutput = ::Struct.new(
      :arn,
      :status,
      :last_started_at,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :compute,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_job_duration_in_seconds ||= 0
        self.simulation_time_millis ||= 0
      end
    end

    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to export.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_location
    #   <p>The output location.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute iam_role
    #   <p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
    #            the export.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world export
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorldExportJobInput = ::Struct.new(
      :client_request_token,
      :worlds,
      :output_location,
      :iam_role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world export job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the world export job.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The world export job request is pending.</p>
    #               </dd>
    #               <dt>Running</dt>
    #               <dd>
    #                  <p>The world export job is running. </p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The world export job completed. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The world export job failed. See <code>failureCode</code> for more information.
    #                  </p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The world export job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The world export job is being cancelled.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world export job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_code
    #   <p>The failure code of the world export job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>LimitExceeded</dt>
    #               <dd>
    #                  <p>The requested resource exceeds the maximum number allowed, or the number of
    #                     concurrent stream requests exceeds the maximum number allowed. </p>
    #               </dd>
    #               <dt>ResourceNotFound</dt>
    #               <dd>
    #                  <p>The specified resource could not be found. </p>
    #               </dd>
    #               <dt>RequestThrottled</dt>
    #               <dd>
    #                  <p>The request was throttled.</p>
    #               </dd>
    #               <dt>InvalidInput</dt>
    #               <dd>
    #                  <p>An input parameter in the request is not valid.</p>
    #               </dd>
    #               <dt>AllWorldGenerationFailed</dt>
    #               <dd>
    #                  <p>All of the worlds in the world generation job failed. This can happen if your
    #                        <code>worldCount</code> is greater than 50 or less than 1. </p>
    #               </dd>
    #            </dl>
    #            <p>For more information about troubleshooting WorldForge, see <a href="https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting-worldforge.html">Troubleshooting Simulation WorldForge</a>. </p>
    #
    #   Enum, one of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>The output location.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute iam_role
    #   <p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
    #            the export. </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world export
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorldExportJobOutput = ::Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :client_request_token,
      :output_location,
      :iam_role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template describing the worlds you want to
    #            create.</p>
    #
    #   @return [String]
    #
    # @!attribute world_count
    #   <p>Information about the world count.</p>
    #
    #   @return [WorldCount]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world generator
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute world_tags
    #   <p>A map that contains tag keys and tag values that are attached to the generated
    #            worlds.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorldGenerationJobInput = ::Struct.new(
      :client_request_token,
      :template,
      :world_count,
      :tags,
      :world_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world generator job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the world generator job.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The world generator job request is pending.</p>
    #               </dd>
    #               <dt>Running</dt>
    #               <dd>
    #                  <p>The world generator job is running. </p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The world generator job completed. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The world generator job failed. See <code>failureCode</code> for more
    #                     information. </p>
    #               </dd>
    #               <dt>PartialFailed</dt>
    #               <dd>
    #                  <p>Some worlds did not generate.</p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The world generator job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The world generator job is being cancelled.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world generator job was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_code
    #   <p>The failure code of the world generator job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>LimitExceeded</dt>
    #               <dd>
    #                  <p>The requested resource exceeds the maximum number allowed, or the number of
    #                     concurrent stream requests exceeds the maximum number allowed. </p>
    #               </dd>
    #               <dt>ResourceNotFound</dt>
    #               <dd>
    #                  <p>The specified resource could not be found. </p>
    #               </dd>
    #               <dt>RequestThrottled</dt>
    #               <dd>
    #                  <p>The request was throttled.</p>
    #               </dd>
    #               <dt>InvalidInput</dt>
    #               <dd>
    #                  <p>An input parameter in the request is not valid.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"]
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute world_count
    #   <p>Information about the world count. </p>
    #
    #   @return [WorldCount]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world generator
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute world_tags
    #   <p>A map that contains tag keys and tag values that are attached to the generated
    #            worlds.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorldGenerationJobOutput = ::Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :client_request_token,
      :template,
      :world_count,
      :tags,
      :world_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>The world template body.</p>
    #
    #   @return [String]
    #
    # @!attribute template_location
    #   <p>The location of the world template.</p>
    #
    #   @return [TemplateLocation]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world
    #            template.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorldTemplateInput = ::Struct.new(
      :client_request_token,
      :name,
      :template_body,
      :template_location,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world
    #            template.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateWorldTemplateOutput = ::Struct.new(
      :arn,
      :client_request_token,
      :created_at,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a data source.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket where the data files are located.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_keys
    #   <p>The list of S3 keys identifying the data source files.</p>
    #
    #   @return [Array<S3KeyOutput>]
    #
    # @!attribute type
    #   <p>The data type for the data source that you're using for your container image or
    #            simulation job. You can use this field to specify whether your data source is an Archive,
    #            an Amazon S3 prefix, or a file.</p>
    #            <p>If you don't specify a field, the default value is <code>File</code>.</p>
    #
    #   Enum, one of: ["Prefix", "Archive", "File"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The location where your files are mounted in the container image.</p>
    #            <p>If you've specified the <code>type</code> of the data source as an <code>Archive</code>,
    #            you must provide an Amazon S3 object key to your archive. The object key must point to
    #            either a <code>.zip</code> or <code>.tar.gz</code> file.</p>
    #            <p>If you've specified the <code>type</code> of the data source as a <code>Prefix</code>,
    #            you provide the Amazon S3 prefix that points to the files that you are using for your data
    #            source.</p>
    #            <p>If you've specified the <code>type</code> of the data source as a <code>File</code>, you
    #            provide the Amazon S3 path to the file that you're using as your data source.</p>
    #
    #   @return [String]
    #
    DataSource = ::Struct.new(
      :name,
      :s3_bucket,
      :s3_keys,
      :type,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a data source.</p>
    #
    # @!attribute name
    #   <p>The name of the data source.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket where the data files are located.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_keys
    #   <p>The list of S3 keys identifying the data source files.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute type
    #   <p>The data type for the data source that you're using for your container image or
    #            simulation job. You can use this field to specify whether your data source is an Archive,
    #            an Amazon S3 prefix, or a file.</p>
    #            <p>If you don't specify a field, the default value is <code>File</code>.</p>
    #
    #   Enum, one of: ["Prefix", "Archive", "File"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The location where your files are mounted in the container image.</p>
    #            <p>If you've specified the <code>type</code> of the data source as an <code>Archive</code>,
    #            you must provide an Amazon S3 object key to your archive. The object key must point to
    #            either a <code>.zip</code> or <code>.tar.gz</code> file.</p>
    #            <p>If you've specified the <code>type</code> of the data source as a <code>Prefix</code>,
    #            you provide the Amazon S3 prefix that points to the files that you are using for your data
    #            source.</p>
    #            <p>If you've specified the <code>type</code> of the data source as a <code>File</code>, you
    #            provide the Amazon S3 path to the file that you're using as your data source.</p>
    #
    #   @return [String]
    #
    DataSourceConfig = ::Struct.new(
      :name,
      :s3_bucket,
      :s3_keys,
      :type,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DataSourceType
    #
    module DataSourceType
      # No documentation available.
      #
      Prefix = "Prefix"

      # No documentation available.
      #
      Archive = "Archive"

      # No documentation available.
      #
      File = "File"
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    DeleteFleetInput = ::Struct.new(
      :fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    DeleteFleetOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The Amazon Resource Name (ARN) of the the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the robot application to delete.</p>
    #
    #   @return [String]
    #
    DeleteRobotApplicationInput = ::Struct.new(
      :application,
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRobotApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    DeleteRobotInput = ::Struct.new(
      :robot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    DeleteRobotOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The application information for the simulation application to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the simulation application to delete.</p>
    #
    #   @return [String]
    #
    DeleteSimulationApplicationInput = ::Struct.new(
      :application,
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteSimulationApplicationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template you want to delete.</p>
    #
    #   @return [String]
    #
    DeleteWorldTemplateInput = ::Struct.new(
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteWorldTemplateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a deployment application configuration.</p>
    #
    # @!attribute application
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the application.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_config
    #   <p>The launch configuration.</p>
    #
    #   @return [DeploymentLaunchConfig]
    #
    DeploymentApplicationConfig = ::Struct.new(
      :application,
      :application_version,
      :launch_config,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a deployment configuration.</p>
    #
    # @!attribute concurrent_deployment_percentage
    #   <p>The percentage of robots receiving the deployment at the same time.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failure_threshold_percentage
    #   <p>The percentage of deployments that need to fail before stopping deployment.</p>
    #
    #   @return [Integer]
    #
    # @!attribute robot_deployment_timeout_in_seconds
    #   <p>The amount of time, in seconds, to wait for deployment to a single robot to complete.
    #            Choose a time between 1 minute and 7 days. The default is 5 hours.</p>
    #
    #   @return [Integer]
    #
    # @!attribute download_condition_file
    #   <p>The download condition file.</p>
    #
    #   @return [S3Object]
    #
    DeploymentConfig = ::Struct.new(
      :concurrent_deployment_percentage,
      :failure_threshold_percentage,
      :robot_deployment_timeout_in_seconds,
      :download_condition_file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a deployment job.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the deployment job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute deployment_application_configs
    #   <p>The deployment application configuration.</p>
    #
    #   @return [Array<DeploymentApplicationConfig>]
    #
    # @!attribute deployment_config
    #   <p>The deployment configuration.</p>
    #
    #   @return [DeploymentConfig]
    #
    # @!attribute failure_reason
    #   <p>A short description of the reason why the deployment job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The deployment job failure code.</p>
    #
    #   Enum, one of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the deployment job was created.</p>
    #
    #   @return [Time]
    #
    DeploymentJob = ::Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_application_configs,
      :deployment_config,
      :failure_reason,
      :failure_code,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentJobErrorCode
    #
    module DeploymentJobErrorCode
      # No documentation available.
      #
      ResourceNotFound = "ResourceNotFound"

      # No documentation available.
      #
      EnvironmentSetupError = "EnvironmentSetupError"

      # No documentation available.
      #
      EtagMismatch = "EtagMismatch"

      # No documentation available.
      #
      FailureThresholdBreached = "FailureThresholdBreached"

      # No documentation available.
      #
      RobotDeploymentAborted = "RobotDeploymentAborted"

      # No documentation available.
      #
      RobotDeploymentNoResponse = "RobotDeploymentNoResponse"

      # No documentation available.
      #
      RobotAgentConnectionTimeout = "RobotAgentConnectionTimeout"

      # No documentation available.
      #
      GreengrassDeploymentFailed = "GreengrassDeploymentFailed"

      # No documentation available.
      #
      InvalidGreengrassGroup = "InvalidGreengrassGroup"

      # No documentation available.
      #
      MissingRobotArchitecture = "MissingRobotArchitecture"

      # No documentation available.
      #
      MissingRobotApplicationArchitecture = "MissingRobotApplicationArchitecture"

      # No documentation available.
      #
      MissingRobotDeploymentResource = "MissingRobotDeploymentResource"

      # No documentation available.
      #
      GreengrassGroupVersionDoesNotExist = "GreengrassGroupVersionDoesNotExist"

      # No documentation available.
      #
      LambdaDeleted = "LambdaDeleted"

      # No documentation available.
      #
      ExtractingBundleFailure = "ExtractingBundleFailure"

      # No documentation available.
      #
      PreLaunchFileFailure = "PreLaunchFileFailure"

      # No documentation available.
      #
      PostLaunchFileFailure = "PostLaunchFileFailure"

      # No documentation available.
      #
      BadPermissionError = "BadPermissionError"

      # No documentation available.
      #
      DownloadConditionFailed = "DownloadConditionFailed"

      # No documentation available.
      #
      BadLambdaAssociated = "BadLambdaAssociated"

      # No documentation available.
      #
      InternalServerError = "InternalServerError"

      # No documentation available.
      #
      RobotApplicationDoesNotExist = "RobotApplicationDoesNotExist"

      # No documentation available.
      #
      DeploymentFleetDoesNotExist = "DeploymentFleetDoesNotExist"

      # No documentation available.
      #
      FleetDeploymentTimeout = "FleetDeploymentTimeout"
    end

    # <p>Configuration information for a deployment launch.</p>
    #
    # @!attribute package_name
    #   <p>The package name.</p>
    #
    #   @return [String]
    #
    # @!attribute pre_launch_file
    #   <p>The deployment pre-launch file. This file will be executed prior to the launch
    #            file.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_file
    #   <p>The launch file name.</p>
    #
    #   @return [String]
    #
    # @!attribute post_launch_file
    #   <p>The deployment post-launch file. This file will be executed after the launch
    #            file.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p>An array of key/value pairs specifying environment variables for the robot
    #            application</p>
    #
    #   @return [Hash<String, String>]
    #
    DeploymentLaunchConfig = ::Struct.new(
      :package_name,
      :pre_launch_file,
      :launch_file,
      :post_launch_file,
      :environment_variables,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DeploymentStatus
    #
    module DeploymentStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Preparing = "Preparing"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Succeeded = "Succeeded"

      # No documentation available.
      #
      Canceled = "Canceled"
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    DeregisterRobotInput = ::Struct.new(
      :fleet,
      :robot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    DeregisterRobotOutput = ::Struct.new(
      :fleet,
      :robot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute job
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    #
    #   @return [String]
    #
    DescribeDeploymentJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the deployment job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute deployment_config
    #   <p>The deployment configuration.</p>
    #
    #   @return [DeploymentConfig]
    #
    # @!attribute deployment_application_configs
    #   <p>The deployment application configuration.</p>
    #
    #   @return [Array<DeploymentApplicationConfig>]
    #
    # @!attribute failure_reason
    #   <p>A short description of the reason why the deployment job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The deployment job failure code.</p>
    #
    #   Enum, one of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the deployment job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute robot_deployment_summary
    #   <p>A list of robot deployment summaries.</p>
    #
    #   @return [Array<RobotDeployment>]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the specified deployment job.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeDeploymentJobOutput = ::Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_config,
      :deployment_application_configs,
      :failure_reason,
      :failure_code,
      :created_at,
      :robot_deployment_summary,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    DescribeFleetInput = ::Struct.new(
      :fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute robots
    #   <p>A list of robots.</p>
    #
    #   @return [Array<Robot>]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_status
    #   <p>The status of the last deployment.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute last_deployment_job
    #   <p>The Amazon Resource Name (ARN) of the last deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_deployment_time
    #   <p>The time of the last deployment.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the specified fleet.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeFleetOutput = ::Struct.new(
      :name,
      :arn,
      :robots,
      :created_at,
      :last_deployment_status,
      :last_deployment_job,
      :last_deployment_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the robot application to describe.</p>
    #
    #   @return [String]
    #
    DescribeRobotApplicationInput = ::Struct.new(
      :application,
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the robot application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the robot application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute revision_id
    #   <p>The revision id of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the robot application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the specified robot application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI used to create the robot
    #            application.</p>
    #
    #   @return [Environment]
    #
    # @!attribute image_digest
    #   <p>A SHA256 identifier for the Docker image that you use for your robot application.</p>
    #
    #   @return [String]
    #
    DescribeRobotApplicationOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :revision_id,
      :last_updated_at,
      :tags,
      :environment,
      :image_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute robot
    #   <p>The Amazon Resource Name (ARN) of the robot to be described.</p>
    #
    #   @return [String]
    #
    DescribeRobotInput = ::Struct.new(
      :robot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the fleet.</p>
    #
    #   Enum, one of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #
    #   @return [String]
    #
    # @!attribute greengrass_group_id
    #   <p>The Greengrass group id.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the robot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute architecture
    #   <p>The target architecture of the robot application.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64", "ARMHF"]
    #
    #   @return [String]
    #
    # @!attribute last_deployment_job
    #   <p>The Amazon Resource Name (ARN) of the last deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_deployment_time
    #   <p>The time of the last deployment job.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the specified robot.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeRobotOutput = ::Struct.new(
      :arn,
      :name,
      :fleet_arn,
      :status,
      :greengrass_group_id,
      :created_at,
      :architecture,
      :last_deployment_job,
      :last_deployment_time,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The application information for the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the simulation application to describe.</p>
    #
    #   @return [String]
    #
    DescribeSimulationApplicationInput = ::Struct.new(
      :application,
      :application_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the simulation application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    # @!attribute robot_software_suite
    #   <p>Information about the robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    #   @return [RenderingEngine]
    #
    # @!attribute revision_id
    #   <p>The revision id of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the specified simulation application.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI used to create the simulation
    #            application.</p>
    #
    #   @return [Environment]
    #
    # @!attribute image_digest
    #   <p>A SHA256 identifier for the Docker image that you use for your simulation
    #            application.</p>
    #
    #   @return [String]
    #
    DescribeSimulationApplicationOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :revision_id,
      :last_updated_at,
      :tags,
      :environment,
      :image_digest,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute batch
    #   <p>The id of the batch to describe.</p>
    #
    #   @return [String]
    #
    DescribeSimulationJobBatchInput = ::Struct.new(
      :batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the batch.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the batch.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The simulation job batch request is pending.</p>
    #               </dd>
    #               <dt>InProgress</dt>
    #               <dd>
    #                  <p>The simulation job batch is in progress. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The simulation job batch failed. One or more simulation job requests could not
    #                     be completed due to an internal failure (like <code>InternalServiceError</code>).
    #                     See <code>failureCode</code> and <code>failureReason</code> for more
    #                     information.</p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The simulation batch job completed. A batch is complete when (1) there are no
    #                     pending simulation job requests in the batch and none of the failed simulation job
    #                     requests are due to <code>InternalServiceError</code> and (2) when all created
    #                     simulation jobs have reached a terminal state (for example, <code>Completed</code>
    #                     or <code>Failed</code>). </p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The simulation batch job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The simulation batch job is being cancelled.</p>
    #               </dd>
    #               <dt>Completing</dt>
    #               <dd>
    #                  <p>The simulation batch job is completing.</p>
    #               </dd>
    #               <dt>TimingOut</dt>
    #               <dd>
    #                  <p>The simulation job batch is timing out.</p>
    #                  <p>If a batch timing out, and there are pending requests that were failing due to
    #                     an internal failure (like <code>InternalServiceError</code>), the batch status
    #                     will be <code>Failed</code>. If there are no such failing request, the batch
    #                     status will be <code>TimedOut</code>. </p>
    #               </dd>
    #               <dt>TimedOut</dt>
    #               <dd>
    #                  <p>The simulation batch job timed out.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"]
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job batch was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job batch was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_policy
    #   <p>The batch policy.</p>
    #
    #   @return [BatchPolicy]
    #
    # @!attribute failure_code
    #   <p>The failure code of the simulation job batch.</p>
    #
    #   Enum, one of: ["InternalServiceError"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason the simulation job batch failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failed_requests
    #   <p>A list of failed create simulation job requests. The request failed to be created into a
    #            simulation job. Failed requests do not have a simulation job ID. </p>
    #
    #   @return [Array<FailedCreateSimulationJobRequest>]
    #
    # @!attribute pending_requests
    #   <p>A list of pending simulation job requests. These requests have not yet been created into
    #            simulation jobs.</p>
    #
    #   @return [Array<SimulationJobRequest>]
    #
    # @!attribute created_requests
    #   <p>A list of created simulation job summaries.</p>
    #
    #   @return [Array<SimulationJobSummary>]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation job
    #            batch.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeSimulationJobBatchOutput = ::Struct.new(
      :arn,
      :status,
      :last_updated_at,
      :created_at,
      :client_request_token,
      :batch_policy,
      :failure_code,
      :failure_reason,
      :failed_requests,
      :pending_requests,
      :created_requests,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The Amazon Resource Name (ARN) of the simulation job to be described.</p>
    #
    #   @return [String]
    #
    DescribeSimulationJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the simulation job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute last_started_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_behavior
    #   <p>The failure behavior for the simulation job.</p>
    #
    #   Enum, one of: ["Fail", "Continue"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code of the simulation job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>RobotApplicationCrash</dt>
    #               <dd>
    #                  <p>Robot application exited abnormally.</p>
    #               </dd>
    #               <dt>SimulationApplicationCrash</dt>
    #               <dd>
    #                  <p> Simulation application exited abnormally.</p>
    #               </dd>
    #               <dt>BadPermissionsRobotApplication</dt>
    #               <dd>
    #                  <p>Robot application bundle could not be downloaded.</p>
    #               </dd>
    #               <dt>BadPermissionsSimulationApplication</dt>
    #               <dd>
    #                  <p>Simulation application bundle could not be downloaded.</p>
    #               </dd>
    #               <dt>BadPermissionsS3Output</dt>
    #               <dd>
    #                  <p>Unable to publish outputs to customer-provided S3 bucket.</p>
    #               </dd>
    #               <dt>BadPermissionsCloudwatchLogs</dt>
    #               <dd>
    #                  <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>
    #               </dd>
    #               <dt>SubnetIpLimitExceeded</dt>
    #               <dd>
    #                  <p>Subnet IP limit exceeded.</p>
    #               </dd>
    #               <dt>ENILimitExceeded</dt>
    #               <dd>
    #                  <p>ENI limit exceeded.</p>
    #               </dd>
    #               <dt>BadPermissionsUserCredentials</dt>
    #               <dd>
    #                  <p>Unable to use the Role provided.</p>
    #               </dd>
    #               <dt>InvalidBundleRobotApplication</dt>
    #               <dd>
    #                  <p>Robot bundle cannot be extracted (invalid format, bundling error, or other
    #                     issue).</p>
    #               </dd>
    #               <dt>InvalidBundleSimulationApplication</dt>
    #               <dd>
    #                  <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other
    #                     issue).</p>
    #               </dd>
    #               <dt>RobotApplicationVersionMismatchedEtag</dt>
    #               <dd>
    #                  <p>Etag for RobotApplication does not match value during version creation.</p>
    #               </dd>
    #               <dt>SimulationApplicationVersionMismatchedEtag</dt>
    #               <dd>
    #                  <p>Etag for SimulationApplication does not match value during version
    #                     creation.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>Details about why the simulation job failed. For more information about troubleshooting,
    #            see <a href="https://docs.aws.amazon.com/robomaker/latest/dg/troubleshooting.html">Troubleshooting</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>Location for output files generated by the simulation job.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute logging_config
    #   <p>The logging configuration.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute max_job_duration_in_seconds
    #   <p>The maximum job duration in seconds. The value must be 8 days (691,200 seconds) or
    #            less.</p>
    #
    #   @return [Integer]
    #
    # @!attribute simulation_time_millis
    #   <p>The simulation job execution duration in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role
    #   <p>The IAM role that allows the simulation instance to call the AWS APIs that are specified
    #            in its associated policies on your behalf.</p>
    #
    #   @return [String]
    #
    # @!attribute robot_applications
    #   <p>A list of robot applications.</p>
    #
    #   @return [Array<RobotApplicationConfig>]
    #
    # @!attribute simulation_applications
    #   <p>A list of simulation applications.</p>
    #
    #   @return [Array<SimulationApplicationConfig>]
    #
    # @!attribute data_sources
    #   <p>The data sources for the simulation job.</p>
    #
    #   @return [Array<DataSource>]
    #
    # @!attribute tags
    #   <p>The list of all tags added to the specified simulation job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc_config
    #   <p>The VPC configuration.</p>
    #
    #   @return [VPCConfigResponse]
    #
    # @!attribute network_interface
    #   <p>The network interface information for the simulation job.</p>
    #
    #   @return [NetworkInterface]
    #
    # @!attribute compute
    #   <p>Compute information for the simulation job.</p>
    #
    #   @return [ComputeResponse]
    #
    DescribeSimulationJobOutput = ::Struct.new(
      :arn,
      :name,
      :status,
      :last_started_at,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :network_interface,
      :compute,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_job_duration_in_seconds ||= 0
        self.simulation_time_millis ||= 0
      end
    end

    # @!attribute job
    #   <p>The Amazon Resource Name (arn) of the world export job to describe.</p>
    #
    #   @return [String]
    #
    DescribeWorldExportJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world export job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the world export job.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The world export job request is pending.</p>
    #               </dd>
    #               <dt>Running</dt>
    #               <dd>
    #                  <p>The world export job is running. </p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The world export job completed. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The world export job failed. See <code>failureCode</code> and
    #                        <code>failureReason</code> for more information. </p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The world export job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The world export job is being cancelled.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world export job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_code
    #   <p>The failure code of the world export job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>LimitExceeded</dt>
    #               <dd>
    #                  <p>The requested resource exceeds the maximum number allowed, or the number of
    #                     concurrent stream requests exceeds the maximum number allowed. </p>
    #               </dd>
    #               <dt>ResourceNotFound</dt>
    #               <dd>
    #                  <p>The specified resource could not be found. </p>
    #               </dd>
    #               <dt>RequestThrottled</dt>
    #               <dd>
    #                  <p>The request was throttled.</p>
    #               </dd>
    #               <dt>InvalidInput</dt>
    #               <dd>
    #                  <p>An input parameter in the request is not valid.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AccessDenied"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason why the world export job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute worlds
    #   <p>A list of Amazon Resource Names (arns) that correspond to worlds to be exported.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_location
    #   <p>The output location.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute iam_role
    #   <p>The IAM role that the world export process uses to access the Amazon S3 bucket and put
    #            the export.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world export
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeWorldExportJobOutput = ::Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :worlds,
      :output_location,
      :iam_role,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job
    #   <p>The Amazon Resource Name (arn) of the world generation job to describe.</p>
    #
    #   @return [String]
    #
    DescribeWorldGenerationJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world generation job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the world generation job:</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The world generation job request is pending.</p>
    #               </dd>
    #               <dt>Running</dt>
    #               <dd>
    #                  <p>The world generation job is running. </p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The world generation job completed. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The world generation job failed. See <code>failureCode</code> for more
    #                     information. </p>
    #               </dd>
    #               <dt>PartialFailed</dt>
    #               <dd>
    #                  <p>Some worlds did not generate.</p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The world generation job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The world generation job is being cancelled.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world generation job was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_code
    #   <p>The failure code of the world generation job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>LimitExceeded</dt>
    #               <dd>
    #                  <p>The requested resource exceeds the maximum number allowed, or the number of
    #                     concurrent stream requests exceeds the maximum number allowed. </p>
    #               </dd>
    #               <dt>ResourceNotFound</dt>
    #               <dd>
    #                  <p>The specified resource could not be found. </p>
    #               </dd>
    #               <dt>RequestThrottled</dt>
    #               <dd>
    #                  <p>The request was throttled.</p>
    #               </dd>
    #               <dt>InvalidInput</dt>
    #               <dd>
    #                  <p>An input parameter in the request is not valid.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason why the world generation job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute world_count
    #   <p>Information about the world count.</p>
    #
    #   @return [WorldCount]
    #
    # @!attribute finished_worlds_summary
    #   <p>Summary information about finished worlds.</p>
    #
    #   @return [FinishedWorldsSummary]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world generation
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute world_tags
    #   <p>A map that contains tag keys and tag values that are attached to the generated
    #            worlds.</p>
    #
    #   @return [Hash<String, String>]
    #
    DescribeWorldGenerationJobOutput = ::Struct.new(
      :arn,
      :status,
      :created_at,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :template,
      :world_count,
      :finished_worlds_summary,
      :tags,
      :world_tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute world
    #   <p>The Amazon Resource Name (arn) of the world you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeWorldInput = ::Struct.new(
      :world,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (arn) of the world.</p>
    #
    #   @return [String]
    #
    # @!attribute generation_job
    #   <p>The Amazon Resource Name (arn) of the world generation job that generated the
    #            world.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The world template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute world_description_body
    #   <p>Returns the JSON formatted string that describes the contents of your world.</p>
    #
    #   @return [String]
    #
    DescribeWorldOutput = ::Struct.new(
      :arn,
      :generation_job,
      :template,
      :created_at,
      :tags,
      :world_description_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template you want to describe.</p>
    #
    #   @return [String]
    #
    DescribeWorldTemplateInput = ::Struct.new(
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the world template was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the world
    #            template.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute version
    #   <p>The version of the world template that you're using.</p>
    #
    #   @return [String]
    #
    DescribeWorldTemplateOutput = ::Struct.new(
      :arn,
      :client_request_token,
      :name,
      :created_at,
      :last_updated_at,
      :tags,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The object that contains the Docker image URI for either your robot or simulation
    #          applications.</p>
    #
    # @!attribute uri
    #   <p>The Docker image URI for either your robot or simulation applications.</p>
    #
    #   @return [String]
    #
    Environment = ::Struct.new(
      :uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ExitBehavior
    #
    module ExitBehavior
      # No documentation available.
      #
      FAIL = "FAIL"

      # No documentation available.
      #
      RESTART = "RESTART"
    end

    # <p>Information about a failed create simulation job request.</p>
    #
    # @!attribute request
    #   <p>The simulation job request.</p>
    #
    #   @return [SimulationJobRequest]
    #
    # @!attribute failure_reason
    #   <p>The failure reason of the simulation job request.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code.</p>
    #
    #   Enum, one of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #
    #   @return [String]
    #
    # @!attribute failed_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job batch failed.</p>
    #
    #   @return [Time]
    #
    FailedCreateSimulationJobRequest = ::Struct.new(
      :request,
      :failure_reason,
      :failure_code,
      :failed_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FailureBehavior
    #
    module FailureBehavior
      # No documentation available.
      #
      Fail = "Fail"

      # No documentation available.
      #
      Continue = "Continue"
    end

    # <p>Information about worlds that failed.</p>
    #
    # @!attribute total_failure_count
    #   <p>The total number of failures.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failures
    #   <p>The worlds that failed.</p>
    #
    #   @return [Array<WorldFailure>]
    #
    FailureSummary = ::Struct.new(
      :total_failure_count,
      :failures,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.total_failure_count ||= 0
      end
    end

    # <p>Information about a filter.</p>
    #
    # @!attribute name
    #   <p>The name of the filter.</p>
    #
    #   @return [String]
    #
    # @!attribute values
    #   <p>A list of values.</p>
    #
    #   @return [Array<String>]
    #
    Filter = ::Struct.new(
      :name,
      :values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about worlds that finished.</p>
    #
    # @!attribute finished_count
    #   <p>The total number of finished worlds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute succeeded_worlds
    #   <p>A list of worlds that succeeded.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failure_summary
    #   <p>Information about worlds that failed.</p>
    #
    #   @return [FailureSummary]
    #
    FinishedWorldsSummary = ::Struct.new(
      :finished_count,
      :succeeded_worlds,
      :failure_summary,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.finished_count ||= 0
      end
    end

    # <p>Information about a fleet.</p>
    #
    # @!attribute name
    #   <p>The name of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the fleet was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_deployment_status
    #   <p>The status of the last fleet deployment.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute last_deployment_job
    #   <p>The Amazon Resource Name (ARN) of the last deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_deployment_time
    #   <p>The time of the last deployment.</p>
    #
    #   @return [Time]
    #
    Fleet = ::Struct.new(
      :name,
      :arn,
      :created_at,
      :last_deployment_status,
      :last_deployment_job,
      :last_deployment_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute generation_job
    #   <p>The Amazon Resource Name (arn) of the world generator job.</p>
    #
    #   @return [String]
    #
    GetWorldTemplateBodyInput = ::Struct.new(
      :template,
      :generation_job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_body
    #   <p>The world template body.</p>
    #
    #   @return [String]
    #
    GetWorldTemplateBodyOutput = ::Struct.new(
      :template_body,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request uses the same client token as a previous, but non-identical request. Do not
    #          reuse a client token with different requests, unless the requests are identical. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IdempotentParameterMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>AWS RoboMaker experienced a service issue. Try your call again.</p>
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

    # <p>A parameter specified in a request is not valid, is unsupported, or cannot be used. The
    #          returned message provides an explanation of the error value.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a launch configuration.</p>
    #
    # @!attribute package_name
    #   <p>The package name.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_file
    #   <p>The launch file name.</p>
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p>The environment variables for the application launch.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute port_forwarding_config
    #   <p>The port forwarding configuration.</p>
    #
    #   @return [PortForwardingConfig]
    #
    # @!attribute stream_ui
    #   <p>Boolean indicating whether a streaming session will be configured for the application.
    #            If <code>True</code>, AWS RoboMaker will configure a connection so you can interact with
    #            your application as it is running in the simulation. You must configure and launch the
    #            component. It must have a graphical user interface. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute command
    #   <p>If you've specified <code>General</code> as the value for your <code>RobotSoftwareSuite</code>, you can use this field to specify a list of commands for your container image.</p>
    #            <p>If you've specified <code>SimulationRuntime</code> as the value for your <code>SimulationSoftwareSuite</code>, you can use this field to specify a list of commands for your container image.</p>
    #
    #   @return [Array<String>]
    #
    LaunchConfig = ::Struct.new(
      :package_name,
      :launch_file,
      :environment_variables,
      :port_forwarding_config,
      :stream_ui,
      :command,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.stream_ui ||= false
      end
    end

    # <p>The requested resource exceeds the maximum number allowed, or the number of concurrent
    #          stream requests exceeds the maximum number allowed. </p>
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

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
    #            filtering, you must use the complete value of the filtered item. You can use up to three
    #            filters, but they must be for the same named item. For example, if you are looking for
    #            items with the status <code>InProgress</code> or the status <code>Pending</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListDeploymentJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListDeploymentJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListDeploymentJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListDeploymentJobs</code> returns up to 200 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    #   @return [Integer]
    #
    ListDeploymentJobsInput = ::Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute deployment_jobs
    #   <p>A list of deployment jobs that meet the criteria of the request.</p>
    #
    #   @return [Array<DeploymentJob>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListDeploymentJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListDeploymentJobsOutput = ::Struct.new(
      :deployment_jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListFleets</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #            <note>
    #               <p>This token should be treated as an opaque identifier that is only used to retrieve
    #               the next items in a list and not for other programmatic purposes.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListFleets</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListFleets</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListFleets</code> returns up to 200 results and a <code>nextToken</code> value if
    #            applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    #
    #   @return [Array<Filter>]
    #
    ListFleetsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet_details
    #   <p>A list of fleet details meeting the request criteria.</p>
    #
    #   @return [Array<Fleet>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListFleets</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListFleetsOutput = ::Struct.new(
      :fleet_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_qualifier
    #   <p>The version qualifier of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobotApplications</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListRobotApplications</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListRobotApplications</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListRobotApplications</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    #
    #   @return [Array<Filter>]
    #
    ListRobotApplicationsInput = ::Struct.new(
      :version_qualifier,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute robot_application_summaries
    #   <p>A list of robot application summaries that meet the criteria of the request.</p>
    #
    #   @return [Array<RobotApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobotApplications</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListRobotApplicationsOutput = ::Struct.new(
      :robot_application_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobots</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListRobots</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListRobots</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 200. If this parameter is not used, then
    #               <code>ListRobots</code> returns up to 200 results and a <code>nextToken</code> value if
    #            applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>fleetName</code> are supported. When
    #            filtering, you must use the complete value of the filtered item. You can use up to three
    #            filters, but they must be for the same named item. For example, if you are looking for
    #            items with the status <code>Registered</code> or the status <code>Available</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    ListRobotsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute robots
    #   <p>A list of robots that meet the criteria of the request.</p>
    #
    #   @return [Array<Robot>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListRobots</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListRobotsOutput = ::Struct.new(
      :robots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute version_qualifier
    #   <p>The version qualifier of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationApplications</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListSimulationApplications</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationApplications</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
    #            not used, then <code>ListSimulationApplications</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional list of filters to limit results.</p>
    #            <p>The filter name <code>name</code> is supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters.</p>
    #
    #   @return [Array<Filter>]
    #
    ListSimulationApplicationsInput = ::Struct.new(
      :version_qualifier,
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute simulation_application_summaries
    #   <p>A list of simulation application summaries that meet the criteria of the request.</p>
    #
    #   @return [Array<SimulationApplicationSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationApplications</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListSimulationApplicationsOutput = ::Struct.new(
      :simulation_application_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobBatches</code> again and assign that token
    #            to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListSimulationJobBatches</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationJobBatches</code> request with the returned
    #               <code>nextToken</code> value. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results.</p>
    #
    #   @return [Array<Filter>]
    #
    ListSimulationJobBatchesInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute simulation_job_batch_summaries
    #   <p>A list of simulation job batch summaries.</p>
    #
    #   @return [Array<SimulationJobBatchSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobBatches</code> again and assign that token
    #            to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListSimulationJobBatchesOutput = ::Struct.new(
      :simulation_job_batch_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListSimulationJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListSimulationJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 1000. If this parameter is not used, then
    #               <code>ListSimulationJobs</code> returns up to 1000 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results.</p>
    #            <p>The filter names <code>status</code> and <code>simulationApplicationName</code> and
    #               <code>robotApplicationName</code> are supported. When filtering, you must use the
    #            complete value of the filtered item. You can use up to three filters, but they must be for
    #            the same named item. For example, if you are looking for items with the status
    #               <code>Preparing</code> or the status <code>Running</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    ListSimulationJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute simulation_job_summaries
    #   <p>A list of simulation job summaries that meet the criteria of the request.</p>
    #
    #   @return [Array<SimulationJobSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListSimulationJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListSimulationJobsOutput = ::Struct.new(
      :simulation_job_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The AWS RoboMaker Amazon Resource Name (ARN) with tags to be listed.</p>
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
    #   <p>The list of all tags added to the specified resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldExportJobs</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListWorldExportJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldExportJobs</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorldExportJobs</code> returns up to 100 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results. You can use <code>generationJobId</code> and
    #               <code>templateId</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    ListWorldExportJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute world_export_job_summaries
    #   <p>Summary information for world export jobs.</p>
    #
    #   @return [Array<WorldExportJobSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldExportJobsRequest</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListWorldExportJobsOutput = ::Struct.new(
      :world_export_job_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldGenerationJobsRequest</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListWorldGeneratorJobs</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldGeneratorJobs</code> request with the returned
    #               <code>nextToken</code> value. This value can be between 1 and 100. If this parameter is
    #            not used, then <code>ListWorldGeneratorJobs</code> returns up to 100 results and a
    #               <code>nextToken</code> value if applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results. You can use <code>status</code> and
    #               <code>templateId</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    ListWorldGenerationJobsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute world_generation_job_summaries
    #   <p>Summary information for world generator jobs.</p>
    #
    #   @return [Array<WorldGenerationJobSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldGeneratorJobsRequest</code> again and assign that
    #            token to the request object's <code>nextToken</code> parameter. If there are no remaining
    #            results, the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListWorldGenerationJobsOutput = ::Struct.new(
      :world_generation_job_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldTemplates</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListWorldTemplates</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorldTemplates</code> request with the returned <code>nextToken</code>
    #            value. This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorldTemplates</code> returns up to 100 results and a <code>nextToken</code>
    #            value if applicable. </p>
    #
    #   @return [Integer]
    #
    ListWorldTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template_summaries
    #   <p>Summary information for templates.</p>
    #
    #   @return [Array<TemplateSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorldTemplates</code> again and assign that token to
    #            the request object's <code>nextToken</code> parameter. If there are no remaining results,
    #            the previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListWorldTemplatesOutput = ::Struct.new(
      :template_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorlds</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>When this parameter is used, <code>ListWorlds</code> only returns
    #               <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #            response element. The remaining results of the initial request can be seen by sending
    #            another <code>ListWorlds</code> request with the returned <code>nextToken</code> value.
    #            This value can be between 1 and 100. If this parameter is not used, then
    #               <code>ListWorlds</code> returns up to 100 results and a <code>nextToken</code> value if
    #            applicable. </p>
    #
    #   @return [Integer]
    #
    # @!attribute filters
    #   <p>Optional filters to limit results. You can use <code>status</code>.</p>
    #
    #   @return [Array<Filter>]
    #
    ListWorldsInput = ::Struct.new(
      :next_token,
      :max_results,
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute world_summaries
    #   <p>Summary information for worlds.</p>
    #
    #   @return [Array<WorldSummary>]
    #
    # @!attribute next_token
    #   <p>If the previous paginated request did not return all of the remaining results, the
    #            response object's <code>nextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListWorlds</code> again and assign that token to the
    #            request object's <code>nextToken</code> parameter. If there are no remaining results, the
    #            previous response object's NextToken parameter is set to null. </p>
    #
    #   @return [String]
    #
    ListWorldsOutput = ::Struct.new(
      :world_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The logging configuration.</p>
    #
    # @!attribute record_all_ros_topics
    #   <p>A boolean indicating whether to record all ROS topics.</p>
    #            <important>
    #               <p>This API is no longer supported and will throw an error if used.</p>
    #            </important>
    #
    #   @deprecated
    #     AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html.
    #
    #   @return [Boolean]
    #
    LoggingConfig = ::Struct.new(
      :record_all_ros_topics,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a network interface.</p>
    #
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #
    #   @return [String]
    #
    # @!attribute private_ip_address
    #   <p>The IPv4 address of the network interface within the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute public_ip_address
    #   <p>The IPv4 public address of the network interface.</p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :network_interface_id,
      :private_ip_address,
      :public_ip_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The output location.</p>
    #
    # @!attribute s3_bucket
    #   <p>The S3 bucket for output.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The S3 folder in the <code>s3Bucket</code> where output files will be placed.</p>
    #
    #   @return [String]
    #
    OutputLocation = ::Struct.new(
      :s3_bucket,
      :s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for port forwarding.</p>
    #
    # @!attribute port_mappings
    #   <p>The port mappings for the configuration.</p>
    #
    #   @return [Array<PortMapping>]
    #
    PortForwardingConfig = ::Struct.new(
      :port_mappings,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An object representing a port mapping.</p>
    #
    # @!attribute job_port
    #   <p>The port number on the simulation job instance to use as a remote connection point.
    #            </p>
    #
    #   @return [Integer]
    #
    # @!attribute application_port
    #   <p>The port number on the application.</p>
    #
    #   @return [Integer]
    #
    # @!attribute enable_on_public_ip
    #   <p>A Boolean indicating whether to enable this port mapping on public IP.</p>
    #
    #   @return [Boolean]
    #
    PortMapping = ::Struct.new(
      :job_port,
      :application_port,
      :enable_on_public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.job_port ||= 0
        self.application_port ||= 0
        self.enable_on_public_ip ||= false
      end
    end

    # <p>Information about the progress of a deployment job.</p>
    #
    # @!attribute current_progress
    #   <p>The current progress status.</p>
    #            <dl>
    #               <dt>Validating</dt>
    #               <dd>
    #                  <p>Validating the deployment.</p>
    #               </dd>
    #               <dt>DownloadingExtracting</dt>
    #               <dd>
    #                  <p>Downloading and extracting the bundle on the robot.</p>
    #               </dd>
    #               <dt>ExecutingPreLaunch</dt>
    #               <dd>
    #                  <p>Executing pre-launch script(s) if provided.</p>
    #               </dd>
    #               <dt>Launching</dt>
    #               <dd>
    #                  <p>Launching the robot application.</p>
    #               </dd>
    #               <dt>ExecutingPostLaunch</dt>
    #               <dd>
    #                  <p>Executing post-launch script(s) if provided.</p>
    #               </dd>
    #               <dt>Finished</dt>
    #               <dd>
    #                  <p>Deployment is complete.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Validating", "DownloadingExtracting", "ExecutingDownloadCondition", "ExecutingPreLaunch", "Launching", "ExecutingPostLaunch", "Finished"]
    #
    #   @return [String]
    #
    # @!attribute percent_done
    #   <p>Precentage of the step that is done. This currently only applies to the
    #               <code>Downloading/Extracting</code> step of the deployment. It is empty for other
    #            steps.</p>
    #
    #   @return [Float]
    #
    # @!attribute estimated_time_remaining_seconds
    #   <p>Estimated amount of time in seconds remaining in the step. This currently only applies
    #            to the <code>Downloading/Extracting</code> step of the deployment. It is empty for other
    #            steps.</p>
    #
    #   @return [Integer]
    #
    # @!attribute target_resource
    #   <p>The Amazon Resource Name (ARN) of the deployment job.</p>
    #
    #   @return [String]
    #
    ProgressDetail = ::Struct.new(
      :current_progress,
      :percent_done,
      :estimated_time_remaining_seconds,
      :target_resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute robot
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    RegisterRobotInput = ::Struct.new(
      :fleet,
      :robot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   AWS RoboMaker is unable to process this request as the support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet that the robot will join.</p>
    #
    #   @return [String]
    #
    # @!attribute robot
    #   <p>Information about the robot registration.</p>
    #
    #   @return [String]
    #
    RegisterRobotOutput = ::Struct.new(
      :fleet,
      :robot,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a rendering engine.</p>
    #
    # @!attribute name
    #   <p>The name of the rendering engine.</p>
    #
    #   Enum, one of: ["OGRE"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the rendering engine.</p>
    #
    #   @return [String]
    #
    RenderingEngine = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RenderingEngineType
    #
    module RenderingEngineType
      # No documentation available.
      #
      OGRE = "OGRE"
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

    # <p>The specified resource does not exist.</p>
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

    # @!attribute job
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    #
    #   @return [String]
    #
    RestartSimulationJobInput = ::Struct.new(
      :job,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RestartSimulationJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a robot.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet_arn
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the robot.</p>
    #
    #   Enum, one of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #
    #   @return [String]
    #
    # @!attribute green_grass_group_id
    #   <p>The Greengrass group associated with the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the robot was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute architecture
    #   <p>The architecture of the robot.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64", "ARMHF"]
    #
    #   @return [String]
    #
    # @!attribute last_deployment_job
    #   <p>The Amazon Resource Name (ARN) of the last deployment job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_deployment_time
    #   <p>The time of the last deployment.</p>
    #
    #   @return [Time]
    #
    Robot = ::Struct.new(
      :arn,
      :name,
      :fleet_arn,
      :status,
      :green_grass_group_id,
      :created_at,
      :architecture,
      :last_deployment_job,
      :last_deployment_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Application configuration information for a robot.</p>
    #
    # @!attribute application
    #   <p>The application information for the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_config
    #   <p>The launch configuration for the robot application.</p>
    #
    #   @return [LaunchConfig]
    #
    # @!attribute upload_configurations
    #   <p>The upload configurations for the robot application.</p>
    #
    #   @return [Array<UploadConfiguration>]
    #
    # @!attribute use_default_upload_configurations
    #   <p>A Boolean indicating whether to use default upload configurations. By default,
    #               <code>.ros</code> and <code>.gazebo</code> files are uploaded when the application
    #            terminates and all ROS topics will be recorded.</p>
    #            <p>If you set this value, you must specify an <code>outputLocation</code>.</p>
    #            <important>
    #               <p>This API is no longer supported and will throw an error if used.</p>
    #            </important>
    #
    #   @deprecated
    #     AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html.
    #
    #   @return [Boolean]
    #
    # @!attribute tools
    #   <p>Information about tools configured for the robot application.</p>
    #
    #   @return [Array<Tool>]
    #
    # @!attribute use_default_tools
    #   <p>A Boolean indicating whether to use default robot application tools. The default tools
    #            are rviz, rqt, terminal and rosbag record. The default is <code>False</code>.</p>
    #            <important>
    #               <p>This API is no longer supported and will throw an error if used.</p>
    #            </important>
    #
    #   @deprecated
    #     AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html.
    #
    #   @return [Boolean]
    #
    RobotApplicationConfig = ::Struct.new(
      :application,
      :application_version,
      :launch_config,
      :upload_configurations,
      :use_default_upload_configurations,
      :tools,
      :use_default_tools,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information for a robot application.</p>
    #
    # @!attribute name
    #   <p>The name of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the robot.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the robot application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute robot_software_suite
    #   <p>Information about a robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    RobotApplicationSummary = ::Struct.new(
      :name,
      :arn,
      :version,
      :last_updated_at,
      :robot_software_suite,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a robot deployment.</p>
    #
    # @!attribute arn
    #   <p>The robot deployment Amazon Resource Name (ARN).</p>
    #
    #   @return [String]
    #
    # @!attribute deployment_start_time
    #   <p>The time, in milliseconds since the epoch, when the deployment was started.</p>
    #
    #   @return [Time]
    #
    # @!attribute deployment_finish_time
    #   <p>The time, in milliseconds since the epoch, when the deployment finished.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the robot deployment.</p>
    #
    #   Enum, one of: ["Available", "Registered", "PendingNewDeployment", "Deploying", "Failed", "InSync", "NoResponse"]
    #
    #   @return [String]
    #
    # @!attribute progress_detail
    #   <p>Information about how the deployment is progressing.</p>
    #
    #   @return [ProgressDetail]
    #
    # @!attribute failure_reason
    #   <p>A short description of the reason why the robot deployment failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The robot deployment failure code.</p>
    #
    #   Enum, one of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #
    #   @return [String]
    #
    RobotDeployment = ::Struct.new(
      :arn,
      :deployment_start_time,
      :deployment_finish_time,
      :status,
      :progress_detail,
      :failure_reason,
      :failure_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RobotDeploymentStep
    #
    module RobotDeploymentStep
      # No documentation available.
      #
      ValidatingStep = "Validating"

      # No documentation available.
      #
      DownloadingExtractingStep = "DownloadingExtracting"

      # No documentation available.
      #
      ExecutingDownloadCondition = "ExecutingDownloadCondition"

      # No documentation available.
      #
      PreLaunchStep = "ExecutingPreLaunch"

      # No documentation available.
      #
      LaunchingStep = "Launching"

      # No documentation available.
      #
      PostLaunchStep = "ExecutingPostLaunch"

      # No documentation available.
      #
      FinishedStep = "Finished"
    end

    # <p>Information about a robot software suite (ROS distribution).</p>
    #
    # @!attribute name
    #   <p>The name of the robot software suite (ROS distribution).</p>
    #
    #   Enum, one of: ["ROS", "ROS2", "General"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot software suite (ROS distribution).</p>
    #
    #   Enum, one of: ["Kinetic", "Melodic", "Dashing", "Foxy"]
    #
    #   @return [String]
    #
    RobotSoftwareSuite = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RobotSoftwareSuiteType
    #
    module RobotSoftwareSuiteType
      # No documentation available.
      #
      ROS = "ROS"

      # No documentation available.
      #
      ROS2 = "ROS2"

      # No documentation available.
      #
      General = "General"
    end

    # Includes enum constants for RobotSoftwareSuiteVersionType
    #
    module RobotSoftwareSuiteVersionType
      # No documentation available.
      #
      Kinetic = "Kinetic"

      # No documentation available.
      #
      Melodic = "Melodic"

      # No documentation available.
      #
      Dashing = "Dashing"

      # No documentation available.
      #
      Foxy = "Foxy"
    end

    # Includes enum constants for RobotStatus
    #
    module RobotStatus
      # No documentation available.
      #
      Available = "Available"

      # No documentation available.
      #
      Registered = "Registered"

      # No documentation available.
      #
      PendingNewDeployment = "PendingNewDeployment"

      # No documentation available.
      #
      Deploying = "Deploying"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      InSync = "InSync"

      # No documentation available.
      #
      NoResponse = "NoResponse"
    end

    # <p>Information about S3 keys.</p>
    #
    # @!attribute s3_key
    #   <p>The S3 key.</p>
    #
    #   @return [String]
    #
    # @!attribute etag
    #   <p>The etag for the object.</p>
    #
    #   @return [String]
    #
    S3KeyOutput = ::Struct.new(
      :s3_key,
      :etag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an S3 object.</p>
    #
    # @!attribute bucket
    #   <p>The bucket containing the object.</p>
    #
    #   @return [String]
    #
    # @!attribute key
    #   <p>The key of the object.</p>
    #
    #   @return [String]
    #
    # @!attribute etag
    #   <p>The etag of the object.</p>
    #
    #   @return [String]
    #
    S3Object = ::Struct.new(
      :bucket,
      :key,
      :etag,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request has failed due to a temporary failure of the server.</p>
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

    # <p>Information about a simulation application configuration.</p>
    #
    # @!attribute application
    #   <p>The application information for the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute application_version
    #   <p>The version of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute launch_config
    #   <p>The launch configuration for the simulation application.</p>
    #
    #   @return [LaunchConfig]
    #
    # @!attribute upload_configurations
    #   <p>Information about upload configurations for the simulation application.</p>
    #
    #   @return [Array<UploadConfiguration>]
    #
    # @!attribute world_configs
    #   <p>A list of world configurations.</p>
    #
    #   @return [Array<WorldConfig>]
    #
    # @!attribute use_default_upload_configurations
    #   <p>A Boolean indicating whether to use default upload configurations. By default,
    #               <code>.ros</code> and <code>.gazebo</code> files are uploaded when the application
    #            terminates and all ROS topics will be recorded.</p>
    #            <p>If you set this value, you must specify an <code>outputLocation</code>.</p>
    #            <important>
    #               <p>This API is no longer supported and will throw an error if used.</p>
    #            </important>
    #
    #   @deprecated
    #     AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html.
    #
    #   @return [Boolean]
    #
    # @!attribute tools
    #   <p>Information about tools configured for the simulation application.</p>
    #
    #   @return [Array<Tool>]
    #
    # @!attribute use_default_tools
    #   <p>A Boolean indicating whether to use default simulation application tools. The default
    #            tools are rviz, rqt, terminal and rosbag record. The default is <code>False</code>.</p>
    #            <important>
    #               <p>This API is no longer supported and will throw an error if used.</p>
    #            </important>
    #
    #   @deprecated
    #     AWS RoboMaker is ending support for ROS software suite. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/software-support-policy.html.
    #
    #   @return [Boolean]
    #
    SimulationApplicationConfig = ::Struct.new(
      :application,
      :application_version,
      :launch_config,
      :upload_configurations,
      :world_configs,
      :use_default_upload_configurations,
      :tools,
      :use_default_tools,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information for a simulation application.</p>
    #
    # @!attribute name
    #   <p>The name of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute robot_software_suite
    #   <p>Information about a robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute simulation_software_suite
    #   <p>Information about a simulation software suite.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    SimulationApplicationSummary = ::Struct.new(
      :name,
      :arn,
      :version,
      :last_updated_at,
      :robot_software_suite,
      :simulation_software_suite,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a simulation job.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>Status of the simulation job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute last_started_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            started.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute failure_behavior
    #   <p>The failure behavior the simulation job.</p>
    #            <dl>
    #               <dt>Continue</dt>
    #               <dd>
    #                  <p>Leaves the host running for its maximum timeout duration after a
    #                        <code>4XX</code> error code.</p>
    #               </dd>
    #               <dt>Fail</dt>
    #               <dd>
    #                  <p>Stop the simulation job and terminate the instance.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Fail", "Continue"]
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code of the simulation job if it failed.</p>
    #
    #   Enum, one of: ["InternalServiceError", "RobotApplicationCrash", "SimulationApplicationCrash", "RobotApplicationHealthCheckFailure", "SimulationApplicationHealthCheckFailure", "BadPermissionsRobotApplication", "BadPermissionsSimulationApplication", "BadPermissionsS3Object", "BadPermissionsS3Output", "BadPermissionsCloudwatchLogs", "SubnetIpLimitExceeded", "ENILimitExceeded", "BadPermissionsUserCredentials", "InvalidBundleRobotApplication", "InvalidBundleSimulationApplication", "InvalidS3Resource", "ThrottlingError", "LimitExceeded", "MismatchedEtag", "RobotApplicationVersionMismatchedEtag", "SimulationApplicationVersionMismatchedEtag", "ResourceNotFound", "RequestThrottled", "BatchTimedOut", "BatchCanceled", "InvalidInput", "WrongRegionS3Bucket", "WrongRegionS3Output", "WrongRegionRobotApplication", "WrongRegionSimulationApplication", "UploadContentMismatchError"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason why the simulation job failed.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique identifier for this <code>SimulationJob</code> request.</p>
    #
    #   @return [String]
    #
    # @!attribute output_location
    #   <p>Location for output files generated by the simulation job.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute logging_config
    #   <p>The logging configuration.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute max_job_duration_in_seconds
    #   <p>The maximum simulation job duration in seconds. The value must be 8 days (691,200
    #            seconds) or less.</p>
    #
    #   @return [Integer]
    #
    # @!attribute simulation_time_millis
    #   <p>The simulation job execution duration in milliseconds.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role
    #   <p>The IAM role that allows the simulation instance to call the AWS APIs that are specified
    #            in its associated policies on your behalf. This is how credentials are passed in to your
    #            simulation job. </p>
    #
    #   @return [String]
    #
    # @!attribute robot_applications
    #   <p>A list of robot applications.</p>
    #
    #   @return [Array<RobotApplicationConfig>]
    #
    # @!attribute simulation_applications
    #   <p>A list of simulation applications.</p>
    #
    #   @return [Array<SimulationApplicationConfig>]
    #
    # @!attribute data_sources
    #   <p>The data sources for the simulation job.</p>
    #
    #   @return [Array<DataSource>]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation
    #            job.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute vpc_config
    #   <p>VPC configuration information.</p>
    #
    #   @return [VPCConfigResponse]
    #
    # @!attribute network_interface
    #   <p>Information about a network interface.</p>
    #
    #   @return [NetworkInterface]
    #
    # @!attribute compute
    #   <p>Compute information for the simulation job</p>
    #
    #   @return [ComputeResponse]
    #
    SimulationJob = ::Struct.new(
      :arn,
      :name,
      :status,
      :last_started_at,
      :last_updated_at,
      :failure_behavior,
      :failure_code,
      :failure_reason,
      :client_request_token,
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :simulation_time_millis,
      :iam_role,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :tags,
      :vpc_config,
      :network_interface,
      :compute,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_job_duration_in_seconds ||= 0
        self.simulation_time_millis ||= 0
      end
    end

    # Includes enum constants for SimulationJobBatchErrorCode
    #
    module SimulationJobBatchErrorCode
      # No documentation available.
      #
      InternalServiceError = "InternalServiceError"
    end

    # Includes enum constants for SimulationJobBatchStatus
    #
    module SimulationJobBatchStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      InProgress = "InProgress"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Canceled = "Canceled"

      # No documentation available.
      #
      Canceling = "Canceling"

      # No documentation available.
      #
      Completing = "Completing"

      # No documentation available.
      #
      TimingOut = "TimingOut"

      # No documentation available.
      #
      TimedOut = "TimedOut"
    end

    # <p>Information about a simulation job batch.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the batch.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job batch was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job batch was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the simulation job batch.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The simulation job batch request is pending.</p>
    #               </dd>
    #               <dt>InProgress</dt>
    #               <dd>
    #                  <p>The simulation job batch is in progress. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The simulation job batch failed. One or more simulation job requests could not
    #                     be completed due to an internal failure (like <code>InternalServiceError</code>).
    #                     See <code>failureCode</code> and <code>failureReason</code> for more
    #                     information.</p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The simulation batch job completed. A batch is complete when (1) there are no
    #                     pending simulation job requests in the batch and none of the failed simulation job
    #                     requests are due to <code>InternalServiceError</code> and (2) when all created
    #                     simulation jobs have reached a terminal state (for example, <code>Completed</code>
    #                     or <code>Failed</code>). </p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The simulation batch job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The simulation batch job is being cancelled.</p>
    #               </dd>
    #               <dt>Completing</dt>
    #               <dd>
    #                  <p>The simulation batch job is completing.</p>
    #               </dd>
    #               <dt>TimingOut</dt>
    #               <dd>
    #                  <p>The simulation job batch is timing out.</p>
    #                  <p>If a batch timing out, and there are pending requests that were failing due to
    #                     an internal failure (like <code>InternalServiceError</code>), the batch status
    #                     will be <code>Failed</code>. If there are no such failing request, the batch
    #                     status will be <code>TimedOut</code>. </p>
    #               </dd>
    #               <dt>TimedOut</dt>
    #               <dd>
    #                  <p>The simulation batch job timed out.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"]
    #
    #   @return [String]
    #
    # @!attribute failed_request_count
    #   <p>The number of failed simulation job requests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute pending_request_count
    #   <p>The number of pending simulation job requests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute created_request_count
    #   <p>The number of created simulation job requests.</p>
    #
    #   @return [Integer]
    #
    SimulationJobBatchSummary = ::Struct.new(
      :arn,
      :last_updated_at,
      :created_at,
      :status,
      :failed_request_count,
      :pending_request_count,
      :created_request_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.failed_request_count ||= 0
        self.pending_request_count ||= 0
        self.created_request_count ||= 0
      end
    end

    # Includes enum constants for SimulationJobErrorCode
    #
    module SimulationJobErrorCode
      # No documentation available.
      #
      InternalServiceError = "InternalServiceError"

      # No documentation available.
      #
      RobotApplicationCrash = "RobotApplicationCrash"

      # No documentation available.
      #
      SimulationApplicationCrash = "SimulationApplicationCrash"

      # No documentation available.
      #
      RobotApplicationHealthCheckFailure = "RobotApplicationHealthCheckFailure"

      # No documentation available.
      #
      SimulationApplicationHealthCheckFailure = "SimulationApplicationHealthCheckFailure"

      # No documentation available.
      #
      BadPermissionsRobotApplication = "BadPermissionsRobotApplication"

      # No documentation available.
      #
      BadPermissionsSimulationApplication = "BadPermissionsSimulationApplication"

      # No documentation available.
      #
      BadPermissionsS3Object = "BadPermissionsS3Object"

      # No documentation available.
      #
      BadPermissionsS3Output = "BadPermissionsS3Output"

      # No documentation available.
      #
      BadPermissionsCloudwatchLogs = "BadPermissionsCloudwatchLogs"

      # No documentation available.
      #
      SubnetIpLimitExceeded = "SubnetIpLimitExceeded"

      # No documentation available.
      #
      ENILimitExceeded = "ENILimitExceeded"

      # No documentation available.
      #
      BadPermissionsUserCredentials = "BadPermissionsUserCredentials"

      # No documentation available.
      #
      InvalidBundleRobotApplication = "InvalidBundleRobotApplication"

      # No documentation available.
      #
      InvalidBundleSimulationApplication = "InvalidBundleSimulationApplication"

      # No documentation available.
      #
      InvalidS3Resource = "InvalidS3Resource"

      # No documentation available.
      #
      ThrottlingError = "ThrottlingError"

      # No documentation available.
      #
      LimitExceeded = "LimitExceeded"

      # No documentation available.
      #
      MismatchedEtag = "MismatchedEtag"

      # No documentation available.
      #
      RobotApplicationVersionMismatchedEtag = "RobotApplicationVersionMismatchedEtag"

      # No documentation available.
      #
      SimulationApplicationVersionMismatchedEtag = "SimulationApplicationVersionMismatchedEtag"

      # No documentation available.
      #
      ResourceNotFound = "ResourceNotFound"

      # No documentation available.
      #
      RequestThrottled = "RequestThrottled"

      # No documentation available.
      #
      BatchTimedOut = "BatchTimedOut"

      # No documentation available.
      #
      BatchCanceled = "BatchCanceled"

      # No documentation available.
      #
      InvalidInput = "InvalidInput"

      # No documentation available.
      #
      WrongRegionS3Bucket = "WrongRegionS3Bucket"

      # No documentation available.
      #
      WrongRegionS3Output = "WrongRegionS3Output"

      # No documentation available.
      #
      WrongRegionRobotApplication = "WrongRegionRobotApplication"

      # No documentation available.
      #
      WrongRegionSimulationApplication = "WrongRegionSimulationApplication"

      # No documentation available.
      #
      UploadContentMismatchError = "UploadContentMismatchError"
    end

    # <p>Information about a simulation job request.</p>
    #
    # @!attribute output_location
    #   <p>The output location.</p>
    #
    #   @return [OutputLocation]
    #
    # @!attribute logging_config
    #   <p>The logging configuration.</p>
    #
    #   @return [LoggingConfig]
    #
    # @!attribute max_job_duration_in_seconds
    #   <p>The maximum simulation job duration in seconds. The value must be 8 days (691,200
    #            seconds) or less.</p>
    #
    #   @return [Integer]
    #
    # @!attribute iam_role
    #   <p>The IAM role name that allows the simulation instance to call the AWS APIs that are
    #            specified in its associated policies on your behalf. This is how credentials are passed in
    #            to your simulation job. </p>
    #
    #   @return [String]
    #
    # @!attribute failure_behavior
    #   <p>The failure behavior the simulation job.</p>
    #            <dl>
    #               <dt>Continue</dt>
    #               <dd>
    #                  <p>Leaves the host running for its maximum timeout duration after a
    #                        <code>4XX</code> error code.</p>
    #               </dd>
    #               <dt>Fail</dt>
    #               <dd>
    #                  <p>Stop the simulation job and terminate the instance.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Fail", "Continue"]
    #
    #   @return [String]
    #
    # @!attribute use_default_applications
    #   <p>A Boolean indicating whether to use default applications in the simulation job. Default
    #            applications include Gazebo, rqt, rviz and terminal access. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute robot_applications
    #   <p>The robot applications to use in the simulation job.</p>
    #
    #   @return [Array<RobotApplicationConfig>]
    #
    # @!attribute simulation_applications
    #   <p>The simulation applications to use in the simulation job.</p>
    #
    #   @return [Array<SimulationApplicationConfig>]
    #
    # @!attribute data_sources
    #   <p>Specify data sources to mount read-only files from S3 into your simulation. These files
    #            are available under <code>/opt/robomaker/datasources/data_source_name</code>. </p>
    #            <note>
    #               <p>There is a limit of 100 files and a combined size of 25GB for all
    #                  <code>DataSourceConfig</code> objects. </p>
    #            </note>
    #
    #   @return [Array<DataSourceConfig>]
    #
    # @!attribute vpc_config
    #   <p>If your simulation job accesses resources in a VPC, you provide this parameter
    #            identifying the list of security group IDs and subnet IDs. These must belong to the same
    #            VPC. You must provide at least one security group and two subnet IDs.</p>
    #
    #   @return [VPCConfig]
    #
    # @!attribute compute
    #   <p>Compute information for the simulation job</p>
    #
    #   @return [Compute]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the simulation job
    #            request.</p>
    #
    #   @return [Hash<String, String>]
    #
    SimulationJobRequest = ::Struct.new(
      :output_location,
      :logging_config,
      :max_job_duration_in_seconds,
      :iam_role,
      :failure_behavior,
      :use_default_applications,
      :robot_applications,
      :simulation_applications,
      :data_sources,
      :vpc_config,
      :compute,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.max_job_duration_in_seconds ||= 0
      end
    end

    # Includes enum constants for SimulationJobStatus
    #
    module SimulationJobStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Preparing = "Preparing"

      # No documentation available.
      #
      Running = "Running"

      # No documentation available.
      #
      Restarting = "Restarting"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      RunningFailed = "RunningFailed"

      # No documentation available.
      #
      Terminating = "Terminating"

      # No documentation available.
      #
      Terminated = "Terminated"

      # No documentation available.
      #
      Canceled = "Canceled"
    end

    # <p>Summary information for a simulation job.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the simulation job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "Running", "Restarting", "Completed", "Failed", "RunningFailed", "Terminating", "Terminated", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute simulation_application_names
    #   <p>A list of simulation job simulation application names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute robot_application_names
    #   <p>A list of simulation job robot application names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute data_source_names
    #   <p>The names of the data sources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute compute_type
    #   <p>The compute type for the simulation job summary.</p>
    #
    #   Enum, one of: ["CPU", "GPU_AND_CPU"]
    #
    #   @return [String]
    #
    SimulationJobSummary = ::Struct.new(
      :arn,
      :last_updated_at,
      :name,
      :status,
      :simulation_application_names,
      :robot_application_names,
      :data_source_names,
      :compute_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a simulation software suite.</p>
    #
    # @!attribute name
    #   <p>The name of the simulation software suite.</p>
    #
    #   Enum, one of: ["Gazebo", "RosbagPlay", "SimulationRuntime"]
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the simulation software suite.</p>
    #
    #   @return [String]
    #
    SimulationSoftwareSuite = ::Struct.new(
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SimulationSoftwareSuiteType
    #
    module SimulationSoftwareSuiteType
      # No documentation available.
      #
      Gazebo = "Gazebo"

      # No documentation available.
      #
      RosbagPlay = "RosbagPlay"

      # No documentation available.
      #
      SimulationRuntime = "SimulationRuntime"
    end

    # <p>Information about a source.</p>
    #
    # @!attribute s3_bucket
    #   <p>The s3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The s3 object key.</p>
    #
    #   @return [String]
    #
    # @!attribute etag
    #   <p>A hash of the object specified by <code>s3Bucket</code> and <code>s3Key</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The taget processor architecture for the application.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64", "ARMHF"]
    #
    #   @return [String]
    #
    Source = ::Struct.new(
      :s3_bucket,
      :s3_key,
      :etag,
      :architecture,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a source configuration.</p>
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The s3 object key.</p>
    #
    #   @return [String]
    #
    # @!attribute architecture
    #   <p>The target processor architecture for the application.</p>
    #
    #   Enum, one of: ["X86_64", "ARM64", "ARMHF"]
    #
    #   @return [String]
    #
    SourceConfig = ::Struct.new(
      :s3_bucket,
      :s3_key,
      :architecture,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_policy
    #   <p>The batch policy.</p>
    #
    #   @return [BatchPolicy]
    #
    # @!attribute create_simulation_job_requests
    #   <p>A list of simulation job requests to create in the batch.</p>
    #
    #   @return [Array<SimulationJobRequest>]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment job
    #            batch.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartSimulationJobBatchInput = ::Struct.new(
      :client_request_token,
      :batch_policy,
      :create_simulation_job_requests,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (arn) of the batch.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the simulation job batch.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The simulation job batch request is pending.</p>
    #               </dd>
    #               <dt>InProgress</dt>
    #               <dd>
    #                  <p>The simulation job batch is in progress. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The simulation job batch failed. One or more simulation job requests could not
    #                     be completed due to an internal failure (like <code>InternalServiceError</code>).
    #                     See <code>failureCode</code> and <code>failureReason</code> for more
    #                     information.</p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The simulation batch job completed. A batch is complete when (1) there are no
    #                     pending simulation job requests in the batch and none of the failed simulation job
    #                     requests are due to <code>InternalServiceError</code> and (2) when all created
    #                     simulation jobs have reached a terminal state (for example, <code>Completed</code>
    #                     or <code>Failed</code>). </p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The simulation batch job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The simulation batch job is being cancelled.</p>
    #               </dd>
    #               <dt>Completing</dt>
    #               <dd>
    #                  <p>The simulation batch job is completing.</p>
    #               </dd>
    #               <dt>TimingOut</dt>
    #               <dd>
    #                  <p>The simulation job batch is timing out.</p>
    #                  <p>If a batch timing out, and there are pending requests that were failing due to
    #                     an internal failure (like <code>InternalServiceError</code>), the batch status
    #                     will be <code>Failed</code>. If there are no such failing request, the batch
    #                     status will be <code>TimedOut</code>. </p>
    #               </dd>
    #               <dt>TimedOut</dt>
    #               <dd>
    #                  <p>The simulation batch job timed out.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "InProgress", "Failed", "Completed", "Canceled", "Canceling", "Completing", "TimingOut", "TimedOut"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the simulation job batch was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute batch_policy
    #   <p>The batch policy.</p>
    #
    #   @return [BatchPolicy]
    #
    # @!attribute failure_code
    #   <p>The failure code if the simulation job batch failed.</p>
    #
    #   Enum, one of: ["InternalServiceError"]
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>The reason the simulation job batch failed.</p>
    #
    #   @return [String]
    #
    # @!attribute failed_requests
    #   <p>A list of failed simulation job requests. The request failed to be created into a
    #            simulation job. Failed requests do not have a simulation job ID. </p>
    #
    #   @return [Array<FailedCreateSimulationJobRequest>]
    #
    # @!attribute pending_requests
    #   <p>A list of pending simulation job requests. These requests have not yet been created into
    #            simulation jobs.</p>
    #
    #   @return [Array<SimulationJobRequest>]
    #
    # @!attribute created_requests
    #   <p>A list of created simulation job request summaries.</p>
    #
    #   @return [Array<SimulationJobSummary>]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the deployment job
    #            batch.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartSimulationJobBatchOutput = ::Struct.new(
      :arn,
      :status,
      :created_at,
      :client_request_token,
      :batch_policy,
      :failure_code,
      :failure_reason,
      :failed_requests,
      :pending_requests,
      :created_requests,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute client_request_token
    #   <p>Unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #            request.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet
    #   <p>The target fleet for the synchronization.</p>
    #
    #   @return [String]
    #
    SyncDeploymentJobInput = ::Struct.new(
      :client_request_token,
      :fleet,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @deprecated
    #   Support for the AWS RoboMaker application deployment feature has ended. For additional information, see https://docs.aws.amazon.com/robomaker/latest/dg/fleets.html.
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the synchronization request.</p>
    #
    #   @return [String]
    #
    # @!attribute fleet
    #   <p>The Amazon Resource Name (ARN) of the fleet.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the synchronization job.</p>
    #
    #   Enum, one of: ["Pending", "Preparing", "InProgress", "Failed", "Succeeded", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute deployment_config
    #   <p>Information about the deployment configuration.</p>
    #
    #   @return [DeploymentConfig]
    #
    # @!attribute deployment_application_configs
    #   <p>Information about the deployment application configurations.</p>
    #
    #   @return [Array<DeploymentApplicationConfig>]
    #
    # @!attribute failure_reason
    #   <p>The failure reason if the job fails.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_code
    #   <p>The failure code if the job fails:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>RobotApplicationCrash</dt>
    #               <dd>
    #                  <p>Robot application exited abnormally.</p>
    #               </dd>
    #               <dt>SimulationApplicationCrash</dt>
    #               <dd>
    #                  <p> Simulation application exited abnormally.</p>
    #               </dd>
    #               <dt>BadPermissionsRobotApplication</dt>
    #               <dd>
    #                  <p>Robot application bundle could not be downloaded.</p>
    #               </dd>
    #               <dt>BadPermissionsSimulationApplication</dt>
    #               <dd>
    #                  <p>Simulation application bundle could not be downloaded.</p>
    #               </dd>
    #               <dt>BadPermissionsS3Output</dt>
    #               <dd>
    #                  <p>Unable to publish outputs to customer-provided S3 bucket.</p>
    #               </dd>
    #               <dt>BadPermissionsCloudwatchLogs</dt>
    #               <dd>
    #                  <p>Unable to publish logs to customer-provided CloudWatch Logs resource.</p>
    #               </dd>
    #               <dt>SubnetIpLimitExceeded</dt>
    #               <dd>
    #                  <p>Subnet IP limit exceeded.</p>
    #               </dd>
    #               <dt>ENILimitExceeded</dt>
    #               <dd>
    #                  <p>ENI limit exceeded.</p>
    #               </dd>
    #               <dt>BadPermissionsUserCredentials</dt>
    #               <dd>
    #                  <p>Unable to use the Role provided.</p>
    #               </dd>
    #               <dt>InvalidBundleRobotApplication</dt>
    #               <dd>
    #                  <p>Robot bundle cannot be extracted (invalid format, bundling error, or other
    #                     issue).</p>
    #               </dd>
    #               <dt>InvalidBundleSimulationApplication</dt>
    #               <dd>
    #                  <p>Simulation bundle cannot be extracted (invalid format, bundling error, or other
    #                     issue).</p>
    #               </dd>
    #               <dt>RobotApplicationVersionMismatchedEtag</dt>
    #               <dd>
    #                  <p>Etag for RobotApplication does not match value during version creation.</p>
    #               </dd>
    #               <dt>SimulationApplicationVersionMismatchedEtag</dt>
    #               <dd>
    #                  <p>Etag for SimulationApplication does not match value during version
    #                     creation.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["ResourceNotFound", "EnvironmentSetupError", "EtagMismatch", "FailureThresholdBreached", "RobotDeploymentAborted", "RobotDeploymentNoResponse", "RobotAgentConnectionTimeout", "GreengrassDeploymentFailed", "InvalidGreengrassGroup", "MissingRobotArchitecture", "MissingRobotApplicationArchitecture", "MissingRobotDeploymentResource", "GreengrassGroupVersionDoesNotExist", "LambdaDeleted", "ExtractingBundleFailure", "PreLaunchFileFailure", "PostLaunchFileFailure", "BadPermissionError", "DownloadConditionFailed", "BadLambdaAssociated", "InternalServerError", "RobotApplicationDoesNotExist", "DeploymentFleetDoesNotExist", "FleetDeploymentTimeout"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the fleet was created.</p>
    #
    #   @return [Time]
    #
    SyncDeploymentJobOutput = ::Struct.new(
      :arn,
      :fleet,
      :status,
      :deployment_config,
      :deployment_application_configs,
      :failure_reason,
      :failure_code,
      :created_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are tagging.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A map that contains tag keys and tag values that are attached to the resource.</p>
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

    # <p>Information about a template location.</p>
    #
    # @!attribute s3_bucket
    #   <p>The Amazon S3 bucket name.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_key
    #   <p>The list of S3 keys identifying the data source files.</p>
    #
    #   @return [String]
    #
    TemplateLocation = ::Struct.new(
      :s3_bucket,
      :s3_key,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information for a template.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the template was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the template that you're using.</p>
    #
    #   @return [String]
    #
    TemplateSummary = ::Struct.new(
      :arn,
      :created_at,
      :last_updated_at,
      :name,
      :version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>AWS RoboMaker is temporarily unable to process the request. Try your call again.</p>
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

    # <p>Information about a tool. Tools are used in a simulation job.</p>
    #
    # @!attribute stream_ui
    #   <p>Boolean indicating whether a streaming session will be configured for the tool. If
    #               <code>True</code>, AWS RoboMaker will configure a connection so you can interact with
    #            the tool as it is running in the simulation. It must have a graphical user interface. The
    #            default is <code>False</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of the tool.</p>
    #
    #   @return [String]
    #
    # @!attribute command
    #   <p>Command-line arguments for the tool. It must include the tool executable name.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_output_to_cloud_watch
    #   <p>Boolean indicating whether logs will be recorded in CloudWatch for the tool. The default
    #            is <code>False</code>. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute exit_behavior
    #   <p>Exit behavior determines what happens when your tool quits running. <code>RESTART</code>
    #            will cause your tool to be restarted. <code>FAIL</code> will cause your job to exit. The
    #            default is <code>RESTART</code>. </p>
    #
    #   Enum, one of: ["FAIL", "RESTART"]
    #
    #   @return [String]
    #
    Tool = ::Struct.new(
      :stream_ui,
      :name,
      :command,
      :stream_output_to_cloud_watch,
      :exit_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the AWS RoboMaker resource you are removing
    #            tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>A map that contains tag keys and tag values that will be unattached from the
    #            resource.</p>
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

    # @!attribute application
    #   <p>The application information for the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the robot application.</p>
    #
    #   @return [Array<SourceConfig>]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the robot application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute current_revision_id
    #   <p>The revision id for the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI for your robot application.</p>
    #
    #   @return [Environment]
    #
    UpdateRobotApplicationInput = ::Struct.new(
      :application,
      :sources,
      :robot_software_suite,
      :current_revision_id,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the robot application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute robot_software_suite
    #   <p>The robot software suite (ROS distribution) used by the robot application.</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the robot application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_id
    #   <p>The revision id of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI for your robot application.</p>
    #
    #   @return [Environment]
    #
    UpdateRobotApplicationOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :robot_software_suite,
      :last_updated_at,
      :revision_id,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute application
    #   <p>The application information for the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the simulation application.</p>
    #
    #   @return [Array<SourceConfig>]
    #
    # @!attribute simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    # @!attribute robot_software_suite
    #   <p>Information about the robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    #   @return [RenderingEngine]
    #
    # @!attribute current_revision_id
    #   <p>The revision id for the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI for your simulation application.</p>
    #
    #   @return [Environment]
    #
    UpdateSimulationApplicationInput = ::Struct.new(
      :application,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :current_revision_id,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the updated simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the robot application.</p>
    #
    #   @return [String]
    #
    # @!attribute sources
    #   <p>The sources of the simulation application.</p>
    #
    #   @return [Array<Source>]
    #
    # @!attribute simulation_software_suite
    #   <p>The simulation software suite used by the simulation application.</p>
    #
    #   @return [SimulationSoftwareSuite]
    #
    # @!attribute robot_software_suite
    #   <p>Information about the robot software suite (ROS distribution).</p>
    #
    #   @return [RobotSoftwareSuite]
    #
    # @!attribute rendering_engine
    #   <p>The rendering engine for the simulation application.</p>
    #
    #   @return [RenderingEngine]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the simulation application was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute revision_id
    #   <p>The revision id of the simulation application.</p>
    #
    #   @return [String]
    #
    # @!attribute environment
    #   <p>The object that contains the Docker image URI used for your simulation
    #            application.</p>
    #
    #   @return [Environment]
    #
    UpdateSimulationApplicationOutput = ::Struct.new(
      :arn,
      :name,
      :version,
      :sources,
      :simulation_software_suite,
      :robot_software_suite,
      :rendering_engine,
      :last_updated_at,
      :revision_id,
      :environment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template to update.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the template.</p>
    #
    #   @return [String]
    #
    # @!attribute template_body
    #   <p>The world template body.</p>
    #
    #   @return [String]
    #
    # @!attribute template_location
    #   <p>The location of the world template.</p>
    #
    #   @return [TemplateLocation]
    #
    UpdateWorldTemplateInput = ::Struct.new(
      :template,
      :name,
      :template_body,
      :template_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world template was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_at
    #   <p>The time, in milliseconds since the epoch, when the world template was last
    #            updated.</p>
    #
    #   @return [Time]
    #
    UpdateWorldTemplateOutput = ::Struct.new(
      :arn,
      :name,
      :created_at,
      :last_updated_at,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UploadBehavior
    #
    module UploadBehavior
      # No documentation available.
      #
      UPLOAD_ON_TERMINATE = "UPLOAD_ON_TERMINATE"

      # No documentation available.
      #
      UPLOAD_ROLLING_AUTO_REMOVE = "UPLOAD_ROLLING_AUTO_REMOVE"
    end

    # <p>Provides upload configuration information. Files are uploaded from the simulation job to
    #          a location you specify. </p>
    #
    # @!attribute name
    #   <p>A prefix that specifies where files will be uploaded in Amazon S3. It is appended to the
    #            simulation output location to determine the final path. </p>
    #            <p> For example, if your simulation output location is <code>s3://my-bucket</code> and your
    #            upload configuration name is <code>robot-test</code>, your files will be uploaded to
    #               <code>s3://my-bucket/<simid>/<runid>/robot-test</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p> Specifies the path of the file(s) to upload. Standard Unix glob matching rules are
    #            accepted, with the addition of <code>**</code> as a <i>super asterisk</i>.
    #            For example, specifying <code>/var/log/**.log</code> causes all .log files in the
    #               <code>/var/log</code> directory tree to be collected. For more examples, see <a href="https://github.com/gobwas/glob">Glob Library</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute upload_behavior
    #   <p>Specifies when to upload the files:</p>
    #            <dl>
    #               <dt>UPLOAD_ON_TERMINATE</dt>
    #               <dd>
    #                  <p>Matching files are uploaded once the simulation enters the
    #                        <code>TERMINATING</code> state. Matching files are not uploaded until all of
    #                     your code (including tools) have stopped. </p>
    #                  <p>If there is a problem uploading a file, the upload is retried. If problems
    #                     persist, no further upload attempts will be made.</p>
    #               </dd>
    #               <dt>UPLOAD_ROLLING_AUTO_REMOVE</dt>
    #               <dd>
    #                  <p>Matching files are uploaded as they are created. They are deleted after they
    #                     are uploaded. The specified path is checked every 5 seconds. A final check is made
    #                     when all of your code (including tools) have stopped. </p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["UPLOAD_ON_TERMINATE", "UPLOAD_ROLLING_AUTO_REMOVE"]
    #
    #   @return [String]
    #
    UploadConfiguration = ::Struct.new(
      :name,
      :path,
      :upload_behavior,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If your simulation job accesses resources in a VPC, you provide this parameter
    #          identifying the list of security group IDs and subnet IDs. These must belong to the same
    #          VPC. You must provide at least one security group and two subnet IDs.</p>
    #
    # @!attribute subnets
    #   <p>A list of one or more subnet IDs in your VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_groups
    #   <p>A list of one or more security groups IDs in your VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute assign_public_ip
    #   <p>A boolean indicating whether to assign a public IP address.</p>
    #
    #   @return [Boolean]
    #
    VPCConfig = ::Struct.new(
      :subnets,
      :security_groups,
      :assign_public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.assign_public_ip ||= false
      end
    end

    # <p>VPC configuration associated with your simulation job.</p>
    #
    # @!attribute subnets
    #   <p>A list of subnet IDs associated with the simulation job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_groups
    #   <p>A list of security group IDs associated with the simulation job.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute vpc_id
    #   <p>The VPC ID associated with your simulation job.</p>
    #
    #   @return [String]
    #
    # @!attribute assign_public_ip
    #   <p>A boolean indicating if a public IP was assigned.</p>
    #
    #   @return [Boolean]
    #
    VPCConfigResponse = ::Struct.new(
      :subnets,
      :security_groups,
      :vpc_id,
      :assign_public_ip,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.assign_public_ip ||= false
      end
    end

    # <p>Configuration information for a world.</p>
    #
    # @!attribute world
    #   <p>The world generated by Simulation WorldForge.</p>
    #
    #   @return [String]
    #
    WorldConfig = ::Struct.new(
      :world,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of worlds that will be created. You can configure the number of unique
    #          floorplans and the number of unique interiors for each floor plan. For example, if you want
    #          1 world with 20 unique interiors, you set <code>floorplanCount = 1</code> and
    #             <code>interiorCountPerFloorplan = 20</code>. This will result in 20 worlds
    #             (<code>floorplanCount</code> * <code>interiorCountPerFloorplan)</code>. </p>
    #          <p>If you set <code>floorplanCount = 4</code> and <code>interiorCountPerFloorplan =
    #             5</code>, there will be 20 worlds with 5 unique floor plans. </p>
    #
    # @!attribute floorplan_count
    #   <p>The number of unique floorplans.</p>
    #
    #   @return [Integer]
    #
    # @!attribute interior_count_per_floorplan
    #   <p>The number of unique interiors per floorplan.</p>
    #
    #   @return [Integer]
    #
    WorldCount = ::Struct.new(
      :floorplan_count,
      :interior_count_per_floorplan,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WorldExportJobErrorCode
    #
    module WorldExportJobErrorCode
      # No documentation available.
      #
      InternalServiceError = "InternalServiceError"

      # No documentation available.
      #
      LimitExceeded = "LimitExceeded"

      # No documentation available.
      #
      ResourceNotFound = "ResourceNotFound"

      # No documentation available.
      #
      RequestThrottled = "RequestThrottled"

      # No documentation available.
      #
      InvalidInput = "InvalidInput"

      # No documentation available.
      #
      AccessDenied = "AccessDenied"
    end

    # Includes enum constants for WorldExportJobStatus
    #
    module WorldExportJobStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Running = "Running"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      Canceling = "Canceling"

      # No documentation available.
      #
      Canceled = "Canceled"
    end

    # <p>Information about a world export job.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world export job.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the world export job.</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The world export job request is pending.</p>
    #               </dd>
    #               <dt>Running</dt>
    #               <dd>
    #                  <p>The world export job is running. </p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The world export job completed. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The world export job failed. See <code>failureCode</code> for more information.
    #                  </p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The world export job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The world export job is being cancelled.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "Running", "Completed", "Failed", "Canceling", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world export job was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute worlds
    #   <p>A list of worlds.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute output_location
    #   <p>The output location.</p>
    #
    #   @return [OutputLocation]
    #
    WorldExportJobSummary = ::Struct.new(
      :arn,
      :status,
      :created_at,
      :worlds,
      :output_location,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a failed world.</p>
    #
    # @!attribute failure_code
    #   <p>The failure code of the world export job if it failed:</p>
    #            <dl>
    #               <dt>InternalServiceError</dt>
    #               <dd>
    #                  <p>Internal service error.</p>
    #               </dd>
    #               <dt>LimitExceeded</dt>
    #               <dd>
    #                  <p>The requested resource exceeds the maximum number allowed, or the number of
    #                     concurrent stream requests exceeds the maximum number allowed. </p>
    #               </dd>
    #               <dt>ResourceNotFound</dt>
    #               <dd>
    #                  <p>The specified resource could not be found. </p>
    #               </dd>
    #               <dt>RequestThrottled</dt>
    #               <dd>
    #                  <p>The request was throttled.</p>
    #               </dd>
    #               <dt>InvalidInput</dt>
    #               <dd>
    #                  <p>An input parameter in the request is not valid.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["InternalServiceError", "LimitExceeded", "ResourceNotFound", "RequestThrottled", "InvalidInput", "AllWorldGenerationFailed"]
    #
    #   @return [String]
    #
    # @!attribute sample_failure_reason
    #   <p>The sample reason why the world failed. World errors are aggregated. A sample is used as
    #            the <code>sampleFailureReason</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute failure_count
    #   <p>The number of failed worlds.</p>
    #
    #   @return [Integer]
    #
    WorldFailure = ::Struct.new(
      :failure_code,
      :sample_failure_reason,
      :failure_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.failure_count ||= 0
      end
    end

    # Includes enum constants for WorldGenerationJobErrorCode
    #
    module WorldGenerationJobErrorCode
      # No documentation available.
      #
      InternalServiceError = "InternalServiceError"

      # No documentation available.
      #
      LimitExceeded = "LimitExceeded"

      # No documentation available.
      #
      ResourceNotFound = "ResourceNotFound"

      # No documentation available.
      #
      RequestThrottled = "RequestThrottled"

      # No documentation available.
      #
      InvalidInput = "InvalidInput"

      # No documentation available.
      #
      AllWorldGenerationFailed = "AllWorldGenerationFailed"
    end

    # Includes enum constants for WorldGenerationJobStatus
    #
    module WorldGenerationJobStatus
      # No documentation available.
      #
      Pending = "Pending"

      # No documentation available.
      #
      Running = "Running"

      # No documentation available.
      #
      Completed = "Completed"

      # No documentation available.
      #
      Failed = "Failed"

      # No documentation available.
      #
      PartialFailed = "PartialFailed"

      # No documentation available.
      #
      Canceling = "Canceling"

      # No documentation available.
      #
      Canceled = "Canceled"
    end

    # <p>Information about a world generator job.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world generator job.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world generator job was
    #            created.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The status of the world generator job:</p>
    #            <dl>
    #               <dt>Pending</dt>
    #               <dd>
    #                  <p>The world generator job request is pending.</p>
    #               </dd>
    #               <dt>Running</dt>
    #               <dd>
    #                  <p>The world generator job is running. </p>
    #               </dd>
    #               <dt>Completed</dt>
    #               <dd>
    #                  <p>The world generator job completed. </p>
    #               </dd>
    #               <dt>Failed</dt>
    #               <dd>
    #                  <p>The world generator job failed. See <code>failureCode</code> for more
    #                     information. </p>
    #               </dd>
    #               <dt>PartialFailed</dt>
    #               <dd>
    #                  <p>Some worlds did not generate.</p>
    #               </dd>
    #               <dt>Canceled</dt>
    #               <dd>
    #                  <p>The world generator job was cancelled.</p>
    #               </dd>
    #               <dt>Canceling</dt>
    #               <dd>
    #                  <p>The world generator job is being cancelled.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["Pending", "Running", "Completed", "Failed", "PartialFailed", "Canceling", "Canceled"]
    #
    #   @return [String]
    #
    # @!attribute world_count
    #   <p>Information about the world count.</p>
    #
    #   @return [WorldCount]
    #
    # @!attribute succeeded_world_count
    #   <p>The number of worlds that were generated.</p>
    #
    #   @return [Integer]
    #
    # @!attribute failed_world_count
    #   <p>The number of worlds that failed.</p>
    #
    #   @return [Integer]
    #
    WorldGenerationJobSummary = ::Struct.new(
      :arn,
      :template,
      :created_at,
      :status,
      :world_count,
      :succeeded_world_count,
      :failed_world_count,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.succeeded_world_count ||= 0
        self.failed_world_count ||= 0
      end
    end

    # <p>Information about a world.</p>
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the world.</p>
    #
    #   @return [String]
    #
    # @!attribute created_at
    #   <p>The time, in milliseconds since the epoch, when the world was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute generation_job
    #   <p>The Amazon Resource Name (arn) of the world generation job.</p>
    #
    #   @return [String]
    #
    # @!attribute template
    #   <p>The Amazon Resource Name (arn) of the world template.</p>
    #
    #   @return [String]
    #
    WorldSummary = ::Struct.new(
      :arn,
      :created_at,
      :generation_job,
      :template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
