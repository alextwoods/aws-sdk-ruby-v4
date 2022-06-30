# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeBuild
  module Types

    # <p>An Amazon Web Services service limit was exceeded for the calling Amazon Web Services account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ArtifactNamespace
    #
    module ArtifactNamespace
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      BUILD_ID = "BUILD_ID"
    end

    # Includes enum constants for ArtifactPackaging
    #
    module ArtifactPackaging
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      ZIP = "ZIP"
    end

    # Includes enum constants for ArtifactsType
    #
    module ArtifactsType
      # No documentation available.
      #
      CODEPIPELINE = "CODEPIPELINE"

      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      NO_ARTIFACTS = "NO_ARTIFACTS"
    end

    # Includes enum constants for AuthType
    #
    module AuthType
      # No documentation available.
      #
      OAUTH = "OAUTH"

      # No documentation available.
      #
      BASIC_AUTH = "BASIC_AUTH"

      # No documentation available.
      #
      PERSONAL_ACCESS_TOKEN = "PERSONAL_ACCESS_TOKEN"
    end

    # @!attribute ids
    #   <p>The IDs of the builds to delete.</p>
    #
    #   @return [Array<String>]
    #
    BatchDeleteBuildsInput = ::Struct.new(
      :ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute builds_deleted
    #   <p>The IDs of the builds that were successfully deleted.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute builds_not_deleted
    #   <p>Information about any builds that could not be successfully deleted.</p>
    #
    #   @return [Array<BuildNotDeleted>]
    #
    BatchDeleteBuildsOutput = ::Struct.new(
      :builds_deleted,
      :builds_not_deleted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>An array that contains the batch build identifiers to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetBuildBatchesInput = ::Struct.new(
      :ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build_batches
    #   <p>An array of <code>BuildBatch</code> objects that represent the retrieved batch
    #               builds.</p>
    #
    #   @return [Array<BuildBatch>]
    #
    # @!attribute build_batches_not_found
    #   <p>An array that contains the identifiers of any batch builds that are not found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetBuildBatchesOutput = ::Struct.new(
      :build_batches,
      :build_batches_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>The IDs of the builds.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetBuildsInput = ::Struct.new(
      :ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute builds
    #   <p>Information about the requested builds.</p>
    #
    #   @return [Array<Build>]
    #
    # @!attribute builds_not_found
    #   <p>The IDs of builds for which information could not be found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetBuildsOutput = ::Struct.new(
      :builds,
      :builds_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute names
    #   <p>The names or ARNs of the build projects. To get information about a project shared
    #               with your Amazon Web Services account, its ARN must be specified. You cannot specify a shared project
    #               using its name.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetProjectsInput = ::Struct.new(
      :names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute projects
    #   <p>Information about the requested build projects.</p>
    #
    #   @return [Array<Project>]
    #
    # @!attribute projects_not_found
    #   <p>The names of build projects for which information could not be found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetProjectsOutput = ::Struct.new(
      :projects,
      :projects_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_group_arns
    #   <p>
    #         An array of report group ARNs that identify the report groups to return.
    #       </p>
    #
    #   @return [Array<String>]
    #
    BatchGetReportGroupsInput = ::Struct.new(
      :report_group_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_groups
    #   <p>
    #         The array of report groups returned by <code>BatchGetReportGroups</code>.
    #       </p>
    #
    #   @return [Array<ReportGroup>]
    #
    # @!attribute report_groups_not_found
    #   <p>
    #         An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>ReportGroup</code>.
    #       </p>
    #
    #   @return [Array<String>]
    #
    BatchGetReportGroupsOutput = ::Struct.new(
      :report_groups,
      :report_groups_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_arns
    #   <p>
    #         An array of ARNs that identify the <code>Report</code> objects to return.
    #       </p>
    #
    #   @return [Array<String>]
    #
    BatchGetReportsInput = ::Struct.new(
      :report_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reports
    #   <p>
    #         The array of <code>Report</code> objects returned by <code>BatchGetReports</code>.
    #       </p>
    #
    #   @return [Array<Report>]
    #
    # @!attribute reports_not_found
    #   <p>
    #         An array of ARNs passed to <code>BatchGetReportGroups</code> that are not associated with a <code>Report</code>.
    #       </p>
    #
    #   @return [Array<String>]
    #
    BatchGetReportsOutput = ::Struct.new(
      :reports,
      :reports_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BatchReportModeType
    #
    module BatchReportModeType
      # No documentation available.
      #
      REPORT_INDIVIDUAL_BUILDS = "REPORT_INDIVIDUAL_BUILDS"

      # No documentation available.
      #
      REPORT_AGGREGATED_BATCH = "REPORT_AGGREGATED_BATCH"
    end

    # <p>Specifies restrictions for the batch build.</p>
    #
    # @!attribute maximum_builds_allowed
    #   <p>Specifies the maximum number of builds allowed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute compute_types_allowed
    #   <p>An array of strings that specify the compute types that are allowed for the batch
    #               build. See <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment
    #                   compute types</a> in the <i>CodeBuild User Guide</i> for these values.
    #           </p>
    #
    #   @return [Array<String>]
    #
    BatchRestrictions = ::Struct.new(
      :maximum_builds_allowed,
      :compute_types_allowed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BucketOwnerAccess
    #
    module BucketOwnerAccess
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      READ_ONLY = "READ_ONLY"

      # No documentation available.
      #
      FULL = "FULL"
    end

    # <p>Information about a build.</p>
    #
    # @!attribute id
    #   <p>The unique ID for the build.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the build.</p>
    #
    #   @return [String]
    #
    # @!attribute build_number
    #   <p>The number of the build. For each project, the <code>buildNumber</code> of its first
    #               build is <code>1</code>. The <code>buildNumber</code> of each subsequent build is
    #               incremented by <code>1</code>. If a build is deleted, the <code>buildNumber</code> of
    #               other builds does not change.</p>
    #
    #   @return [Integer]
    #
    # @!attribute start_time
    #   <p>When the build process started, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>When the build process ended, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_phase
    #   <p>The current build phase.</p>
    #
    #   @return [String]
    #
    # @!attribute build_status
    #   <p>The current status of the build. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code>: The build failed.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAULT</code>: The build faulted.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>IN_PROGRESS</code>: The build is still in progress.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>STOPPED</code>: The build stopped.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SUCCEEDED</code>: The build succeeded.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>TIMED_OUT</code>: The build timed out.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>Any version identifier for the version of the source code to be built. If
    #                   <code>sourceVersion</code> is specified at the project level, then this
    #                   <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #           <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute resolved_source_version
    #   <p> An identifier for the version of this build's source code. </p>
    #           <ul>
    #               <li>
    #                   <p> For CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID. </p>
    #               </li>
    #               <li>
    #                   <p> For CodePipeline, the source revision provided by CodePipeline. </p>
    #               </li>
    #               <li>
    #                   <p> For Amazon S3, this does not apply. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    #   @return [String]
    #
    # @!attribute phases
    #   <p>Information about all previous build phases that are complete and information about
    #               any current build phase that is not yet complete.</p>
    #
    #   @return [Array<BuildPhase>]
    #
    # @!attribute source
    #   <p>Information about the source code to be built.</p>
    #
    #   @return [ProjectSource]
    #
    # @!attribute secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects. Each
    #                   <code>ProjectSourceVersion</code> must be one of: </p>
    #           <ul>
    #               <li>
    #                   <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                   <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #                       corresponds to the version of the source code you want to build. If a pull
    #                       request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #                       (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    #                       HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #                       used.</p>
    #               </li>
    #               <li>
    #                   <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #                       version of the source code you want to build. If a branch name is specified, the
    #                       branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                       commit ID is used.</p>
    #               </li>
    #               <li>
    #                   <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #                       file to use.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute artifacts
    #   <p>Information about the output artifacts for the build.</p>
    #
    #   @return [BuildArtifacts]
    #
    # @!attribute secondary_artifacts
    #   <p> An array of <code>ProjectArtifacts</code> objects. </p>
    #
    #   @return [Array<BuildArtifacts>]
    #
    # @!attribute cache
    #   <p>Information about the cache for the build.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute environment
    #   <p>Information about the build environment for this build.</p>
    #
    #   @return [ProjectEnvironment]
    #
    # @!attribute service_role
    #   <p>The name of a service role used for this build.</p>
    #
    #   @return [String]
    #
    # @!attribute logs
    #   <p>Information about the build's logs in CloudWatch Logs.</p>
    #
    #   @return [LogsLocation]
    #
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, for CodeBuild to wait before timing out this build if it does not
    #               get marked as completed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute build_complete
    #   <p>Whether the build is complete. True if complete; otherwise, false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute initiator
    #   <p>The entity that started the build. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>If CodePipeline started the build, the pipeline's name (for example,
    #                           <code>codepipeline/my-demo-pipeline</code>).</p>
    #               </li>
    #               <li>
    #                   <p>If an IAM user started the build, the user's name (for example,
    #                           <code>MyUserName</code>).</p>
    #               </li>
    #               <li>
    #                   <p>If the Jenkins plugin for CodeBuild started the build, the string
    #                           <code>CodeBuild-Jenkins-Plugin</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>If your CodeBuild project accesses resources in an Amazon VPC, you provide this parameter
    #               that identifies the VPC ID and the list of security group IDs and subnet IDs. The
    #               security groups and subnets must belong to the same VPC. You must provide at least one
    #               security group and one subnet ID.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute network_interface
    #   <p>Describes a network interface.</p>
    #
    #   @return [NetworkInterface]
    #
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #               artifacts.</p>
    #           <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #           </note>
    #           <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #
    #   @return [String]
    #
    # @!attribute exported_environment_variables
    #   <p>A list of exported environment variables for this build.</p>
    #           <p>Exported environment variables are used in conjunction with CodePipeline to export
    #     environment variables from the current build stage to subsequent stages in the pipeline.
    #     For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html">Working with variables</a> in the <i>CodePipeline User Guide</i>.</p>
    #
    #   @return [Array<ExportedEnvironmentVariable>]
    #
    # @!attribute report_arns
    #   <p> An array of the ARNs associated with this build's reports. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #
    #   @return [Array<ProjectFileSystemLocation>]
    #
    # @!attribute debug_session
    #   <p>Contains information about the debug session for this build.</p>
    #
    #   @return [DebugSession]
    #
    # @!attribute build_batch_arn
    #   <p>The ARN of the batch build that this build is a member of, if applicable.</p>
    #
    #   @return [String]
    #
    Build = ::Struct.new(
      :id,
      :arn,
      :build_number,
      :start_time,
      :end_time,
      :current_phase,
      :build_status,
      :source_version,
      :resolved_source_version,
      :project_name,
      :phases,
      :source,
      :secondary_sources,
      :secondary_source_versions,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :logs,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :build_complete,
      :initiator,
      :vpc_config,
      :network_interface,
      :encryption_key,
      :exported_environment_variables,
      :report_arns,
      :file_system_locations,
      :debug_session,
      :build_batch_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.build_complete ||= false
      end

    end

    # <p>Information about build output artifacts.</p>
    #
    # @!attribute location
    #   <p>Information about the location of the build artifacts.</p>
    #
    #   @return [String]
    #
    # @!attribute sha256sum
    #   <p>The SHA-256 hash of the build artifact.</p>
    #           <p>You can use this hash along with a checksum tool to confirm file integrity and
    #               authenticity.</p>
    #           <note>
    #               <p>This value is available only if the build project's <code>packaging</code> value
    #                   is set to <code>ZIP</code>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute md5sum
    #   <p>The MD5 hash of the build artifact.</p>
    #           <p>You can use this hash along with a checksum tool to confirm file integrity and
    #               authenticity.</p>
    #           <note>
    #               <p>This value is available only if the build project's <code>packaging</code> value
    #                   is set to <code>ZIP</code>.</p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute override_artifact_name
    #   <p> If this flag is set, a name specified in the buildspec file overrides the artifact
    #               name. The name specified in a buildspec file is calculated at build time and uses the
    #               Shell Command Language. For example, you can append a date and time to your artifact
    #               name so that it is always unique. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_disabled
    #   <p> Information that tells you if encryption for build artifacts is disabled. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute artifact_identifier
    #   <p> An identifier for this artifact definition. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_owner_access
    #   <p>Specifies the bucket owner's access for objects that another account uploads to their
    #               Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #               access to these objects. This property allows you to give the bucket owner access to
    #               these objects.</p>
    #           <note>
    #               <p>To use this property, your CodeBuild service role must have the
    #                       <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                   the access control list for the bucket.</p>
    #           </note>
    #           <p>This property can be one of the following values:</p>
    #            <dl>
    #               <dt>NONE</dt>
    #               <dd>
    #                   <p>The bucket owner does not have access to the objects. This is the
    #                           default.</p>
    #               </dd>
    #               <dt>READ_ONLY</dt>
    #               <dd>
    #                 <p>The bucket owner has read-only access to the objects. The uploading account
    #                           retains ownership of the objects.</p>
    #               </dd>
    #               <dt>FULL</dt>
    #               <dd>
    #                 <p>The bucket owner has full access to the objects. Object ownership is determined
    #                           by the following criteria:</p>
    #                       <ul>
    #                     <li>
    #                               <p>If the bucket is configured with the <b>Bucket
    #                                       owner preferred</b> setting, the bucket owner owns the
    #                                   objects. The uploading account will have object access as specified
    #                                   by the bucket's policy.</p>
    #                           </li>
    #                     <li>
    #                               <p>Otherwise, the uploading account retains ownership of the
    #                                   objects.</p>
    #                           </li>
    #                  </ul>
    #                       <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                               Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                           Guide</i>.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "READ_ONLY", "FULL"]
    #
    #   @return [String]
    #
    BuildArtifacts = ::Struct.new(
      :location,
      :sha256sum,
      :md5sum,
      :override_artifact_name,
      :encryption_disabled,
      :artifact_identifier,
      :bucket_owner_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a batch build.</p>
    #
    # @!attribute id
    #   <p>The identifier of the batch build.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The ARN of the batch build.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The date and time that the batch build started.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The date and time that the batch build ended.</p>
    #
    #   @return [Time]
    #
    # @!attribute current_phase
    #   <p>The current phase of the batch build.</p>
    #
    #   @return [String]
    #
    # @!attribute build_batch_status
    #   <p>The status of the batch build.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>The identifier of the version of the source code to be built.</p>
    #
    #   @return [String]
    #
    # @!attribute resolved_source_version
    #   <p>The identifier of the resolved version of this batch build's source code.</p>
    #           <ul>
    #               <li>
    #                   <p>For CodeCommit, GitHub, GitHub Enterprise, and BitBucket, the commit ID.</p>
    #               </li>
    #               <li>
    #                   <p>For CodePipeline, the source revision provided by CodePipeline.</p>
    #               </li>
    #               <li>
    #                   <p>For Amazon S3, this does not apply.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute project_name
    #   <p>The name of the batch build project.</p>
    #
    #   @return [String]
    #
    # @!attribute phases
    #   <p>An array of <code>BuildBatchPhase</code> objects the specify the phases of the
    #               batch build.</p>
    #
    #   @return [Array<BuildBatchPhase>]
    #
    # @!attribute source
    #   <p>Information about the build input source code for the build project.</p>
    #
    #   @return [ProjectSource]
    #
    # @!attribute secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects that define the sources for the batch
    #               build.</p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. Each
    #                   <code>ProjectSourceVersion</code> must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute artifacts
    #   <p>A <code>BuildArtifacts</code> object the defines the build artifacts for this batch build.</p>
    #
    #   @return [BuildArtifacts]
    #
    # @!attribute secondary_artifacts
    #   <p>An array of <code>BuildArtifacts</code> objects the define the build artifacts
    #               for this batch build.</p>
    #
    #   @return [Array<BuildArtifacts>]
    #
    # @!attribute cache
    #   <p>Information about the cache for the build project.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute environment
    #   <p>Information about the build environment of the build project.</p>
    #
    #   @return [ProjectEnvironment]
    #
    # @!attribute service_role
    #   <p>The name of a service role used for builds in the batch.</p>
    #
    #   @return [String]
    #
    # @!attribute log_config
    #   <p> Information about logs for a build project. These can be logs in CloudWatch Logs, built in a
    #               specified S3 bucket, or both. </p>
    #
    #   @return [LogsConfig]
    #
    # @!attribute build_timeout_in_minutes
    #   <p>Specifies the maximum amount of time, in minutes, that the build in a batch must be
    #               completed in.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes
    #   <p>Specifies the amount of time, in minutes, that the batch build is allowed to be queued
    #               before it times out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute complete
    #   <p>Indicates if the batch build is complete.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute initiator
    #   <p>The entity that started the batch build. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>If CodePipeline started the build, the pipeline's name (for example,
    #                           <code>codepipeline/my-demo-pipeline</code>).</p>
    #               </li>
    #               <li>
    #                   <p>If an IAM user started the build, the user's name.</p>
    #               </li>
    #               <li>
    #                   <p>If the Jenkins plugin for CodeBuild started the build, the string
    #                           <code>CodeBuild-Jenkins-Plugin</code>.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the batch build output
    #               artifacts.</p>
    #           <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #           </note>
    #           <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #
    #   @return [String]
    #
    # @!attribute build_batch_number
    #   <p>The number of the batch build. For each project, the <code>buildBatchNumber</code> of its
    #               first batch build is <code>1</code>. The <code>buildBatchNumber</code> of each subsequent
    #               batch build is incremented by <code>1</code>. If a batch build is deleted, the
    #                   <code>buildBatchNumber</code> of other batch builds does not change.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_system_locations
    #   <p>An array of <code>ProjectFileSystemLocation</code> objects for the batch build
    #               project. A <code>ProjectFileSystemLocation</code> object specifies the
    #                   <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #                   <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon
    #               Elastic File System. </p>
    #
    #   @return [Array<ProjectFileSystemLocation>]
    #
    # @!attribute build_batch_config
    #   <p>Contains configuration information about a batch build project.</p>
    #
    #   @return [ProjectBuildBatchConfig]
    #
    # @!attribute build_groups
    #   <p>An array of <code>BuildGroup</code> objects that define the build groups for the
    #               batch build.</p>
    #
    #   @return [Array<BuildGroup>]
    #
    # @!attribute debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this batch build. For more information, see
    #     <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    #
    #   @return [Boolean]
    #
    BuildBatch = ::Struct.new(
      :id,
      :arn,
      :start_time,
      :end_time,
      :current_phase,
      :build_batch_status,
      :source_version,
      :resolved_source_version,
      :project_name,
      :phases,
      :source,
      :secondary_sources,
      :secondary_source_versions,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :log_config,
      :build_timeout_in_minutes,
      :queued_timeout_in_minutes,
      :complete,
      :initiator,
      :vpc_config,
      :encryption_key,
      :build_batch_number,
      :file_system_locations,
      :build_batch_config,
      :build_groups,
      :debug_session_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.complete ||= false
      end

    end

    # <p>Specifies filters when retrieving batch builds.</p>
    #
    # @!attribute status
    #   <p>The status of the batch builds to retrieve. Only batch builds that have this status will
    #               be retrieved.</p>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    BuildBatchFilter = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a stage for a batch build.</p>
    #
    # @!attribute phase_type
    #   <p>The name of the batch build phase. Valid values include:</p>
    #           <dl>
    #               <dt>COMBINE_ARTIFACTS</dt>
    #               <dd>
    #                       <p>Build output artifacts are being combined and uploaded to the output
    #                           location.</p>
    #                   </dd>
    #               <dt>DOWNLOAD_BATCHSPEC</dt>
    #               <dd>
    #                       <p>The batch build specification is being downloaded.</p>
    #                   </dd>
    #               <dt>FAILED</dt>
    #               <dd>
    #                       <p>One or more of the builds failed.</p>
    #                   </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                       <p>The batch build is in progress.</p>
    #                   </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                       <p>The batch build was stopped.</p>
    #                   </dd>
    #               <dt>SUBMITTED</dt>
    #               <dd>
    #                       <p>The btach build has been submitted.</p>
    #                   </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                       <p>The batch build succeeded.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute phase_status
    #   <p>The current status of the batch build phase. Valid values include:</p>
    #           <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                       <p>The build phase failed.</p>
    #                   </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                       <p>The build phase faulted.</p>
    #                   </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                       <p>The build phase is still in progress.</p>
    #                   </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                       <p>The build phase stopped.</p>
    #                   </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                       <p>The build phase succeeded.</p>
    #                   </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                       <p>The build phase timed out.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>When the batch build phase started, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>When the batch build phase ended, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, between the starting and ending times of the batch build's
    #           phase.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contexts
    #   <p>Additional information about the batch build phase. Especially to help troubleshoot a
    #               failed batch build.</p>
    #
    #   @return [Array<PhaseContext>]
    #
    BuildBatchPhase = ::Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BuildBatchPhaseType
    #
    module BuildBatchPhaseType
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      DOWNLOAD_BATCHSPEC = "DOWNLOAD_BATCHSPEC"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      COMBINE_ARTIFACTS = "COMBINE_ARTIFACTS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # <p>Contains information about a batch build build group. Build groups are used to combine
    #             builds that can run in parallel, while still being able to set dependencies on other
    #             build groups.</p>
    #
    # @!attribute identifier
    #   <p>Contains the identifier of the build group.</p>
    #
    #   @return [String]
    #
    # @!attribute depends_on
    #   <p>An array of strings that contain the identifiers of the build groups that this build
    #               group depends on.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute ignore_failure
    #   <p>Specifies if failures in this build group can be ignored.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute current_build_summary
    #   <p>A <code>BuildSummary</code> object that contains a summary of the current build
    #               group.</p>
    #
    #   @return [BuildSummary]
    #
    # @!attribute prior_build_summary_list
    #   <p>An array of <code>BuildSummary</code> objects that contain summaries of previous
    #               build groups.</p>
    #
    #   @return [Array<BuildSummary>]
    #
    BuildGroup = ::Struct.new(
      :identifier,
      :depends_on,
      :ignore_failure,
      :current_build_summary,
      :prior_build_summary_list,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.ignore_failure ||= false
      end

    end

    # <p>Information about a build that could not be successfully deleted.</p>
    #
    # @!attribute id
    #   <p>The ID of the build that could not be successfully deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute status_code
    #   <p>Additional information about the build that could not be successfully deleted.</p>
    #
    #   @return [String]
    #
    BuildNotDeleted = ::Struct.new(
      :id,
      :status_code,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a stage for a build.</p>
    #
    # @!attribute phase_type
    #   <p>The name of the build phase. Valid values include:</p>
    #           <dl>
    #               <dt>BUILD</dt>
    #               <dd>
    #                       <p>Core build activities typically occur in this build phase.</p>
    #                   </dd>
    #               <dt>COMPLETED</dt>
    #               <dd>
    #                       <p>The build has been completed.</p>
    #                   </dd>
    #               <dt>DOWNLOAD_SOURCE</dt>
    #               <dd>
    #                       <p>Source code is being downloaded in this build phase.</p>
    #                   </dd>
    #               <dt>FINALIZING</dt>
    #               <dd>
    #                       <p>The build process is completing in this build phase.</p>
    #                   </dd>
    #               <dt>INSTALL</dt>
    #               <dd>
    #                       <p>Installation activities typically occur in this build phase.</p>
    #                   </dd>
    #               <dt>POST_BUILD</dt>
    #               <dd>
    #                       <p>Post-build activities typically occur in this build phase.</p>
    #                   </dd>
    #               <dt>PRE_BUILD</dt>
    #               <dd>
    #                       <p>Pre-build activities typically occur in this build phase.</p>
    #                   </dd>
    #               <dt>PROVISIONING</dt>
    #               <dd>
    #                       <p>The build environment is being set up.</p>
    #                   </dd>
    #               <dt>QUEUED</dt>
    #               <dd>
    #                       <p>The build has been submitted and is queued behind other submitted
    #                           builds.</p>
    #                   </dd>
    #               <dt>SUBMITTED</dt>
    #               <dd>
    #                       <p>The build has been submitted.</p>
    #                   </dd>
    #               <dt>UPLOAD_ARTIFACTS</dt>
    #               <dd>
    #                       <p>Build output artifacts are being uploaded to the output location.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"]
    #
    #   @return [String]
    #
    # @!attribute phase_status
    #   <p>The current status of the build phase. Valid values include:</p>
    #           <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                       <p>The build phase failed.</p>
    #                   </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                       <p>The build phase faulted.</p>
    #                   </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                       <p>The build phase is still in progress.</p>
    #                   </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                       <p>The build phase stopped.</p>
    #                   </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                       <p>The build phase succeeded.</p>
    #                   </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                       <p>The build phase timed out.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>When the build phase started, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>When the build phase ended, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute duration_in_seconds
    #   <p>How long, in seconds, between the starting and ending times of the build's
    #               phase.</p>
    #
    #   @return [Integer]
    #
    # @!attribute contexts
    #   <p>Additional information about a build phase, especially to help troubleshoot a failed
    #               build.</p>
    #
    #   @return [Array<PhaseContext>]
    #
    BuildPhase = ::Struct.new(
      :phase_type,
      :phase_status,
      :start_time,
      :end_time,
      :duration_in_seconds,
      :contexts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for BuildPhaseType
    #
    module BuildPhaseType
      # No documentation available.
      #
      SUBMITTED = "SUBMITTED"

      # No documentation available.
      #
      QUEUED = "QUEUED"

      # No documentation available.
      #
      PROVISIONING = "PROVISIONING"

      # No documentation available.
      #
      DOWNLOAD_SOURCE = "DOWNLOAD_SOURCE"

      # No documentation available.
      #
      INSTALL = "INSTALL"

      # No documentation available.
      #
      PRE_BUILD = "PRE_BUILD"

      # No documentation available.
      #
      BUILD = "BUILD"

      # No documentation available.
      #
      POST_BUILD = "POST_BUILD"

      # No documentation available.
      #
      UPLOAD_ARTIFACTS = "UPLOAD_ARTIFACTS"

      # No documentation available.
      #
      FINALIZING = "FINALIZING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"
    end

    # <p>Contains information that defines how the CodeBuild build project reports the build status
    #             to the source provider. </p>
    #
    # @!attribute context
    #   <p>Specifies the context of the build status CodeBuild sends to the source provider. The
    #               usage of this parameter depends on the source provider.</p>
    #           <dl>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                       <p>This parameter is used for the <code>name</code> parameter in the
    #                           Bitbucket commit status. For more information, see <a href="https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build">build</a> in the Bitbucket API documentation.</p>
    #                   </dd>
    #               <dt>GitHub/GitHub Enterprise Server</dt>
    #               <dd>
    #                       <p>This parameter is used for the <code>context</code> parameter in the
    #                           GitHub commit status. For more information, see <a href="https://developer.github.com/v3/repos/statuses/ create-a-commit-status">Create a commit status</a> in the GitHub developer guide.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [String]
    #
    # @!attribute target_url
    #   <p>Specifies the target url of the build status CodeBuild sends to the source provider. The
    #               usage of this parameter depends on the source provider.</p>
    #           <dl>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                       <p>This parameter is used for the <code>url</code> parameter in the Bitbucket
    #                           commit status. For more information, see <a href="https://developer.atlassian.com/bitbucket/api/2/reference/resource/repositories/%7Bworkspace%7D/%7Brepo_slug%7D/commit/%7Bnode%7D/statuses/build">build</a> in the Bitbucket API documentation.</p>
    #                   </dd>
    #               <dt>GitHub/GitHub Enterprise Server</dt>
    #               <dd>
    #                       <p>This parameter is used for the <code>target_url</code> parameter in the
    #                           GitHub commit status. For more information, see <a href="https://developer.github.com/v3/repos/statuses/ create-a-commit-status">Create a commit status</a> in the GitHub developer guide.</p>
    #                   </dd>
    #            </dl>
    #
    #   @return [String]
    #
    BuildStatusConfig = ::Struct.new(
      :context,
      :target_url,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains summary information about a batch build group.</p>
    #
    # @!attribute arn
    #   <p>The batch build ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute requested_on
    #   <p>When the build was started, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute build_status
    #   <p>The status of the build group.</p>
    #           <dl>
    #               <dt>FAILED</dt>
    #               <dd>
    #                       <p>The build group failed.</p>
    #                   </dd>
    #               <dt>FAULT</dt>
    #               <dd>
    #                       <p>The build group faulted.</p>
    #                   </dd>
    #               <dt>IN_PROGRESS</dt>
    #               <dd>
    #                       <p>The build group is still in progress.</p>
    #                   </dd>
    #               <dt>STOPPED</dt>
    #               <dd>
    #                       <p>The build group stopped.</p>
    #                   </dd>
    #               <dt>SUCCEEDED</dt>
    #               <dd>
    #                       <p>The build group succeeded.</p>
    #                   </dd>
    #               <dt>TIMED_OUT</dt>
    #               <dd>
    #                       <p>The build group timed out.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #
    #   @return [String]
    #
    # @!attribute primary_artifact
    #   <p>A <code>ResolvedArtifact</code> object that represents the primary build artifacts for the
    #               build group.</p>
    #
    #   @return [ResolvedArtifact]
    #
    # @!attribute secondary_artifacts
    #   <p>An array of <code>ResolvedArtifact</code> objects that represents the secondary build
    #               artifacts for the build group.</p>
    #
    #   @return [Array<ResolvedArtifact>]
    #
    BuildSummary = ::Struct.new(
      :arn,
      :requested_on,
      :build_status,
      :primary_artifact,
      :secondary_artifacts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CacheMode
    #
    module CacheMode
      # No documentation available.
      #
      LOCAL_DOCKER_LAYER_CACHE = "LOCAL_DOCKER_LAYER_CACHE"

      # No documentation available.
      #
      LOCAL_SOURCE_CACHE = "LOCAL_SOURCE_CACHE"

      # No documentation available.
      #
      LOCAL_CUSTOM_CACHE = "LOCAL_CUSTOM_CACHE"
    end

    # Includes enum constants for CacheType
    #
    module CacheType
      # No documentation available.
      #
      NO_CACHE = "NO_CACHE"

      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      LOCAL = "LOCAL"
    end

    # <p> Information about CloudWatch Logs for a build project. </p>
    #
    # @!attribute status
    #   <p>The current status of the logs in CloudWatch Logs for a build project. Valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code>: CloudWatch Logs are enabled for this build project.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DISABLED</code>: CloudWatch Logs are not enabled for this build project.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute group_name
    #   <p> The group name of the logs in CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working
    #                   with Log Groups and Log Streams</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p> The prefix of the stream name of the CloudWatch Logs. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/Working-with-log-groups-and-streams.html">Working
    #                   with Log Groups and Log Streams</a>. </p>
    #
    #   @return [String]
    #
    CloudWatchLogsConfig = ::Struct.new(
      :status,
      :group_name,
      :stream_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains code coverage report information.</p>
    #         <p>Line coverage measures how many statements your tests cover. A statement is a single
    #       instruction, not including comments, conditionals, etc.</p>
    #         <p>Branch coverage determines if your tests cover every possible branch of a control
    #     structure, such as an <code>if</code> or <code>case</code> statement.</p>
    #
    # @!attribute id
    #   <p>The identifier of the code coverage report.</p>
    #
    #   @return [String]
    #
    # @!attribute report_arn
    #   <p>The ARN of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The path of the test report file.</p>
    #
    #   @return [String]
    #
    # @!attribute line_coverage_percentage
    #   <p>The percentage of lines that are covered by your tests.</p>
    #
    #   @return [Float]
    #
    # @!attribute lines_covered
    #   <p>The number of lines that are covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lines_missed
    #   <p>The number of lines that are not covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute branch_coverage_percentage
    #   <p>The percentage of branches that are covered by your tests.</p>
    #
    #   @return [Float]
    #
    # @!attribute branches_covered
    #   <p>The number of conditional branches that are covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute branches_missed
    #   <p>The number of conditional branches that are not covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute expired
    #   <p>The date and time that the tests were run.</p>
    #
    #   @return [Time]
    #
    CodeCoverage = ::Struct.new(
      :id,
      :report_arn,
      :file_path,
      :line_coverage_percentage,
      :lines_covered,
      :lines_missed,
      :branch_coverage_percentage,
      :branches_covered,
      :branches_missed,
      :expired,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a summary of a code coverage report.</p>
    #         <p>Line coverage measures how many statements your tests cover. A statement is a single
    #       instruction, not including comments, conditionals, etc.</p>
    #         <p>Branch coverage determines if your tests cover every possible branch of a control
    #     structure, such as an <code>if</code> or <code>case</code> statement.</p>
    #
    # @!attribute line_coverage_percentage
    #   <p>The percentage of lines that are covered by your tests.</p>
    #
    #   @return [Float]
    #
    # @!attribute lines_covered
    #   <p>The number of lines that are covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute lines_missed
    #   <p>The number of lines that are not covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute branch_coverage_percentage
    #   <p>The percentage of branches that are covered by your tests.</p>
    #
    #   @return [Float]
    #
    # @!attribute branches_covered
    #   <p>The number of conditional branches that are covered by your tests.</p>
    #
    #   @return [Integer]
    #
    # @!attribute branches_missed
    #   <p>The number of conditional branches that are not covered by your tests.</p>
    #
    #   @return [Integer]
    #
    CodeCoverageReportSummary = ::Struct.new(
      :line_coverage_percentage,
      :lines_covered,
      :lines_missed,
      :branch_coverage_percentage,
      :branches_covered,
      :branches_missed,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ComputeType
    #
    module ComputeType
      # No documentation available.
      #
      BUILD_GENERAL1_SMALL = "BUILD_GENERAL1_SMALL"

      # No documentation available.
      #
      BUILD_GENERAL1_MEDIUM = "BUILD_GENERAL1_MEDIUM"

      # No documentation available.
      #
      BUILD_GENERAL1_LARGE = "BUILD_GENERAL1_LARGE"

      # No documentation available.
      #
      BUILD_GENERAL1_2XLARGE = "BUILD_GENERAL1_2XLARGE"
    end

    # @!attribute name
    #   <p>The name of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description that makes the build project easy to identify.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>Information about the build input source code for the build project.</p>
    #
    #   @return [ProjectSource]
    #
    # @!attribute secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects. </p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute source_version
    #   <p>A version of the build input to be built for this project. If not specified, the latest
    #               version is used. If specified, it must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>sourceVersion</code> is specified at the build level, then that version takes
    #               precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #         precedence over these <code>secondarySourceVersions</code> (at the project level).
    #       </p>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute artifacts
    #   <p>Information about the build output artifacts for the build project.</p>
    #
    #   @return [ProjectArtifacts]
    #
    # @!attribute secondary_artifacts
    #   <p>An array of <code>ProjectArtifacts</code> objects. </p>
    #
    #   @return [Array<ProjectArtifacts>]
    #
    # @!attribute cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #           time.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute environment
    #   <p>Information about the build environment for the build project.</p>
    #
    #   @return [ProjectEnvironment]
    #
    # @!attribute service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services
    #         on behalf of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before it times out
    #         any build that has not been marked as completed. The default is 60 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes
    #   <p>The number of minutes a build is allowed to be queued before it times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #         artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #           badge.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute logs_config
    #   <p>Information about logs for the build project. These can be logs in CloudWatch Logs, logs
    #         uploaded to a specified S3 bucket, or both. </p>
    #
    #   @return [LogsConfig]
    #
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #
    #   @return [Array<ProjectFileSystemLocation>]
    #
    # @!attribute build_batch_config
    #   <p>A <a>ProjectBuildBatchConfig</a>
    #    object that defines the batch build options
    #               for the project.</p>
    #
    #   @return [ProjectBuildBatchConfig]
    #
    # @!attribute concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit.
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #
    #   @return [Integer]
    #
    CreateProjectInput = ::Struct.new(
      :name,
      :description,
      :source,
      :secondary_sources,
      :source_version,
      :secondary_source_versions,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :encryption_key,
      :tags,
      :vpc_config,
      :badge_enabled,
      :logs_config,
      :file_system_locations,
      :build_batch_config,
      :concurrent_build_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>Information about the build project that was created.</p>
    #
    #   @return [Project]
    #
    CreateProjectOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>
    #         The name of the report group.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>
    #         The type of report group.
    #       </p>
    #
    #   Enum, one of: ["TEST", "CODE_COVERAGE"]
    #
    #   @return [String]
    #
    # @!attribute export_config
    #   <p>
    #         A <code>ReportExportConfig</code> object that contains information about where the report group test results are exported.
    #       </p>
    #
    #   @return [ReportExportConfig]
    #
    # @!attribute tags
    #   <p>
    #         A list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #
    #   @return [Array<Tag>]
    #
    CreateReportGroupInput = ::Struct.new(
      :name,
      :type,
      :export_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_group
    #   <p>
    #         Information about the report group that was created.
    #       </p>
    #
    #   @return [ReportGroup]
    #
    CreateReportGroupOutput = ::Struct.new(
      :report_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p>It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute filter_groups
    #   <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
    #         webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
    #         specify <code>EVENT</code> as its <code>type</code>. </p>
    #            <p>For a build to be triggered, at least one filter group in the
    #         <code>filterGroups</code> array must pass. For a filter group to pass, each of its
    #         filters must pass. </p>
    #
    #   @return [Array<Array<WebhookFilter>>]
    #
    # @!attribute build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #
    #   Enum, one of: ["BUILD", "BUILD_BATCH"]
    #
    #   @return [String]
    #
    CreateWebhookInput = ::Struct.new(
      :project_name,
      :branch_filter,
      :filter_groups,
      :build_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute webhook
    #   <p>Information about a webhook that connects repository events to a build project in
    #         CodeBuild.</p>
    #
    #   @return [Webhook]
    #
    CreateWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CredentialProviderType
    #
    module CredentialProviderType
      # No documentation available.
      #
      SECRETS_MANAGER = "SECRETS_MANAGER"
    end

    # <p>Contains information about the debug session for a build. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a
    #                 running build in Session Manager</a>.</p>
    #
    # @!attribute session_enabled
    #   <p>Specifies if session debugging is enabled for this build.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute session_target
    #   <p>Contains the identifier of the Session Manager session used for the build. To work with
    #               the paused build, you open this session to examine, control, and resume the
    #               build.</p>
    #
    #   @return [String]
    #
    DebugSession = ::Struct.new(
      :session_enabled,
      :session_target,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The identifier of the batch build to delete.</p>
    #
    #   @return [String]
    #
    DeleteBuildBatchInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute status_code
    #   <p>The status code.</p>
    #
    #   @return [String]
    #
    # @!attribute builds_deleted
    #   <p>An array of strings that contain the identifiers of the builds that were deleted.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute builds_not_deleted
    #   <p>An array of <code>BuildNotDeleted</code> objects that specify the builds that could not be
    #               deleted.</p>
    #
    #   @return [Array<BuildNotDeleted>]
    #
    DeleteBuildBatchOutput = ::Struct.new(
      :status_code,
      :builds_deleted,
      :builds_not_deleted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the build project.</p>
    #
    #   @return [String]
    #
    DeleteProjectInput = ::Struct.new(
      :name,
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

    # @!attribute arn
    #   <p>The ARN of the report group to delete. </p>
    #
    #   @return [String]
    #
    # @!attribute delete_reports
    #   <p>If <code>true</code>, deletes any reports that belong to a report group before deleting
    #               the report group. </p>
    #            <p>If <code>false</code>, you must delete any reports in the report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html">ListReportsForReportGroup</a> to get the reports in a report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html">DeleteReport</a> to delete the reports. If you call
    #         <code>DeleteReportGroup</code> for a report group that contains one or more reports,
    #               an exception is thrown. </p>
    #
    #   @return [Boolean]
    #
    DeleteReportGroupInput = ::Struct.new(
      :arn,
      :delete_reports,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.delete_reports ||= false
      end

    end

    DeleteReportGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the report to delete.
    #       </p>
    #
    #   @return [String]
    #
    DeleteReportInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteReportOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    #
    #   @return [String]
    #
    DeleteResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourcePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token.</p>
    #
    #   @return [String]
    #
    DeleteSourceCredentialsInput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token. </p>
    #
    #   @return [String]
    #
    DeleteSourceCredentialsOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    #   @return [String]
    #
    DeleteWebhookInput = ::Struct.new(
      :project_name,
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

    # @!attribute report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>DescribeCodeCoverages</code>. This specifies the next item to return. To
    #               return the beginning of the list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_order
    #   <p>Specifies if the results are sorted in ascending or descending order.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>Specifies how the results are sorted. Possible values are:</p>
    #           <dl>
    #               <dt>FILE_PATH</dt>
    #               <dd>
    #                       <p>The results are sorted by file path.</p>
    #                   </dd>
    #               <dt>LINE_COVERAGE_PERCENTAGE</dt>
    #               <dd>
    #                       <p>The results are sorted by the percentage of lines that are covered.</p>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["LINE_COVERAGE_PERCENTAGE", "FILE_PATH"]
    #
    #   @return [String]
    #
    # @!attribute min_line_coverage_percentage
    #   <p>The minimum line coverage percentage to report.</p>
    #
    #   @return [Float]
    #
    # @!attribute max_line_coverage_percentage
    #   <p>The maximum line coverage percentage to report.</p>
    #
    #   @return [Float]
    #
    DescribeCodeCoveragesInput = ::Struct.new(
      :report_arn,
      :next_token,
      :max_results,
      :sort_order,
      :sort_by,
      :min_line_coverage_percentage,
      :max_line_coverage_percentage,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token that is passed to a subsequent
    #               call to <code>DescribeCodeCoverages</code> to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    # @!attribute code_coverages
    #   <p>An array of <code>CodeCoverage</code> objects that contain the results.</p>
    #
    #   @return [Array<CodeCoverage>]
    #
    DescribeCodeCoveragesOutput = ::Struct.new(
      :next_token,
      :code_coverages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated test cases returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>TestCase</code> objects. The default value is 100.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>
    #         A <code>TestCaseFilter</code> object used to filter the returned reports.
    #       </p>
    #
    #   @return [TestCaseFilter]
    #
    DescribeTestCasesInput = ::Struct.new(
      :report_arn,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute test_cases
    #   <p>
    #         The returned list of test cases.
    #       </p>
    #
    #   @return [Array<TestCase>]
    #
    DescribeTestCasesOutput = ::Struct.new(
      :next_token,
      :test_cases,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a Docker image that is managed by CodeBuild.</p>
    #
    # @!attribute name
    #   <p>The name of the Docker image.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the Docker image.</p>
    #
    #   @return [String]
    #
    # @!attribute versions
    #   <p>A list of environment image versions.</p>
    #
    #   @return [Array<String>]
    #
    EnvironmentImage = ::Struct.new(
      :name,
      :description,
      :versions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of Docker images that are related by programming language and are managed by
    #             CodeBuild.</p>
    #
    # @!attribute language
    #   <p>The programming language for the Docker images.</p>
    #
    #   Enum, one of: ["JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE", "PHP"]
    #
    #   @return [String]
    #
    # @!attribute images
    #   <p>The list of Docker images that are related by the specified programming
    #               language.</p>
    #
    #   @return [Array<EnvironmentImage>]
    #
    EnvironmentLanguage = ::Struct.new(
      :language,
      :images,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A set of Docker images that are related by platform and are managed by CodeBuild.</p>
    #
    # @!attribute platform
    #   <p>The platform's name.</p>
    #
    #   Enum, one of: ["DEBIAN", "AMAZON_LINUX", "UBUNTU", "WINDOWS_SERVER"]
    #
    #   @return [String]
    #
    # @!attribute languages
    #   <p>The list of programming languages that are available for the specified
    #               platform.</p>
    #
    #   @return [Array<EnvironmentLanguage>]
    #
    EnvironmentPlatform = ::Struct.new(
      :platform,
      :languages,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentType
    #
    module EnvironmentType
      # No documentation available.
      #
      WINDOWS_CONTAINER = "WINDOWS_CONTAINER"

      # No documentation available.
      #
      LINUX_CONTAINER = "LINUX_CONTAINER"

      # No documentation available.
      #
      LINUX_GPU_CONTAINER = "LINUX_GPU_CONTAINER"

      # No documentation available.
      #
      ARM_CONTAINER = "ARM_CONTAINER"

      # No documentation available.
      #
      WINDOWS_SERVER_2019_CONTAINER = "WINDOWS_SERVER_2019_CONTAINER"
    end

    # <p>Information about an environment variable for a build project or a build.</p>
    #
    # @!attribute name
    #   <p>The name or key of the environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the environment variable.</p>
    #           <important>
    #               <p>We strongly discourage the use of <code>PLAINTEXT</code> environment variables to
    #                   store sensitive values, especially Amazon Web Services secret key IDs and secret access keys.
    #                       <code>PLAINTEXT</code> environment variables can be displayed in plain text
    #                   using the CodeBuild console and the CLI. For sensitive values, we recommend you use an
    #                   environment variable of type <code>PARAMETER_STORE</code> or
    #                       <code>SECRETS_MANAGER</code>. </p>
    #           </important>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of environment variable. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PARAMETER_STORE</code>: An environment variable stored in Systems Manager
    #                       Parameter Store. To learn how to specify a parameter store environment variable,
    #                       see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html build-spec.env.parameter-store">env/parameter-store</a> in the
    #                       <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PLAINTEXT</code>: An environment variable in plain text format. This is
    #                       the default value.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SECRETS_MANAGER</code>: An environment variable stored in Secrets Manager. To learn how to specify a secrets manager environment variable, see
    #                           <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html build-spec.env.secrets-manager">env/secrets-manager</a> in the
    #                       <i>CodeBuild User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #
    #   @return [String]
    #
    EnvironmentVariable = ::Struct.new(
      :name,
      :value,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EnvironmentVariableType
    #
    module EnvironmentVariableType
      # No documentation available.
      #
      PLAINTEXT = "PLAINTEXT"

      # No documentation available.
      #
      PARAMETER_STORE = "PARAMETER_STORE"

      # No documentation available.
      #
      SECRETS_MANAGER = "SECRETS_MANAGER"
    end

    # <p>Contains information about an exported environment variable. </p>
    #         <p>Exported environment variables are used in conjunction with CodePipeline to export
    #   environment variables from the current build stage to subsequent stages in the pipeline.
    #   For more information, see <a href="https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html">Working with variables</a> in the <i>CodePipeline User Guide</i>.</p>
    #         <note>
    #             <p> During a build, the value of a variable is available starting with the
    #                   <code>install</code> phase. It can be updated between the start of the
    #                   <code>install</code> phase and the end of the <code>post_build</code> phase.
    #               After the <code>post_build</code> phase ends, the value of exported variables cannot
    #               change.</p>
    #          </note>
    #
    # @!attribute name
    #   <p>The name of the exported environment variable.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value assigned to the exported environment variable.</p>
    #
    #   @return [String]
    #
    ExportedEnvironmentVariable = ::Struct.new(
      :name,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FileSystemType
    #
    module FileSystemType
      # No documentation available.
      #
      EFS = "EFS"
    end

    # @!attribute report_group_arn
    #   <p>The ARN of the report group that contains the reports to analyze.</p>
    #
    #   @return [String]
    #
    # @!attribute num_of_reports
    #   <p>The number of reports to analyze. This operation always retrieves the most recent
    #               reports.</p>
    #           <p>If this parameter is omitted, the most recent 100 reports are analyzed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute trend_field
    #   <p>The test report value to accumulate. This must be one of the following values:</p>
    #            <dl>
    #               <dt>Test reports:</dt>
    #               <dd>
    #                       <dl>
    #                     <dt>DURATION</dt>
    #                     <dd>
    #                                   <p>Accumulate the test run times for the specified
    #                                       reports.</p>
    #                               </dd>
    #                     <dt>PASS_RATE</dt>
    #                     <dd>
    #                                   <p>Accumulate the percentage of tests that passed for the
    #                                       specified test reports.</p>
    #                               </dd>
    #                     <dt>TOTAL</dt>
    #                     <dd>
    #                                   <p>Accumulate the total number of tests for the specified test
    #                                       reports.</p>
    #                               </dd>
    #                  </dl>
    #                   </dd>
    #            </dl>
    #            <dl>
    #               <dt>Code coverage reports:</dt>
    #               <dd>
    #                       <dl>
    #                     <dt>BRANCH_COVERAGE</dt>
    #                     <dd>
    #                                   <p>Accumulate the branch coverage percentages for the specified
    #                                       test reports.</p>
    #                               </dd>
    #                     <dt>BRANCHES_COVERED</dt>
    #                     <dd>
    #                                   <p>Accumulate the branches covered values for the specified test
    #                                       reports.</p>
    #                               </dd>
    #                     <dt>BRANCHES_MISSED</dt>
    #                     <dd>
    #                                   <p>Accumulate the branches missed values for the specified test
    #                                       reports.</p>
    #                               </dd>
    #                     <dt>LINE_COVERAGE</dt>
    #                     <dd>
    #                                   <p>Accumulate the line coverage percentages for the specified
    #                                       test reports.</p>
    #                               </dd>
    #                     <dt>LINES_COVERED</dt>
    #                     <dd>
    #                                   <p>Accumulate the lines covered values for the specified test
    #                                       reports.</p>
    #                               </dd>
    #                     <dt>LINES_MISSED</dt>
    #                     <dd>
    #                                   <p>Accumulate the lines not covered values for the specified test
    #                                       reports.</p>
    #                               </dd>
    #                  </dl>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["PASS_RATE", "DURATION", "TOTAL", "LINE_COVERAGE", "LINES_COVERED", "LINES_MISSED", "BRANCH_COVERAGE", "BRANCHES_COVERED", "BRANCHES_MISSED"]
    #
    #   @return [String]
    #
    GetReportGroupTrendInput = ::Struct.new(
      :report_group_arn,
      :num_of_reports,
      :trend_field,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute stats
    #   <p>Contains the accumulated trend data.</p>
    #
    #   @return [ReportGroupTrendStats]
    #
    # @!attribute raw_data
    #   <p>An array that contains the raw data for each report.</p>
    #
    #   @return [Array<ReportWithRawData>]
    #
    GetReportGroupTrendOutput = ::Struct.new(
      :stats,
      :raw_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    #
    #   @return [String]
    #
    GetResourcePolicyInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p> The resource policy for the resource identified by the input ARN parameter. </p>
    #
    #   @return [String]
    #
    GetResourcePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about the Git submodules configuration for an CodeBuild build project.
    #         </p>
    #
    # @!attribute fetch_submodules
    #   <p> Set to true to fetch Git submodules for your CodeBuild build project. </p>
    #
    #   @return [Boolean]
    #
    GitSubmodulesConfig = ::Struct.new(
      :fetch_submodules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ImagePullCredentialsType
    #
    module ImagePullCredentialsType
      # No documentation available.
      #
      CODEBUILD = "CODEBUILD"

      # No documentation available.
      #
      SERVICE_ROLE = "SERVICE_ROLE"
    end

    # @!attribute username
    #   <p> The Bitbucket username when the <code>authType</code> is BASIC_AUTH. This parameter
    #               is not valid for other types of source providers or connections. </p>
    #
    #   @return [String]
    #
    # @!attribute token
    #   <p> For GitHub or GitHub Enterprise, this is the personal access token. For Bitbucket,
    #               this is the app password. </p>
    #
    #   @return [String]
    #
    # @!attribute server_type
    #   <p> The source provider used for this project. </p>
    #
    #   Enum, one of: ["GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute auth_type
    #   <p> The type of authentication used to connect to a GitHub, GitHub Enterprise, or
    #               Bitbucket repository. An OAUTH connection is not supported by the API and must be
    #               created using the CodeBuild console. </p>
    #
    #   Enum, one of: ["OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN"]
    #
    #   @return [String]
    #
    # @!attribute should_overwrite
    #   <p> Set to <code>false</code> to prevent overwriting the repository source credentials.
    #               Set to <code>true</code> to overwrite the repository source credentials. The default
    #               value is <code>true</code>. </p>
    #
    #   @return [Boolean]
    #
    ImportSourceCredentialsInput = ::Struct.new(
      :username,
      :token,
      :server_type,
      :auth_type,
      :should_overwrite,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::CodeBuild::Types::ImportSourceCredentialsInput "\
          "username=#{username || 'nil'}, "\
          "token=\"[SENSITIVE]\", "\
          "server_type=#{server_type || 'nil'}, "\
          "auth_type=#{auth_type || 'nil'}, "\
          "should_overwrite=#{should_overwrite || 'nil'}>"
      end
    end

    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token. </p>
    #
    #   @return [String]
    #
    ImportSourceCredentialsOutput = ::Struct.new(
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input value that was provided is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild build project that the cache is reset for.</p>
    #
    #   @return [String]
    #
    InvalidateProjectCacheInput = ::Struct.new(
      :project_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    InvalidateProjectCacheOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LanguageType
    #
    module LanguageType
      # No documentation available.
      #
      JAVA = "JAVA"

      # No documentation available.
      #
      PYTHON = "PYTHON"

      # No documentation available.
      #
      NODE_JS = "NODE_JS"

      # No documentation available.
      #
      RUBY = "RUBY"

      # No documentation available.
      #
      GOLANG = "GOLANG"

      # No documentation available.
      #
      DOCKER = "DOCKER"

      # No documentation available.
      #
      ANDROID = "ANDROID"

      # No documentation available.
      #
      DOTNET = "DOTNET"

      # No documentation available.
      #
      BASE = "BASE"

      # No documentation available.
      #
      PHP = "PHP"
    end

    # @!attribute project_name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    #
    #   @return [BuildBatchFilter]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_order
    #   <p>Specifies the sort order of the returned items. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASCENDING</code>: List the batch build identifiers in ascending order by
    #                       identifier.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESCENDING</code>: List the batch build identifiers in descending order
    #                       by identifier.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatchesForProject</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    ListBuildBatchesForProjectInput = ::Struct.new(
      :project_name,
      :filter,
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>An array of strings that contains the batch build identifiers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token that is passed to a
    #               subsequent call to <code>ListBuildBatchesForProject</code> to retrieve the next set of
    #               items.</p>
    #
    #   @return [String]
    #
    ListBuildBatchesForProjectOutput = ::Struct.new(
      :ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    #
    #   @return [BuildBatchFilter]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    # @!attribute sort_order
    #   <p>Specifies the sort order of the returned items. Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: List the batch build identifiers in ascending order by identifier.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: List the batch build identifiers in descending order by identifier.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatches</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    #
    #   @return [String]
    #
    ListBuildBatchesInput = ::Struct.new(
      :filter,
      :max_results,
      :sort_order,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>An array of strings that contains the batch build identifiers.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are more items to return, this contains a token that is passed to a subsequent
    #               call to <code>ListBuildBatches</code> to retrieve the next set of items.</p>
    #
    #   @return [String]
    #
    ListBuildBatchesOutput = ::Struct.new(
      :ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order to sort the results in. The results are sorted by build number, not the build
    #               identifier. If this is not specified, the results are sorted in descending order.</p>
    #           <p>Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASCENDING</code>: List the build identifiers in ascending order, by build number.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESCENDING</code>: List the build identifiers in descending order, by build number.</p>
    #               </li>
    #            </ul>
    #           <p>If the project has more than 100 builds, setting the sort order will result in an
    #               error. </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #
    #   @return [String]
    #
    ListBuildsForProjectInput = ::Struct.new(
      :project_name,
      :sort_order,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>A list of build identifiers for the specified build project, with each build ID representing a
    #               single build.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #
    #   @return [String]
    #
    ListBuildsForProjectOutput = ::Struct.new(
      :ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_order
    #   <p>The order to list build IDs. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASCENDING</code>: List the build IDs in ascending order by build
    #                       ID.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESCENDING</code>: List the build IDs in descending order by build
    #                       ID.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #
    #   @return [String]
    #
    ListBuildsInput = ::Struct.new(
      :sort_order,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute ids
    #   <p>A list of build IDs, with each build ID representing a single build.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #
    #   @return [String]
    #
    ListBuildsOutput = ::Struct.new(
      :ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ListCuratedEnvironmentImagesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute platforms
    #   <p>Information about supported platforms for Docker images that are managed by
    #               CodeBuild.</p>
    #
    #   @return [Array<EnvironmentPlatform>]
    #
    ListCuratedEnvironmentImagesOutput = ::Struct.new(
      :platforms,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_by
    #   <p>The criterion to be used to list build project names. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>CREATED_TIME</code>: List based on when each build project was
    #                       created.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when information about each
    #                       build project was last changed.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NAME</code>: List based on each build project's name.</p>
    #               </li>
    #            </ul>
    #           <p>Use <code>sortOrder</code> to specify in what order to list the build project names
    #               based on the preceding criteria.</p>
    #
    #   Enum, one of: ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order in which to list build projects. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #           <p>Use <code>sortBy</code> to specify the criterion to be used to list build project
    #               names.</p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #
    #   @return [String]
    #
    ListProjectsInput = ::Struct.new(
      :sort_by,
      :sort_order,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>If there are more than 100 items in the list, only the first 100 items are returned,
    #               along with a unique string called a <i>nextToken</i>. To get the next
    #               batch of items in the list, call this operation again, adding the next token to the
    #               call.</p>
    #
    #   @return [String]
    #
    # @!attribute projects
    #   <p>The list of build project names, with each build project name representing a single
    #               build project.</p>
    #
    #   @return [Array<String>]
    #
    ListProjectsOutput = ::Struct.new(
      :next_token,
      :projects,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_order
    #   <p>
    #         Used to specify the order to sort the list of returned report groups. Valid values are
    #         <code>ASCENDING</code> and <code>DESCENDING</code>.
    #       </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>
    #         The criterion to be used to list build report groups. Valid values include:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CREATED_TIME</code>: List based on when each report group was
    #             created.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>LAST_MODIFIED_TIME</code>: List based on when each report group  was last changed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NAME</code>: List based on each report group's name.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated report groups returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>ReportGroup</code> objects. The default value is 100.
    #       </p>
    #
    #   @return [Integer]
    #
    ListReportGroupsInput = ::Struct.new(
      :sort_order,
      :sort_by,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute report_groups
    #   <p>
    #         The list of ARNs for the report groups in the current Amazon Web Services account.
    #       </p>
    #
    #   @return [Array<String>]
    #
    ListReportGroupsOutput = ::Struct.new(
      :next_token,
      :report_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_group_arn
    #   <p>
    #         The ARN of the report group for which you want to return report ARNs.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>
    #         Use to specify whether the results are returned in ascending or descending order.
    #       </p>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated reports in this report group returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    #
    #   @return [ReportFilter]
    #
    ListReportsForReportGroupInput = ::Struct.new(
      :report_group_arn,
      :next_token,
      :sort_order,
      :max_results,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute reports
    #   <p>
    #         The list of report ARNs.
    #       </p>
    #
    #   @return [Array<String>]
    #
    ListReportsForReportGroupOutput = ::Struct.new(
      :next_token,
      :reports,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_order
    #   <p>
    #         Specifies the sort order for the list of returned reports. Valid values are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ASCENDING</code>: return reports in chronological order based on their creation date.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DESCENDING</code>: return reports in the reverse chronological order based on their creation date.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>
    #         The maximum number of paginated reports returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    #
    #   @return [Integer]
    #
    # @!attribute filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    #
    #   @return [ReportFilter]
    #
    ListReportsInput = ::Struct.new(
      :sort_order,
      :next_token,
      :max_results,
      :filter,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute reports
    #   <p>
    #         The list of returned ARNs for the reports in the current Amazon Web Services account.
    #       </p>
    #
    #   @return [Array<String>]
    #
    ListReportsOutput = ::Struct.new(
      :next_token,
      :reports,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_by
    #   <p> The criterion to be used to list build projects shared with the current Amazon Web Services account
    #               or user. Valid values include: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ARN</code>: List based on the ARN. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>MODIFIED_TIME</code>: List based on when information about the shared
    #                       project was last changed. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ARN", "MODIFIED_TIME"]
    #
    #   @return [String]
    #
    # @!attribute sort_order
    #   <p>The order in which to list shared build projects. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of paginated shared build projects returned per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned <code>Project</code>
    #               objects. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #
    #   @return [String]
    #
    ListSharedProjectsInput = ::Struct.new(
      :sort_by,
      :sort_order,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #
    #   @return [String]
    #
    # @!attribute projects
    #   <p> The list of ARNs for the build projects shared with the current Amazon Web Services account or user.
    #           </p>
    #
    #   @return [Array<String>]
    #
    ListSharedProjectsOutput = ::Struct.new(
      :next_token,
      :projects,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute sort_order
    #   <p>The order in which to list shared report groups. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ASCENDING</code>: List in ascending order.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DESCENDING</code>: List in descending order.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ASCENDING", "DESCENDING"]
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p> The criterion to be used to list report groups shared with the current Amazon Web Services account or
    #               user. Valid values include: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>ARN</code>: List based on the ARN. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>MODIFIED_TIME</code>: List based on when information about the shared
    #                       report group was last changed. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ARN", "MODIFIED_TIME"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p> The maximum number of paginated shared report groups per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned
    #                   <code>ReportGroup</code> objects. The default value is 100. </p>
    #
    #   @return [Integer]
    #
    ListSharedReportGroupsInput = ::Struct.new(
      :sort_order,
      :sort_by,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #
    #   @return [String]
    #
    # @!attribute report_groups
    #   <p> The list of ARNs for the report groups shared with the current Amazon Web Services account or user.
    #           </p>
    #
    #   @return [Array<String>]
    #
    ListSharedReportGroupsOutput = ::Struct.new(
      :next_token,
      :report_groups,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    ListSourceCredentialsInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_credentials_infos
    #   <p> A list of <code>SourceCredentialsInfo</code> objects. Each
    #                   <code>SourceCredentialsInfo</code> object includes the authentication type, token
    #               ARN, and type of source provider for one set of credentials. </p>
    #
    #   @return [Array<SourceCredentialsInfo>]
    #
    ListSourceCredentialsOutput = ::Struct.new(
      :source_credentials_infos,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about logs for a build project. These can be logs in CloudWatch Logs, built in a
    #             specified S3 bucket, or both. </p>
    #
    # @!attribute cloud_watch_logs
    #   <p> Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. </p>
    #
    #   @return [CloudWatchLogsConfig]
    #
    # @!attribute s3_logs
    #   <p> Information about logs built to an S3 bucket for a build project. S3 logs are not
    #               enabled by default. </p>
    #
    #   @return [S3LogsConfig]
    #
    LogsConfig = ::Struct.new(
      :cloud_watch_logs,
      :s3_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for LogsConfigStatusType
    #
    module LogsConfigStatusType
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"
    end

    # <p>Information about build logs in CloudWatch Logs.</p>
    #
    # @!attribute group_name
    #   <p>The name of the CloudWatch Logs group for the build logs.</p>
    #
    #   @return [String]
    #
    # @!attribute stream_name
    #   <p>The name of the CloudWatch Logs stream for the build logs.</p>
    #
    #   @return [String]
    #
    # @!attribute deep_link
    #   <p>The URL to an individual build log in CloudWatch Logs.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_deep_link
    #   <p> The URL to a build log in an S3 bucket. </p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs_arn
    #   <p> The ARN of CloudWatch Logs for a build project. Its format is
    #                   <code>arn:${Partition}:logs:${Region}:${Account}:log-group:${LogGroupName}:log-stream:${LogStreamName}</code>.
    #               For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazoncloudwatchlogs.html amazoncloudwatchlogs-resources-for-iam-policies">Resources Defined by CloudWatch Logs</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute s3_logs_arn
    #   <p> The ARN of S3 logs for a build project. Its format is
    #                   <code>arn:${Partition}:s3:::${BucketName}/${ObjectName}</code>. For more
    #               information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html amazons3-resources-for-iam-policies">Resources Defined by Amazon S3</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute cloud_watch_logs
    #   <p> Information about CloudWatch Logs for a build project. </p>
    #
    #   @return [CloudWatchLogsConfig]
    #
    # @!attribute s3_logs
    #   <p> Information about S3 logs for a build project. </p>
    #
    #   @return [S3LogsConfig]
    #
    LogsLocation = ::Struct.new(
      :group_name,
      :stream_name,
      :deep_link,
      :s3_deep_link,
      :cloud_watch_logs_arn,
      :s3_logs_arn,
      :cloud_watch_logs,
      :s3_logs,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a network interface.</p>
    #
    # @!attribute subnet_id
    #   <p>The ID of the subnet.</p>
    #
    #   @return [String]
    #
    # @!attribute network_interface_id
    #   <p>The ID of the network interface.</p>
    #
    #   @return [String]
    #
    NetworkInterface = ::Struct.new(
      :subnet_id,
      :network_interface_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>There was a problem with the underlying OAuth provider.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OAuthProviderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Additional information about a build phase that has an error. You can use this
    #             information for troubleshooting.</p>
    #
    # @!attribute status_code
    #   <p>The status code for the context of the build phase.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>An explanation of the build phase's context. This might include a command ID and an
    #               exit code.</p>
    #
    #   @return [String]
    #
    PhaseContext = ::Struct.new(
      :status_code,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PlatformType
    #
    module PlatformType
      # No documentation available.
      #
      DEBIAN = "DEBIAN"

      # No documentation available.
      #
      AMAZON_LINUX = "AMAZON_LINUX"

      # No documentation available.
      #
      UBUNTU = "UBUNTU"

      # No documentation available.
      #
      WINDOWS_SERVER = "WINDOWS_SERVER"
    end

    # <p>Information about a build project.</p>
    #
    # @!attribute name
    #   <p>The name of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description that makes the build project easy to identify.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>Information about the build input source code for this build project.</p>
    #
    #   @return [ProjectSource]
    #
    # @!attribute secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects. </p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute source_version
    #   <p>A version of the build input to be built for this project. If not specified, the
    #         latest version is used. If specified, it must be one of:</p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #             corresponds to the version of the source code you want to build. If a pull
    #             request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #             (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #             HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #             used.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #             version of the source code you want to build. If a branch name is specified, the
    #             branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #             commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #             file to use.</p>
    #               </li>
    #            </ul>
    #            <p>If <code>sourceVersion</code> is specified at the build level, then that version
    #         takes precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #         with CodeBuild</a> in the <i>CodeBuild User Guide</i>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #         over these <code>secondarySourceVersions</code> (at the project level). </p>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute artifacts
    #   <p>Information about the build output artifacts for the build project.</p>
    #
    #   @return [ProjectArtifacts]
    #
    # @!attribute secondary_artifacts
    #   <p>An array of <code>ProjectArtifacts</code> objects. </p>
    #
    #   @return [Array<ProjectArtifacts>]
    #
    # @!attribute cache
    #   <p>Information about the cache for the build project.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute environment
    #   <p>Information about the build environment for this build project.</p>
    #
    #   @return [ProjectEnvironment]
    #
    # @!attribute service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services
    #         on behalf of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before timing out any
    #         related build that did not get marked as completed. The default is 60 minutes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes
    #   <p>The number of minutes a build is allowed to be queued before it times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #         artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>). If you don't specify a
    #           value, CodeBuild uses the managed CMK for Amazon Simple Storage Service (Amazon S3).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute created
    #   <p>When the build project was created, expressed in Unix time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified
    #   <p>When the build project's settings were last modified, expressed in Unix time
    #         format.</p>
    #
    #   @return [Time]
    #
    # @!attribute webhook
    #   <p>Information about a webhook that connects repository events to a build project in
    #         CodeBuild.</p>
    #
    #   @return [Webhook]
    #
    # @!attribute vpc_config
    #   <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute badge
    #   <p>Information about the build badge for the build project.</p>
    #
    #   @return [ProjectBadge]
    #
    # @!attribute logs_config
    #   <p>Information about logs for the build project. A project can create logs in CloudWatch Logs, an
    #         S3 bucket, or both. </p>
    #
    #   @return [LogsConfig]
    #
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #
    #   @return [Array<ProjectFileSystemLocation>]
    #
    # @!attribute build_batch_config
    #   <p>A <a>ProjectBuildBatchConfig</a>
    #    object that defines the batch build
    #               options for the project.</p>
    #
    #   @return [ProjectBuildBatchConfig]
    #
    # @!attribute concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit.
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #
    #   @return [Integer]
    #
    # @!attribute project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["PUBLIC_READ", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute public_project_alias
    #   <p>Contains the project identifier used with the public build APIs. </p>
    #
    #   @return [String]
    #
    # @!attribute resource_access_role
    #   <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for
    #         the project's builds.</p>
    #
    #   @return [String]
    #
    Project = ::Struct.new(
      :name,
      :arn,
      :description,
      :source,
      :secondary_sources,
      :source_version,
      :secondary_source_versions,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :encryption_key,
      :tags,
      :created,
      :last_modified,
      :webhook,
      :vpc_config,
      :badge,
      :logs_config,
      :file_system_locations,
      :build_batch_config,
      :concurrent_build_limit,
      :project_visibility,
      :public_project_alias,
      :resource_access_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the build output artifacts for the build project.</p>
    #
    # @!attribute type
    #   <p>The type of build output artifact. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>CODEPIPELINE</code>: The build project has build output generated
    #                       through CodePipeline. </p>
    #                   <note>
    #                       <p>The <code>CODEPIPELINE</code> type is not supported for
    #                               <code>secondaryArtifacts</code>.</p>
    #                   </note>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NO_ARTIFACTS</code>: The build project does not produce any build
    #                       output.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>S3</code>: The build project stores build output in Amazon S3.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Information about the build output artifact location:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output locations
    #                       instead of CodeBuild.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output
    #                       bucket.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>Along with <code>namespaceType</code> and <code>name</code>, the pattern that CodeBuild
    #               uses to name and store the output artifact:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output names instead
    #                       of CodeBuild.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>S3</code>, this is the path to the output
    #                       artifact. If <code>path</code> is not specified, <code>path</code> is not
    #                       used.</p>
    #               </li>
    #            </ul>
    #           <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>,
    #                   <code>namespaceType</code> is set to <code>NONE</code>, and <code>name</code> is set
    #               to <code>MyArtifact.zip</code>, the output artifact is stored in the output bucket at
    #                   <code>MyArtifacts/MyArtifact.zip</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute namespace_type
    #   <p>Along with <code>path</code> and <code>name</code>, the pattern that CodeBuild uses to
    #               determine the name and location to store the output artifact:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output names instead
    #                       of CodeBuild.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>BUILD_ID</code>: Include the build ID in the location of the
    #                               build output artifact.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>NONE</code>: Do not include the build ID. This is the default if
    #                                   <code>namespaceType</code> is not specified.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #           <p>For example, if <code>path</code> is set to <code>MyArtifacts</code>,
    #                   <code>namespaceType</code> is set to <code>BUILD_ID</code>, and <code>name</code> is
    #               set to <code>MyArtifact.zip</code>, the output artifact is stored in
    #                   <code>MyArtifacts/<build-ID>/MyArtifact.zip</code>.</p>
    #
    #   Enum, one of: ["NONE", "BUILD_ID"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Along with <code>path</code> and <code>namespaceType</code>, the pattern that CodeBuild
    #               uses to name and store the output artifact:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output names instead
    #                       of CodeBuild.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>S3</code>, this is the name of the output
    #                       artifact object. If you set the name to be a forward slash ("/"), the artifact
    #                       is stored in the root of the output bucket.</p>
    #               </li>
    #            </ul>
    #           <p>For example:</p>
    #           <ul>
    #               <li>
    #                   <p> If <code>path</code> is set to <code>MyArtifacts</code>,
    #                           <code>namespaceType</code> is set to <code>BUILD_ID</code>, and
    #                           <code>name</code> is set to <code>MyArtifact.zip</code>, then the output
    #                       artifact is stored in <code>MyArtifacts/<build-ID>/MyArtifact.zip</code>. </p>
    #               </li>
    #               <li>
    #                   <p> If <code>path</code> is empty, <code>namespaceType</code> is set to
    #                           <code>NONE</code>, and <code>name</code> is set to "<code>/</code>", the
    #                       output artifact is stored in the root of the output bucket. </p>
    #               </li>
    #               <li>
    #                   <p> If <code>path</code> is set to <code>MyArtifacts</code>,
    #                           <code>namespaceType</code> is set to <code>BUILD_ID</code>, and
    #                           <code>name</code> is set to "<code>/</code>", the output artifact is stored
    #                       in <code>MyArtifacts/<build-ID></code>. </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute packaging
    #   <p>The type of build output artifact to create:</p>
    #           <ul>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>CODEPIPELINE</code>, CodePipeline ignores this
    #                       value if specified. This is because CodePipeline manages its build output artifacts
    #                       instead of CodeBuild.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>NO_ARTIFACTS</code>, this value is
    #                       ignored if specified, because no build output is produced.</p>
    #               </li>
    #               <li>
    #                   <p>If <code>type</code> is set to <code>S3</code>, valid values include:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>NONE</code>: CodeBuild creates in the output bucket a folder that
    #                               contains the build output. This is the default if <code>packaging</code>
    #                               is not specified.</p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>ZIP</code>: CodeBuild creates in the output bucket a ZIP file that
    #                               contains the build output.</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NONE", "ZIP"]
    #
    #   @return [String]
    #
    # @!attribute override_artifact_name
    #   <p> If this flag is set, a name specified in the buildspec file overrides the artifact
    #               name. The name specified in a buildspec file is calculated at build time and uses the
    #               Shell Command Language. For example, you can append a date and time to your artifact
    #               name so that it is always unique. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute encryption_disabled
    #   <p> Set to true if you do not want your output artifacts encrypted. This option is valid
    #               only if your artifacts type is Amazon S3. If this is set with another artifacts type, an
    #               invalidInputException is thrown. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute artifact_identifier
    #   <p> An identifier for this artifact definition. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_owner_access
    #   <p>Specifies the bucket owner's access for objects that another account uploads to their
    #               Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #               access to these objects. This property allows you to give the bucket owner access to
    #               these objects.</p>
    #           <note>
    #               <p>To use this property, your CodeBuild service role must have the
    #                       <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                   the access control list for the bucket.</p>
    #           </note>
    #           <p>This property can be one of the following values:</p>
    #            <dl>
    #               <dt>NONE</dt>
    #               <dd>
    #                   <p>The bucket owner does not have access to the objects. This is the
    #                           default.</p>
    #               </dd>
    #               <dt>READ_ONLY</dt>
    #               <dd>
    #                 <p>The bucket owner has read-only access to the objects. The uploading account
    #                           retains ownership of the objects.</p>
    #               </dd>
    #               <dt>FULL</dt>
    #               <dd>
    #                 <p>The bucket owner has full access to the objects. Object ownership is determined
    #                           by the following criteria:</p>
    #                       <ul>
    #                     <li>
    #                               <p>If the bucket is configured with the <b>Bucket
    #                                       owner preferred</b> setting, the bucket owner owns the
    #                                   objects. The uploading account will have object access as specified
    #                                   by the bucket's policy.</p>
    #                           </li>
    #                     <li>
    #                               <p>Otherwise, the uploading account retains ownership of the
    #                                   objects.</p>
    #                           </li>
    #                  </ul>
    #                       <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                               Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                           Guide</i>.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "READ_ONLY", "FULL"]
    #
    #   @return [String]
    #
    ProjectArtifacts = ::Struct.new(
      :type,
      :location,
      :path,
      :namespace_type,
      :name,
      :packaging,
      :override_artifact_name,
      :encryption_disabled,
      :artifact_identifier,
      :bucket_owner_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the build badge for the build project.</p>
    #
    # @!attribute badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #               badge.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute badge_request_url
    #   <p>The publicly-accessible URL through which you can access the build badge for your
    #               project. </p>
    #
    #   @return [String]
    #
    ProjectBadge = ::Struct.new(
      :badge_enabled,
      :badge_request_url,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.badge_enabled ||= false
      end

    end

    # <p>Contains configuration information about a batch build project.</p>
    #
    # @!attribute service_role
    #   <p>Specifies the service role ARN for the batch build project.</p>
    #
    #   @return [String]
    #
    # @!attribute combine_artifacts
    #   <p>Specifies if the build artifacts for the batch build should be combined into a single
    #               artifact location.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute restrictions
    #   <p>A <code>BatchRestrictions</code> object that specifies the restrictions for the batch
    #               build.</p>
    #
    #   @return [BatchRestrictions]
    #
    # @!attribute timeout_in_mins
    #   <p>Specifies the maximum amount of time, in minutes, that the batch build must be completed in.</p>
    #
    #   @return [Integer]
    #
    # @!attribute batch_report_mode
    #   <p>Specifies how build status reports are sent to the source provider for the batch build. This property is only used
    #                 when the source provider for your project is Bitbucket, GitHub, or GitHub Enterprise,
    #                 and your project is configured to report build statuses to the source provider.</p>
    #            <dl>
    #               <dt>REPORT_AGGREGATED_BATCH</dt>
    #               <dd>
    #                  <p>(Default) Aggregate all of the build statuses into a single status report.</p>
    #               </dd>
    #               <dt>REPORT_INDIVIDUAL_BUILDS</dt>
    #               <dd>
    #                  <p>Send a separate status report for each individual build.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #
    #   @return [String]
    #
    ProjectBuildBatchConfig = ::Struct.new(
      :service_role,
      :combine_artifacts,
      :restrictions,
      :timeout_in_mins,
      :batch_report_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the cache for the build project.</p>
    #
    # @!attribute type
    #   <p>The type of cache used by the build project. Valid values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>NO_CACHE</code>: The build project does not use any cache.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>S3</code>: The build project reads and writes from and to S3.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>LOCAL</code>: The build project stores a cache locally on a build host
    #                       that is only available to that build host.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["NO_CACHE", "S3", "LOCAL"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Information about the cache location: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>NO_CACHE</code> or <code>LOCAL</code>: This value is ignored.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>S3</code>: This is the S3 bucket name/prefix.</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute modes
    #   <p>An array of strings that specify the local cache modes. You can use one or more local
    #               cache modes at the same time. This is only used for <code>LOCAL</code> cache
    #               types.</p>
    #           <p>Possible values are:</p>
    #           <dl>
    #               <dt>LOCAL_SOURCE_CACHE</dt>
    #               <dd>
    #                       <p>Caches Git metadata for primary and secondary sources. After the cache is
    #                           created, subsequent builds pull only the change between commits. This mode
    #                           is a good choice for projects with a clean working directory and a source
    #                           that is a large Git repository. If you choose this option and your project
    #                           does not use a Git repository (GitHub, GitHub Enterprise, or Bitbucket), the
    #                           option is ignored. </p>
    #                   </dd>
    #               <dt>LOCAL_DOCKER_LAYER_CACHE</dt>
    #               <dd>
    #                       <p>Caches existing Docker layers. This mode is a good choice for projects
    #                           that build or pull large Docker images. It can prevent the performance
    #                           issues caused by pulling large Docker images down from the network. </p>
    #                       <note>
    #                           <ul>
    #                        <li>
    #                                   <p>You can use a Docker layer cache in the Linux environment
    #                                       only. </p>
    #                               </li>
    #                        <li>
    #                                   <p>The <code>privileged</code> flag must be set so that your
    #                                       project has the required Docker permissions. </p>
    #                               </li>
    #                        <li>
    #                                   <p>You should consider the security implications before you use a
    #                                       Docker layer cache. </p>
    #                               </li>
    #                     </ul>
    #                       </note>
    #                   </dd>
    #               <dt>LOCAL_CUSTOM_CACHE</dt>
    #               <dd>
    #                       <p>Caches directories you specify in the buildspec file. This mode is a good
    #                           choice if your build scenario is not suited to one of the other three local
    #                           cache modes. If you use a custom cache: </p>
    #                       <ul>
    #                     <li>
    #                               <p>Only directories can be specified for caching. You cannot specify
    #                                   individual files. </p>
    #                           </li>
    #                     <li>
    #                               <p>Symlinks are used to reference cached directories. </p>
    #                           </li>
    #                     <li>
    #                               <p>Cached directories are linked to your build before it downloads
    #                                   its project sources. Cached items are overridden if a source item
    #                                   has the same name. Directories are specified using cache paths in
    #                                   the buildspec file. </p>
    #                           </li>
    #                  </ul>
    #                   </dd>
    #            </dl>
    #
    #   @return [Array<String>]
    #
    ProjectCache = ::Struct.new(
      :type,
      :location,
      :modes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the build environment of the build project.</p>
    #
    # @!attribute type
    #   <p>The type of build environment to use for related builds.</p>
    #           <ul>
    #               <li>
    #                   <p>The environment type <code>ARM_CONTAINER</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), EU (Ireland),
    #                       Asia Pacific (Mumbai), Asia Pacific (Tokyo), Asia Pacific (Sydney), and
    #                       EU (Frankfurt).</p>
    #               </li>
    #               <li>
    #                   <p>The environment type <code>LINUX_CONTAINER</code> with compute type
    #                           <code>build.general1.2xlarge</code> is available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon),
    #                       Canada (Central), EU (Ireland), EU (London),
    #                       EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney), China (Beijing), and
    #                       China (Ningxia).</p>
    #               </li>
    #               <li>
    #                   <p>The environment type <code>LINUX_GPU_CONTAINER</code> is available only in
    #                       regions US East (N. Virginia), US East (Ohio), US West (Oregon),
    #                       Canada (Central), EU (Ireland), EU (London),
    #                       EU (Frankfurt), Asia Pacific (Tokyo), Asia Pacific (Seoul),
    #                       Asia Pacific (Singapore), Asia Pacific (Sydney) , China (Beijing), and
    #                       China (Ningxia).</p>
    #               </li>
    #            </ul>
    #           <ul>
    #               <li>
    #                   <p>The environment types <code>WINDOWS_CONTAINER</code> and
    #                           <code>WINDOWS_SERVER_2019_CONTAINER</code> are available only in regions
    #                       US East (N. Virginia), US East (Ohio), US West (Oregon), and
    #                       EU (Ireland).</p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build environment compute types</a> in the <i>CodeBuild
    #                   user guide</i>.</p>
    #
    #   Enum, one of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #
    #   @return [String]
    #
    # @!attribute image
    #   <p>The image tag or image digest that identifies the Docker image to use for this build
    #               project. Use the following formats:</p>
    #           <ul>
    #               <li>
    #                   <p>For an image tag: <code><registry>/<repository>:<tag></code>. For
    #                       example, in the Docker repository that CodeBuild uses to manage its Docker
    #                       images, this would be <code>aws/codebuild/standard:4.0</code>. </p>
    #               </li>
    #               <li>
    #                   <p>For an image digest: <code><registry>/<repository>@<digest></code>.
    #                       For example, to specify an image with the digest
    #                       "sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf," use
    #                           <code><registry>/<repository>@sha256:cbbf2f9a99b47fc460d422812b6a5adff7dfee951d8fa2e4a98caa0382cfbdbf</code>.</p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html">Docker images provided by CodeBuild</a> in the <i>CodeBuild user
    #                   guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute compute_type
    #   <p>Information about the compute resources the build project uses. Available values
    #               include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>BUILD_GENERAL1_SMALL</code>: Use up to 3 GB memory and 2 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BUILD_GENERAL1_MEDIUM</code>: Use up to 7 GB memory and 4 vCPUs for
    #                       builds.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BUILD_GENERAL1_LARGE</code>: Use up to 16 GB memory and 8 vCPUs for
    #                       builds, depending on your environment type.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>BUILD_GENERAL1_2XLARGE</code>: Use up to 145 GB memory, 72 vCPUs, and
    #                       824 GB of SSD storage for builds. This compute type supports Docker images up to
    #                       100 GB uncompressed.</p>
    #               </li>
    #            </ul>
    #           <p> If you use <code>BUILD_GENERAL1_LARGE</code>: </p>
    #           <ul>
    #               <li>
    #                   <p> For environment type <code>LINUX_CONTAINER</code>, you can use up to 15 GB
    #                       memory and 8 vCPUs for builds. </p>
    #               </li>
    #               <li>
    #                   <p> For environment type <code>LINUX_GPU_CONTAINER</code>, you can use up to 255
    #                       GB memory, 32 vCPUs, and 4 NVIDIA Tesla V100 GPUs for builds.</p>
    #               </li>
    #               <li>
    #                   <p> For environment type <code>ARM_CONTAINER</code>, you can use up to 16 GB
    #                       memory and 8 vCPUs on ARM-based processors for builds.</p>
    #               </li>
    #            </ul>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html">Build Environment
    #                   Compute Types</a> in the <i>CodeBuild User Guide.</i>
    #           </p>
    #
    #   Enum, one of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #
    #   @return [String]
    #
    # @!attribute environment_variables
    #   <p>A set of environment variables to make available to builds for this build
    #               project.</p>
    #
    #   @return [Array<EnvironmentVariable>]
    #
    # @!attribute privileged_mode
    #   <p>Enables running the Docker daemon inside a Docker container. Set to true only if the
    #               build project is used to build Docker images. Otherwise, a build that attempts to
    #               interact with the Docker daemon fails. The default setting is <code>false</code>.</p>
    #           <p>You can initialize the Docker daemon during the install phase of your build by adding
    #               one of the following sets of commands to the install phase of your buildspec
    #               file:</p>
    #           <p>If the operating system's base image is Ubuntu Linux:</p>
    #           <p>
    #               <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&</code>
    #           </p>
    #           <p>
    #               <code>- timeout 15 sh -c "until docker info; do echo .; sleep 1; done"</code>
    #           </p>
    #           <p>If the operating system's base image is Alpine Linux and the previous command does not
    #               work, add the <code>-t</code> argument to <code>timeout</code>:</p>
    #           <p>
    #               <code>- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock --host=tcp://0.0.0.0:2375 --storage-driver=overlay&</code>
    #            </p>
    #           <p>
    #               <code>- timeout -t 15 sh -c "until docker info; do echo .; sleep 1; done"</code>
    #           </p>
    #
    #   @return [Boolean]
    #
    # @!attribute certificate
    #   <p>The ARN of the Amazon S3 bucket, path prefix, and object key that contains the PEM-encoded
    #               certificate for the build project. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/create-project-cli.html cli.environment.certificate">certificate</a> in the
    #                   <i>CodeBuild User Guide</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute registry_credential
    #   <p> The credentials for access to a private registry.</p>
    #
    #   @return [RegistryCredential]
    #
    # @!attribute image_pull_credentials_type
    #   <p> The type of credentials CodeBuild uses to pull images in your build. There are two valid
    #               values: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>CODEBUILD</code> specifies that CodeBuild uses its own credentials.
    #                       This requires that you modify your ECR repository policy to trust CodeBuild service principal. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>SERVICE_ROLE</code> specifies that CodeBuild uses your build project's service
    #                       role. </p>
    #               </li>
    #            </ul>
    #           <p> When you use a cross-account or private registry image, you must use SERVICE_ROLE
    #               credentials. When you use an CodeBuild curated image, you must use CODEBUILD credentials.
    #           </p>
    #
    #   Enum, one of: ["CODEBUILD", "SERVICE_ROLE"]
    #
    #   @return [String]
    #
    ProjectEnvironment = ::Struct.new(
      :type,
      :image,
      :compute_type,
      :environment_variables,
      :privileged_mode,
      :certificate,
      :registry_credential,
      :image_pull_credentials_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a file system created by Amazon Elastic File System (EFS). For more
    #             information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/whatisefs.html">What Is
    #                 Amazon Elastic File System?</a>
    #         </p>
    #
    # @!attribute type
    #   <p> The type of the file system. The one supported type is <code>EFS</code>. </p>
    #
    #   Enum, one of: ["EFS"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>A string that specifies the location of the file system created by Amazon EFS. Its
    #               format is <code>efs-dns-name:/directory-path</code>. You can find the DNS name of file
    #               system when you view it in the Amazon EFS console. The directory path is a path to a
    #               directory in the file system that CodeBuild mounts. For example, if the DNS name of a
    #               file system is <code>fs-abcd1234.efs.us-west-2.amazonaws.com</code>, and its mount
    #               directory is <code>my-efs-mount-directory</code>, then the <code>location</code> is
    #                   <code>fs-abcd1234.efs.us-west-2.amazonaws.com:/my-efs-mount-directory</code>. </p>
    #           <p>The directory path in the format <code>efs-dns-name:/directory-path</code> is
    #               optional. If you do not specify a directory path, the location is only the DNS name and
    #               CodeBuild mounts the entire file system. </p>
    #
    #   @return [String]
    #
    # @!attribute mount_point
    #   <p>The location in the container where you mount the file system. </p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The name used to access a file system created by Amazon EFS. CodeBuild creates an
    #               environment variable by appending the <code>identifier</code> in all capital letters to
    #                   <code>CODEBUILD_</code>. For example, if you specify <code>my_efs</code> for
    #                   <code>identifier</code>, a new environment variable is create named
    #                   <code>CODEBUILD_MY_EFS</code>. </p>
    #           <p> The <code>identifier</code> is used to mount your file system. </p>
    #
    #   @return [String]
    #
    # @!attribute mount_options
    #   <p> The mount options for a file system created by Amazon EFS. The default mount options
    #               used by CodeBuild are
    #                   <code>nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2</code>. For
    #               more information, see <a href="https://docs.aws.amazon.com/efs/latest/ug/mounting-fs-nfs-mount-settings.html">Recommended NFS Mount
    #                   Options</a>. </p>
    #
    #   @return [String]
    #
    ProjectFileSystemLocation = ::Struct.new(
      :type,
      :location,
      :mount_point,
      :identifier,
      :mount_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProjectSortByType
    #
    module ProjectSortByType
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      CREATED_TIME = "CREATED_TIME"

      # No documentation available.
      #
      LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME"
    end

    # <p>Information about the build input source code for the build project.</p>
    #
    # @!attribute type
    #   <p>The type of repository that contains the source code to be built. Valid values
    #               include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>BITBUCKET</code>: The source code is in a Bitbucket repository.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CODECOMMIT</code>: The source code is in an CodeCommit repository.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>CODEPIPELINE</code>: The source code settings are specified in the
    #                       source action of a pipeline in CodePipeline.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>GITHUB</code>: The source code is in a GitHub or GitHub Enterprise Cloud
    #                       repository.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>GITHUB_ENTERPRISE</code>: The source code is in a GitHub Enterprise
    #                       Server repository.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NO_SOURCE</code>: The project does not have input source code.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>S3</code>: The source code is in an Amazon S3 bucket.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Information about the location of the source code to be built. Valid values
    #               include:</p>
    #           <ul>
    #               <li>
    #                   <p>For source code settings that are specified in the source action of a pipeline
    #                       in CodePipeline, <code>location</code> should not be specified. If it is specified,
    #                       CodePipeline ignores it. This is because CodePipeline uses the settings in a pipeline's source
    #                       action instead of this value.</p>
    #               </li>
    #               <li>
    #                   <p>For source code in an CodeCommit repository, the HTTPS clone URL to the repository
    #                       that contains the source code and the buildspec file (for example,
    #                           <code>https://git-codecommit.<region-ID>.amazonaws.com/v1/repos/<repo-name></code>).</p>
    #               </li>
    #               <li>
    #                   <p>For source code in an Amazon S3 input bucket, one of the following. </p>
    #                   <ul>
    #                     <li>
    #                           <p>The path to the ZIP file that contains the source code (for example,
    #                                   <code><bucket-name>/<path>/<object-name>.zip</code>). </p>
    #                       </li>
    #                     <li>
    #                           <p>The path to the folder that contains the source code (for example,
    #                                   <code><bucket-name>/<path-to-source-code>/<folder>/</code>). </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                   <p>For source code in a GitHub repository, the HTTPS clone URL to the repository
    #                       that contains the source and the buildspec file. You must connect your Amazon Web Services account
    #                       to your GitHub account. Use the CodeBuild console to start creating a build
    #                       project. When you use the console to connect (or reconnect) with GitHub, on the
    #                       GitHub <b>Authorize application</b> page, for
    #                           <b>Organization access</b>, choose <b>Request access</b> next to each repository you want to
    #                       allow CodeBuild to have access to, and then choose <b>Authorize
    #                           application</b>. (After you have connected to your GitHub account,
    #                       you do not need to finish creating the build project. You can leave the CodeBuild
    #                       console.) To instruct CodeBuild to use this connection, in the <code>source</code>
    #                       object, set the <code>auth</code> object's <code>type</code> value to
    #                           <code>OAUTH</code>.</p>
    #               </li>
    #               <li>
    #                   <p>For source code in a Bitbucket repository, the HTTPS clone URL to the
    #                       repository that contains the source and the buildspec file. You must connect
    #                       your Amazon Web Services account to your Bitbucket account. Use the CodeBuild console to start
    #                       creating a build project. When you use the console to connect (or reconnect)
    #                       with Bitbucket, on the Bitbucket <b>Confirm access to your
    #                           account</b> page, choose <b>Grant
    #                           access</b>. (After you have connected to your Bitbucket account, you
    #                       do not need to finish creating the build project. You can leave the CodeBuild
    #                       console.) To instruct CodeBuild to use this connection, in the <code>source</code>
    #                       object, set the <code>auth</code> object's <code>type</code> value to
    #                           <code>OAUTH</code>.</p>
    #               </li>
    #            </ul>
    #           <p>
    #             If you specify <code>CODEPIPELINE</code> for the <code>Type</code> property, don't specify this
    #             property. For all of the other types, you must specify <code>Location</code>.
    #          </p>
    #
    #   @return [String]
    #
    # @!attribute git_clone_depth
    #   <p>Information about the Git clone depth for the build project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute git_submodules_config
    #   <p> Information about the Git submodules configuration for the build project. </p>
    #
    #   @return [GitSubmodulesConfig]
    #
    # @!attribute buildspec
    #   <p>The buildspec file declaration to use for the builds in this build project.</p>
    #           <p> If this value is set, it can be either an inline buildspec definition, the path to an
    #               alternate buildspec file relative to the value of the built-in
    #                   <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #               The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #               file using its ARN (for example,
    #                   <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #               provided or is set to an empty string, the source code must contain a buildspec file in
    #               its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute auth
    #   <p>Information about the authorization settings for CodeBuild to access the source code to be
    #               built.</p>
    #           <p>This information is for the CodeBuild console's use only. Your code should not get or set
    #               this information directly.</p>
    #
    #   @return [SourceAuth]
    #
    # @!attribute report_build_status
    #   <p> Set to true to report the status of a build's start and finish to your source
    #               provider. This option is valid only when your source provider is GitHub, GitHub
    #               Enterprise, or Bitbucket. If this is set and you use a different source provider, an
    #               <code>invalidInputException</code> is thrown. </p>
    #               <p>To be able to report the build status to the source provider, the user associated with the source provider must
    #   have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html">Source provider access</a> in the <i>CodeBuild User Guide</i>.</p>
    #               <p>The status of a build triggered by a webhook is always reported to your source
    #                   provider. </p>
    #               <p>If your project's builds are triggered by a webhook, you must push a
    #                 new commit to the repo for a change to this property to take
    #                 effect.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute build_status_config
    #   <p>Contains information that defines how the build project reports the build status to
    #               the source provider. This option is only used when the source provider is
    #                   <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
    #               <code>BITBUCKET</code>.</p>
    #
    #   @return [BuildStatusConfig]
    #
    # @!attribute insecure_ssl
    #   <p>Enable this flag to ignore SSL warnings while connecting to the project source
    #             code.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source_identifier
    #   <p>An identifier for this project source. The identifier can only contain
    #             alphanumeric characters and underscores, and must be less than 128 characters in length. </p>
    #
    #   @return [String]
    #
    ProjectSource = ::Struct.new(
      :type,
      :location,
      :git_clone_depth,
      :git_submodules_config,
      :buildspec,
      :auth,
      :report_build_status,
      :build_status_config,
      :insecure_ssl,
      :source_identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> A source identifier and its corresponding version. </p>
    #
    # @!attribute source_identifier
    #   <p>An identifier for a source in the build project. The identifier can only contain
    #               alphanumeric characters and underscores, and must be less than 128 characters in length. </p>
    #
    #   @return [String]
    #
    # @!attribute source_version
    #   <p>The source version for the corresponding source identifier. If specified, must be one
    #             of:</p>
    #            <ul>
    #               <li>
    #                 <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                 <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #                     corresponds to the version of the source code you want to build. If a pull
    #                     request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #                     (for example, <code>pr/25</code>). If a branch name is specified, the branch's
    #                     HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #                     used.</p>
    #               </li>
    #               <li>
    #                 <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #                     version of the source code you want to build. If a branch name is specified, the
    #                     branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                     commit ID is used.</p>
    #               </li>
    #               <li>
    #                 <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #                     file to use.</p>
    #               </li>
    #            </ul>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                 with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #
    #   @return [String]
    #
    ProjectSourceVersion = ::Struct.new(
      :source_identifier,
      :source_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ProjectVisibilityType
    #
    module ProjectVisibilityType
      # No documentation available.
      #
      PUBLIC_READ = "PUBLIC_READ"

      # No documentation available.
      #
      PRIVATE = "PRIVATE"
    end

    # @!attribute policy
    #   <p> A JSON-formatted resource policy. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html project-sharing-share">Sharing
    #                   a Project</a> and <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html report-groups-sharing-share">Sharing a Report Group</a> in the <i>CodeBuild User Guide</i>.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource you want to
    #               associate with a resource policy. </p>
    #
    #   @return [String]
    #
    PutResourcePolicyInput = ::Struct.new(
      :policy,
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource that is
    #               associated with a resource policy. </p>
    #
    #   @return [String]
    #
    PutResourcePolicyOutput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about credentials that provide access to a private Docker registry. When
    #             this is set: </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                     <code>imagePullCredentialsType</code> must be set to <code>SERVICE_ROLE</code>.
    #                 </p>
    #             </li>
    #             <li>
    #                 <p> images cannot be curated or an Amazon ECR image.</p>
    #             </li>
    #          </ul>
    #         <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-private-registry.html">Private Registry with
    #                 Secrets Manager Sample for CodeBuild</a>. </p>
    #
    # @!attribute credential
    #   <p> The Amazon Resource Name (ARN) or name of credentials created using Secrets Manager. </p>
    #           <note>
    #               <p> The <code>credential</code> can use the name of the credentials only if they
    #                   exist in your current Amazon Web Services Region. </p>
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute credential_provider
    #   <p> The service that created the credentials to access a private Docker registry. The
    #               valid value, SECRETS_MANAGER, is for Secrets Manager. </p>
    #
    #   Enum, one of: ["SECRETS_MANAGER"]
    #
    #   @return [String]
    #
    RegistryCredential = ::Struct.new(
      :credential,
      :credential_provider,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the results from running a series of test cases during the run of a
    #             build project. The test cases are specified in the buildspec for the build project using
    #             one or more paths to the test case files. You can specify any type of tests you want,
    #             such as unit tests, integration tests, and functional tests. </p>
    #
    # @!attribute arn
    #   <p> The ARN of the report run. </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the report that was run.</p>
    #            <dl>
    #               <dt>CODE_COVERAGE</dt>
    #               <dd>
    #                  <p>A code coverage report.</p>
    #               </dd>
    #               <dt>TEST</dt>
    #               <dd>
    #                  <p>A test report.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["TEST", "CODE_COVERAGE"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the report that was run. </p>
    #
    #   @return [String]
    #
    # @!attribute report_group_arn
    #   <p> The ARN of the report group associated with this report. </p>
    #
    #   @return [String]
    #
    # @!attribute execution_id
    #   <p> The ARN of the build run that generated this report. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status of this report. </p>
    #
    #   Enum, one of: ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #
    #   @return [String]
    #
    # @!attribute created
    #   <p> The date and time this report run occurred. </p>
    #
    #   @return [Time]
    #
    # @!attribute expired
    #   <p> The date and time a report expires. A report expires 30 days after it is created. An
    #         expired report is not available to view in CodeBuild. </p>
    #
    #   @return [Time]
    #
    # @!attribute export_config
    #   <p> Information about where the raw data used to generate this report was exported.
    #       </p>
    #
    #   @return [ReportExportConfig]
    #
    # @!attribute truncated
    #   <p> A boolean that specifies if this report run is truncated. The list of test cases is
    #         truncated after the maximum number of test cases is reached. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute test_summary
    #   <p> A <code>TestReportSummary</code> object that contains information about this test
    #         report. </p>
    #
    #   @return [TestReportSummary]
    #
    # @!attribute code_coverage_summary
    #   <p>A <code>CodeCoverageReportSummary</code> object that contains a code coverage summary for
    #               this report.</p>
    #
    #   @return [CodeCoverageReportSummary]
    #
    Report = ::Struct.new(
      :arn,
      :type,
      :name,
      :report_group_arn,
      :execution_id,
      :status,
      :created,
      :expired,
      :export_config,
      :truncated,
      :test_summary,
      :code_coverage_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportCodeCoverageSortByType
    #
    module ReportCodeCoverageSortByType
      # No documentation available.
      #
      LINE_COVERAGE_PERCENTAGE = "LINE_COVERAGE_PERCENTAGE"

      # No documentation available.
      #
      FILE_PATH = "FILE_PATH"
    end

    # <p> Information about the location where the run of a report is exported. </p>
    #
    # @!attribute export_config_type
    #   <p> The export configuration type. Valid values are: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>S3</code>: The report results are exported to an S3 bucket. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>NO_EXPORT</code>: The report results are not exported. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["S3", "NO_EXPORT"]
    #
    #   @return [String]
    #
    # @!attribute s3_destination
    #   <p> A <code>S3ReportExportConfig</code> object that contains information about the S3
    #               bucket where the run of a report is exported. </p>
    #
    #   @return [S3ReportExportConfig]
    #
    ReportExportConfig = ::Struct.new(
      :export_config_type,
      :s3_destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportExportConfigType
    #
    module ReportExportConfigType
      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      NO_EXPORT = "NO_EXPORT"
    end

    # <p> A filter used to return reports with the status specified by the input
    #                 <code>status</code> parameter. </p>
    #
    # @!attribute status
    #   <p> The status used to filter reports. You can filter using one status only. </p>
    #
    #   Enum, one of: ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #
    #   @return [String]
    #
    ReportFilter = ::Struct.new(
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A series of reports. Each report contains information about the results from running a
    #             series of test cases. You specify the test cases for a report group in the buildspec for
    #             a build project using one or more paths to the test case files. </p>
    #
    # @!attribute arn
    #   <p>The ARN of the <code>ReportGroup</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the <code>ReportGroup</code>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the <code>ReportGroup</code>. This can be one of the following
    #               values:</p>
    #            <dl>
    #               <dt>CODE_COVERAGE</dt>
    #               <dd>
    #                  <p>The report group contains code coverage reports.</p>
    #               </dd>
    #               <dt>TEST</dt>
    #               <dd>
    #                  <p>The report group contains test reports.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["TEST", "CODE_COVERAGE"]
    #
    #   @return [String]
    #
    # @!attribute export_config
    #   <p>Information about the destination where the raw data of this <code>ReportGroup</code>
    #               is exported. </p>
    #
    #   @return [ReportExportConfig]
    #
    # @!attribute created
    #   <p>The date and time this <code>ReportGroup</code> was created. </p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified
    #   <p>The date and time this <code>ReportGroup</code> was last modified. </p>
    #
    #   @return [Time]
    #
    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with this report group. </p>
    #           <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute status
    #   <p>The status of the report group. This property is read-only.</p>
    #            <p>This can be one of the following values:</p>
    #            <dl>
    #               <dt>ACTIVE</dt>
    #               <dd>
    #                  <p>The report group is active.</p>
    #               </dd>
    #               <dt>DELETING</dt>
    #               <dd>
    #                  <p>The report group is in the process of being deleted.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["ACTIVE", "DELETING"]
    #
    #   @return [String]
    #
    ReportGroup = ::Struct.new(
      :arn,
      :name,
      :type,
      :export_config,
      :created,
      :last_modified,
      :tags,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportGroupSortByType
    #
    module ReportGroupSortByType
      # No documentation available.
      #
      NAME = "NAME"

      # No documentation available.
      #
      CREATED_TIME = "CREATED_TIME"

      # No documentation available.
      #
      LAST_MODIFIED_TIME = "LAST_MODIFIED_TIME"
    end

    # Includes enum constants for ReportGroupStatusType
    #
    module ReportGroupStatusType
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for ReportGroupTrendFieldType
    #
    module ReportGroupTrendFieldType
      # No documentation available.
      #
      PASS_RATE = "PASS_RATE"

      # No documentation available.
      #
      DURATION = "DURATION"

      # No documentation available.
      #
      TOTAL = "TOTAL"

      # No documentation available.
      #
      LINE_COVERAGE = "LINE_COVERAGE"

      # No documentation available.
      #
      LINES_COVERED = "LINES_COVERED"

      # No documentation available.
      #
      LINES_MISSED = "LINES_MISSED"

      # No documentation available.
      #
      BRANCH_COVERAGE = "BRANCH_COVERAGE"

      # No documentation available.
      #
      BRANCHES_COVERED = "BRANCHES_COVERED"

      # No documentation available.
      #
      BRANCHES_MISSED = "BRANCHES_MISSED"
    end

    # <p>Contains trend statistics for a set of reports. The actual values depend on the type of
    #             trend being collected. For more information, see .</p>
    #
    # @!attribute average
    #   <p>Contains the average of all values analyzed.</p>
    #
    #   @return [String]
    #
    # @!attribute max
    #   <p>Contains the maximum value analyzed.</p>
    #
    #   @return [String]
    #
    # @!attribute min
    #   <p>Contains the minimum value analyzed.</p>
    #
    #   @return [String]
    #
    ReportGroupTrendStats = ::Struct.new(
      :average,
      :max,
      :min,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReportPackagingType
    #
    module ReportPackagingType
      # No documentation available.
      #
      ZIP = "ZIP"

      # No documentation available.
      #
      NONE = "NONE"
    end

    # Includes enum constants for ReportStatusType
    #
    module ReportStatusType
      # No documentation available.
      #
      GENERATING = "GENERATING"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      INCOMPLETE = "INCOMPLETE"

      # No documentation available.
      #
      DELETING = "DELETING"
    end

    # Includes enum constants for ReportType
    #
    module ReportType
      # No documentation available.
      #
      TEST = "TEST"

      # No documentation available.
      #
      CODE_COVERAGE = "CODE_COVERAGE"
    end

    # <p>Contains the unmodified data for the report. For more information, see .</p>
    #
    # @!attribute report_arn
    #   <p>The ARN of the report.</p>
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>The value of the requested data field from the report.</p>
    #
    #   @return [String]
    #
    ReportWithRawData = ::Struct.new(
      :report_arn,
      :data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents a resolved build artifact. A resolved artifact is an artifact that is built and
    #             deployed to the destination, such as Amazon S3.</p>
    #
    # @!attribute type
    #   <p>Specifies the type of artifact.</p>
    #
    #   Enum, one of: ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the artifact.</p>
    #
    #   @return [String]
    #
    # @!attribute identifier
    #   <p>The identifier of the artifact.</p>
    #
    #   @return [String]
    #
    ResolvedArtifact = ::Struct.new(
      :type,
      :location,
      :identifier,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon Web Services resource cannot be created, because an Amazon Web Services resource with the same
    #             settings already exists.</p>
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

    # <p>The specified Amazon Web Services resource cannot be found.</p>
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

    # @!attribute id
    #   <p>Specifies the identifier of the batch build to restart.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>RetryBuildBatch</code> request. The token is included in the
    #                   <code>RetryBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>RetryBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    #
    #   @return [String]
    #
    # @!attribute retry_type
    #   <p>Specifies the type of retry to perform.</p>
    #
    #   Enum, one of: ["RETRY_ALL_BUILDS", "RETRY_FAILED_BUILDS"]
    #
    #   @return [String]
    #
    RetryBuildBatchInput = ::Struct.new(
      :id,
      :idempotency_token,
      :retry_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build_batch
    #   <p>Contains information about a batch build.</p>
    #
    #   @return [BuildBatch]
    #
    RetryBuildBatchOutput = ::Struct.new(
      :build_batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RetryBuildBatchType
    #
    module RetryBuildBatchType
      # No documentation available.
      #
      RETRY_ALL_BUILDS = "RETRY_ALL_BUILDS"

      # No documentation available.
      #
      RETRY_FAILED_BUILDS = "RETRY_FAILED_BUILDS"
    end

    # @!attribute id
    #   <p>Specifies the identifier of the build to restart.</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #         <code>RetryBuild</code> request. The token is included in the
    #         <code>RetryBuild</code> request and is valid for five minutes. If you repeat
    #         the <code>RetryBuild</code> request with the same token, but change a parameter,
    #         CodeBuild returns a parameter mismatch error.</p>
    #
    #   @return [String]
    #
    RetryBuildInput = ::Struct.new(
      :id,
      :idempotency_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build
    #   <p>Information about a build.</p>
    #
    #   @return [Build]
    #
    RetryBuildOutput = ::Struct.new(
      :build,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about S3 logs for a build project. </p>
    #
    # @!attribute status
    #   <p>The current status of the S3 build logs. Valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ENABLED</code>: S3 build logs are enabled for this build project.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>DISABLED</code>: S3 build logs are not enabled for this build
    #                       project.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ENABLED", "DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p> The ARN of an S3 bucket and the path prefix for S3 logs. If your Amazon S3 bucket
    #               name is <code>my-bucket</code>, and your path prefix is <code>build-log</code>, then
    #               acceptable formats are <code>my-bucket/build-log</code> or
    #                   <code>arn:aws:s3:::my-bucket/build-log</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute encryption_disabled
    #   <p> Set to true if you do not want your S3 build log output encrypted. By default S3
    #               build logs are encrypted. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute bucket_owner_access
    #   <p>Specifies the bucket owner's access for objects that another account uploads to their
    #               Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has
    #               access to these objects. This property allows you to give the bucket owner access to
    #               these objects.</p>
    #           <note>
    #               <p>To use this property, your CodeBuild service role must have the
    #                       <code>s3:PutBucketAcl</code> permission. This permission allows CodeBuild to modify
    #                   the access control list for the bucket.</p>
    #           </note>
    #           <p>This property can be one of the following values:</p>
    #            <dl>
    #               <dt>NONE</dt>
    #               <dd>
    #                   <p>The bucket owner does not have access to the objects. This is the
    #                           default.</p>
    #               </dd>
    #               <dt>READ_ONLY</dt>
    #               <dd>
    #                 <p>The bucket owner has read-only access to the objects. The uploading account
    #                           retains ownership of the objects.</p>
    #               </dd>
    #               <dt>FULL</dt>
    #               <dd>
    #                 <p>The bucket owner has full access to the objects. Object ownership is determined
    #                           by the following criteria:</p>
    #                       <ul>
    #                     <li>
    #                               <p>If the bucket is configured with the <b>Bucket
    #                                       owner preferred</b> setting, the bucket owner owns the
    #                                   objects. The uploading account will have object access as specified
    #                                   by the bucket's policy.</p>
    #                           </li>
    #                     <li>
    #                               <p>Otherwise, the uploading account retains ownership of the
    #                                   objects.</p>
    #                           </li>
    #                  </ul>
    #                       <p>For more information about Amazon S3 object ownership, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html">Controlling ownership of uploaded objects using S3
    #                               Object Ownership</a> in the <i>Amazon Simple Storage Service User
    #                           Guide</i>.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["NONE", "READ_ONLY", "FULL"]
    #
    #   @return [String]
    #
    S3LogsConfig = ::Struct.new(
      :status,
      :location,
      :encryption_disabled,
      :bucket_owner_access,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about the S3 bucket where the raw data of a report are exported. </p>
    #
    # @!attribute bucket
    #   <p> The name of the S3 bucket where the raw data of a report are exported. </p>
    #
    #   @return [String]
    #
    # @!attribute bucket_owner
    #   <p>The Amazon Web Services account identifier of the owner of the Amazon S3 bucket. This allows report data to be exported to an Amazon S3 bucket
    #           that is owned by an account other than the account running the build.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p> The path to the exported report's raw data results. </p>
    #
    #   @return [String]
    #
    # @!attribute packaging
    #   <p> The type of build output artifact to create. Valid values include: </p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <code>NONE</code>: CodeBuild creates the raw data in the output bucket. This
    #                       is the default if packaging is not specified. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <code>ZIP</code>: CodeBuild creates a ZIP file with the raw data in the
    #                       output bucket. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ZIP", "NONE"]
    #
    #   @return [String]
    #
    # @!attribute encryption_key
    #   <p> The encryption key for the report's encrypted raw data. </p>
    #
    #   @return [String]
    #
    # @!attribute encryption_disabled
    #   <p> A boolean value that specifies if the results of a report are encrypted. </p>
    #
    #   @return [Boolean]
    #
    S3ReportExportConfig = ::Struct.new(
      :bucket,
      :bucket_owner,
      :path,
      :packaging,
      :encryption_key,
      :encryption_disabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ServerType
    #
    module ServerType
      # No documentation available.
      #
      GITHUB = "GITHUB"

      # No documentation available.
      #
      BITBUCKET = "BITBUCKET"

      # No documentation available.
      #
      GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE"
    end

    # Includes enum constants for SharedResourceSortByType
    #
    module SharedResourceSortByType
      # No documentation available.
      #
      ARN = "ARN"

      # No documentation available.
      #
      MODIFIED_TIME = "MODIFIED_TIME"
    end

    # Includes enum constants for SortOrderType
    #
    module SortOrderType
      # No documentation available.
      #
      ASCENDING = "ASCENDING"

      # No documentation available.
      #
      DESCENDING = "DESCENDING"
    end

    # <p>Information about the authorization settings for CodeBuild to access the source code to be
    #             built.</p>
    #         <p>This information is for the CodeBuild console's use only. Your code should not get or set
    #             this information directly.</p>
    #
    # @!attribute type
    #   <note>
    #               <p> This data type is deprecated and is no longer accurate or used. </p>
    #           </note>
    #           <p>The authorization type to use. The only valid value is <code>OAUTH</code>, which
    #               represents the OAuth authorization type.</p>
    #
    #   Enum, one of: ["OAUTH"]
    #
    #   @return [String]
    #
    # @!attribute resource
    #   <p>The resource value that applies to the specified authorization type.</p>
    #
    #   @return [String]
    #
    SourceAuth = ::Struct.new(
      :type,
      :resource,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceAuthType
    #
    module SourceAuthType
      # No documentation available.
      #
      OAUTH = "OAUTH"
    end

    # <p> Information about the credentials for a GitHub, GitHub Enterprise, or Bitbucket
    #             repository. </p>
    #
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the token. </p>
    #
    #   @return [String]
    #
    # @!attribute server_type
    #   <p> The type of source provider. The valid options are GITHUB, GITHUB_ENTERPRISE, or
    #               BITBUCKET. </p>
    #
    #   Enum, one of: ["GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE"]
    #
    #   @return [String]
    #
    # @!attribute auth_type
    #   <p> The type of authentication used by the credentials. Valid options are OAUTH,
    #               BASIC_AUTH, or PERSONAL_ACCESS_TOKEN. </p>
    #
    #   Enum, one of: ["OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN"]
    #
    #   @return [String]
    #
    SourceCredentialsInfo = ::Struct.new(
      :arn,
      :server_type,
      :auth_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SourceType
    #
    module SourceType
      # No documentation available.
      #
      CODECOMMIT = "CODECOMMIT"

      # No documentation available.
      #
      CODEPIPELINE = "CODEPIPELINE"

      # No documentation available.
      #
      GITHUB = "GITHUB"

      # No documentation available.
      #
      S3 = "S3"

      # No documentation available.
      #
      BITBUCKET = "BITBUCKET"

      # No documentation available.
      #
      GITHUB_ENTERPRISE = "GITHUB_ENTERPRISE"

      # No documentation available.
      #
      NO_SOURCE = "NO_SOURCE"
    end

    # @!attribute project_name
    #   <p>The name of the project.</p>
    #
    #   @return [String]
    #
    # @!attribute secondary_sources_override
    #   <p>An array of <code>ProjectSource</code> objects that override the secondary sources
    #           defined in the batch build project.</p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute secondary_sources_version_override
    #   <p>An array of <code>ProjectSourceVersion</code> objects that override the secondary source
    #               versions in the batch build project.</p>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute source_version
    #   <p>The version of the batch build input to be built, for this build only. If not specified,
    #               the latest version is used. If specified, the contents depends on the source
    #               provider:</p>
    #           <dl>
    #               <dt>CodeCommit</dt>
    #               <dd>
    #                       <p>The commit ID, branch, or Git tag to use.</p>
    #                   </dd>
    #               <dt>GitHub</dt>
    #               <dd>
    #                       <p>The commit ID, pull request ID, branch name, or tag name that corresponds
    #                           to the version of the source code you want to build. If a pull request ID is
    #                           specified, it must use the format <code>pr/pull-request-ID</code> (for
    #                           example <code>pr/25</code>). If a branch name is specified, the branch's
    #                           HEAD commit ID is used. If not specified, the default branch's HEAD commit
    #                           ID is used.</p>
    #                   </dd>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                       <p>The commit ID, branch name, or tag name that corresponds to the version of
    #                           the source code you want to build. If a branch name is specified, the
    #                           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                           commit ID is used.</p>
    #                   </dd>
    #               <dt>Amazon S3</dt>
    #               <dd>
    #                       <p>The version ID of the object that represents the build input ZIP file to
    #                           use.</p>
    #                   </dd>
    #            </dl>
    #            <p>If <code>sourceVersion</code> is specified at the project level, then this
    #                   <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #                   with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that contains information about the
    #               build output artifact overrides for the build project.</p>
    #
    #   @return [ProjectArtifacts]
    #
    # @!attribute secondary_artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that override the secondary artifacts
    #               defined in the batch build project.</p>
    #
    #   @return [Array<ProjectArtifacts>]
    #
    # @!attribute environment_variables_override
    #   <p>An array of <code>EnvironmentVariable</code> objects that override, or add to, the
    #               environment variables defined in the batch build project.</p>
    #
    #   @return [Array<EnvironmentVariable>]
    #
    # @!attribute source_type_override
    #   <p>The source input type that overrides the source input defined in the batch
    #           build project.</p>
    #
    #   Enum, one of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute source_location_override
    #   <p>A location that overrides, for this batch build, the source location defined in
    #           the batch build project.</p>
    #
    #   @return [String]
    #
    # @!attribute source_auth_override
    #   <p>A <code>SourceAuth</code> object that overrides the one defined in the batch build
    #               project. This override applies only if the build project's source is BitBucket or
    #               GitHub.</p>
    #
    #   @return [SourceAuth]
    #
    # @!attribute git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #           batch build only, any previous depth of history defined in the batch build project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute git_submodules_config_override
    #   <p>A <code>GitSubmodulesConfig</code> object that overrides the Git submodules configuration
    #               for this batch build.</p>
    #
    #   @return [GitSubmodulesConfig]
    #
    # @!attribute buildspec_override
    #   <p>A buildspec file declaration that overrides, for this build only, the latest one
    #           already defined in the build project.</p>
    #            <p>If this value is set, it can be either an inline buildspec definition, the path to an
    #           alternate buildspec file relative to the value of the built-in
    #           <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #           The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #           file using its ARN (for example,
    #           <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #           provided or is set to an empty string, the source code must contain a buildspec file in
    #           its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the batch build
    #           project. The insecure SSL setting determines whether to ignore SSL warnings while
    #           connecting to the project source code. This override applies only if the build's source
    #           is GitHub Enterprise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute report_build_batch_status_override
    #   <p>Set to <code>true</code> to report to your source provider the status of a batch build's
    #               start and completion. If you use this option with a source provider other than GitHub,
    #               GitHub Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #            <note>
    #               <p>The status of a build triggered by a webhook is always reported to your source
    #             provider. </p>
    #            </note>
    #
    #   @return [Boolean]
    #
    # @!attribute environment_type_override
    #   <p>A container type for this batch build that overrides the one specified in the batch build
    #           project.</p>
    #
    #   Enum, one of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #
    #   @return [String]
    #
    # @!attribute image_override
    #   <p>The name of an image for this batch build that overrides the one specified in the batch
    #               build project.</p>
    #
    #   @return [String]
    #
    # @!attribute compute_type_override
    #   <p>The name of a compute type for this batch build that overrides the one specified in the
    #           batch build project.</p>
    #
    #   Enum, one of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #
    #   @return [String]
    #
    # @!attribute certificate_override
    #   <p>The name of a certificate for this batch build that overrides the one specified in the batch build
    #           project.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_override
    #   <p>A <code>ProjectCache</code> object that specifies cache overrides.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute service_role_override
    #   <p>The name of a service role for this batch build that overrides the one specified in the
    #           batch build project.</p>
    #
    #   @return [String]
    #
    # @!attribute privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the batch build project.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute build_timeout_in_minutes_override
    #   <p>Overrides the build timeout specified in the batch build project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes_override
    #   <p>The number of minutes a batch build is allowed to be queued before it times out.</p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the batch build
    #           project. The CMK key encrypts the build output artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #             service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>StartBuildBatch</code> request. The token is included in the
    #                   <code>StartBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>StartBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    #
    #   @return [String]
    #
    # @!attribute logs_config_override
    #   <p>A <code>LogsConfig</code> object that override the log settings defined in the batch build
    #               project.</p>
    #
    #   @return [LogsConfig]
    #
    # @!attribute registry_credential_override
    #   <p>A <code>RegistryCredential</code> object that overrides credentials for access to a
    #               private registry.</p>
    #
    #   @return [RegistryCredential]
    #
    # @!attribute image_pull_credentials_type_override
    #   <p>The type of credentials CodeBuild uses to pull images in your batch build. There are two valid
    #           values: </p>
    #           <dl>
    #               <dt>CODEBUILD</dt>
    #               <dd>
    #                       <p>Specifies that CodeBuild uses its own credentials. This requires that you
    #                           modify your ECR repository policy to trust CodeBuild's service principal.</p>
    #                   </dd>
    #               <dt>SERVICE_ROLE</dt>
    #               <dd>
    #                       <p>Specifies that CodeBuild uses your build project's service role. </p>
    #                   </dd>
    #            </dl>
    #            <p>When using a cross-account or private registry image, you must use
    #                   <code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated image,
    #               you must use <code>CODEBUILD</code> credentials. </p>
    #
    #   Enum, one of: ["CODEBUILD", "SERVICE_ROLE"]
    #
    #   @return [String]
    #
    # @!attribute build_batch_config_override
    #   <p>A <code>BuildBatchConfigOverride</code> object that contains batch build configuration
    #               overrides.</p>
    #
    #   @return [ProjectBuildBatchConfig]
    #
    # @!attribute debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this batch build. For more information, see
    #     <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    #
    #   @return [Boolean]
    #
    StartBuildBatchInput = ::Struct.new(
      :project_name,
      :secondary_sources_override,
      :secondary_sources_version_override,
      :source_version,
      :artifacts_override,
      :secondary_artifacts_override,
      :environment_variables_override,
      :source_type_override,
      :source_location_override,
      :source_auth_override,
      :git_clone_depth_override,
      :git_submodules_config_override,
      :buildspec_override,
      :insecure_ssl_override,
      :report_build_batch_status_override,
      :environment_type_override,
      :image_override,
      :compute_type_override,
      :certificate_override,
      :cache_override,
      :service_role_override,
      :privileged_mode_override,
      :build_timeout_in_minutes_override,
      :queued_timeout_in_minutes_override,
      :encryption_key_override,
      :idempotency_token,
      :logs_config_override,
      :registry_credential_override,
      :image_pull_credentials_type_override,
      :build_batch_config_override,
      :debug_session_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build_batch
    #   <p>A <code>BuildBatch</code> object that contains information about the batch build.</p>
    #
    #   @return [BuildBatch]
    #
    StartBuildBatchOutput = ::Struct.new(
      :build_batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild build project to start running a build.</p>
    #
    #   @return [String]
    #
    # @!attribute secondary_sources_override
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute secondary_sources_version_override
    #   <p> An array of <code>ProjectSourceVersion</code> objects that specify one or more
    #               versions of the project's secondary sources to be used for this build only. </p>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute source_version
    #   <p>The version of the build input to be built, for this build only. If not specified,
    #               the latest version is used. If specified, the contents depends on the source
    #               provider:</p>
    #           <dl>
    #               <dt>CodeCommit</dt>
    #               <dd>
    #                       <p>The commit ID, branch, or Git tag to use.</p>
    #                   </dd>
    #               <dt>GitHub</dt>
    #               <dd>
    #                       <p>The commit ID, pull request ID, branch name, or tag name that corresponds
    #                           to the version of the source code you want to build. If a pull request ID is
    #                           specified, it must use the format <code>pr/pull-request-ID</code> (for
    #                           example <code>pr/25</code>). If a branch name is specified, the branch's
    #                           HEAD commit ID is used. If not specified, the default branch's HEAD commit
    #                           ID is used.</p>
    #                   </dd>
    #               <dt>Bitbucket</dt>
    #               <dd>
    #                       <p>The commit ID, branch name, or tag name that corresponds to the version of
    #                           the source code you want to build. If a branch name is specified, the
    #                           branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #                           commit ID is used.</p>
    #                   </dd>
    #               <dt>Amazon S3</dt>
    #               <dd>
    #                       <p>The version ID of the object that represents the build input ZIP file to
    #                           use.</p>
    #                   </dd>
    #            </dl>
    #           <p>If <code>sourceVersion</code> is specified at the project level, then this
    #               <code>sourceVersion</code> (at the build level) takes precedence. </p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #               with CodeBuild</a> in the <i>CodeBuild User Guide</i>. </p>
    #
    #   @return [String]
    #
    # @!attribute artifacts_override
    #   <p>Build output artifact settings that override, for this build only, the latest ones
    #               already defined in the build project.</p>
    #
    #   @return [ProjectArtifacts]
    #
    # @!attribute secondary_artifacts_override
    #   <p> An array of <code>ProjectArtifacts</code> objects. </p>
    #
    #   @return [Array<ProjectArtifacts>]
    #
    # @!attribute environment_variables_override
    #   <p>A set of environment variables that overrides, for this build only, the latest ones
    #               already defined in the build project.</p>
    #
    #   @return [Array<EnvironmentVariable>]
    #
    # @!attribute source_type_override
    #   <p>A source input type, for this build, that overrides the source input defined in the
    #               build project.</p>
    #
    #   Enum, one of: ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #
    #   @return [String]
    #
    # @!attribute source_location_override
    #   <p>A location that overrides, for this build, the source location for the one defined in
    #               the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute source_auth_override
    #   <p>An authorization type for this build that overrides the one defined in the build
    #               project. This override applies only if the build project's source is BitBucket or
    #               GitHub.</p>
    #
    #   @return [SourceAuth]
    #
    # @!attribute git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #               build only, any previous depth of history defined in the build project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute git_submodules_config_override
    #   <p> Information about the Git submodules configuration for this build of an CodeBuild build
    #               project. </p>
    #
    #   @return [GitSubmodulesConfig]
    #
    # @!attribute buildspec_override
    #   <p>A buildspec file declaration that overrides, for this build only, the latest one
    #               already defined in the build project.</p>
    #           <p> If this value is set, it can be either an inline buildspec definition, the path to an
    #               alternate buildspec file relative to the value of the built-in
    #                   <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #               The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #               file using its ARN (for example,
    #                   <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #               provided or is set to an empty string, the source code must contain a buildspec file in
    #               its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #
    #   @return [String]
    #
    # @!attribute insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the build
    #               project. The insecure SSL setting determines whether to ignore SSL warnings while
    #               connecting to the project source code. This override applies only if the build's source
    #               is GitHub Enterprise.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute report_build_status_override
    #   <p> Set to true to report to your source provider the status of a build's start and
    #               completion. If you use this option with a source provider other than GitHub, GitHub
    #               Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #               <p>To be able to report the build status to the source provider, the user associated with the source provider must
    #   have write access to the repo. If the user does not have write access, the build status cannot be updated. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/access-tokens.html">Source provider access</a> in the <i>CodeBuild User Guide</i>.</p>
    #           <note>
    #               <p> The status of a build triggered by a webhook is always reported to your source
    #                   provider. </p>
    #           </note>
    #
    #   @return [Boolean]
    #
    # @!attribute build_status_config_override
    #   <p>Contains information that defines how the build project reports the build status to
    #               the source provider. This option is only used when the source provider is
    #                   <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
    #               <code>BITBUCKET</code>.</p>
    #
    #   @return [BuildStatusConfig]
    #
    # @!attribute environment_type_override
    #   <p>A container type for this build that overrides the one specified in the build
    #               project.</p>
    #
    #   Enum, one of: ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #
    #   @return [String]
    #
    # @!attribute image_override
    #   <p>The name of an image for this build that overrides the one specified in the build
    #               project.</p>
    #
    #   @return [String]
    #
    # @!attribute compute_type_override
    #   <p>The name of a compute type for this build that overrides the one specified in the
    #               build project.</p>
    #
    #   Enum, one of: ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #
    #   @return [String]
    #
    # @!attribute certificate_override
    #   <p>The name of a certificate for this build that overrides the one specified in the build
    #               project.</p>
    #
    #   @return [String]
    #
    # @!attribute cache_override
    #   <p>A ProjectCache object specified for this build that overrides the one defined in the
    #               build project.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute service_role_override
    #   <p>The name of a service role for this build that overrides the one specified in the
    #               build project.</p>
    #
    #   @return [String]
    #
    # @!attribute privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the build project.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute timeout_in_minutes_override
    #   <p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this
    #               build only, the latest setting already defined in the build project.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes_override
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the build
    #               project. The CMK key encrypts the build output artifacts.</p>
    #           <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #           </note>
    #           <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #
    #   @return [String]
    #
    # @!attribute idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #               StartBuild request. The token is included in the StartBuild request and is valid for 5
    #               minutes. If you repeat the StartBuild request with the same token, but change a
    #               parameter, CodeBuild returns a parameter mismatch error. </p>
    #
    #   @return [String]
    #
    # @!attribute logs_config_override
    #   <p> Log settings for this build that override the log settings defined in the build
    #               project. </p>
    #
    #   @return [LogsConfig]
    #
    # @!attribute registry_credential_override
    #   <p> The credentials for access to a private registry. </p>
    #
    #   @return [RegistryCredential]
    #
    # @!attribute image_pull_credentials_type_override
    #   <p>The type of credentials CodeBuild uses to pull images in your build. There are two valid
    #               values: </p>
    #           <dl>
    #               <dt>CODEBUILD</dt>
    #               <dd>
    #                       <p>Specifies that CodeBuild uses its own credentials. This requires that you
    #                           modify your ECR repository policy to trust CodeBuild's service principal.</p>
    #                   </dd>
    #               <dt>SERVICE_ROLE</dt>
    #               <dd>
    #                       <p>Specifies that CodeBuild uses your build project's service role. </p>
    #                   </dd>
    #            </dl>
    #           <p>When using a cross-account or private registry image, you must use
    #               <code>SERVICE_ROLE</code> credentials. When using an CodeBuild curated image,
    #               you must use <code>CODEBUILD</code> credentials. </p>
    #
    #   Enum, one of: ["CODEBUILD", "SERVICE_ROLE"]
    #
    #   @return [String]
    #
    # @!attribute debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this build. For more information, see
    #                   <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>.</p>
    #
    #   @return [Boolean]
    #
    StartBuildInput = ::Struct.new(
      :project_name,
      :secondary_sources_override,
      :secondary_sources_version_override,
      :source_version,
      :artifacts_override,
      :secondary_artifacts_override,
      :environment_variables_override,
      :source_type_override,
      :source_location_override,
      :source_auth_override,
      :git_clone_depth_override,
      :git_submodules_config_override,
      :buildspec_override,
      :insecure_ssl_override,
      :report_build_status_override,
      :build_status_config_override,
      :environment_type_override,
      :image_override,
      :compute_type_override,
      :certificate_override,
      :cache_override,
      :service_role_override,
      :privileged_mode_override,
      :timeout_in_minutes_override,
      :queued_timeout_in_minutes_override,
      :encryption_key_override,
      :idempotency_token,
      :logs_config_override,
      :registry_credential_override,
      :image_pull_credentials_type_override,
      :debug_session_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build
    #   <p>Information about the build to be run.</p>
    #
    #   @return [Build]
    #
    StartBuildOutput = ::Struct.new(
      :build,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for StatusType
    #
    module StatusType
      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      FAULT = "FAULT"

      # No documentation available.
      #
      TIMED_OUT = "TIMED_OUT"

      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      STOPPED = "STOPPED"
    end

    # @!attribute id
    #   <p>The identifier of the batch build to stop.</p>
    #
    #   @return [String]
    #
    StopBuildBatchInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build_batch
    #   <p>Contains information about a batch build.</p>
    #
    #   @return [BuildBatch]
    #
    StopBuildBatchOutput = ::Struct.new(
      :build_batch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The ID of the build.</p>
    #
    #   @return [String]
    #
    StopBuildInput = ::Struct.new(
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute build
    #   <p>Information about the build.</p>
    #
    #   @return [Build]
    #
    StopBuildOutput = ::Struct.new(
      :build,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag, consisting of a key and a value.</p>
    #         <p>This tag is available for use by Amazon Web Services services that support tags in CodeBuild.</p>
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

    # <p> Information about a test case created using a framework such as NUnit or Cucumber. A
    #             test case might be a unit test or a configuration test. </p>
    #
    # @!attribute report_arn
    #   <p> The ARN of the report to which the test case belongs. </p>
    #
    #   @return [String]
    #
    # @!attribute test_raw_data_path
    #   <p> The path to the raw data file that contains the test result. </p>
    #
    #   @return [String]
    #
    # @!attribute prefix
    #   <p> A string that is applied to a series of related test cases. CodeBuild generates the
    #               prefix. The prefix depends on the framework used to generate the tests. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p> The name of the test case. </p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p> The status returned by the test case after it was run. Valid statuses are
    #                   <code>SUCCEEDED</code>, <code>FAILED</code>, <code>ERROR</code>,
    #                   <code>SKIPPED</code>, and <code>UNKNOWN</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute duration_in_nano_seconds
    #   <p> The number of nanoseconds it took to run this test case. </p>
    #
    #   @return [Integer]
    #
    # @!attribute message
    #   <p> A message associated with a test case. For example, an error message or stack trace.
    #           </p>
    #
    #   @return [String]
    #
    # @!attribute expired
    #   <p> The date and time a test case expires. A test case expires 30 days after it is
    #               created. An expired test case is not available to view in CodeBuild. </p>
    #
    #   @return [Time]
    #
    TestCase = ::Struct.new(
      :report_arn,
      :test_raw_data_path,
      :prefix,
      :name,
      :status,
      :duration_in_nano_seconds,
      :message,
      :expired,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A filter used to return specific types of test cases. In order to pass the filter, the
    #             report must meet all of the filter properties.</p>
    #
    # @!attribute status
    #   <p>The status used to filter test cases. A <code>TestCaseFilter</code> can have one
    #               status. Valid values are:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>SUCCEEDED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>FAILED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ERROR</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>UNKNOWN</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute keyword
    #   <p>A keyword that is used to filter on the <code>name</code> or the <code>prefix</code>
    #               of the test cases. Only test cases where the keyword is a substring of the
    #                   <code>name</code> or the <code>prefix</code> will be returned.</p>
    #
    #   @return [String]
    #
    TestCaseFilter = ::Struct.new(
      :status,
      :keyword,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p> Information about a test report. </p>
    #
    # @!attribute total
    #   <p> The number of test cases in this <code>TestReportSummary</code>. The total includes
    #               truncated test cases. </p>
    #
    #   @return [Integer]
    #
    # @!attribute status_counts
    #   <p> A map that contains the number of each type of status returned by the test results in
    #               this <code>TestReportSummary</code>. </p>
    #
    #   @return [Hash<String, Integer>]
    #
    # @!attribute duration_in_nano_seconds
    #   <p> The number of nanoseconds it took to run all of the test cases in this report.
    #           </p>
    #
    #   @return [Integer]
    #
    TestReportSummary = ::Struct.new(
      :total,
      :status_counts,
      :duration_in_nano_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>The name of the build project.</p>
    #            <note>
    #               <p>You cannot change a build project's name.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A new or replacement description of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>Information to be changed about the build input source code for the build
    #       project.</p>
    #
    #   @return [ProjectSource]
    #
    # @!attribute secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #
    #   @return [Array<ProjectSource>]
    #
    # @!attribute source_version
    #   <p> A version of the build input to be built for this project. If not specified, the
    #       latest version is used. If specified, it must be one of: </p>
    #            <ul>
    #               <li>
    #                  <p>For CodeCommit: the commit ID, branch, or Git tag to use.</p>
    #               </li>
    #               <li>
    #                  <p>For GitHub: the commit ID, pull request ID, branch name, or tag name that
    #               corresponds to the version of the source code you want to build. If a pull
    #               request ID is specified, it must use the format <code>pr/pull-request-ID</code>
    #               (for example <code>pr/25</code>). If a branch name is specified, the branch's
    #               HEAD commit ID is used. If not specified, the default branch's HEAD commit ID is
    #               used.</p>
    #               </li>
    #               <li>
    #                  <p>For Bitbucket: the commit ID, branch name, or tag name that corresponds to the
    #               version of the source code you want to build. If a branch name is specified, the
    #               branch's HEAD commit ID is used. If not specified, the default branch's HEAD
    #               commit ID is used.</p>
    #               </li>
    #               <li>
    #                  <p>For Amazon S3: the version ID of the object that represents the build input ZIP
    #               file to use.</p>
    #               </li>
    #            </ul>
    #            <p> If <code>sourceVersion</code> is specified at the build level, then that version
    #       takes precedence over this <code>sourceVersion</code> (at the project level). </p>
    #            <p> For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/sample-source-version.html">Source Version Sample
    #           with CodeBuild</a> in the <i>CodeBuild User Guide</i>.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #       over these <code>secondarySourceVersions</code> (at the project level). </p>
    #
    #   @return [Array<ProjectSourceVersion>]
    #
    # @!attribute artifacts
    #   <p>Information to be changed about the build output artifacts for the build
    #           project.</p>
    #
    #   @return [ProjectArtifacts]
    #
    # @!attribute secondary_artifacts
    #   <p> An array of <code>ProjectArtifact</code> objects. </p>
    #
    #   @return [Array<ProjectArtifacts>]
    #
    # @!attribute cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #         time.</p>
    #
    #   @return [ProjectCache]
    #
    # @!attribute environment
    #   <p>Information to be changed about the build environment for the build project.</p>
    #
    #   @return [ProjectEnvironment]
    #
    # @!attribute service_role
    #   <p>The replacement ARN of the IAM role that enables CodeBuild to interact with dependent
    #       Amazon Web Services services on behalf of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute timeout_in_minutes
    #   <p>The replacement value in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before
    #         timing out any related build that did not get marked as completed.</p>
    #
    #   @return [Integer]
    #
    # @!attribute queued_timeout_in_minutes
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #
    #   @return [Integer]
    #
    # @!attribute encryption_key
    #   <p>The Key Management Service customer master key (CMK) to be used for encrypting the build output
    #       artifacts.</p>
    #            <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #           service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #       the format <code>alias/<alias-name></code>).
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>An updated list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #
    #   @return [VpcConfig]
    #
    # @!attribute badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #         badge.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute logs_config
    #   <p> Information about logs for the build project. A project can create logs in CloudWatch Logs,
    #       logs in an S3 bucket, or both. </p>
    #
    #   @return [LogsConfig]
    #
    # @!attribute file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #
    #   @return [Array<ProjectFileSystemLocation>]
    #
    # @!attribute build_batch_config
    #   <p>Contains configuration information about a batch build project.</p>
    #
    #   @return [ProjectBuildBatchConfig]
    #
    # @!attribute concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit.
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #            <p>To remove this limit, set this value to -1.</p>
    #
    #   @return [Integer]
    #
    UpdateProjectInput = ::Struct.new(
      :name,
      :description,
      :source,
      :secondary_sources,
      :source_version,
      :secondary_source_versions,
      :artifacts,
      :secondary_artifacts,
      :cache,
      :environment,
      :service_role,
      :timeout_in_minutes,
      :queued_timeout_in_minutes,
      :encryption_key,
      :tags,
      :vpc_config,
      :badge_enabled,
      :logs_config,
      :file_system_locations,
      :build_batch_config,
      :concurrent_build_limit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project
    #   <p>Information about the build project that was changed.</p>
    #
    #   @return [Project]
    #
    UpdateProjectOutput = ::Struct.new(
      :project,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["PUBLIC_READ", "PRIVATE"]
    #
    #   @return [String]
    #
    # @!attribute resource_access_role
    #   <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for
    #         the project's builds.</p>
    #
    #   @return [String]
    #
    UpdateProjectVisibilityInput = ::Struct.new(
      :project_arn,
      :project_visibility,
      :resource_access_role,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #
    #   @return [String]
    #
    # @!attribute public_project_alias
    #   <p>Contains the project identifier used with the public build APIs. </p>
    #
    #   @return [String]
    #
    # @!attribute project_visibility
    #   <p>Specifies the visibility of the project's builds. Possible values are:</p>
    #
    #            <dl>
    #               <dt>PUBLIC_READ</dt>
    #               <dd>
    #                  <p>The project builds are visible to the public.</p>
    #               </dd>
    #               <dt>PRIVATE</dt>
    #               <dd>
    #                  <p>The project builds are not visible to the public.</p>
    #               </dd>
    #            </dl>
    #
    #   Enum, one of: ["PUBLIC_READ", "PRIVATE"]
    #
    #   @return [String]
    #
    UpdateProjectVisibilityOutput = ::Struct.new(
      :project_arn,
      :public_project_alias,
      :project_visibility,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute arn
    #   <p>
    #         The ARN of the report group to update.
    #       </p>
    #
    #   @return [String]
    #
    # @!attribute export_config
    #   <p>
    #         Used to specify an updated export type. Valid values are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>S3</code>: The report results are exported to an S3 bucket.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NO_EXPORT</code>: The report results are not exported.
    #           </p>
    #               </li>
    #            </ul>
    #
    #   @return [ReportExportConfig]
    #
    # @!attribute tags
    #   <p>
    #         An updated list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #
    #   @return [Array<Tag>]
    #
    UpdateReportGroupInput = ::Struct.new(
      :arn,
      :export_config,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute report_group
    #   <p>
    #         Information about the updated report group.
    #       </p>
    #
    #   @return [ReportGroup]
    #
    UpdateReportGroupOutput = ::Struct.new(
      :report_group,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p> It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute rotate_secret
    #   <p> A boolean value that specifies whether the associated GitHub repository's secret
    #         token should be updated. If you use Bitbucket for your repository,
    #         <code>rotateSecret</code> is ignored. </p>
    #
    #   @return [Boolean]
    #
    # @!attribute filter_groups
    #   <p> An array of arrays of <code>WebhookFilter</code> objects used to determine if a
    #         webhook event can trigger a build. A filter group must contain at least one
    #         <code>EVENT</code>
    #               <code>WebhookFilter</code>. </p>
    #
    #   @return [Array<Array<WebhookFilter>>]
    #
    # @!attribute build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #
    #   Enum, one of: ["BUILD", "BUILD_BATCH"]
    #
    #   @return [String]
    #
    UpdateWebhookInput = ::Struct.new(
      :project_name,
      :branch_filter,
      :rotate_secret,
      :filter_groups,
      :build_type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.rotate_secret ||= false
      end

    end

    # @!attribute webhook
    #   <p> Information about a repository's webhook that is associated with a project in CodeBuild.
    #       </p>
    #
    #   @return [Webhook]
    #
    UpdateWebhookOutput = ::Struct.new(
      :webhook,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the VPC configuration that CodeBuild accesses.</p>
    #
    # @!attribute vpc_id
    #   <p>The ID of the Amazon VPC.</p>
    #
    #   @return [String]
    #
    # @!attribute subnets
    #   <p>A list of one or more subnet IDs in your Amazon VPC.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute security_group_ids
    #   <p>A list of one or more security groups IDs in your Amazon VPC.</p>
    #
    #   @return [Array<String>]
    #
    VpcConfig = ::Struct.new(
      :vpc_id,
      :subnets,
      :security_group_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a webhook that connects repository events to a build project in
    #       CodeBuild.</p>
    #
    # @!attribute url
    #   <p>The URL to the webhook.</p>
    #
    #   @return [String]
    #
    # @!attribute payload_url
    #   <p>The CodeBuild endpoint where webhook events are sent.</p>
    #
    #   @return [String]
    #
    # @!attribute secret
    #   <p>The secret token of the associated repository. </p>
    #            <note>
    #               <p>A Bitbucket webhook does not support <code>secret</code>. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p>It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute filter_groups
    #   <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
    #         webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
    #         specify <code>EVENT</code> as its <code>type</code>. </p>
    #            <p>For a build to be triggered, at least one filter group in the
    #         <code>filterGroups</code> array must pass. For a filter group to pass, each of its
    #         filters must pass. </p>
    #
    #   @return [Array<Array<WebhookFilter>>]
    #
    # @!attribute build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #
    #   Enum, one of: ["BUILD", "BUILD_BATCH"]
    #
    #   @return [String]
    #
    # @!attribute last_modified_secret
    #   <p>A timestamp that indicates the last time a repository's secret token was modified.
    #       </p>
    #
    #   @return [Time]
    #
    Webhook = ::Struct.new(
      :url,
      :payload_url,
      :secret,
      :branch_filter,
      :filter_groups,
      :build_type,
      :last_modified_secret,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WebhookBuildType
    #
    module WebhookBuildType
      # No documentation available.
      #
      BUILD = "BUILD"

      # No documentation available.
      #
      BUILD_BATCH = "BUILD_BATCH"
    end

    # <p> A filter used to determine which webhooks trigger a build. </p>
    #
    # @!attribute type
    #   <p> The type of webhook filter. There are six webhook filter types: <code>EVENT</code>,
    #                   <code>ACTOR_ACCOUNT_ID</code>, <code>HEAD_REF</code>, <code>BASE_REF</code>,
    #                   <code>FILE_PATH</code>, and <code>COMMIT_MESSAGE</code>. </p>
    #           <dl>
    #               <dt>
    #                  EVENT
    #               </dt>
    #               <dd>
    #                       <p> A webhook event triggers a build when the provided <code>pattern</code>
    #                           matches one of five event types: <code>PUSH</code>,
    #                               <code>PULL_REQUEST_CREATED</code>, <code>PULL_REQUEST_UPDATED</code>,
    #                               <code>PULL_REQUEST_REOPENED</code>, and
    #                           <code>PULL_REQUEST_MERGED</code>. The <code>EVENT</code> patterns are
    #                           specified as a comma-separated string. For example, <code>PUSH,
    #                               PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> filters all push, pull
    #                           request created, and pull request updated events. </p>
    #                       <note>
    #                           <p> The <code>PULL_REQUEST_REOPENED</code> works with GitHub and GitHub
    #                               Enterprise only. </p>
    #                       </note>
    #                   </dd>
    #               <dt>
    #                  ACTOR_ACCOUNT_ID
    #               </dt>
    #               <dd>
    #                       <p> A webhook event triggers a build when a GitHub, GitHub Enterprise, or
    #                           Bitbucket account ID matches the regular expression <code>pattern</code>.
    #                       </p>
    #                   </dd>
    #               <dt>
    #                  HEAD_REF
    #               </dt>
    #               <dd>
    #                       <p> A webhook event triggers a build when the head reference matches the
    #                           regular expression <code>pattern</code>. For example,
    #                               <code>refs/heads/branch-name</code> and <code>refs/tags/tag-name</code>. </p>
    #                       <p> Works with GitHub and GitHub Enterprise push, GitHub and GitHub
    #                           Enterprise pull request, Bitbucket push, and Bitbucket pull request events.
    #                       </p>
    #                   </dd>
    #               <dt>
    #                  BASE_REF
    #               </dt>
    #               <dd>
    #                       <p> A webhook event triggers a build when the base reference matches the
    #                           regular expression <code>pattern</code>. For example,
    #                               <code>refs/heads/branch-name</code>. </p>
    #                       <note>
    #                           <p> Works with pull request events only. </p>
    #                       </note>
    #                   </dd>
    #               <dt>
    #                  FILE_PATH
    #               </dt>
    #               <dd>
    #                       <p> A webhook triggers a build when the path of a changed file matches the
    #                           regular expression <code>pattern</code>. </p>
    #                       <note>
    #                           <p> Works with GitHub and Bitbucket events push and pull requests events.
    #                               Also works with GitHub Enterprise push events, but does not work with
    #                               GitHub Enterprise pull request events. </p>
    #                       </note>
    #                   </dd>
    #               <dt>COMMIT_MESSAGE</dt>
    #               <dd>
    #                       <p>A webhook triggers a build when the head commit message matches the
    #                           regular expression <code>pattern</code>.</p>
    #                       <note>
    #                           <p> Works with GitHub and Bitbucket events push and pull requests events.
    #                               Also works with GitHub Enterprise push events, but does not work with
    #                               GitHub Enterprise pull request events. </p>
    #                       </note>
    #                   </dd>
    #            </dl>
    #
    #   Enum, one of: ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #
    #   @return [String]
    #
    # @!attribute pattern
    #   <p> For a <code>WebHookFilter</code> that uses <code>EVENT</code> type, a comma-separated
    #               string that specifies one or more events. For example, the webhook filter <code>PUSH,
    #                   PULL_REQUEST_CREATED, PULL_REQUEST_UPDATED</code> allows all push, pull request
    #               created, and pull request updated events to trigger a build. </p>
    #           <p> For a <code>WebHookFilter</code> that uses any of the other filter types, a regular
    #               expression pattern. For example, a <code>WebHookFilter</code> that uses
    #                   <code>HEAD_REF</code> for its <code>type</code> and the pattern
    #                   <code>^refs/heads/</code> triggers a build when the head reference is a branch with
    #               a reference name <code>refs/heads/branch-name</code>. </p>
    #
    #   @return [String]
    #
    # @!attribute exclude_matched_pattern
    #   <p> Used to indicate that the <code>pattern</code> determines which webhook events do not
    #               trigger a build. If true, then a webhook event that does not match the
    #                   <code>pattern</code> triggers a build. If false, then a webhook event that matches
    #               the <code>pattern</code> triggers a build. </p>
    #
    #   @return [Boolean]
    #
    WebhookFilter = ::Struct.new(
      :type,
      :pattern,
      :exclude_matched_pattern,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for WebhookFilterType
    #
    module WebhookFilterType
      # No documentation available.
      #
      EVENT = "EVENT"

      # No documentation available.
      #
      BASE_REF = "BASE_REF"

      # No documentation available.
      #
      HEAD_REF = "HEAD_REF"

      # No documentation available.
      #
      ACTOR_ACCOUNT_ID = "ACTOR_ACCOUNT_ID"

      # No documentation available.
      #
      FILE_PATH = "FILE_PATH"

      # No documentation available.
      #
      COMMIT_MESSAGE = "COMMIT_MESSAGE"
    end

  end
end
