# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::CodeBuild
  # An API client for CodeBuild_20161006
  # See {#initialize} for a full list of supported configuration options
  # <fullname>CodeBuild</fullname>
  #         <p>CodeBuild is a fully managed build service in the cloud. CodeBuild compiles your source code,
  #             runs unit tests, and produces artifacts that are ready to deploy. CodeBuild eliminates the
  #             need to provision, manage, and scale your own build servers. It provides prepackaged
  #             build environments for the most popular programming languages and build tools, such as
  #             Apache Maven, Gradle, and more. You can also fully customize build environments in CodeBuild
  #             to use your own build tools. CodeBuild scales automatically to meet peak build requests. You
  #             pay only for the build time you consume. For more information about CodeBuild, see the <i>
  #                 <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/welcome.html">CodeBuild User
  #                     Guide</a>.</i>
  #          </p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::CodeBuild::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Deletes one or more builds.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteBuildsInput}.
    #
    # @option params [Array<String>] :ids
    #   <p>The IDs of the builds to delete.</p>
    #
    # @return [Types::BatchDeleteBuildsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_builds(
    #     ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteBuildsOutput
    #   resp.data.builds_deleted #=> Array<String>
    #   resp.data.builds_deleted[0] #=> String
    #   resp.data.builds_not_deleted #=> Array<BuildNotDeleted>
    #   resp.data.builds_not_deleted[0] #=> Types::BuildNotDeleted
    #   resp.data.builds_not_deleted[0].id #=> String
    #   resp.data.builds_not_deleted[0].status_code #=> String
    #
    def batch_delete_builds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteBuildsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteBuildsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteBuilds
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::BatchDeleteBuilds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteBuilds,
        stubs: @stubs,
        params_class: Params::BatchDeleteBuildsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_builds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about one or more batch builds.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetBuildBatchesInput}.
    #
    # @option params [Array<String>] :ids
    #   <p>An array that contains the batch build identifiers to retrieve.</p>
    #
    # @return [Types::BatchGetBuildBatchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_build_batches(
    #     ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetBuildBatchesOutput
    #   resp.data.build_batches #=> Array<BuildBatch>
    #   resp.data.build_batches[0] #=> Types::BuildBatch
    #   resp.data.build_batches[0].id #=> String
    #   resp.data.build_batches[0].arn #=> String
    #   resp.data.build_batches[0].start_time #=> Time
    #   resp.data.build_batches[0].end_time #=> Time
    #   resp.data.build_batches[0].current_phase #=> String
    #   resp.data.build_batches[0].build_batch_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batches[0].source_version #=> String
    #   resp.data.build_batches[0].resolved_source_version #=> String
    #   resp.data.build_batches[0].project_name #=> String
    #   resp.data.build_batches[0].phases #=> Array<BuildBatchPhase>
    #   resp.data.build_batches[0].phases[0] #=> Types::BuildBatchPhase
    #   resp.data.build_batches[0].phases[0].phase_type #=> String, one of ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"]
    #   resp.data.build_batches[0].phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batches[0].phases[0].start_time #=> Time
    #   resp.data.build_batches[0].phases[0].end_time #=> Time
    #   resp.data.build_batches[0].phases[0].duration_in_seconds #=> Integer
    #   resp.data.build_batches[0].phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build_batches[0].phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build_batches[0].phases[0].contexts[0].status_code #=> String
    #   resp.data.build_batches[0].phases[0].contexts[0].message #=> String
    #   resp.data.build_batches[0].source #=> Types::ProjectSource
    #   resp.data.build_batches[0].source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build_batches[0].source.location #=> String
    #   resp.data.build_batches[0].source.git_clone_depth #=> Integer
    #   resp.data.build_batches[0].source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build_batches[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build_batches[0].source.buildspec #=> String
    #   resp.data.build_batches[0].source.auth #=> Types::SourceAuth
    #   resp.data.build_batches[0].source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build_batches[0].source.auth.resource #=> String
    #   resp.data.build_batches[0].source.report_build_status #=> Boolean
    #   resp.data.build_batches[0].source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build_batches[0].source.build_status_config.context #=> String
    #   resp.data.build_batches[0].source.build_status_config.target_url #=> String
    #   resp.data.build_batches[0].source.insecure_ssl #=> Boolean
    #   resp.data.build_batches[0].source.source_identifier #=> String
    #   resp.data.build_batches[0].secondary_sources #=> Array<ProjectSource>
    #   resp.data.build_batches[0].secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build_batches[0].secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build_batches[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build_batches[0].secondary_source_versions[0].source_version #=> String
    #   resp.data.build_batches[0].artifacts #=> Types::BuildArtifacts
    #   resp.data.build_batches[0].artifacts.location #=> String
    #   resp.data.build_batches[0].artifacts.sha256sum #=> String
    #   resp.data.build_batches[0].artifacts.md5sum #=> String
    #   resp.data.build_batches[0].artifacts.override_artifact_name #=> Boolean
    #   resp.data.build_batches[0].artifacts.encryption_disabled #=> Boolean
    #   resp.data.build_batches[0].artifacts.artifact_identifier #=> String
    #   resp.data.build_batches[0].artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batches[0].secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build_batches[0].cache #=> Types::ProjectCache
    #   resp.data.build_batches[0].cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build_batches[0].cache.location #=> String
    #   resp.data.build_batches[0].cache.modes #=> Array<String>
    #   resp.data.build_batches[0].cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build_batches[0].environment #=> Types::ProjectEnvironment
    #   resp.data.build_batches[0].environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build_batches[0].environment.image #=> String
    #   resp.data.build_batches[0].environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build_batches[0].environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build_batches[0].environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build_batches[0].environment.environment_variables[0].name #=> String
    #   resp.data.build_batches[0].environment.environment_variables[0].value #=> String
    #   resp.data.build_batches[0].environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build_batches[0].environment.privileged_mode #=> Boolean
    #   resp.data.build_batches[0].environment.certificate #=> String
    #   resp.data.build_batches[0].environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build_batches[0].environment.registry_credential.credential #=> String
    #   resp.data.build_batches[0].environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build_batches[0].environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build_batches[0].service_role #=> String
    #   resp.data.build_batches[0].log_config #=> Types::LogsConfig
    #   resp.data.build_batches[0].log_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build_batches[0].log_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batches[0].log_config.cloud_watch_logs.group_name #=> String
    #   resp.data.build_batches[0].log_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.build_batches[0].log_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build_batches[0].log_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batches[0].log_config.s3_logs.location #=> String
    #   resp.data.build_batches[0].log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build_batches[0].log_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batches[0].build_timeout_in_minutes #=> Integer
    #   resp.data.build_batches[0].queued_timeout_in_minutes #=> Integer
    #   resp.data.build_batches[0].complete #=> Boolean
    #   resp.data.build_batches[0].initiator #=> String
    #   resp.data.build_batches[0].vpc_config #=> Types::VpcConfig
    #   resp.data.build_batches[0].vpc_config.vpc_id #=> String
    #   resp.data.build_batches[0].vpc_config.subnets #=> Array<String>
    #   resp.data.build_batches[0].vpc_config.subnets[0] #=> String
    #   resp.data.build_batches[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build_batches[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.build_batches[0].encryption_key #=> String
    #   resp.data.build_batches[0].build_batch_number #=> Integer
    #   resp.data.build_batches[0].file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build_batches[0].file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build_batches[0].file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build_batches[0].file_system_locations[0].location #=> String
    #   resp.data.build_batches[0].file_system_locations[0].mount_point #=> String
    #   resp.data.build_batches[0].file_system_locations[0].identifier #=> String
    #   resp.data.build_batches[0].file_system_locations[0].mount_options #=> String
    #   resp.data.build_batches[0].build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.build_batches[0].build_batch_config.service_role #=> String
    #   resp.data.build_batches[0].build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.build_batches[0].build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.build_batches[0].build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.build_batches[0].build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.build_batches[0].build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.build_batches[0].build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.build_batches[0].build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.build_batches[0].build_groups #=> Array<BuildGroup>
    #   resp.data.build_batches[0].build_groups[0] #=> Types::BuildGroup
    #   resp.data.build_batches[0].build_groups[0].identifier #=> String
    #   resp.data.build_batches[0].build_groups[0].depends_on #=> Array<String>
    #   resp.data.build_batches[0].build_groups[0].depends_on[0] #=> String
    #   resp.data.build_batches[0].build_groups[0].ignore_failure #=> Boolean
    #   resp.data.build_batches[0].build_groups[0].current_build_summary #=> Types::BuildSummary
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.arn #=> String
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.primary_artifact #=> Types::ResolvedArtifact
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.primary_artifact.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.data.build_batches[0].build_groups[0].current_build_summary.secondary_artifacts #=> Array<ResolvedArtifact>
    #   resp.data.build_batches[0].build_groups[0].prior_build_summary_list #=> Array<BuildSummary>
    #   resp.data.build_batches[0].debug_session_enabled #=> Boolean
    #   resp.data.build_batches_not_found #=> Array<String>
    #   resp.data.build_batches_not_found[0] #=> String
    #
    def batch_get_build_batches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetBuildBatchesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetBuildBatchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetBuildBatches
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::BatchGetBuildBatches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetBuildBatches,
        stubs: @stubs,
        params_class: Params::BatchGetBuildBatchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_build_batches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more builds.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetBuildsInput}.
    #
    # @option params [Array<String>] :ids
    #   <p>The IDs of the builds.</p>
    #
    # @return [Types::BatchGetBuildsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_builds(
    #     ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetBuildsOutput
    #   resp.data.builds #=> Array<Build>
    #   resp.data.builds[0] #=> Types::Build
    #   resp.data.builds[0].id #=> String
    #   resp.data.builds[0].arn #=> String
    #   resp.data.builds[0].build_number #=> Integer
    #   resp.data.builds[0].start_time #=> Time
    #   resp.data.builds[0].end_time #=> Time
    #   resp.data.builds[0].current_phase #=> String
    #   resp.data.builds[0].build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.builds[0].source_version #=> String
    #   resp.data.builds[0].resolved_source_version #=> String
    #   resp.data.builds[0].project_name #=> String
    #   resp.data.builds[0].phases #=> Array<BuildPhase>
    #   resp.data.builds[0].phases[0] #=> Types::BuildPhase
    #   resp.data.builds[0].phases[0].phase_type #=> String, one of ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"]
    #   resp.data.builds[0].phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.builds[0].phases[0].start_time #=> Time
    #   resp.data.builds[0].phases[0].end_time #=> Time
    #   resp.data.builds[0].phases[0].duration_in_seconds #=> Integer
    #   resp.data.builds[0].phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.builds[0].phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.builds[0].phases[0].contexts[0].status_code #=> String
    #   resp.data.builds[0].phases[0].contexts[0].message #=> String
    #   resp.data.builds[0].source #=> Types::ProjectSource
    #   resp.data.builds[0].source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.builds[0].source.location #=> String
    #   resp.data.builds[0].source.git_clone_depth #=> Integer
    #   resp.data.builds[0].source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.builds[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.builds[0].source.buildspec #=> String
    #   resp.data.builds[0].source.auth #=> Types::SourceAuth
    #   resp.data.builds[0].source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.builds[0].source.auth.resource #=> String
    #   resp.data.builds[0].source.report_build_status #=> Boolean
    #   resp.data.builds[0].source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.builds[0].source.build_status_config.context #=> String
    #   resp.data.builds[0].source.build_status_config.target_url #=> String
    #   resp.data.builds[0].source.insecure_ssl #=> Boolean
    #   resp.data.builds[0].source.source_identifier #=> String
    #   resp.data.builds[0].secondary_sources #=> Array<ProjectSource>
    #   resp.data.builds[0].secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.builds[0].secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.builds[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.data.builds[0].secondary_source_versions[0].source_version #=> String
    #   resp.data.builds[0].artifacts #=> Types::BuildArtifacts
    #   resp.data.builds[0].artifacts.location #=> String
    #   resp.data.builds[0].artifacts.sha256sum #=> String
    #   resp.data.builds[0].artifacts.md5sum #=> String
    #   resp.data.builds[0].artifacts.override_artifact_name #=> Boolean
    #   resp.data.builds[0].artifacts.encryption_disabled #=> Boolean
    #   resp.data.builds[0].artifacts.artifact_identifier #=> String
    #   resp.data.builds[0].artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.builds[0].secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.builds[0].cache #=> Types::ProjectCache
    #   resp.data.builds[0].cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.builds[0].cache.location #=> String
    #   resp.data.builds[0].cache.modes #=> Array<String>
    #   resp.data.builds[0].cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.builds[0].environment #=> Types::ProjectEnvironment
    #   resp.data.builds[0].environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.builds[0].environment.image #=> String
    #   resp.data.builds[0].environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.builds[0].environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.builds[0].environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.builds[0].environment.environment_variables[0].name #=> String
    #   resp.data.builds[0].environment.environment_variables[0].value #=> String
    #   resp.data.builds[0].environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.builds[0].environment.privileged_mode #=> Boolean
    #   resp.data.builds[0].environment.certificate #=> String
    #   resp.data.builds[0].environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.builds[0].environment.registry_credential.credential #=> String
    #   resp.data.builds[0].environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.builds[0].environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.builds[0].service_role #=> String
    #   resp.data.builds[0].logs #=> Types::LogsLocation
    #   resp.data.builds[0].logs.group_name #=> String
    #   resp.data.builds[0].logs.stream_name #=> String
    #   resp.data.builds[0].logs.deep_link #=> String
    #   resp.data.builds[0].logs.s3_deep_link #=> String
    #   resp.data.builds[0].logs.cloud_watch_logs_arn #=> String
    #   resp.data.builds[0].logs.s3_logs_arn #=> String
    #   resp.data.builds[0].logs.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.builds[0].logs.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.builds[0].logs.cloud_watch_logs.group_name #=> String
    #   resp.data.builds[0].logs.cloud_watch_logs.stream_name #=> String
    #   resp.data.builds[0].logs.s3_logs #=> Types::S3LogsConfig
    #   resp.data.builds[0].logs.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.builds[0].logs.s3_logs.location #=> String
    #   resp.data.builds[0].logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.builds[0].logs.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.builds[0].timeout_in_minutes #=> Integer
    #   resp.data.builds[0].queued_timeout_in_minutes #=> Integer
    #   resp.data.builds[0].build_complete #=> Boolean
    #   resp.data.builds[0].initiator #=> String
    #   resp.data.builds[0].vpc_config #=> Types::VpcConfig
    #   resp.data.builds[0].vpc_config.vpc_id #=> String
    #   resp.data.builds[0].vpc_config.subnets #=> Array<String>
    #   resp.data.builds[0].vpc_config.subnets[0] #=> String
    #   resp.data.builds[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.builds[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.builds[0].network_interface #=> Types::NetworkInterface
    #   resp.data.builds[0].network_interface.subnet_id #=> String
    #   resp.data.builds[0].network_interface.network_interface_id #=> String
    #   resp.data.builds[0].encryption_key #=> String
    #   resp.data.builds[0].exported_environment_variables #=> Array<ExportedEnvironmentVariable>
    #   resp.data.builds[0].exported_environment_variables[0] #=> Types::ExportedEnvironmentVariable
    #   resp.data.builds[0].exported_environment_variables[0].name #=> String
    #   resp.data.builds[0].exported_environment_variables[0].value #=> String
    #   resp.data.builds[0].report_arns #=> Array<String>
    #   resp.data.builds[0].report_arns[0] #=> String
    #   resp.data.builds[0].file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.builds[0].file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.builds[0].file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.builds[0].file_system_locations[0].location #=> String
    #   resp.data.builds[0].file_system_locations[0].mount_point #=> String
    #   resp.data.builds[0].file_system_locations[0].identifier #=> String
    #   resp.data.builds[0].file_system_locations[0].mount_options #=> String
    #   resp.data.builds[0].debug_session #=> Types::DebugSession
    #   resp.data.builds[0].debug_session.session_enabled #=> Boolean
    #   resp.data.builds[0].debug_session.session_target #=> String
    #   resp.data.builds[0].build_batch_arn #=> String
    #   resp.data.builds_not_found #=> Array<String>
    #   resp.data.builds_not_found[0] #=> String
    #
    def batch_get_builds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetBuildsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetBuildsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetBuilds
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::BatchGetBuilds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetBuilds,
        stubs: @stubs,
        params_class: Params::BatchGetBuildsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_builds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more build projects.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetProjectsInput}.
    #
    # @option params [Array<String>] :names
    #   <p>The names or ARNs of the build projects. To get information about a project shared
    #               with your Amazon Web Services account, its ARN must be specified. You cannot specify a shared project
    #               using its name.</p>
    #
    # @return [Types::BatchGetProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_projects(
    #     names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetProjectsOutput
    #   resp.data.projects #=> Array<Project>
    #   resp.data.projects[0] #=> Types::Project
    #   resp.data.projects[0].name #=> String
    #   resp.data.projects[0].arn #=> String
    #   resp.data.projects[0].description #=> String
    #   resp.data.projects[0].source #=> Types::ProjectSource
    #   resp.data.projects[0].source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.projects[0].source.location #=> String
    #   resp.data.projects[0].source.git_clone_depth #=> Integer
    #   resp.data.projects[0].source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.projects[0].source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.projects[0].source.buildspec #=> String
    #   resp.data.projects[0].source.auth #=> Types::SourceAuth
    #   resp.data.projects[0].source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.projects[0].source.auth.resource #=> String
    #   resp.data.projects[0].source.report_build_status #=> Boolean
    #   resp.data.projects[0].source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.projects[0].source.build_status_config.context #=> String
    #   resp.data.projects[0].source.build_status_config.target_url #=> String
    #   resp.data.projects[0].source.insecure_ssl #=> Boolean
    #   resp.data.projects[0].source.source_identifier #=> String
    #   resp.data.projects[0].secondary_sources #=> Array<ProjectSource>
    #   resp.data.projects[0].source_version #=> String
    #   resp.data.projects[0].secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.projects[0].secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.projects[0].secondary_source_versions[0].source_identifier #=> String
    #   resp.data.projects[0].secondary_source_versions[0].source_version #=> String
    #   resp.data.projects[0].artifacts #=> Types::ProjectArtifacts
    #   resp.data.projects[0].artifacts.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.projects[0].artifacts.location #=> String
    #   resp.data.projects[0].artifacts.path #=> String
    #   resp.data.projects[0].artifacts.namespace_type #=> String, one of ["NONE", "BUILD_ID"]
    #   resp.data.projects[0].artifacts.name #=> String
    #   resp.data.projects[0].artifacts.packaging #=> String, one of ["NONE", "ZIP"]
    #   resp.data.projects[0].artifacts.override_artifact_name #=> Boolean
    #   resp.data.projects[0].artifacts.encryption_disabled #=> Boolean
    #   resp.data.projects[0].artifacts.artifact_identifier #=> String
    #   resp.data.projects[0].artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.projects[0].secondary_artifacts #=> Array<ProjectArtifacts>
    #   resp.data.projects[0].cache #=> Types::ProjectCache
    #   resp.data.projects[0].cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.projects[0].cache.location #=> String
    #   resp.data.projects[0].cache.modes #=> Array<String>
    #   resp.data.projects[0].cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.projects[0].environment #=> Types::ProjectEnvironment
    #   resp.data.projects[0].environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.projects[0].environment.image #=> String
    #   resp.data.projects[0].environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.projects[0].environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.projects[0].environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.projects[0].environment.environment_variables[0].name #=> String
    #   resp.data.projects[0].environment.environment_variables[0].value #=> String
    #   resp.data.projects[0].environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.projects[0].environment.privileged_mode #=> Boolean
    #   resp.data.projects[0].environment.certificate #=> String
    #   resp.data.projects[0].environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.projects[0].environment.registry_credential.credential #=> String
    #   resp.data.projects[0].environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.projects[0].environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.projects[0].service_role #=> String
    #   resp.data.projects[0].timeout_in_minutes #=> Integer
    #   resp.data.projects[0].queued_timeout_in_minutes #=> Integer
    #   resp.data.projects[0].encryption_key #=> String
    #   resp.data.projects[0].tags #=> Array<Tag>
    #   resp.data.projects[0].tags[0] #=> Types::Tag
    #   resp.data.projects[0].tags[0].key #=> String
    #   resp.data.projects[0].tags[0].value #=> String
    #   resp.data.projects[0].created #=> Time
    #   resp.data.projects[0].last_modified #=> Time
    #   resp.data.projects[0].webhook #=> Types::Webhook
    #   resp.data.projects[0].webhook.url #=> String
    #   resp.data.projects[0].webhook.payload_url #=> String
    #   resp.data.projects[0].webhook.secret #=> String
    #   resp.data.projects[0].webhook.branch_filter #=> String
    #   resp.data.projects[0].webhook.filter_groups #=> Array<Array<WebhookFilter>>
    #   resp.data.projects[0].webhook.filter_groups[0] #=> Array<WebhookFilter>
    #   resp.data.projects[0].webhook.filter_groups[0][0] #=> Types::WebhookFilter
    #   resp.data.projects[0].webhook.filter_groups[0][0].type #=> String, one of ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #   resp.data.projects[0].webhook.filter_groups[0][0].pattern #=> String
    #   resp.data.projects[0].webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.data.projects[0].webhook.build_type #=> String, one of ["BUILD", "BUILD_BATCH"]
    #   resp.data.projects[0].webhook.last_modified_secret #=> Time
    #   resp.data.projects[0].vpc_config #=> Types::VpcConfig
    #   resp.data.projects[0].vpc_config.vpc_id #=> String
    #   resp.data.projects[0].vpc_config.subnets #=> Array<String>
    #   resp.data.projects[0].vpc_config.subnets[0] #=> String
    #   resp.data.projects[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.projects[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.projects[0].badge #=> Types::ProjectBadge
    #   resp.data.projects[0].badge.badge_enabled #=> Boolean
    #   resp.data.projects[0].badge.badge_request_url #=> String
    #   resp.data.projects[0].logs_config #=> Types::LogsConfig
    #   resp.data.projects[0].logs_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.projects[0].logs_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.projects[0].logs_config.cloud_watch_logs.group_name #=> String
    #   resp.data.projects[0].logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.projects[0].logs_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.projects[0].logs_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.projects[0].logs_config.s3_logs.location #=> String
    #   resp.data.projects[0].logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.projects[0].logs_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.projects[0].file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.projects[0].file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.projects[0].file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.projects[0].file_system_locations[0].location #=> String
    #   resp.data.projects[0].file_system_locations[0].mount_point #=> String
    #   resp.data.projects[0].file_system_locations[0].identifier #=> String
    #   resp.data.projects[0].file_system_locations[0].mount_options #=> String
    #   resp.data.projects[0].build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.projects[0].build_batch_config.service_role #=> String
    #   resp.data.projects[0].build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.projects[0].build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.projects[0].build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.projects[0].build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.projects[0].build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.projects[0].build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.projects[0].build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.projects[0].concurrent_build_limit #=> Integer
    #   resp.data.projects[0].project_visibility #=> String, one of ["PUBLIC_READ", "PRIVATE"]
    #   resp.data.projects[0].public_project_alias #=> String
    #   resp.data.projects[0].resource_access_role #=> String
    #   resp.data.projects_not_found #=> Array<String>
    #   resp.data.projects_not_found[0] #=> String
    #
    def batch_get_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetProjectsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetProjects
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::BatchGetProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetProjects,
        stubs: @stubs,
        params_class: Params::BatchGetProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns an array of report groups.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetReportGroupsInput}.
    #
    # @option params [Array<String>] :report_group_arns
    #   <p>
    #         An array of report group ARNs that identify the report groups to return.
    #       </p>
    #
    # @return [Types::BatchGetReportGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_report_groups(
    #     report_group_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetReportGroupsOutput
    #   resp.data.report_groups #=> Array<ReportGroup>
    #   resp.data.report_groups[0] #=> Types::ReportGroup
    #   resp.data.report_groups[0].arn #=> String
    #   resp.data.report_groups[0].name #=> String
    #   resp.data.report_groups[0].type #=> String, one of ["TEST", "CODE_COVERAGE"]
    #   resp.data.report_groups[0].export_config #=> Types::ReportExportConfig
    #   resp.data.report_groups[0].export_config.export_config_type #=> String, one of ["S3", "NO_EXPORT"]
    #   resp.data.report_groups[0].export_config.s3_destination #=> Types::S3ReportExportConfig
    #   resp.data.report_groups[0].export_config.s3_destination.bucket #=> String
    #   resp.data.report_groups[0].export_config.s3_destination.bucket_owner #=> String
    #   resp.data.report_groups[0].export_config.s3_destination.path #=> String
    #   resp.data.report_groups[0].export_config.s3_destination.packaging #=> String, one of ["ZIP", "NONE"]
    #   resp.data.report_groups[0].export_config.s3_destination.encryption_key #=> String
    #   resp.data.report_groups[0].export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.data.report_groups[0].created #=> Time
    #   resp.data.report_groups[0].last_modified #=> Time
    #   resp.data.report_groups[0].tags #=> Array<Tag>
    #   resp.data.report_groups[0].tags[0] #=> Types::Tag
    #   resp.data.report_groups[0].tags[0].key #=> String
    #   resp.data.report_groups[0].tags[0].value #=> String
    #   resp.data.report_groups[0].status #=> String, one of ["ACTIVE", "DELETING"]
    #   resp.data.report_groups_not_found #=> Array<String>
    #   resp.data.report_groups_not_found[0] #=> String
    #
    def batch_get_report_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetReportGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetReportGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetReportGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::BatchGetReportGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetReportGroups,
        stubs: @stubs,
        params_class: Params::BatchGetReportGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_report_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns an array of reports.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetReportsInput}.
    #
    # @option params [Array<String>] :report_arns
    #   <p>
    #         An array of ARNs that identify the <code>Report</code> objects to return.
    #       </p>
    #
    # @return [Types::BatchGetReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_reports(
    #     report_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetReportsOutput
    #   resp.data.reports #=> Array<Report>
    #   resp.data.reports[0] #=> Types::Report
    #   resp.data.reports[0].arn #=> String
    #   resp.data.reports[0].type #=> String, one of ["TEST", "CODE_COVERAGE"]
    #   resp.data.reports[0].name #=> String
    #   resp.data.reports[0].report_group_arn #=> String
    #   resp.data.reports[0].execution_id #=> String
    #   resp.data.reports[0].status #=> String, one of ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #   resp.data.reports[0].created #=> Time
    #   resp.data.reports[0].expired #=> Time
    #   resp.data.reports[0].export_config #=> Types::ReportExportConfig
    #   resp.data.reports[0].export_config.export_config_type #=> String, one of ["S3", "NO_EXPORT"]
    #   resp.data.reports[0].export_config.s3_destination #=> Types::S3ReportExportConfig
    #   resp.data.reports[0].export_config.s3_destination.bucket #=> String
    #   resp.data.reports[0].export_config.s3_destination.bucket_owner #=> String
    #   resp.data.reports[0].export_config.s3_destination.path #=> String
    #   resp.data.reports[0].export_config.s3_destination.packaging #=> String, one of ["ZIP", "NONE"]
    #   resp.data.reports[0].export_config.s3_destination.encryption_key #=> String
    #   resp.data.reports[0].export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.data.reports[0].truncated #=> Boolean
    #   resp.data.reports[0].test_summary #=> Types::TestReportSummary
    #   resp.data.reports[0].test_summary.total #=> Integer
    #   resp.data.reports[0].test_summary.status_counts #=> Hash<String, Integer>
    #   resp.data.reports[0].test_summary.status_counts['key'] #=> Integer
    #   resp.data.reports[0].test_summary.duration_in_nano_seconds #=> Integer
    #   resp.data.reports[0].code_coverage_summary #=> Types::CodeCoverageReportSummary
    #   resp.data.reports[0].code_coverage_summary.line_coverage_percentage #=> Float
    #   resp.data.reports[0].code_coverage_summary.lines_covered #=> Integer
    #   resp.data.reports[0].code_coverage_summary.lines_missed #=> Integer
    #   resp.data.reports[0].code_coverage_summary.branch_coverage_percentage #=> Float
    #   resp.data.reports[0].code_coverage_summary.branches_covered #=> Integer
    #   resp.data.reports[0].code_coverage_summary.branches_missed #=> Integer
    #   resp.data.reports_not_found #=> Array<String>
    #   resp.data.reports_not_found[0] #=> String
    #
    def batch_get_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetReportsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetReports
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::BatchGetReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetReports,
        stubs: @stubs,
        params_class: Params::BatchGetReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a build project.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :name
    #   <p>The name of the build project.</p>
    #
    # @option params [String] :description
    #   <p>A description that makes the build project easy to identify.</p>
    #
    # @option params [ProjectSource] :source
    #   <p>Information about the build input source code for the build project.</p>
    #
    # @option params [Array<ProjectSource>] :secondary_sources
    #   <p>An array of <code>ProjectSource</code> objects. </p>
    #
    # @option params [String] :source_version
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
    # @option params [Array<ProjectSourceVersion>] :secondary_source_versions
    #   <p>An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #         precedence over these <code>secondarySourceVersions</code> (at the project level).
    #       </p>
    #
    # @option params [ProjectArtifacts] :artifacts
    #   <p>Information about the build output artifacts for the build project.</p>
    #
    # @option params [Array<ProjectArtifacts>] :secondary_artifacts
    #   <p>An array of <code>ProjectArtifacts</code> objects. </p>
    #
    # @option params [ProjectCache] :cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #           time.</p>
    #
    # @option params [ProjectEnvironment] :environment
    #   <p>Information about the build environment for the build project.</p>
    #
    # @option params [String] :service_role
    #   <p>The ARN of the IAM role that enables CodeBuild to interact with dependent Amazon Web Services services
    #         on behalf of the Amazon Web Services account.</p>
    #
    # @option params [Integer] :timeout_in_minutes
    #   <p>How long, in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before it times out
    #         any build that has not been marked as completed. The default is 60 minutes.</p>
    #
    # @option params [Integer] :queued_timeout_in_minutes
    #   <p>The number of minutes a build is allowed to be queued before it times out. </p>
    #
    # @option params [String] :encryption_key
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
    # @option params [Array<Tag>] :tags
    #   <p>A list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #
    # @option params [Boolean] :badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #           badge.</p>
    #
    # @option params [LogsConfig] :logs_config
    #   <p>Information about logs for the build project. These can be logs in CloudWatch Logs, logs
    #         uploaded to a specified S3 bucket, or both. </p>
    #
    # @option params [Array<ProjectFileSystemLocation>] :file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #
    # @option params [ProjectBuildBatchConfig] :build_batch_config
    #   <p>A <a>ProjectBuildBatchConfig</a>
    #    object that defines the batch build options
    #               for the project.</p>
    #
    # @option params [Integer] :concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit.
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     name: 'name', # required
    #     description: 'description',
    #     source: {
    #       type: 'CODECOMMIT', # required - accepts ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #       location: 'location',
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false # required
    #       },
    #       buildspec: 'buildspec',
    #       auth: {
    #         type: 'OAUTH', # required - accepts ["OAUTH"]
    #         resource: 'resource'
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: 'context',
    #         target_url: 'targetUrl'
    #       },
    #       insecure_ssl: false,
    #       source_identifier: 'sourceIdentifier'
    #     }, # required
    #     source_version: 'sourceVersion',
    #     secondary_source_versions: [
    #       {
    #         source_identifier: 'sourceIdentifier', # required
    #         source_version: 'sourceVersion' # required
    #       }
    #     ],
    #     artifacts: {
    #       type: 'CODEPIPELINE', # required - accepts ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #       location: 'location',
    #       path: 'path',
    #       namespace_type: 'NONE', # accepts ["NONE", "BUILD_ID"]
    #       name: 'name',
    #       packaging: 'NONE', # accepts ["NONE", "ZIP"]
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: 'artifactIdentifier',
    #       bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #     }, # required
    #     cache: {
    #       type: 'NO_CACHE', # required - accepts ["NO_CACHE", "S3", "LOCAL"]
    #       location: 'location',
    #       modes: [
    #         'LOCAL_DOCKER_LAYER_CACHE' # accepts ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #       ]
    #     },
    #     environment: {
    #       type: 'WINDOWS_CONTAINER', # required - accepts ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #       image: 'image', # required
    #       compute_type: 'BUILD_GENERAL1_SMALL', # required - accepts ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #       environment_variables: [
    #         {
    #           name: 'name', # required
    #           value: 'value', # required
    #           type: 'PLAINTEXT' # accepts ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #         }
    #       ],
    #       privileged_mode: false,
    #       certificate: 'certificate',
    #       registry_credential: {
    #         credential: 'credential', # required
    #         credential_provider: 'SECRETS_MANAGER' # required - accepts ["SECRETS_MANAGER"]
    #       },
    #       image_pull_credentials_type: 'CODEBUILD' # accepts ["CODEBUILD", "SERVICE_ROLE"]
    #     }, # required
    #     service_role: 'serviceRole', # required
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: 'encryptionKey',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     vpc_config: {
    #       vpc_id: 'vpcId',
    #       subnets: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         group_name: 'groupName',
    #         stream_name: 'streamName'
    #       },
    #       s3_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         location: 'location',
    #         encryption_disabled: false,
    #         bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     file_system_locations: [
    #       {
    #         type: 'EFS', # accepts ["EFS"]
    #         location: 'location',
    #         mount_point: 'mountPoint',
    #         identifier: 'identifier',
    #         mount_options: 'mountOptions'
    #       }
    #     ],
    #     build_batch_config: {
    #       service_role: 'serviceRole',
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: [
    #           'member'
    #         ]
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: 'REPORT_INDIVIDUAL_BUILDS' # accepts ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #     },
    #     concurrent_build_limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.name #=> String
    #   resp.data.project.arn #=> String
    #   resp.data.project.description #=> String
    #   resp.data.project.source #=> Types::ProjectSource
    #   resp.data.project.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.project.source.location #=> String
    #   resp.data.project.source.git_clone_depth #=> Integer
    #   resp.data.project.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.project.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.project.source.buildspec #=> String
    #   resp.data.project.source.auth #=> Types::SourceAuth
    #   resp.data.project.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.project.source.auth.resource #=> String
    #   resp.data.project.source.report_build_status #=> Boolean
    #   resp.data.project.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.project.source.build_status_config.context #=> String
    #   resp.data.project.source.build_status_config.target_url #=> String
    #   resp.data.project.source.insecure_ssl #=> Boolean
    #   resp.data.project.source.source_identifier #=> String
    #   resp.data.project.secondary_sources #=> Array<ProjectSource>
    #   resp.data.project.source_version #=> String
    #   resp.data.project.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.project.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.project.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.project.secondary_source_versions[0].source_version #=> String
    #   resp.data.project.artifacts #=> Types::ProjectArtifacts
    #   resp.data.project.artifacts.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.project.artifacts.location #=> String
    #   resp.data.project.artifacts.path #=> String
    #   resp.data.project.artifacts.namespace_type #=> String, one of ["NONE", "BUILD_ID"]
    #   resp.data.project.artifacts.name #=> String
    #   resp.data.project.artifacts.packaging #=> String, one of ["NONE", "ZIP"]
    #   resp.data.project.artifacts.override_artifact_name #=> Boolean
    #   resp.data.project.artifacts.encryption_disabled #=> Boolean
    #   resp.data.project.artifacts.artifact_identifier #=> String
    #   resp.data.project.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.project.secondary_artifacts #=> Array<ProjectArtifacts>
    #   resp.data.project.cache #=> Types::ProjectCache
    #   resp.data.project.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.project.cache.location #=> String
    #   resp.data.project.cache.modes #=> Array<String>
    #   resp.data.project.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.project.environment #=> Types::ProjectEnvironment
    #   resp.data.project.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.project.environment.image #=> String
    #   resp.data.project.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.project.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.project.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.project.environment.environment_variables[0].name #=> String
    #   resp.data.project.environment.environment_variables[0].value #=> String
    #   resp.data.project.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.project.environment.privileged_mode #=> Boolean
    #   resp.data.project.environment.certificate #=> String
    #   resp.data.project.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.project.environment.registry_credential.credential #=> String
    #   resp.data.project.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.project.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.project.service_role #=> String
    #   resp.data.project.timeout_in_minutes #=> Integer
    #   resp.data.project.queued_timeout_in_minutes #=> Integer
    #   resp.data.project.encryption_key #=> String
    #   resp.data.project.tags #=> Array<Tag>
    #   resp.data.project.tags[0] #=> Types::Tag
    #   resp.data.project.tags[0].key #=> String
    #   resp.data.project.tags[0].value #=> String
    #   resp.data.project.created #=> Time
    #   resp.data.project.last_modified #=> Time
    #   resp.data.project.webhook #=> Types::Webhook
    #   resp.data.project.webhook.url #=> String
    #   resp.data.project.webhook.payload_url #=> String
    #   resp.data.project.webhook.secret #=> String
    #   resp.data.project.webhook.branch_filter #=> String
    #   resp.data.project.webhook.filter_groups #=> Array<Array<WebhookFilter>>
    #   resp.data.project.webhook.filter_groups[0] #=> Array<WebhookFilter>
    #   resp.data.project.webhook.filter_groups[0][0] #=> Types::WebhookFilter
    #   resp.data.project.webhook.filter_groups[0][0].type #=> String, one of ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #   resp.data.project.webhook.filter_groups[0][0].pattern #=> String
    #   resp.data.project.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.data.project.webhook.build_type #=> String, one of ["BUILD", "BUILD_BATCH"]
    #   resp.data.project.webhook.last_modified_secret #=> Time
    #   resp.data.project.vpc_config #=> Types::VpcConfig
    #   resp.data.project.vpc_config.vpc_id #=> String
    #   resp.data.project.vpc_config.subnets #=> Array<String>
    #   resp.data.project.vpc_config.subnets[0] #=> String
    #   resp.data.project.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.project.vpc_config.security_group_ids[0] #=> String
    #   resp.data.project.badge #=> Types::ProjectBadge
    #   resp.data.project.badge.badge_enabled #=> Boolean
    #   resp.data.project.badge.badge_request_url #=> String
    #   resp.data.project.logs_config #=> Types::LogsConfig
    #   resp.data.project.logs_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.project.logs_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.data.project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.project.logs_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.project.logs_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.project.logs_config.s3_logs.location #=> String
    #   resp.data.project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.project.logs_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.project.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.project.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.project.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.project.file_system_locations[0].location #=> String
    #   resp.data.project.file_system_locations[0].mount_point #=> String
    #   resp.data.project.file_system_locations[0].identifier #=> String
    #   resp.data.project.file_system_locations[0].mount_options #=> String
    #   resp.data.project.build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.project.build_batch_config.service_role #=> String
    #   resp.data.project.build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.project.build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.project.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.project.build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.project.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.project.build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.project.build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.project.concurrent_build_limit #=> Integer
    #   resp.data.project.project_visibility #=> String, one of ["PUBLIC_READ", "PRIVATE"]
    #   resp.data.project.public_project_alias #=> String
    #   resp.data.project.resource_access_role #=> String
    #
    def create_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountLimitExceededException, Errors::InvalidInputException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProject,
        stubs: @stubs,
        params_class: Params::CreateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Creates a report group. A report group contains a collection of reports.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::CreateReportGroupInput}.
    #
    # @option params [String] :name
    #   <p>
    #         The name of the report group.
    #       </p>
    #
    # @option params [String] :type
    #   <p>
    #         The type of report group.
    #       </p>
    #
    # @option params [ReportExportConfig] :export_config
    #   <p>
    #         A <code>ReportExportConfig</code> object that contains information about where the report group test results are exported.
    #       </p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>
    #         A list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #
    # @return [Types::CreateReportGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_report_group(
    #     name: 'name', # required
    #     type: 'TEST', # required - accepts ["TEST", "CODE_COVERAGE"]
    #     export_config: {
    #       export_config_type: 'S3', # accepts ["S3", "NO_EXPORT"]
    #       s3_destination: {
    #         bucket: 'bucket',
    #         bucket_owner: 'bucketOwner',
    #         path: 'path',
    #         packaging: 'ZIP', # accepts ["ZIP", "NONE"]
    #         encryption_key: 'encryptionKey',
    #         encryption_disabled: false
    #       }
    #     }, # required
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateReportGroupOutput
    #   resp.data.report_group #=> Types::ReportGroup
    #   resp.data.report_group.arn #=> String
    #   resp.data.report_group.name #=> String
    #   resp.data.report_group.type #=> String, one of ["TEST", "CODE_COVERAGE"]
    #   resp.data.report_group.export_config #=> Types::ReportExportConfig
    #   resp.data.report_group.export_config.export_config_type #=> String, one of ["S3", "NO_EXPORT"]
    #   resp.data.report_group.export_config.s3_destination #=> Types::S3ReportExportConfig
    #   resp.data.report_group.export_config.s3_destination.bucket #=> String
    #   resp.data.report_group.export_config.s3_destination.bucket_owner #=> String
    #   resp.data.report_group.export_config.s3_destination.path #=> String
    #   resp.data.report_group.export_config.s3_destination.packaging #=> String, one of ["ZIP", "NONE"]
    #   resp.data.report_group.export_config.s3_destination.encryption_key #=> String
    #   resp.data.report_group.export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.data.report_group.created #=> Time
    #   resp.data.report_group.last_modified #=> Time
    #   resp.data.report_group.tags #=> Array<Tag>
    #   resp.data.report_group.tags[0] #=> Types::Tag
    #   resp.data.report_group.tags[0].key #=> String
    #   resp.data.report_group.tags[0].value #=> String
    #   resp.data.report_group.status #=> String, one of ["ACTIVE", "DELETING"]
    #
    def create_report_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateReportGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateReportGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateReportGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountLimitExceededException, Errors::InvalidInputException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::CreateReportGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateReportGroup,
        stubs: @stubs,
        params_class: Params::CreateReportGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_report_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For an existing CodeBuild build project that has its source code stored in a GitHub or
    #       Bitbucket repository, enables CodeBuild to start rebuilding the source code every time a
    #       code change is pushed to the repository.</p>
    #          <important>
    #             <p>If you enable webhooks for an CodeBuild project, and the project is used as a build
    #         step in CodePipeline, then two identical builds are created for each commit. One build is
    #         triggered through webhooks, and one through CodePipeline. Because billing is on a per-build
    #         basis, you are billed for both builds. Therefore, if you are using CodePipeline, we
    #         recommend that you disable webhooks in CodeBuild. In the CodeBuild console, clear the
    #         Webhook box. For more information, see step 5 in <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/change-project.html#change-project-console">Change a Build Project's Settings</a>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateWebhookInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    # @option params [String] :branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p>It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #
    # @option params [Array<Array<WebhookFilter>>] :filter_groups
    #   <p>An array of arrays of <code>WebhookFilter</code> objects used to determine which
    #         webhooks are triggered. At least one <code>WebhookFilter</code> in the array must
    #         specify <code>EVENT</code> as its <code>type</code>. </p>
    #            <p>For a build to be triggered, at least one filter group in the
    #         <code>filterGroups</code> array must pass. For a filter group to pass, each of its
    #         filters must pass. </p>
    #
    # @option params [String] :build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #
    # @return [Types::CreateWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_webhook(
    #     project_name: 'projectName', # required
    #     branch_filter: 'branchFilter',
    #     filter_groups: [
    #       [
    #         {
    #           type: 'EVENT', # required - accepts ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #           pattern: 'pattern', # required
    #           exclude_matched_pattern: false
    #         }
    #       ]
    #     ],
    #     build_type: 'BUILD' # accepts ["BUILD", "BUILD_BATCH"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateWebhookOutput
    #   resp.data.webhook #=> Types::Webhook
    #   resp.data.webhook.url #=> String
    #   resp.data.webhook.payload_url #=> String
    #   resp.data.webhook.secret #=> String
    #   resp.data.webhook.branch_filter #=> String
    #   resp.data.webhook.filter_groups #=> Array<Array<WebhookFilter>>
    #   resp.data.webhook.filter_groups[0] #=> Array<WebhookFilter>
    #   resp.data.webhook.filter_groups[0][0] #=> Types::WebhookFilter
    #   resp.data.webhook.filter_groups[0][0].type #=> String, one of ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #   resp.data.webhook.filter_groups[0][0].pattern #=> String
    #   resp.data.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.data.webhook.build_type #=> String, one of ["BUILD", "BUILD_BATCH"]
    #   resp.data.webhook.last_modified_secret #=> Time
    #
    def create_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateWebhookInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateWebhook
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::OAuthProviderException, Errors::ResourceAlreadyExistsException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateWebhook,
        stubs: @stubs,
        params_class: Params::CreateWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a batch build.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBuildBatchInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the batch build to delete.</p>
    #
    # @return [Types::DeleteBuildBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_build_batch(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBuildBatchOutput
    #   resp.data.status_code #=> String
    #   resp.data.builds_deleted #=> Array<String>
    #   resp.data.builds_deleted[0] #=> String
    #   resp.data.builds_not_deleted #=> Array<BuildNotDeleted>
    #   resp.data.builds_not_deleted[0] #=> Types::BuildNotDeleted
    #   resp.data.builds_not_deleted[0].id #=> String
    #   resp.data.builds_not_deleted[0].status_code #=> String
    #
    def delete_build_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBuildBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBuildBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBuildBatch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::DeleteBuildBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBuildBatch,
        stubs: @stubs,
        params_class: Params::DeleteBuildBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_build_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a build project. When you delete a project, its builds are not deleted.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :name
    #   <p>The name of the build project.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     name: 'name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #
    def delete_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::DeleteProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProject,
        stubs: @stubs,
        params_class: Params::DeleteProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Deletes a report.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReportInput}.
    #
    # @option params [String] :arn
    #   <p>
    #         The ARN of the report to delete.
    #       </p>
    #
    # @return [Types::DeleteReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReportOutput
    #
    def delete_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReportInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReport
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::DeleteReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReport,
        stubs: @stubs,
        params_class: Params::DeleteReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a report group. Before you delete a report group, you must delete its reports. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteReportGroupInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the report group to delete. </p>
    #
    # @option params [Boolean] :delete_reports
    #   <p>If <code>true</code>, deletes any reports that belong to a report group before deleting
    #               the report group. </p>
    #            <p>If <code>false</code>, you must delete any reports in the report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_ListReportsForReportGroup.html">ListReportsForReportGroup</a> to get the reports in a report group. Use <a href="https://docs.aws.amazon.com/codebuild/latest/APIReference/API_DeleteReport.html">DeleteReport</a> to delete the reports. If you call
    #         <code>DeleteReportGroup</code> for a report group that contains one or more reports,
    #               an exception is thrown. </p>
    #
    # @return [Types::DeleteReportGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_report_group(
    #     arn: 'arn', # required
    #     delete_reports: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteReportGroupOutput
    #
    def delete_report_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteReportGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteReportGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteReportGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::DeleteReportGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteReportGroup,
        stubs: @stubs,
        params_class: Params::DeleteReportGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_report_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a resource policy that is identified by its resource ARN. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    #
    # @return [Types::DeleteResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_policy(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourcePolicyOutput
    #
    def delete_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourcePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::DeleteResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourcePolicy,
        stubs: @stubs,
        params_class: Params::DeleteResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes a set of GitHub, GitHub Enterprise, or Bitbucket source credentials. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSourceCredentialsInput}.
    #
    # @option params [String] :arn
    #   <p> The Amazon Resource Name (ARN) of the token.</p>
    #
    # @return [Types::DeleteSourceCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_source_credentials(
    #     arn: 'arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSourceCredentialsOutput
    #   resp.data.arn #=> String
    #
    def delete_source_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSourceCredentialsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSourceCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSourceCredentials
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteSourceCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSourceCredentials,
        stubs: @stubs,
        params_class: Params::DeleteSourceCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_source_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For an existing CodeBuild build project that has its source code stored in a GitHub or
    #             Bitbucket repository, stops CodeBuild from rebuilding the source code every time a code
    #             change is pushed to the repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteWebhookInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    # @return [Types::DeleteWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_webhook(
    #     project_name: 'projectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteWebhookOutput
    #
    def delete_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteWebhookInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteWebhook
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::OAuthProviderException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteWebhook,
        stubs: @stubs,
        params_class: Params::DeleteWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves one or more code coverage reports.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCodeCoveragesInput}.
    #
    # @option params [String] :report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>DescribeCodeCoverages</code>. This specifies the next item to return. To
    #               return the beginning of the list, exclude this parameter.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :sort_order
    #   <p>Specifies if the results are sorted in ascending or descending order.</p>
    #
    # @option params [String] :sort_by
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
    # @option params [Float] :min_line_coverage_percentage
    #   <p>The minimum line coverage percentage to report.</p>
    #
    # @option params [Float] :max_line_coverage_percentage
    #   <p>The maximum line coverage percentage to report.</p>
    #
    # @return [Types::DescribeCodeCoveragesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_code_coverages(
    #     report_arn: 'reportArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     sort_by: 'LINE_COVERAGE_PERCENTAGE', # accepts ["LINE_COVERAGE_PERCENTAGE", "FILE_PATH"]
    #     min_line_coverage_percentage: 1.0,
    #     max_line_coverage_percentage: 1.0
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCodeCoveragesOutput
    #   resp.data.next_token #=> String
    #   resp.data.code_coverages #=> Array<CodeCoverage>
    #   resp.data.code_coverages[0] #=> Types::CodeCoverage
    #   resp.data.code_coverages[0].id #=> String
    #   resp.data.code_coverages[0].report_arn #=> String
    #   resp.data.code_coverages[0].file_path #=> String
    #   resp.data.code_coverages[0].line_coverage_percentage #=> Float
    #   resp.data.code_coverages[0].lines_covered #=> Integer
    #   resp.data.code_coverages[0].lines_missed #=> Integer
    #   resp.data.code_coverages[0].branch_coverage_percentage #=> Float
    #   resp.data.code_coverages[0].branches_covered #=> Integer
    #   resp.data.code_coverages[0].branches_missed #=> Integer
    #   resp.data.code_coverages[0].expired #=> Time
    #
    def describe_code_coverages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCodeCoveragesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCodeCoveragesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCodeCoverages
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::DescribeCodeCoverages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCodeCoverages,
        stubs: @stubs,
        params_class: Params::DescribeCodeCoveragesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_code_coverages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns a list of details about test cases for a report.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTestCasesInput}.
    #
    # @option params [String] :report_arn
    #   <p>
    #         The ARN of the report for which test cases are returned.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated test cases returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>TestCase</code> objects. The default value is 100.
    #       </p>
    #
    # @option params [TestCaseFilter] :filter
    #   <p>
    #         A <code>TestCaseFilter</code> object used to filter the returned reports.
    #       </p>
    #
    # @return [Types::DescribeTestCasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_test_cases(
    #     report_arn: 'reportArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filter: {
    #       status: 'status',
    #       keyword: 'keyword'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTestCasesOutput
    #   resp.data.next_token #=> String
    #   resp.data.test_cases #=> Array<TestCase>
    #   resp.data.test_cases[0] #=> Types::TestCase
    #   resp.data.test_cases[0].report_arn #=> String
    #   resp.data.test_cases[0].test_raw_data_path #=> String
    #   resp.data.test_cases[0].prefix #=> String
    #   resp.data.test_cases[0].name #=> String
    #   resp.data.test_cases[0].status #=> String
    #   resp.data.test_cases[0].duration_in_nano_seconds #=> Integer
    #   resp.data.test_cases[0].message #=> String
    #   resp.data.test_cases[0].expired #=> Time
    #
    def describe_test_cases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTestCasesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTestCasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTestCases
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DescribeTestCases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTestCases,
        stubs: @stubs,
        params_class: Params::DescribeTestCasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_test_cases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Analyzes and accumulates test report values for the specified test reports.</p>
    #
    # @param [Hash] params
    #   See {Types::GetReportGroupTrendInput}.
    #
    # @option params [String] :report_group_arn
    #   <p>The ARN of the report group that contains the reports to analyze.</p>
    #
    # @option params [Integer] :num_of_reports
    #   <p>The number of reports to analyze. This operation always retrieves the most recent
    #               reports.</p>
    #           <p>If this parameter is omitted, the most recent 100 reports are analyzed.</p>
    #
    # @option params [String] :trend_field
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
    # @return [Types::GetReportGroupTrendOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_report_group_trend(
    #     report_group_arn: 'reportGroupArn', # required
    #     num_of_reports: 1,
    #     trend_field: 'PASS_RATE' # required - accepts ["PASS_RATE", "DURATION", "TOTAL", "LINE_COVERAGE", "LINES_COVERED", "LINES_MISSED", "BRANCH_COVERAGE", "BRANCHES_COVERED", "BRANCHES_MISSED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetReportGroupTrendOutput
    #   resp.data.stats #=> Types::ReportGroupTrendStats
    #   resp.data.stats.average #=> String
    #   resp.data.stats.max #=> String
    #   resp.data.stats.min #=> String
    #   resp.data.raw_data #=> Array<ReportWithRawData>
    #   resp.data.raw_data[0] #=> Types::ReportWithRawData
    #   resp.data.raw_data[0].report_arn #=> String
    #   resp.data.raw_data[0].data #=> String
    #
    def get_report_group_trend(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetReportGroupTrendInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetReportGroupTrendInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetReportGroupTrend
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetReportGroupTrend
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetReportGroupTrend,
        stubs: @stubs,
        params_class: Params::GetReportGroupTrendOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_report_group_trend
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets a resource policy that is identified by its resource ARN. </p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePolicyInput}.
    #
    # @option params [String] :resource_arn
    #   <p> The ARN of the resource that is associated with the resource policy. </p>
    #
    # @return [Types::GetResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policy(
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePolicyOutput
    #   resp.data.policy #=> String
    #
    def get_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourcePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourcePolicy,
        stubs: @stubs,
        params_class: Params::GetResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Imports the source repository credentials for an CodeBuild project that has its
    #             source code stored in a GitHub, GitHub Enterprise, or Bitbucket repository. </p>
    #
    # @param [Hash] params
    #   See {Types::ImportSourceCredentialsInput}.
    #
    # @option params [String] :username
    #   <p> The Bitbucket username when the <code>authType</code> is BASIC_AUTH. This parameter
    #               is not valid for other types of source providers or connections. </p>
    #
    # @option params [String] :token
    #   <p> For GitHub or GitHub Enterprise, this is the personal access token. For Bitbucket,
    #               this is the app password. </p>
    #
    # @option params [String] :server_type
    #   <p> The source provider used for this project. </p>
    #
    # @option params [String] :auth_type
    #   <p> The type of authentication used to connect to a GitHub, GitHub Enterprise, or
    #               Bitbucket repository. An OAUTH connection is not supported by the API and must be
    #               created using the CodeBuild console. </p>
    #
    # @option params [Boolean] :should_overwrite
    #   <p> Set to <code>false</code> to prevent overwriting the repository source credentials.
    #               Set to <code>true</code> to overwrite the repository source credentials. The default
    #               value is <code>true</code>. </p>
    #
    # @return [Types::ImportSourceCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_source_credentials(
    #     username: 'username',
    #     token: 'token', # required
    #     server_type: 'GITHUB', # required - accepts ["GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE"]
    #     auth_type: 'OAUTH', # required - accepts ["OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN"]
    #     should_overwrite: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportSourceCredentialsOutput
    #   resp.data.arn #=> String
    #
    def import_source_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportSourceCredentialsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportSourceCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportSourceCredentials
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountLimitExceededException, Errors::InvalidInputException, Errors::ResourceAlreadyExistsException]),
        data_parser: Parsers::ImportSourceCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportSourceCredentials,
        stubs: @stubs,
        params_class: Params::ImportSourceCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_source_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets the cache for a project.</p>
    #
    # @param [Hash] params
    #   See {Types::InvalidateProjectCacheInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild build project that the cache is reset for.</p>
    #
    # @return [Types::InvalidateProjectCacheOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invalidate_project_cache(
    #     project_name: 'projectName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InvalidateProjectCacheOutput
    #
    def invalidate_project_cache(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvalidateProjectCacheInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvalidateProjectCacheInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvalidateProjectCache
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::InvalidateProjectCache
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InvalidateProjectCache,
        stubs: @stubs,
        params_class: Params::InvalidateProjectCacheOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invalidate_project_cache
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the identifiers of your build batches in the current region.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBuildBatchesInput}.
    #
    # @option params [BuildBatchFilter] :filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :sort_order
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
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatches</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    #
    # @return [Types::ListBuildBatchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_build_batches(
    #     filter: {
    #       status: 'SUCCEEDED' # accepts ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #     },
    #     max_results: 1,
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuildBatchesOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_build_batches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuildBatchesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuildBatchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuildBatches
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListBuildBatches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuildBatches,
        stubs: @stubs,
        params_class: Params::ListBuildBatchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_build_batches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the identifiers of the build batches for a specific project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBuildBatchesForProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project.</p>
    #
    # @option params [BuildBatchFilter] :filter
    #   <p>A <code>BuildBatchFilter</code> object that specifies the filters for the search.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @option params [String] :sort_order
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
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous call to
    #                   <code>ListBuildBatchesForProject</code>. This specifies the next item to return. To return the
    #               beginning of the list, exclude this parameter.</p>
    #
    # @return [Types::ListBuildBatchesForProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_build_batches_for_project(
    #     project_name: 'projectName',
    #     filter: {
    #       status: 'SUCCEEDED' # accepts ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #     },
    #     max_results: 1,
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuildBatchesForProjectOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_build_batches_for_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuildBatchesForProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuildBatchesForProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuildBatchesForProject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListBuildBatchesForProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuildBatchesForProject,
        stubs: @stubs,
        params_class: Params::ListBuildBatchesForProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_build_batches_for_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of build IDs, with each build ID representing a single build.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBuildsInput}.
    #
    # @option params [String] :sort_order
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
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #
    # @return [Types::ListBuildsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds(
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuildsOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_builds(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuildsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuildsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuilds
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListBuilds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuilds,
        stubs: @stubs,
        params_class: Params::ListBuildsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_builds
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of build identifiers for the specified build project, with each build
    #             identifier representing a single build.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBuildsForProjectInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    # @option params [String] :sort_order
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
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #
    # @return [Types::ListBuildsForProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_builds_for_project(
    #     project_name: 'projectName', # required
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBuildsForProjectOutput
    #   resp.data.ids #=> Array<String>
    #   resp.data.ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_builds_for_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBuildsForProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBuildsForProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBuildsForProject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListBuildsForProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBuildsForProject,
        stubs: @stubs,
        params_class: Params::ListBuildsForProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_builds_for_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about Docker images that are managed by CodeBuild.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCuratedEnvironmentImagesInput}.
    #
    # @return [Types::ListCuratedEnvironmentImagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_curated_environment_images()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCuratedEnvironmentImagesOutput
    #   resp.data.platforms #=> Array<EnvironmentPlatform>
    #   resp.data.platforms[0] #=> Types::EnvironmentPlatform
    #   resp.data.platforms[0].platform #=> String, one of ["DEBIAN", "AMAZON_LINUX", "UBUNTU", "WINDOWS_SERVER"]
    #   resp.data.platforms[0].languages #=> Array<EnvironmentLanguage>
    #   resp.data.platforms[0].languages[0] #=> Types::EnvironmentLanguage
    #   resp.data.platforms[0].languages[0].language #=> String, one of ["JAVA", "PYTHON", "NODE_JS", "RUBY", "GOLANG", "DOCKER", "ANDROID", "DOTNET", "BASE", "PHP"]
    #   resp.data.platforms[0].languages[0].images #=> Array<EnvironmentImage>
    #   resp.data.platforms[0].languages[0].images[0] #=> Types::EnvironmentImage
    #   resp.data.platforms[0].languages[0].images[0].name #=> String
    #   resp.data.platforms[0].languages[0].images[0].description #=> String
    #   resp.data.platforms[0].languages[0].images[0].versions #=> Array<String>
    #   resp.data.platforms[0].languages[0].images[0].versions[0] #=> String
    #
    def list_curated_environment_images(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCuratedEnvironmentImagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCuratedEnvironmentImagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCuratedEnvironmentImages
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListCuratedEnvironmentImages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCuratedEnvironmentImages,
        stubs: @stubs,
        params_class: Params::ListCuratedEnvironmentImagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_curated_environment_images
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of build project names, with each build project name representing a single
    #             build project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :sort_by
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
    # @option params [String] :sort_order
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
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 100 items in the list, only the first
    #               100 items are returned, along with a unique string called a
    #                   <i>nextToken</i>. To get the next batch of items in the list, call
    #               this operation again, adding the next token to the call. To get all of the items in the
    #               list, keep calling this operation with each subsequent next token that is returned,
    #               until no more next tokens are returned.</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     sort_by: 'NAME', # accepts ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"]
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.next_token #=> String
    #   resp.data.projects #=> Array<String>
    #   resp.data.projects[0] #=> String
    #
    def list_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProjectsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProjects
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProjects,
        stubs: @stubs,
        params_class: Params::ListProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Gets a list ARNs for the report groups in the current Amazon Web Services account.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListReportGroupsInput}.
    #
    # @option params [String] :sort_order
    #   <p>
    #         Used to specify the order to sort the list of returned report groups. Valid values are
    #         <code>ASCENDING</code> and <code>DESCENDING</code>.
    #       </p>
    #
    # @option params [String] :sort_by
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
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated report groups returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>ReportGroup</code> objects. The default value is 100.
    #       </p>
    #
    # @return [Types::ListReportGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_report_groups(
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     sort_by: 'NAME', # accepts ["NAME", "CREATED_TIME", "LAST_MODIFIED_TIME"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReportGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.report_groups #=> Array<String>
    #   resp.data.report_groups[0] #=> String
    #
    def list_report_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReportGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReportGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReportGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListReportGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReportGroups,
        stubs: @stubs,
        params_class: Params::ListReportGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_report_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns a list of ARNs for the reports in the current Amazon Web Services account.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListReportsInput}.
    #
    # @option params [String] :sort_order
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
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated reports returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    #
    # @option params [ReportFilter] :filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    #
    # @return [Types::ListReportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports(
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     filter: {
    #       status: 'GENERATING' # accepts ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReportsOutput
    #   resp.data.next_token #=> String
    #   resp.data.reports #=> Array<String>
    #   resp.data.reports[0] #=> String
    #
    def list_reports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReportsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReports
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListReports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReports,
        stubs: @stubs,
        params_class: Params::ListReportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_reports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Returns a list of ARNs for the reports that belong to a <code>ReportGroup</code>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::ListReportsForReportGroupInput}.
    #
    # @option params [String] :report_group_arn
    #   <p>
    #         The ARN of the report group for which you want to return report ARNs.
    #       </p>
    #
    # @option params [String] :next_token
    #   <p>
    #         During a previous call, the maximum number of items that can be returned is the value specified in
    #         <code>maxResults</code>. If there more items in the list, then a unique string called a <i>nextToken</i>
    #         is returned. To get the next batch of items in the list, call this operation again, adding the next token
    #         to the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.
    #       </p>
    #
    # @option params [String] :sort_order
    #   <p>
    #         Use to specify whether the results are returned in ascending or descending order.
    #       </p>
    #
    # @option params [Integer] :max_results
    #   <p>
    #         The maximum number of paginated reports in this report group returned per response. Use <code>nextToken</code> to iterate pages in
    #         the list of returned <code>Report</code> objects. The default value is 100.
    #       </p>
    #
    # @option params [ReportFilter] :filter
    #   <p>
    #         A <code>ReportFilter</code> object used to filter the returned reports.
    #       </p>
    #
    # @return [Types::ListReportsForReportGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_reports_for_report_group(
    #     report_group_arn: 'reportGroupArn', # required
    #     next_token: 'nextToken',
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     max_results: 1,
    #     filter: {
    #       status: 'GENERATING' # accepts ["GENERATING", "SUCCEEDED", "FAILED", "INCOMPLETE", "DELETING"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListReportsForReportGroupOutput
    #   resp.data.next_token #=> String
    #   resp.data.reports #=> Array<String>
    #   resp.data.reports[0] #=> String
    #
    def list_reports_for_report_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListReportsForReportGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListReportsForReportGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListReportsForReportGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListReportsForReportGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListReportsForReportGroup,
        stubs: @stubs,
        params_class: Params::ListReportsForReportGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_reports_for_report_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets a list of projects that are shared with other Amazon Web Services accounts or users. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSharedProjectsInput}.
    #
    # @option params [String] :sort_by
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
    # @option params [String] :sort_order
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
    # @option params [Integer] :max_results
    #   <p> The maximum number of paginated shared build projects returned per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned <code>Project</code>
    #               objects. The default value is 100. </p>
    #
    # @option params [String] :next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #
    # @return [Types::ListSharedProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_projects(
    #     sort_by: 'ARN', # accepts ["ARN", "MODIFIED_TIME"]
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSharedProjectsOutput
    #   resp.data.next_token #=> String
    #   resp.data.projects #=> Array<String>
    #   resp.data.projects[0] #=> String
    #
    def list_shared_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSharedProjectsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSharedProjectsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSharedProjects
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListSharedProjects
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSharedProjects,
        stubs: @stubs,
        params_class: Params::ListSharedProjectsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_shared_projects
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Gets a list of report groups that are shared with other Amazon Web Services accounts or users.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListSharedReportGroupsInput}.
    #
    # @option params [String] :sort_order
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
    # @option params [String] :sort_by
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
    # @option params [String] :next_token
    #   <p> During a previous call, the maximum number of items that can be returned is the value
    #               specified in <code>maxResults</code>. If there more items in the list, then a unique
    #               string called a <i>nextToken</i> is returned. To get the next batch of
    #               items in the list, call this operation again, adding the next token to the call. To get
    #               all of the items in the list, keep calling this operation with each subsequent next
    #               token that is returned, until no more next tokens are returned. </p>
    #
    # @option params [Integer] :max_results
    #   <p> The maximum number of paginated shared report groups per response. Use
    #                   <code>nextToken</code> to iterate pages in the list of returned
    #                   <code>ReportGroup</code> objects. The default value is 100. </p>
    #
    # @return [Types::ListSharedReportGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_shared_report_groups(
    #     sort_order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     sort_by: 'ARN', # accepts ["ARN", "MODIFIED_TIME"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSharedReportGroupsOutput
    #   resp.data.next_token #=> String
    #   resp.data.report_groups #=> Array<String>
    #   resp.data.report_groups[0] #=> String
    #
    def list_shared_report_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSharedReportGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSharedReportGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSharedReportGroups
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListSharedReportGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSharedReportGroups,
        stubs: @stubs,
        params_class: Params::ListSharedReportGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_shared_report_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of <code>SourceCredentialsInfo</code> objects. </p>
    #
    # @param [Hash] params
    #   See {Types::ListSourceCredentialsInput}.
    #
    # @return [Types::ListSourceCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_source_credentials()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSourceCredentialsOutput
    #   resp.data.source_credentials_infos #=> Array<SourceCredentialsInfo>
    #   resp.data.source_credentials_infos[0] #=> Types::SourceCredentialsInfo
    #   resp.data.source_credentials_infos[0].arn #=> String
    #   resp.data.source_credentials_infos[0].server_type #=> String, one of ["GITHUB", "BITBUCKET", "GITHUB_ENTERPRISE"]
    #   resp.data.source_credentials_infos[0].auth_type #=> String, one of ["OAUTH", "BASIC_AUTH", "PERSONAL_ACCESS_TOKEN"]
    #
    def list_source_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSourceCredentialsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSourceCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSourceCredentials
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::ListSourceCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSourceCredentials,
        stubs: @stubs,
        params_class: Params::ListSourceCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_source_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Stores a resource policy for the ARN of a <code>Project</code> or
    #                 <code>ReportGroup</code> object. </p>
    #
    # @param [Hash] params
    #   See {Types::PutResourcePolicyInput}.
    #
    # @option params [String] :policy
    #   <p> A JSON-formatted resource policy. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/project-sharing.html#project-sharing-share">Sharing
    #                   a Project</a> and <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/report-groups-sharing.html#report-groups-sharing-share">Sharing a Report Group</a> in the <i>CodeBuild User Guide</i>.
    #           </p>
    #
    # @option params [String] :resource_arn
    #   <p> The ARN of the <code>Project</code> or <code>ReportGroup</code> resource you want to
    #               associate with a resource policy. </p>
    #
    # @return [Types::PutResourcePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_policy(
    #     policy: 'policy', # required
    #     resource_arn: 'resourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourcePolicyOutput
    #   resp.data.resource_arn #=> String
    #
    def put_resource_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourcePolicyInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourcePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourcePolicy
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutResourcePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourcePolicy,
        stubs: @stubs,
        params_class: Params::PutResourcePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restarts a build.</p>
    #
    # @param [Hash] params
    #   See {Types::RetryBuildInput}.
    #
    # @option params [String] :id
    #   <p>Specifies the identifier of the build to restart.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #         <code>RetryBuild</code> request. The token is included in the
    #         <code>RetryBuild</code> request and is valid for five minutes. If you repeat
    #         the <code>RetryBuild</code> request with the same token, but change a parameter,
    #         CodeBuild returns a parameter mismatch error.</p>
    #
    # @return [Types::RetryBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_build(
    #     id: 'id',
    #     idempotency_token: 'idempotencyToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetryBuildOutput
    #   resp.data.build #=> Types::Build
    #   resp.data.build.id #=> String
    #   resp.data.build.arn #=> String
    #   resp.data.build.build_number #=> Integer
    #   resp.data.build.start_time #=> Time
    #   resp.data.build.end_time #=> Time
    #   resp.data.build.current_phase #=> String
    #   resp.data.build.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build.source_version #=> String
    #   resp.data.build.resolved_source_version #=> String
    #   resp.data.build.project_name #=> String
    #   resp.data.build.phases #=> Array<BuildPhase>
    #   resp.data.build.phases[0] #=> Types::BuildPhase
    #   resp.data.build.phases[0].phase_type #=> String, one of ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"]
    #   resp.data.build.phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build.phases[0].start_time #=> Time
    #   resp.data.build.phases[0].end_time #=> Time
    #   resp.data.build.phases[0].duration_in_seconds #=> Integer
    #   resp.data.build.phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build.phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build.phases[0].contexts[0].status_code #=> String
    #   resp.data.build.phases[0].contexts[0].message #=> String
    #   resp.data.build.source #=> Types::ProjectSource
    #   resp.data.build.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build.source.location #=> String
    #   resp.data.build.source.git_clone_depth #=> Integer
    #   resp.data.build.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build.source.buildspec #=> String
    #   resp.data.build.source.auth #=> Types::SourceAuth
    #   resp.data.build.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build.source.auth.resource #=> String
    #   resp.data.build.source.report_build_status #=> Boolean
    #   resp.data.build.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build.source.build_status_config.context #=> String
    #   resp.data.build.source.build_status_config.target_url #=> String
    #   resp.data.build.source.insecure_ssl #=> Boolean
    #   resp.data.build.source.source_identifier #=> String
    #   resp.data.build.secondary_sources #=> Array<ProjectSource>
    #   resp.data.build.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build.secondary_source_versions[0].source_version #=> String
    #   resp.data.build.artifacts #=> Types::BuildArtifacts
    #   resp.data.build.artifacts.location #=> String
    #   resp.data.build.artifacts.sha256sum #=> String
    #   resp.data.build.artifacts.md5sum #=> String
    #   resp.data.build.artifacts.override_artifact_name #=> Boolean
    #   resp.data.build.artifacts.encryption_disabled #=> Boolean
    #   resp.data.build.artifacts.artifact_identifier #=> String
    #   resp.data.build.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build.secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build.cache #=> Types::ProjectCache
    #   resp.data.build.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build.cache.location #=> String
    #   resp.data.build.cache.modes #=> Array<String>
    #   resp.data.build.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build.environment #=> Types::ProjectEnvironment
    #   resp.data.build.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build.environment.image #=> String
    #   resp.data.build.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build.environment.environment_variables[0].name #=> String
    #   resp.data.build.environment.environment_variables[0].value #=> String
    #   resp.data.build.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build.environment.privileged_mode #=> Boolean
    #   resp.data.build.environment.certificate #=> String
    #   resp.data.build.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build.environment.registry_credential.credential #=> String
    #   resp.data.build.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build.service_role #=> String
    #   resp.data.build.logs #=> Types::LogsLocation
    #   resp.data.build.logs.group_name #=> String
    #   resp.data.build.logs.stream_name #=> String
    #   resp.data.build.logs.deep_link #=> String
    #   resp.data.build.logs.s3_deep_link #=> String
    #   resp.data.build.logs.cloud_watch_logs_arn #=> String
    #   resp.data.build.logs.s3_logs_arn #=> String
    #   resp.data.build.logs.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build.logs.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.data.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.data.build.logs.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build.logs.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build.logs.s3_logs.location #=> String
    #   resp.data.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build.logs.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build.timeout_in_minutes #=> Integer
    #   resp.data.build.queued_timeout_in_minutes #=> Integer
    #   resp.data.build.build_complete #=> Boolean
    #   resp.data.build.initiator #=> String
    #   resp.data.build.vpc_config #=> Types::VpcConfig
    #   resp.data.build.vpc_config.vpc_id #=> String
    #   resp.data.build.vpc_config.subnets #=> Array<String>
    #   resp.data.build.vpc_config.subnets[0] #=> String
    #   resp.data.build.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build.vpc_config.security_group_ids[0] #=> String
    #   resp.data.build.network_interface #=> Types::NetworkInterface
    #   resp.data.build.network_interface.subnet_id #=> String
    #   resp.data.build.network_interface.network_interface_id #=> String
    #   resp.data.build.encryption_key #=> String
    #   resp.data.build.exported_environment_variables #=> Array<ExportedEnvironmentVariable>
    #   resp.data.build.exported_environment_variables[0] #=> Types::ExportedEnvironmentVariable
    #   resp.data.build.exported_environment_variables[0].name #=> String
    #   resp.data.build.exported_environment_variables[0].value #=> String
    #   resp.data.build.report_arns #=> Array<String>
    #   resp.data.build.report_arns[0] #=> String
    #   resp.data.build.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build.file_system_locations[0].location #=> String
    #   resp.data.build.file_system_locations[0].mount_point #=> String
    #   resp.data.build.file_system_locations[0].identifier #=> String
    #   resp.data.build.file_system_locations[0].mount_options #=> String
    #   resp.data.build.debug_session #=> Types::DebugSession
    #   resp.data.build.debug_session.session_enabled #=> Boolean
    #   resp.data.build.debug_session.session_target #=> String
    #   resp.data.build.build_batch_arn #=> String
    #
    def retry_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetryBuildInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetryBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetryBuild
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountLimitExceededException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RetryBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetryBuild,
        stubs: @stubs,
        params_class: Params::RetryBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retry_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Restarts a failed batch build. Only batch builds that have failed can be retried.</p>
    #
    # @param [Hash] params
    #   See {Types::RetryBuildBatchInput}.
    #
    # @option params [String] :id
    #   <p>Specifies the identifier of the batch build to restart.</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>RetryBuildBatch</code> request. The token is included in the
    #                   <code>RetryBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>RetryBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    #
    # @option params [String] :retry_type
    #   <p>Specifies the type of retry to perform.</p>
    #
    # @return [Types::RetryBuildBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.retry_build_batch(
    #     id: 'id',
    #     idempotency_token: 'idempotencyToken',
    #     retry_type: 'RETRY_ALL_BUILDS' # accepts ["RETRY_ALL_BUILDS", "RETRY_FAILED_BUILDS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RetryBuildBatchOutput
    #   resp.data.build_batch #=> Types::BuildBatch
    #   resp.data.build_batch.id #=> String
    #   resp.data.build_batch.arn #=> String
    #   resp.data.build_batch.start_time #=> Time
    #   resp.data.build_batch.end_time #=> Time
    #   resp.data.build_batch.current_phase #=> String
    #   resp.data.build_batch.build_batch_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.source_version #=> String
    #   resp.data.build_batch.resolved_source_version #=> String
    #   resp.data.build_batch.project_name #=> String
    #   resp.data.build_batch.phases #=> Array<BuildBatchPhase>
    #   resp.data.build_batch.phases[0] #=> Types::BuildBatchPhase
    #   resp.data.build_batch.phases[0].phase_type #=> String, one of ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"]
    #   resp.data.build_batch.phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.phases[0].start_time #=> Time
    #   resp.data.build_batch.phases[0].end_time #=> Time
    #   resp.data.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.data.build_batch.phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build_batch.phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.data.build_batch.phases[0].contexts[0].message #=> String
    #   resp.data.build_batch.source #=> Types::ProjectSource
    #   resp.data.build_batch.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build_batch.source.location #=> String
    #   resp.data.build_batch.source.git_clone_depth #=> Integer
    #   resp.data.build_batch.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build_batch.source.buildspec #=> String
    #   resp.data.build_batch.source.auth #=> Types::SourceAuth
    #   resp.data.build_batch.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build_batch.source.auth.resource #=> String
    #   resp.data.build_batch.source.report_build_status #=> Boolean
    #   resp.data.build_batch.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build_batch.source.build_status_config.context #=> String
    #   resp.data.build_batch.source.build_status_config.target_url #=> String
    #   resp.data.build_batch.source.insecure_ssl #=> Boolean
    #   resp.data.build_batch.source.source_identifier #=> String
    #   resp.data.build_batch.secondary_sources #=> Array<ProjectSource>
    #   resp.data.build_batch.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build_batch.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.data.build_batch.artifacts #=> Types::BuildArtifacts
    #   resp.data.build_batch.artifacts.location #=> String
    #   resp.data.build_batch.artifacts.sha256sum #=> String
    #   resp.data.build_batch.artifacts.md5sum #=> String
    #   resp.data.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.data.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.data.build_batch.artifacts.artifact_identifier #=> String
    #   resp.data.build_batch.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batch.secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build_batch.cache #=> Types::ProjectCache
    #   resp.data.build_batch.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build_batch.cache.location #=> String
    #   resp.data.build_batch.cache.modes #=> Array<String>
    #   resp.data.build_batch.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build_batch.environment #=> Types::ProjectEnvironment
    #   resp.data.build_batch.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build_batch.environment.image #=> String
    #   resp.data.build_batch.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build_batch.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build_batch.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build_batch.environment.environment_variables[0].name #=> String
    #   resp.data.build_batch.environment.environment_variables[0].value #=> String
    #   resp.data.build_batch.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build_batch.environment.privileged_mode #=> Boolean
    #   resp.data.build_batch.environment.certificate #=> String
    #   resp.data.build_batch.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build_batch.environment.registry_credential.credential #=> String
    #   resp.data.build_batch.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build_batch.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build_batch.service_role #=> String
    #   resp.data.build_batch.log_config #=> Types::LogsConfig
    #   resp.data.build_batch.log_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build_batch.log_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.data.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.build_batch.log_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build_batch.log_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batch.log_config.s3_logs.location #=> String
    #   resp.data.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build_batch.log_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.data.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.data.build_batch.complete #=> Boolean
    #   resp.data.build_batch.initiator #=> String
    #   resp.data.build_batch.vpc_config #=> Types::VpcConfig
    #   resp.data.build_batch.vpc_config.vpc_id #=> String
    #   resp.data.build_batch.vpc_config.subnets #=> Array<String>
    #   resp.data.build_batch.vpc_config.subnets[0] #=> String
    #   resp.data.build_batch.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.data.build_batch.encryption_key #=> String
    #   resp.data.build_batch.build_batch_number #=> Integer
    #   resp.data.build_batch.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build_batch.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build_batch.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build_batch.file_system_locations[0].location #=> String
    #   resp.data.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.data.build_batch.file_system_locations[0].identifier #=> String
    #   resp.data.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.data.build_batch.build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.build_batch.build_batch_config.service_role #=> String
    #   resp.data.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.build_batch.build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.build_batch.build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.build_batch.build_groups #=> Array<BuildGroup>
    #   resp.data.build_batch.build_groups[0] #=> Types::BuildGroup
    #   resp.data.build_batch.build_groups[0].identifier #=> String
    #   resp.data.build_batch.build_groups[0].depends_on #=> Array<String>
    #   resp.data.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.data.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.data.build_batch.build_groups[0].current_build_summary #=> Types::BuildSummary
    #   resp.data.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.data.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact #=> Types::ResolvedArtifact
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array<ResolvedArtifact>
    #   resp.data.build_batch.build_groups[0].prior_build_summary_list #=> Array<BuildSummary>
    #   resp.data.build_batch.debug_session_enabled #=> Boolean
    #
    def retry_build_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RetryBuildBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RetryBuildBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RetryBuildBatch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RetryBuildBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RetryBuildBatch,
        stubs: @stubs,
        params_class: Params::RetryBuildBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :retry_build_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts running a build.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBuildInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild build project to start running a build.</p>
    #
    # @option params [Array<ProjectSource>] :secondary_sources_override
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #
    # @option params [Array<ProjectSourceVersion>] :secondary_sources_version_override
    #   <p> An array of <code>ProjectSourceVersion</code> objects that specify one or more
    #               versions of the project's secondary sources to be used for this build only. </p>
    #
    # @option params [String] :source_version
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
    # @option params [ProjectArtifacts] :artifacts_override
    #   <p>Build output artifact settings that override, for this build only, the latest ones
    #               already defined in the build project.</p>
    #
    # @option params [Array<ProjectArtifacts>] :secondary_artifacts_override
    #   <p> An array of <code>ProjectArtifacts</code> objects. </p>
    #
    # @option params [Array<EnvironmentVariable>] :environment_variables_override
    #   <p>A set of environment variables that overrides, for this build only, the latest ones
    #               already defined in the build project.</p>
    #
    # @option params [String] :source_type_override
    #   <p>A source input type, for this build, that overrides the source input defined in the
    #               build project.</p>
    #
    # @option params [String] :source_location_override
    #   <p>A location that overrides, for this build, the source location for the one defined in
    #               the build project.</p>
    #
    # @option params [SourceAuth] :source_auth_override
    #   <p>An authorization type for this build that overrides the one defined in the build
    #               project. This override applies only if the build project's source is BitBucket or
    #               GitHub.</p>
    #
    # @option params [Integer] :git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #               build only, any previous depth of history defined in the build project.</p>
    #
    # @option params [GitSubmodulesConfig] :git_submodules_config_override
    #   <p> Information about the Git submodules configuration for this build of an CodeBuild build
    #               project. </p>
    #
    # @option params [String] :buildspec_override
    #   <p>A buildspec file declaration that overrides, for this build only, the latest one
    #               already defined in the build project.</p>
    #           <p> If this value is set, it can be either an inline buildspec definition, the path to an
    #               alternate buildspec file relative to the value of the built-in
    #                   <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #               The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #               file using its ARN (for example,
    #                   <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #               provided or is set to an empty string, the source code must contain a buildspec file in
    #               its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #
    # @option params [Boolean] :insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the build
    #               project. The insecure SSL setting determines whether to ignore SSL warnings while
    #               connecting to the project source code. This override applies only if the build's source
    #               is GitHub Enterprise.</p>
    #
    # @option params [Boolean] :report_build_status_override
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
    # @option params [BuildStatusConfig] :build_status_config_override
    #   <p>Contains information that defines how the build project reports the build status to
    #               the source provider. This option is only used when the source provider is
    #                   <code>GITHUB</code>, <code>GITHUB_ENTERPRISE</code>, or
    #               <code>BITBUCKET</code>.</p>
    #
    # @option params [String] :environment_type_override
    #   <p>A container type for this build that overrides the one specified in the build
    #               project.</p>
    #
    # @option params [String] :image_override
    #   <p>The name of an image for this build that overrides the one specified in the build
    #               project.</p>
    #
    # @option params [String] :compute_type_override
    #   <p>The name of a compute type for this build that overrides the one specified in the
    #               build project.</p>
    #
    # @option params [String] :certificate_override
    #   <p>The name of a certificate for this build that overrides the one specified in the build
    #               project.</p>
    #
    # @option params [ProjectCache] :cache_override
    #   <p>A ProjectCache object specified for this build that overrides the one defined in the
    #               build project.</p>
    #
    # @option params [String] :service_role_override
    #   <p>The name of a service role for this build that overrides the one specified in the
    #               build project.</p>
    #
    # @option params [Boolean] :privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the build project.</p>
    #
    # @option params [Integer] :timeout_in_minutes_override
    #   <p>The number of build timeout minutes, from 5 to 480 (8 hours), that overrides, for this
    #               build only, the latest setting already defined in the build project.</p>
    #
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #
    # @option params [String] :encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the build
    #               project. The CMK key encrypts the build output artifacts.</p>
    #           <note>
    #               <p> You can use a cross-account KMS key to encrypt the build output artifacts if your
    #                   service role has permission to that key. </p>
    #           </note>
    #           <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #               the format <code>alias/<alias-name></code>).</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #               StartBuild request. The token is included in the StartBuild request and is valid for 5
    #               minutes. If you repeat the StartBuild request with the same token, but change a
    #               parameter, CodeBuild returns a parameter mismatch error. </p>
    #
    # @option params [LogsConfig] :logs_config_override
    #   <p> Log settings for this build that override the log settings defined in the build
    #               project. </p>
    #
    # @option params [RegistryCredential] :registry_credential_override
    #   <p> The credentials for access to a private registry. </p>
    #
    # @option params [String] :image_pull_credentials_type_override
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
    # @option params [Boolean] :debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this build. For more information, see
    #                   <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>.</p>
    #
    # @return [Types::StartBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build(
    #     project_name: 'projectName', # required
    #     secondary_sources_override: [
    #       {
    #         type: 'CODECOMMIT', # required - accepts ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #         location: 'location',
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false # required
    #         },
    #         buildspec: 'buildspec',
    #         auth: {
    #           type: 'OAUTH', # required - accepts ["OAUTH"]
    #           resource: 'resource'
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: 'context',
    #           target_url: 'targetUrl'
    #         },
    #         insecure_ssl: false,
    #         source_identifier: 'sourceIdentifier'
    #       }
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: 'sourceIdentifier', # required
    #         source_version: 'sourceVersion' # required
    #       }
    #     ],
    #     source_version: 'sourceVersion',
    #     artifacts_override: {
    #       type: 'CODEPIPELINE', # required - accepts ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #       location: 'location',
    #       path: 'path',
    #       namespace_type: 'NONE', # accepts ["NONE", "BUILD_ID"]
    #       name: 'name',
    #       packaging: 'NONE', # accepts ["NONE", "ZIP"]
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: 'artifactIdentifier',
    #       bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     environment_variables_override: [
    #       {
    #         name: 'name', # required
    #         value: 'value', # required
    #         type: 'PLAINTEXT' # accepts ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #       }
    #     ],
    #     source_type_override: 'CODECOMMIT', # accepts ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #     source_location_override: 'sourceLocationOverride',
    #     git_clone_depth_override: 1,
    #     buildspec_override: 'buildspecOverride',
    #     insecure_ssl_override: false,
    #     report_build_status_override: false,
    #     environment_type_override: 'WINDOWS_CONTAINER', # accepts ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #     image_override: 'imageOverride',
    #     compute_type_override: 'BUILD_GENERAL1_SMALL', # accepts ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #     certificate_override: 'certificateOverride',
    #     cache_override: {
    #       type: 'NO_CACHE', # required - accepts ["NO_CACHE", "S3", "LOCAL"]
    #       location: 'location',
    #       modes: [
    #         'LOCAL_DOCKER_LAYER_CACHE' # accepts ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #       ]
    #     },
    #     service_role_override: 'serviceRoleOverride',
    #     privileged_mode_override: false,
    #     timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: 'encryptionKeyOverride',
    #     idempotency_token: 'idempotencyToken',
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         group_name: 'groupName',
    #         stream_name: 'streamName'
    #       },
    #       s3_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         location: 'location',
    #         encryption_disabled: false,
    #         bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     registry_credential_override: {
    #       credential: 'credential', # required
    #       credential_provider: 'SECRETS_MANAGER' # required - accepts ["SECRETS_MANAGER"]
    #     },
    #     image_pull_credentials_type_override: 'CODEBUILD', # accepts ["CODEBUILD", "SERVICE_ROLE"]
    #     debug_session_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBuildOutput
    #   resp.data.build #=> Types::Build
    #   resp.data.build.id #=> String
    #   resp.data.build.arn #=> String
    #   resp.data.build.build_number #=> Integer
    #   resp.data.build.start_time #=> Time
    #   resp.data.build.end_time #=> Time
    #   resp.data.build.current_phase #=> String
    #   resp.data.build.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build.source_version #=> String
    #   resp.data.build.resolved_source_version #=> String
    #   resp.data.build.project_name #=> String
    #   resp.data.build.phases #=> Array<BuildPhase>
    #   resp.data.build.phases[0] #=> Types::BuildPhase
    #   resp.data.build.phases[0].phase_type #=> String, one of ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"]
    #   resp.data.build.phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build.phases[0].start_time #=> Time
    #   resp.data.build.phases[0].end_time #=> Time
    #   resp.data.build.phases[0].duration_in_seconds #=> Integer
    #   resp.data.build.phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build.phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build.phases[0].contexts[0].status_code #=> String
    #   resp.data.build.phases[0].contexts[0].message #=> String
    #   resp.data.build.source #=> Types::ProjectSource
    #   resp.data.build.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build.source.location #=> String
    #   resp.data.build.source.git_clone_depth #=> Integer
    #   resp.data.build.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build.source.buildspec #=> String
    #   resp.data.build.source.auth #=> Types::SourceAuth
    #   resp.data.build.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build.source.auth.resource #=> String
    #   resp.data.build.source.report_build_status #=> Boolean
    #   resp.data.build.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build.source.build_status_config.context #=> String
    #   resp.data.build.source.build_status_config.target_url #=> String
    #   resp.data.build.source.insecure_ssl #=> Boolean
    #   resp.data.build.source.source_identifier #=> String
    #   resp.data.build.secondary_sources #=> Array<ProjectSource>
    #   resp.data.build.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build.secondary_source_versions[0].source_version #=> String
    #   resp.data.build.artifacts #=> Types::BuildArtifacts
    #   resp.data.build.artifacts.location #=> String
    #   resp.data.build.artifacts.sha256sum #=> String
    #   resp.data.build.artifacts.md5sum #=> String
    #   resp.data.build.artifacts.override_artifact_name #=> Boolean
    #   resp.data.build.artifacts.encryption_disabled #=> Boolean
    #   resp.data.build.artifacts.artifact_identifier #=> String
    #   resp.data.build.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build.secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build.cache #=> Types::ProjectCache
    #   resp.data.build.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build.cache.location #=> String
    #   resp.data.build.cache.modes #=> Array<String>
    #   resp.data.build.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build.environment #=> Types::ProjectEnvironment
    #   resp.data.build.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build.environment.image #=> String
    #   resp.data.build.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build.environment.environment_variables[0].name #=> String
    #   resp.data.build.environment.environment_variables[0].value #=> String
    #   resp.data.build.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build.environment.privileged_mode #=> Boolean
    #   resp.data.build.environment.certificate #=> String
    #   resp.data.build.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build.environment.registry_credential.credential #=> String
    #   resp.data.build.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build.service_role #=> String
    #   resp.data.build.logs #=> Types::LogsLocation
    #   resp.data.build.logs.group_name #=> String
    #   resp.data.build.logs.stream_name #=> String
    #   resp.data.build.logs.deep_link #=> String
    #   resp.data.build.logs.s3_deep_link #=> String
    #   resp.data.build.logs.cloud_watch_logs_arn #=> String
    #   resp.data.build.logs.s3_logs_arn #=> String
    #   resp.data.build.logs.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build.logs.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.data.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.data.build.logs.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build.logs.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build.logs.s3_logs.location #=> String
    #   resp.data.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build.logs.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build.timeout_in_minutes #=> Integer
    #   resp.data.build.queued_timeout_in_minutes #=> Integer
    #   resp.data.build.build_complete #=> Boolean
    #   resp.data.build.initiator #=> String
    #   resp.data.build.vpc_config #=> Types::VpcConfig
    #   resp.data.build.vpc_config.vpc_id #=> String
    #   resp.data.build.vpc_config.subnets #=> Array<String>
    #   resp.data.build.vpc_config.subnets[0] #=> String
    #   resp.data.build.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build.vpc_config.security_group_ids[0] #=> String
    #   resp.data.build.network_interface #=> Types::NetworkInterface
    #   resp.data.build.network_interface.subnet_id #=> String
    #   resp.data.build.network_interface.network_interface_id #=> String
    #   resp.data.build.encryption_key #=> String
    #   resp.data.build.exported_environment_variables #=> Array<ExportedEnvironmentVariable>
    #   resp.data.build.exported_environment_variables[0] #=> Types::ExportedEnvironmentVariable
    #   resp.data.build.exported_environment_variables[0].name #=> String
    #   resp.data.build.exported_environment_variables[0].value #=> String
    #   resp.data.build.report_arns #=> Array<String>
    #   resp.data.build.report_arns[0] #=> String
    #   resp.data.build.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build.file_system_locations[0].location #=> String
    #   resp.data.build.file_system_locations[0].mount_point #=> String
    #   resp.data.build.file_system_locations[0].identifier #=> String
    #   resp.data.build.file_system_locations[0].mount_options #=> String
    #   resp.data.build.debug_session #=> Types::DebugSession
    #   resp.data.build.debug_session.session_enabled #=> Boolean
    #   resp.data.build.debug_session.session_target #=> String
    #   resp.data.build.build_batch_arn #=> String
    #
    def start_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBuildInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBuild
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountLimitExceededException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBuild,
        stubs: @stubs,
        params_class: Params::StartBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a batch build for a project.</p>
    #
    # @param [Hash] params
    #   See {Types::StartBuildBatchInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the project.</p>
    #
    # @option params [Array<ProjectSource>] :secondary_sources_override
    #   <p>An array of <code>ProjectSource</code> objects that override the secondary sources
    #           defined in the batch build project.</p>
    #
    # @option params [Array<ProjectSourceVersion>] :secondary_sources_version_override
    #   <p>An array of <code>ProjectSourceVersion</code> objects that override the secondary source
    #               versions in the batch build project.</p>
    #
    # @option params [String] :source_version
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
    # @option params [ProjectArtifacts] :artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that contains information about the
    #               build output artifact overrides for the build project.</p>
    #
    # @option params [Array<ProjectArtifacts>] :secondary_artifacts_override
    #   <p>An array of <code>ProjectArtifacts</code> objects that override the secondary artifacts
    #               defined in the batch build project.</p>
    #
    # @option params [Array<EnvironmentVariable>] :environment_variables_override
    #   <p>An array of <code>EnvironmentVariable</code> objects that override, or add to, the
    #               environment variables defined in the batch build project.</p>
    #
    # @option params [String] :source_type_override
    #   <p>The source input type that overrides the source input defined in the batch
    #           build project.</p>
    #
    # @option params [String] :source_location_override
    #   <p>A location that overrides, for this batch build, the source location defined in
    #           the batch build project.</p>
    #
    # @option params [SourceAuth] :source_auth_override
    #   <p>A <code>SourceAuth</code> object that overrides the one defined in the batch build
    #               project. This override applies only if the build project's source is BitBucket or
    #               GitHub.</p>
    #
    # @option params [Integer] :git_clone_depth_override
    #   <p>The user-defined depth of history, with a minimum value of 0, that overrides, for this
    #           batch build only, any previous depth of history defined in the batch build project.</p>
    #
    # @option params [GitSubmodulesConfig] :git_submodules_config_override
    #   <p>A <code>GitSubmodulesConfig</code> object that overrides the Git submodules configuration
    #               for this batch build.</p>
    #
    # @option params [String] :buildspec_override
    #   <p>A buildspec file declaration that overrides, for this build only, the latest one
    #           already defined in the build project.</p>
    #            <p>If this value is set, it can be either an inline buildspec definition, the path to an
    #           alternate buildspec file relative to the value of the built-in
    #           <code>CODEBUILD_SRC_DIR</code> environment variable, or the path to an S3 bucket.
    #           The bucket must be in the same Amazon Web Services Region as the build project. Specify the buildspec
    #           file using its ARN (for example,
    #           <code>arn:aws:s3:::my-codebuild-sample2/buildspec.yml</code>). If this value is not
    #           provided or is set to an empty string, the source code must contain a buildspec file in
    #           its root directory. For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/build-spec-ref.html#build-spec-ref-name-storage">Buildspec File Name and Storage Location</a>. </p>
    #
    # @option params [Boolean] :insecure_ssl_override
    #   <p>Enable this flag to override the insecure SSL setting that is specified in the batch build
    #           project. The insecure SSL setting determines whether to ignore SSL warnings while
    #           connecting to the project source code. This override applies only if the build's source
    #           is GitHub Enterprise.</p>
    #
    # @option params [Boolean] :report_build_batch_status_override
    #   <p>Set to <code>true</code> to report to your source provider the status of a batch build's
    #               start and completion. If you use this option with a source provider other than GitHub,
    #               GitHub Enterprise, or Bitbucket, an <code>invalidInputException</code> is thrown. </p>
    #            <note>
    #               <p>The status of a build triggered by a webhook is always reported to your source
    #             provider. </p>
    #            </note>
    #
    # @option params [String] :environment_type_override
    #   <p>A container type for this batch build that overrides the one specified in the batch build
    #           project.</p>
    #
    # @option params [String] :image_override
    #   <p>The name of an image for this batch build that overrides the one specified in the batch
    #               build project.</p>
    #
    # @option params [String] :compute_type_override
    #   <p>The name of a compute type for this batch build that overrides the one specified in the
    #           batch build project.</p>
    #
    # @option params [String] :certificate_override
    #   <p>The name of a certificate for this batch build that overrides the one specified in the batch build
    #           project.</p>
    #
    # @option params [ProjectCache] :cache_override
    #   <p>A <code>ProjectCache</code> object that specifies cache overrides.</p>
    #
    # @option params [String] :service_role_override
    #   <p>The name of a service role for this batch build that overrides the one specified in the
    #           batch build project.</p>
    #
    # @option params [Boolean] :privileged_mode_override
    #   <p>Enable this flag to override privileged mode in the batch build project.</p>
    #
    # @option params [Integer] :build_timeout_in_minutes_override
    #   <p>Overrides the build timeout specified in the batch build project.</p>
    #
    # @option params [Integer] :queued_timeout_in_minutes_override
    #   <p>The number of minutes a batch build is allowed to be queued before it times out.</p>
    #
    # @option params [String] :encryption_key_override
    #   <p>The Key Management Service customer master key (CMK) that overrides the one specified in the batch build
    #           project. The CMK key encrypts the build output artifacts.</p>
    #            <note>
    #               <p>You can use a cross-account KMS key to encrypt the build output artifacts if your
    #             service role has permission to that key. </p>
    #            </note>
    #            <p>You can specify either the Amazon Resource Name (ARN) of the CMK or, if available, the CMK's alias (using
    #           the format <code>alias/<alias-name></code>).</p>
    #
    # @option params [String] :idempotency_token
    #   <p>A unique, case sensitive identifier you provide to ensure the idempotency of the
    #                   <code>StartBuildBatch</code> request. The token is included in the
    #                   <code>StartBuildBatch</code> request and is valid for five minutes. If you repeat
    #               the <code>StartBuildBatch</code> request with the same token, but change a parameter,
    #               CodeBuild returns a parameter mismatch error.</p>
    #
    # @option params [LogsConfig] :logs_config_override
    #   <p>A <code>LogsConfig</code> object that override the log settings defined in the batch build
    #               project.</p>
    #
    # @option params [RegistryCredential] :registry_credential_override
    #   <p>A <code>RegistryCredential</code> object that overrides credentials for access to a
    #               private registry.</p>
    #
    # @option params [String] :image_pull_credentials_type_override
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
    # @option params [ProjectBuildBatchConfig] :build_batch_config_override
    #   <p>A <code>BuildBatchConfigOverride</code> object that contains batch build configuration
    #               overrides.</p>
    #
    # @option params [Boolean] :debug_session_enabled
    #   <p>Specifies if session debugging is enabled for this batch build. For more information, see
    #     <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/session-manager.html">Viewing a running build in Session Manager</a>. Batch session debugging is not supported for matrix batch builds.</p>
    #
    # @return [Types::StartBuildBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_build_batch(
    #     project_name: 'projectName', # required
    #     secondary_sources_override: [
    #       {
    #         type: 'CODECOMMIT', # required - accepts ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #         location: 'location',
    #         git_clone_depth: 1,
    #         git_submodules_config: {
    #           fetch_submodules: false # required
    #         },
    #         buildspec: 'buildspec',
    #         auth: {
    #           type: 'OAUTH', # required - accepts ["OAUTH"]
    #           resource: 'resource'
    #         },
    #         report_build_status: false,
    #         build_status_config: {
    #           context: 'context',
    #           target_url: 'targetUrl'
    #         },
    #         insecure_ssl: false,
    #         source_identifier: 'sourceIdentifier'
    #       }
    #     ],
    #     secondary_sources_version_override: [
    #       {
    #         source_identifier: 'sourceIdentifier', # required
    #         source_version: 'sourceVersion' # required
    #       }
    #     ],
    #     source_version: 'sourceVersion',
    #     artifacts_override: {
    #       type: 'CODEPIPELINE', # required - accepts ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #       location: 'location',
    #       path: 'path',
    #       namespace_type: 'NONE', # accepts ["NONE", "BUILD_ID"]
    #       name: 'name',
    #       packaging: 'NONE', # accepts ["NONE", "ZIP"]
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: 'artifactIdentifier',
    #       bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     environment_variables_override: [
    #       {
    #         name: 'name', # required
    #         value: 'value', # required
    #         type: 'PLAINTEXT' # accepts ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #       }
    #     ],
    #     source_type_override: 'CODECOMMIT', # accepts ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #     source_location_override: 'sourceLocationOverride',
    #     git_clone_depth_override: 1,
    #     buildspec_override: 'buildspecOverride',
    #     insecure_ssl_override: false,
    #     report_build_batch_status_override: false,
    #     environment_type_override: 'WINDOWS_CONTAINER', # accepts ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #     image_override: 'imageOverride',
    #     compute_type_override: 'BUILD_GENERAL1_SMALL', # accepts ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #     certificate_override: 'certificateOverride',
    #     cache_override: {
    #       type: 'NO_CACHE', # required - accepts ["NO_CACHE", "S3", "LOCAL"]
    #       location: 'location',
    #       modes: [
    #         'LOCAL_DOCKER_LAYER_CACHE' # accepts ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #       ]
    #     },
    #     service_role_override: 'serviceRoleOverride',
    #     privileged_mode_override: false,
    #     build_timeout_in_minutes_override: 1,
    #     queued_timeout_in_minutes_override: 1,
    #     encryption_key_override: 'encryptionKeyOverride',
    #     idempotency_token: 'idempotencyToken',
    #     logs_config_override: {
    #       cloud_watch_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         group_name: 'groupName',
    #         stream_name: 'streamName'
    #       },
    #       s3_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         location: 'location',
    #         encryption_disabled: false,
    #         bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     registry_credential_override: {
    #       credential: 'credential', # required
    #       credential_provider: 'SECRETS_MANAGER' # required - accepts ["SECRETS_MANAGER"]
    #     },
    #     image_pull_credentials_type_override: 'CODEBUILD', # accepts ["CODEBUILD", "SERVICE_ROLE"]
    #     build_batch_config_override: {
    #       service_role: 'serviceRole',
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: [
    #           'member'
    #         ]
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: 'REPORT_INDIVIDUAL_BUILDS' # accepts ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #     },
    #     debug_session_enabled: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartBuildBatchOutput
    #   resp.data.build_batch #=> Types::BuildBatch
    #   resp.data.build_batch.id #=> String
    #   resp.data.build_batch.arn #=> String
    #   resp.data.build_batch.start_time #=> Time
    #   resp.data.build_batch.end_time #=> Time
    #   resp.data.build_batch.current_phase #=> String
    #   resp.data.build_batch.build_batch_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.source_version #=> String
    #   resp.data.build_batch.resolved_source_version #=> String
    #   resp.data.build_batch.project_name #=> String
    #   resp.data.build_batch.phases #=> Array<BuildBatchPhase>
    #   resp.data.build_batch.phases[0] #=> Types::BuildBatchPhase
    #   resp.data.build_batch.phases[0].phase_type #=> String, one of ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"]
    #   resp.data.build_batch.phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.phases[0].start_time #=> Time
    #   resp.data.build_batch.phases[0].end_time #=> Time
    #   resp.data.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.data.build_batch.phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build_batch.phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.data.build_batch.phases[0].contexts[0].message #=> String
    #   resp.data.build_batch.source #=> Types::ProjectSource
    #   resp.data.build_batch.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build_batch.source.location #=> String
    #   resp.data.build_batch.source.git_clone_depth #=> Integer
    #   resp.data.build_batch.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build_batch.source.buildspec #=> String
    #   resp.data.build_batch.source.auth #=> Types::SourceAuth
    #   resp.data.build_batch.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build_batch.source.auth.resource #=> String
    #   resp.data.build_batch.source.report_build_status #=> Boolean
    #   resp.data.build_batch.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build_batch.source.build_status_config.context #=> String
    #   resp.data.build_batch.source.build_status_config.target_url #=> String
    #   resp.data.build_batch.source.insecure_ssl #=> Boolean
    #   resp.data.build_batch.source.source_identifier #=> String
    #   resp.data.build_batch.secondary_sources #=> Array<ProjectSource>
    #   resp.data.build_batch.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build_batch.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.data.build_batch.artifacts #=> Types::BuildArtifacts
    #   resp.data.build_batch.artifacts.location #=> String
    #   resp.data.build_batch.artifacts.sha256sum #=> String
    #   resp.data.build_batch.artifacts.md5sum #=> String
    #   resp.data.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.data.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.data.build_batch.artifacts.artifact_identifier #=> String
    #   resp.data.build_batch.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batch.secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build_batch.cache #=> Types::ProjectCache
    #   resp.data.build_batch.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build_batch.cache.location #=> String
    #   resp.data.build_batch.cache.modes #=> Array<String>
    #   resp.data.build_batch.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build_batch.environment #=> Types::ProjectEnvironment
    #   resp.data.build_batch.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build_batch.environment.image #=> String
    #   resp.data.build_batch.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build_batch.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build_batch.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build_batch.environment.environment_variables[0].name #=> String
    #   resp.data.build_batch.environment.environment_variables[0].value #=> String
    #   resp.data.build_batch.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build_batch.environment.privileged_mode #=> Boolean
    #   resp.data.build_batch.environment.certificate #=> String
    #   resp.data.build_batch.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build_batch.environment.registry_credential.credential #=> String
    #   resp.data.build_batch.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build_batch.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build_batch.service_role #=> String
    #   resp.data.build_batch.log_config #=> Types::LogsConfig
    #   resp.data.build_batch.log_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build_batch.log_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.data.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.build_batch.log_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build_batch.log_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batch.log_config.s3_logs.location #=> String
    #   resp.data.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build_batch.log_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.data.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.data.build_batch.complete #=> Boolean
    #   resp.data.build_batch.initiator #=> String
    #   resp.data.build_batch.vpc_config #=> Types::VpcConfig
    #   resp.data.build_batch.vpc_config.vpc_id #=> String
    #   resp.data.build_batch.vpc_config.subnets #=> Array<String>
    #   resp.data.build_batch.vpc_config.subnets[0] #=> String
    #   resp.data.build_batch.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.data.build_batch.encryption_key #=> String
    #   resp.data.build_batch.build_batch_number #=> Integer
    #   resp.data.build_batch.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build_batch.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build_batch.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build_batch.file_system_locations[0].location #=> String
    #   resp.data.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.data.build_batch.file_system_locations[0].identifier #=> String
    #   resp.data.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.data.build_batch.build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.build_batch.build_batch_config.service_role #=> String
    #   resp.data.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.build_batch.build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.build_batch.build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.build_batch.build_groups #=> Array<BuildGroup>
    #   resp.data.build_batch.build_groups[0] #=> Types::BuildGroup
    #   resp.data.build_batch.build_groups[0].identifier #=> String
    #   resp.data.build_batch.build_groups[0].depends_on #=> Array<String>
    #   resp.data.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.data.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.data.build_batch.build_groups[0].current_build_summary #=> Types::BuildSummary
    #   resp.data.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.data.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact #=> Types::ResolvedArtifact
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array<ResolvedArtifact>
    #   resp.data.build_batch.build_groups[0].prior_build_summary_list #=> Array<BuildSummary>
    #   resp.data.build_batch.debug_session_enabled #=> Boolean
    #
    def start_build_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartBuildBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartBuildBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartBuildBatch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartBuildBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartBuildBatch,
        stubs: @stubs,
        params_class: Params::StartBuildBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_build_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to stop running a build.</p>
    #
    # @param [Hash] params
    #   See {Types::StopBuildInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the build.</p>
    #
    # @return [Types::StopBuildOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopBuildOutput
    #   resp.data.build #=> Types::Build
    #   resp.data.build.id #=> String
    #   resp.data.build.arn #=> String
    #   resp.data.build.build_number #=> Integer
    #   resp.data.build.start_time #=> Time
    #   resp.data.build.end_time #=> Time
    #   resp.data.build.current_phase #=> String
    #   resp.data.build.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build.source_version #=> String
    #   resp.data.build.resolved_source_version #=> String
    #   resp.data.build.project_name #=> String
    #   resp.data.build.phases #=> Array<BuildPhase>
    #   resp.data.build.phases[0] #=> Types::BuildPhase
    #   resp.data.build.phases[0].phase_type #=> String, one of ["SUBMITTED", "QUEUED", "PROVISIONING", "DOWNLOAD_SOURCE", "INSTALL", "PRE_BUILD", "BUILD", "POST_BUILD", "UPLOAD_ARTIFACTS", "FINALIZING", "COMPLETED"]
    #   resp.data.build.phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build.phases[0].start_time #=> Time
    #   resp.data.build.phases[0].end_time #=> Time
    #   resp.data.build.phases[0].duration_in_seconds #=> Integer
    #   resp.data.build.phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build.phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build.phases[0].contexts[0].status_code #=> String
    #   resp.data.build.phases[0].contexts[0].message #=> String
    #   resp.data.build.source #=> Types::ProjectSource
    #   resp.data.build.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build.source.location #=> String
    #   resp.data.build.source.git_clone_depth #=> Integer
    #   resp.data.build.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build.source.buildspec #=> String
    #   resp.data.build.source.auth #=> Types::SourceAuth
    #   resp.data.build.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build.source.auth.resource #=> String
    #   resp.data.build.source.report_build_status #=> Boolean
    #   resp.data.build.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build.source.build_status_config.context #=> String
    #   resp.data.build.source.build_status_config.target_url #=> String
    #   resp.data.build.source.insecure_ssl #=> Boolean
    #   resp.data.build.source.source_identifier #=> String
    #   resp.data.build.secondary_sources #=> Array<ProjectSource>
    #   resp.data.build.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build.secondary_source_versions[0].source_version #=> String
    #   resp.data.build.artifacts #=> Types::BuildArtifacts
    #   resp.data.build.artifacts.location #=> String
    #   resp.data.build.artifacts.sha256sum #=> String
    #   resp.data.build.artifacts.md5sum #=> String
    #   resp.data.build.artifacts.override_artifact_name #=> Boolean
    #   resp.data.build.artifacts.encryption_disabled #=> Boolean
    #   resp.data.build.artifacts.artifact_identifier #=> String
    #   resp.data.build.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build.secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build.cache #=> Types::ProjectCache
    #   resp.data.build.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build.cache.location #=> String
    #   resp.data.build.cache.modes #=> Array<String>
    #   resp.data.build.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build.environment #=> Types::ProjectEnvironment
    #   resp.data.build.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build.environment.image #=> String
    #   resp.data.build.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build.environment.environment_variables[0].name #=> String
    #   resp.data.build.environment.environment_variables[0].value #=> String
    #   resp.data.build.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build.environment.privileged_mode #=> Boolean
    #   resp.data.build.environment.certificate #=> String
    #   resp.data.build.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build.environment.registry_credential.credential #=> String
    #   resp.data.build.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build.service_role #=> String
    #   resp.data.build.logs #=> Types::LogsLocation
    #   resp.data.build.logs.group_name #=> String
    #   resp.data.build.logs.stream_name #=> String
    #   resp.data.build.logs.deep_link #=> String
    #   resp.data.build.logs.s3_deep_link #=> String
    #   resp.data.build.logs.cloud_watch_logs_arn #=> String
    #   resp.data.build.logs.s3_logs_arn #=> String
    #   resp.data.build.logs.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build.logs.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build.logs.cloud_watch_logs.group_name #=> String
    #   resp.data.build.logs.cloud_watch_logs.stream_name #=> String
    #   resp.data.build.logs.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build.logs.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build.logs.s3_logs.location #=> String
    #   resp.data.build.logs.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build.logs.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build.timeout_in_minutes #=> Integer
    #   resp.data.build.queued_timeout_in_minutes #=> Integer
    #   resp.data.build.build_complete #=> Boolean
    #   resp.data.build.initiator #=> String
    #   resp.data.build.vpc_config #=> Types::VpcConfig
    #   resp.data.build.vpc_config.vpc_id #=> String
    #   resp.data.build.vpc_config.subnets #=> Array<String>
    #   resp.data.build.vpc_config.subnets[0] #=> String
    #   resp.data.build.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build.vpc_config.security_group_ids[0] #=> String
    #   resp.data.build.network_interface #=> Types::NetworkInterface
    #   resp.data.build.network_interface.subnet_id #=> String
    #   resp.data.build.network_interface.network_interface_id #=> String
    #   resp.data.build.encryption_key #=> String
    #   resp.data.build.exported_environment_variables #=> Array<ExportedEnvironmentVariable>
    #   resp.data.build.exported_environment_variables[0] #=> Types::ExportedEnvironmentVariable
    #   resp.data.build.exported_environment_variables[0].name #=> String
    #   resp.data.build.exported_environment_variables[0].value #=> String
    #   resp.data.build.report_arns #=> Array<String>
    #   resp.data.build.report_arns[0] #=> String
    #   resp.data.build.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build.file_system_locations[0].location #=> String
    #   resp.data.build.file_system_locations[0].mount_point #=> String
    #   resp.data.build.file_system_locations[0].identifier #=> String
    #   resp.data.build.file_system_locations[0].mount_options #=> String
    #   resp.data.build.debug_session #=> Types::DebugSession
    #   resp.data.build.debug_session.session_enabled #=> Boolean
    #   resp.data.build.debug_session.session_target #=> String
    #   resp.data.build.build_batch_arn #=> String
    #
    def stop_build(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopBuildInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopBuildInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopBuild
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopBuild
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopBuild,
        stubs: @stubs,
        params_class: Params::StopBuildOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_build
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops a running batch build.</p>
    #
    # @param [Hash] params
    #   See {Types::StopBuildBatchInput}.
    #
    # @option params [String] :id
    #   <p>The identifier of the batch build to stop.</p>
    #
    # @return [Types::StopBuildBatchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_build_batch(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopBuildBatchOutput
    #   resp.data.build_batch #=> Types::BuildBatch
    #   resp.data.build_batch.id #=> String
    #   resp.data.build_batch.arn #=> String
    #   resp.data.build_batch.start_time #=> Time
    #   resp.data.build_batch.end_time #=> Time
    #   resp.data.build_batch.current_phase #=> String
    #   resp.data.build_batch.build_batch_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.source_version #=> String
    #   resp.data.build_batch.resolved_source_version #=> String
    #   resp.data.build_batch.project_name #=> String
    #   resp.data.build_batch.phases #=> Array<BuildBatchPhase>
    #   resp.data.build_batch.phases[0] #=> Types::BuildBatchPhase
    #   resp.data.build_batch.phases[0].phase_type #=> String, one of ["SUBMITTED", "DOWNLOAD_BATCHSPEC", "IN_PROGRESS", "COMBINE_ARTIFACTS", "SUCCEEDED", "FAILED", "STOPPED"]
    #   resp.data.build_batch.phases[0].phase_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.phases[0].start_time #=> Time
    #   resp.data.build_batch.phases[0].end_time #=> Time
    #   resp.data.build_batch.phases[0].duration_in_seconds #=> Integer
    #   resp.data.build_batch.phases[0].contexts #=> Array<PhaseContext>
    #   resp.data.build_batch.phases[0].contexts[0] #=> Types::PhaseContext
    #   resp.data.build_batch.phases[0].contexts[0].status_code #=> String
    #   resp.data.build_batch.phases[0].contexts[0].message #=> String
    #   resp.data.build_batch.source #=> Types::ProjectSource
    #   resp.data.build_batch.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.build_batch.source.location #=> String
    #   resp.data.build_batch.source.git_clone_depth #=> Integer
    #   resp.data.build_batch.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.build_batch.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.build_batch.source.buildspec #=> String
    #   resp.data.build_batch.source.auth #=> Types::SourceAuth
    #   resp.data.build_batch.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.build_batch.source.auth.resource #=> String
    #   resp.data.build_batch.source.report_build_status #=> Boolean
    #   resp.data.build_batch.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.build_batch.source.build_status_config.context #=> String
    #   resp.data.build_batch.source.build_status_config.target_url #=> String
    #   resp.data.build_batch.source.insecure_ssl #=> Boolean
    #   resp.data.build_batch.source.source_identifier #=> String
    #   resp.data.build_batch.secondary_sources #=> Array<ProjectSource>
    #   resp.data.build_batch.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.build_batch.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.build_batch.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.build_batch.secondary_source_versions[0].source_version #=> String
    #   resp.data.build_batch.artifacts #=> Types::BuildArtifacts
    #   resp.data.build_batch.artifacts.location #=> String
    #   resp.data.build_batch.artifacts.sha256sum #=> String
    #   resp.data.build_batch.artifacts.md5sum #=> String
    #   resp.data.build_batch.artifacts.override_artifact_name #=> Boolean
    #   resp.data.build_batch.artifacts.encryption_disabled #=> Boolean
    #   resp.data.build_batch.artifacts.artifact_identifier #=> String
    #   resp.data.build_batch.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batch.secondary_artifacts #=> Array<BuildArtifacts>
    #   resp.data.build_batch.cache #=> Types::ProjectCache
    #   resp.data.build_batch.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.build_batch.cache.location #=> String
    #   resp.data.build_batch.cache.modes #=> Array<String>
    #   resp.data.build_batch.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.build_batch.environment #=> Types::ProjectEnvironment
    #   resp.data.build_batch.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.build_batch.environment.image #=> String
    #   resp.data.build_batch.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.build_batch.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.build_batch.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.build_batch.environment.environment_variables[0].name #=> String
    #   resp.data.build_batch.environment.environment_variables[0].value #=> String
    #   resp.data.build_batch.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.build_batch.environment.privileged_mode #=> Boolean
    #   resp.data.build_batch.environment.certificate #=> String
    #   resp.data.build_batch.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.build_batch.environment.registry_credential.credential #=> String
    #   resp.data.build_batch.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.build_batch.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.build_batch.service_role #=> String
    #   resp.data.build_batch.log_config #=> Types::LogsConfig
    #   resp.data.build_batch.log_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.build_batch.log_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batch.log_config.cloud_watch_logs.group_name #=> String
    #   resp.data.build_batch.log_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.build_batch.log_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.build_batch.log_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.build_batch.log_config.s3_logs.location #=> String
    #   resp.data.build_batch.log_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.build_batch.log_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.build_batch.build_timeout_in_minutes #=> Integer
    #   resp.data.build_batch.queued_timeout_in_minutes #=> Integer
    #   resp.data.build_batch.complete #=> Boolean
    #   resp.data.build_batch.initiator #=> String
    #   resp.data.build_batch.vpc_config #=> Types::VpcConfig
    #   resp.data.build_batch.vpc_config.vpc_id #=> String
    #   resp.data.build_batch.vpc_config.subnets #=> Array<String>
    #   resp.data.build_batch.vpc_config.subnets[0] #=> String
    #   resp.data.build_batch.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.build_batch.vpc_config.security_group_ids[0] #=> String
    #   resp.data.build_batch.encryption_key #=> String
    #   resp.data.build_batch.build_batch_number #=> Integer
    #   resp.data.build_batch.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.build_batch.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.build_batch.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.build_batch.file_system_locations[0].location #=> String
    #   resp.data.build_batch.file_system_locations[0].mount_point #=> String
    #   resp.data.build_batch.file_system_locations[0].identifier #=> String
    #   resp.data.build_batch.file_system_locations[0].mount_options #=> String
    #   resp.data.build_batch.build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.build_batch.build_batch_config.service_role #=> String
    #   resp.data.build_batch.build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.build_batch.build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.build_batch.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.build_batch.build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.build_batch.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.build_batch.build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.build_batch.build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.build_batch.build_groups #=> Array<BuildGroup>
    #   resp.data.build_batch.build_groups[0] #=> Types::BuildGroup
    #   resp.data.build_batch.build_groups[0].identifier #=> String
    #   resp.data.build_batch.build_groups[0].depends_on #=> Array<String>
    #   resp.data.build_batch.build_groups[0].depends_on[0] #=> String
    #   resp.data.build_batch.build_groups[0].ignore_failure #=> Boolean
    #   resp.data.build_batch.build_groups[0].current_build_summary #=> Types::BuildSummary
    #   resp.data.build_batch.build_groups[0].current_build_summary.arn #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.requested_on #=> Time
    #   resp.data.build_batch.build_groups[0].current_build_summary.build_status #=> String, one of ["SUCCEEDED", "FAILED", "FAULT", "TIMED_OUT", "IN_PROGRESS", "STOPPED"]
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact #=> Types::ResolvedArtifact
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.location #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.primary_artifact.identifier #=> String
    #   resp.data.build_batch.build_groups[0].current_build_summary.secondary_artifacts #=> Array<ResolvedArtifact>
    #   resp.data.build_batch.build_groups[0].prior_build_summary_list #=> Array<BuildSummary>
    #   resp.data.build_batch.debug_session_enabled #=> Boolean
    #
    def stop_build_batch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopBuildBatchInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopBuildBatchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopBuildBatch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StopBuildBatch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopBuildBatch,
        stubs: @stubs,
        params_class: Params::StopBuildBatchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_build_batch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the settings of a build project.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :name
    #   <p>The name of the build project.</p>
    #            <note>
    #               <p>You cannot change a build project's name.</p>
    #            </note>
    #
    # @option params [String] :description
    #   <p>A new or replacement description of the build project.</p>
    #
    # @option params [ProjectSource] :source
    #   <p>Information to be changed about the build input source code for the build
    #       project.</p>
    #
    # @option params [Array<ProjectSource>] :secondary_sources
    #   <p> An array of <code>ProjectSource</code> objects. </p>
    #
    # @option params [String] :source_version
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
    # @option params [Array<ProjectSourceVersion>] :secondary_source_versions
    #   <p> An array of <code>ProjectSourceVersion</code> objects. If
    #         <code>secondarySourceVersions</code> is specified at the build level, then they take
    #       over these <code>secondarySourceVersions</code> (at the project level). </p>
    #
    # @option params [ProjectArtifacts] :artifacts
    #   <p>Information to be changed about the build output artifacts for the build
    #           project.</p>
    #
    # @option params [Array<ProjectArtifacts>] :secondary_artifacts
    #   <p> An array of <code>ProjectArtifact</code> objects. </p>
    #
    # @option params [ProjectCache] :cache
    #   <p>Stores recently used information so that it can be quickly accessed at a later
    #         time.</p>
    #
    # @option params [ProjectEnvironment] :environment
    #   <p>Information to be changed about the build environment for the build project.</p>
    #
    # @option params [String] :service_role
    #   <p>The replacement ARN of the IAM role that enables CodeBuild to interact with dependent
    #       Amazon Web Services services on behalf of the Amazon Web Services account.</p>
    #
    # @option params [Integer] :timeout_in_minutes
    #   <p>The replacement value in minutes, from 5 to 480 (8 hours), for CodeBuild to wait before
    #         timing out any related build that did not get marked as completed.</p>
    #
    # @option params [Integer] :queued_timeout_in_minutes
    #   <p> The number of minutes a build is allowed to be queued before it times out. </p>
    #
    # @option params [String] :encryption_key
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
    # @option params [Array<Tag>] :tags
    #   <p>An updated list of tag key and value pairs associated with this build project.</p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild build project
    #         tags.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>VpcConfig enables CodeBuild to access resources in an Amazon VPC.</p>
    #
    # @option params [Boolean] :badge_enabled
    #   <p>Set this to true to generate a publicly accessible URL for your project's build
    #         badge.</p>
    #
    # @option params [LogsConfig] :logs_config
    #   <p> Information about logs for the build project. A project can create logs in CloudWatch Logs,
    #       logs in an S3 bucket, or both. </p>
    #
    # @option params [Array<ProjectFileSystemLocation>] :file_system_locations
    #   <p>
    #         An array of <code>ProjectFileSystemLocation</code> objects for a CodeBuild build project. A <code>ProjectFileSystemLocation</code> object
    #         specifies the <code>identifier</code>, <code>location</code>, <code>mountOptions</code>,
    #         <code>mountPoint</code>, and <code>type</code> of a file system created using Amazon Elastic File System.
    #     </p>
    #
    # @option params [ProjectBuildBatchConfig] :build_batch_config
    #   <p>Contains configuration information about a batch build project.</p>
    #
    # @option params [Integer] :concurrent_build_limit
    #   <p>The maximum number of concurrent builds that are allowed for this project.</p>
    #            <p>New builds are only started if the current number of builds is less than or equal to this limit.
    #     If the current build count meets this limit, new builds are throttled and are not run.</p>
    #            <p>To remove this limit, set this value to -1.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     name: 'name', # required
    #     description: 'description',
    #     source: {
    #       type: 'CODECOMMIT', # required - accepts ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #       location: 'location',
    #       git_clone_depth: 1,
    #       git_submodules_config: {
    #         fetch_submodules: false # required
    #       },
    #       buildspec: 'buildspec',
    #       auth: {
    #         type: 'OAUTH', # required - accepts ["OAUTH"]
    #         resource: 'resource'
    #       },
    #       report_build_status: false,
    #       build_status_config: {
    #         context: 'context',
    #         target_url: 'targetUrl'
    #       },
    #       insecure_ssl: false,
    #       source_identifier: 'sourceIdentifier'
    #     },
    #     source_version: 'sourceVersion',
    #     secondary_source_versions: [
    #       {
    #         source_identifier: 'sourceIdentifier', # required
    #         source_version: 'sourceVersion' # required
    #       }
    #     ],
    #     artifacts: {
    #       type: 'CODEPIPELINE', # required - accepts ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #       location: 'location',
    #       path: 'path',
    #       namespace_type: 'NONE', # accepts ["NONE", "BUILD_ID"]
    #       name: 'name',
    #       packaging: 'NONE', # accepts ["NONE", "ZIP"]
    #       override_artifact_name: false,
    #       encryption_disabled: false,
    #       artifact_identifier: 'artifactIdentifier',
    #       bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #     },
    #     cache: {
    #       type: 'NO_CACHE', # required - accepts ["NO_CACHE", "S3", "LOCAL"]
    #       location: 'location',
    #       modes: [
    #         'LOCAL_DOCKER_LAYER_CACHE' # accepts ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #       ]
    #     },
    #     environment: {
    #       type: 'WINDOWS_CONTAINER', # required - accepts ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #       image: 'image', # required
    #       compute_type: 'BUILD_GENERAL1_SMALL', # required - accepts ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #       environment_variables: [
    #         {
    #           name: 'name', # required
    #           value: 'value', # required
    #           type: 'PLAINTEXT' # accepts ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #         }
    #       ],
    #       privileged_mode: false,
    #       certificate: 'certificate',
    #       registry_credential: {
    #         credential: 'credential', # required
    #         credential_provider: 'SECRETS_MANAGER' # required - accepts ["SECRETS_MANAGER"]
    #       },
    #       image_pull_credentials_type: 'CODEBUILD' # accepts ["CODEBUILD", "SERVICE_ROLE"]
    #     },
    #     service_role: 'serviceRole',
    #     timeout_in_minutes: 1,
    #     queued_timeout_in_minutes: 1,
    #     encryption_key: 'encryptionKey',
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     vpc_config: {
    #       vpc_id: 'vpcId',
    #       subnets: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     badge_enabled: false,
    #     logs_config: {
    #       cloud_watch_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         group_name: 'groupName',
    #         stream_name: 'streamName'
    #       },
    #       s3_logs: {
    #         status: 'ENABLED', # required - accepts ["ENABLED", "DISABLED"]
    #         location: 'location',
    #         encryption_disabled: false,
    #         bucket_owner_access: 'NONE' # accepts ["NONE", "READ_ONLY", "FULL"]
    #       }
    #     },
    #     file_system_locations: [
    #       {
    #         type: 'EFS', # accepts ["EFS"]
    #         location: 'location',
    #         mount_point: 'mountPoint',
    #         identifier: 'identifier',
    #         mount_options: 'mountOptions'
    #       }
    #     ],
    #     build_batch_config: {
    #       service_role: 'serviceRole',
    #       combine_artifacts: false,
    #       restrictions: {
    #         maximum_builds_allowed: 1,
    #         compute_types_allowed: [
    #           'member'
    #         ]
    #       },
    #       timeout_in_mins: 1,
    #       batch_report_mode: 'REPORT_INDIVIDUAL_BUILDS' # accepts ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #     },
    #     concurrent_build_limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #   resp.data.project #=> Types::Project
    #   resp.data.project.name #=> String
    #   resp.data.project.arn #=> String
    #   resp.data.project.description #=> String
    #   resp.data.project.source #=> Types::ProjectSource
    #   resp.data.project.source.type #=> String, one of ["CODECOMMIT", "CODEPIPELINE", "GITHUB", "S3", "BITBUCKET", "GITHUB_ENTERPRISE", "NO_SOURCE"]
    #   resp.data.project.source.location #=> String
    #   resp.data.project.source.git_clone_depth #=> Integer
    #   resp.data.project.source.git_submodules_config #=> Types::GitSubmodulesConfig
    #   resp.data.project.source.git_submodules_config.fetch_submodules #=> Boolean
    #   resp.data.project.source.buildspec #=> String
    #   resp.data.project.source.auth #=> Types::SourceAuth
    #   resp.data.project.source.auth.type #=> String, one of ["OAUTH"]
    #   resp.data.project.source.auth.resource #=> String
    #   resp.data.project.source.report_build_status #=> Boolean
    #   resp.data.project.source.build_status_config #=> Types::BuildStatusConfig
    #   resp.data.project.source.build_status_config.context #=> String
    #   resp.data.project.source.build_status_config.target_url #=> String
    #   resp.data.project.source.insecure_ssl #=> Boolean
    #   resp.data.project.source.source_identifier #=> String
    #   resp.data.project.secondary_sources #=> Array<ProjectSource>
    #   resp.data.project.source_version #=> String
    #   resp.data.project.secondary_source_versions #=> Array<ProjectSourceVersion>
    #   resp.data.project.secondary_source_versions[0] #=> Types::ProjectSourceVersion
    #   resp.data.project.secondary_source_versions[0].source_identifier #=> String
    #   resp.data.project.secondary_source_versions[0].source_version #=> String
    #   resp.data.project.artifacts #=> Types::ProjectArtifacts
    #   resp.data.project.artifacts.type #=> String, one of ["CODEPIPELINE", "S3", "NO_ARTIFACTS"]
    #   resp.data.project.artifacts.location #=> String
    #   resp.data.project.artifacts.path #=> String
    #   resp.data.project.artifacts.namespace_type #=> String, one of ["NONE", "BUILD_ID"]
    #   resp.data.project.artifacts.name #=> String
    #   resp.data.project.artifacts.packaging #=> String, one of ["NONE", "ZIP"]
    #   resp.data.project.artifacts.override_artifact_name #=> Boolean
    #   resp.data.project.artifacts.encryption_disabled #=> Boolean
    #   resp.data.project.artifacts.artifact_identifier #=> String
    #   resp.data.project.artifacts.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.project.secondary_artifacts #=> Array<ProjectArtifacts>
    #   resp.data.project.cache #=> Types::ProjectCache
    #   resp.data.project.cache.type #=> String, one of ["NO_CACHE", "S3", "LOCAL"]
    #   resp.data.project.cache.location #=> String
    #   resp.data.project.cache.modes #=> Array<String>
    #   resp.data.project.cache.modes[0] #=> String, one of ["LOCAL_DOCKER_LAYER_CACHE", "LOCAL_SOURCE_CACHE", "LOCAL_CUSTOM_CACHE"]
    #   resp.data.project.environment #=> Types::ProjectEnvironment
    #   resp.data.project.environment.type #=> String, one of ["WINDOWS_CONTAINER", "LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "ARM_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER"]
    #   resp.data.project.environment.image #=> String
    #   resp.data.project.environment.compute_type #=> String, one of ["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE"]
    #   resp.data.project.environment.environment_variables #=> Array<EnvironmentVariable>
    #   resp.data.project.environment.environment_variables[0] #=> Types::EnvironmentVariable
    #   resp.data.project.environment.environment_variables[0].name #=> String
    #   resp.data.project.environment.environment_variables[0].value #=> String
    #   resp.data.project.environment.environment_variables[0].type #=> String, one of ["PLAINTEXT", "PARAMETER_STORE", "SECRETS_MANAGER"]
    #   resp.data.project.environment.privileged_mode #=> Boolean
    #   resp.data.project.environment.certificate #=> String
    #   resp.data.project.environment.registry_credential #=> Types::RegistryCredential
    #   resp.data.project.environment.registry_credential.credential #=> String
    #   resp.data.project.environment.registry_credential.credential_provider #=> String, one of ["SECRETS_MANAGER"]
    #   resp.data.project.environment.image_pull_credentials_type #=> String, one of ["CODEBUILD", "SERVICE_ROLE"]
    #   resp.data.project.service_role #=> String
    #   resp.data.project.timeout_in_minutes #=> Integer
    #   resp.data.project.queued_timeout_in_minutes #=> Integer
    #   resp.data.project.encryption_key #=> String
    #   resp.data.project.tags #=> Array<Tag>
    #   resp.data.project.tags[0] #=> Types::Tag
    #   resp.data.project.tags[0].key #=> String
    #   resp.data.project.tags[0].value #=> String
    #   resp.data.project.created #=> Time
    #   resp.data.project.last_modified #=> Time
    #   resp.data.project.webhook #=> Types::Webhook
    #   resp.data.project.webhook.url #=> String
    #   resp.data.project.webhook.payload_url #=> String
    #   resp.data.project.webhook.secret #=> String
    #   resp.data.project.webhook.branch_filter #=> String
    #   resp.data.project.webhook.filter_groups #=> Array<Array<WebhookFilter>>
    #   resp.data.project.webhook.filter_groups[0] #=> Array<WebhookFilter>
    #   resp.data.project.webhook.filter_groups[0][0] #=> Types::WebhookFilter
    #   resp.data.project.webhook.filter_groups[0][0].type #=> String, one of ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #   resp.data.project.webhook.filter_groups[0][0].pattern #=> String
    #   resp.data.project.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.data.project.webhook.build_type #=> String, one of ["BUILD", "BUILD_BATCH"]
    #   resp.data.project.webhook.last_modified_secret #=> Time
    #   resp.data.project.vpc_config #=> Types::VpcConfig
    #   resp.data.project.vpc_config.vpc_id #=> String
    #   resp.data.project.vpc_config.subnets #=> Array<String>
    #   resp.data.project.vpc_config.subnets[0] #=> String
    #   resp.data.project.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.project.vpc_config.security_group_ids[0] #=> String
    #   resp.data.project.badge #=> Types::ProjectBadge
    #   resp.data.project.badge.badge_enabled #=> Boolean
    #   resp.data.project.badge.badge_request_url #=> String
    #   resp.data.project.logs_config #=> Types::LogsConfig
    #   resp.data.project.logs_config.cloud_watch_logs #=> Types::CloudWatchLogsConfig
    #   resp.data.project.logs_config.cloud_watch_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.project.logs_config.cloud_watch_logs.group_name #=> String
    #   resp.data.project.logs_config.cloud_watch_logs.stream_name #=> String
    #   resp.data.project.logs_config.s3_logs #=> Types::S3LogsConfig
    #   resp.data.project.logs_config.s3_logs.status #=> String, one of ["ENABLED", "DISABLED"]
    #   resp.data.project.logs_config.s3_logs.location #=> String
    #   resp.data.project.logs_config.s3_logs.encryption_disabled #=> Boolean
    #   resp.data.project.logs_config.s3_logs.bucket_owner_access #=> String, one of ["NONE", "READ_ONLY", "FULL"]
    #   resp.data.project.file_system_locations #=> Array<ProjectFileSystemLocation>
    #   resp.data.project.file_system_locations[0] #=> Types::ProjectFileSystemLocation
    #   resp.data.project.file_system_locations[0].type #=> String, one of ["EFS"]
    #   resp.data.project.file_system_locations[0].location #=> String
    #   resp.data.project.file_system_locations[0].mount_point #=> String
    #   resp.data.project.file_system_locations[0].identifier #=> String
    #   resp.data.project.file_system_locations[0].mount_options #=> String
    #   resp.data.project.build_batch_config #=> Types::ProjectBuildBatchConfig
    #   resp.data.project.build_batch_config.service_role #=> String
    #   resp.data.project.build_batch_config.combine_artifacts #=> Boolean
    #   resp.data.project.build_batch_config.restrictions #=> Types::BatchRestrictions
    #   resp.data.project.build_batch_config.restrictions.maximum_builds_allowed #=> Integer
    #   resp.data.project.build_batch_config.restrictions.compute_types_allowed #=> Array<String>
    #   resp.data.project.build_batch_config.restrictions.compute_types_allowed[0] #=> String
    #   resp.data.project.build_batch_config.timeout_in_mins #=> Integer
    #   resp.data.project.build_batch_config.batch_report_mode #=> String, one of ["REPORT_INDIVIDUAL_BUILDS", "REPORT_AGGREGATED_BATCH"]
    #   resp.data.project.concurrent_build_limit #=> Integer
    #   resp.data.project.project_visibility #=> String, one of ["PUBLIC_READ", "PRIVATE"]
    #   resp.data.project.public_project_alias #=> String
    #   resp.data.project.resource_access_role #=> String
    #
    def update_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProject
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProject,
        stubs: @stubs,
        params_class: Params::UpdateProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the public visibility for a project. The project's build results, logs, and
    #       artifacts are available to the general public.  For more information, see <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/public-builds.html">Public build
    #         projects</a> in the <i>CodeBuild User Guide</i>.</p>
    #          <important>
    #             <p>The following should be kept in mind when making your projects public:</p>
    #             <ul>
    #                <li>
    #                   <p>All of a project's build results, logs, and artifacts, including builds that were run
    #             when the project was private, are available to the general public.</p>
    #                </li>
    #                <li>
    #                   <p>All build logs and artifacts are available to the public. Environment variables, source
    #             code, and other sensitive information may have been output to the build logs and artifacts.
    #             You must be careful about what information is output to the build logs. Some best practice
    #             are:</p>
    #                   <ul>
    #                      <li>
    #                         <p>Do not store sensitive values, especially Amazon Web Services access key IDs and secret access
    #                 keys, in environment variables. We recommend that you use an Amazon EC2 Systems Manager Parameter Store
    #                 or Secrets Manager to store sensitive values.</p>
    #                      </li>
    #                      <li>
    #                         <p>Follow <a href="https://docs.aws.amazon.com/codebuild/latest/userguide/webhooks.html#webhook-best-practices">Best
    #                   practices for using webhooks</a> in the <i>CodeBuild User
    #                   Guide</i> to limit which entities can trigger a build, and do
    #                   not store the buildspec in the project itself, to ensure that your webhooks are as
    #                   secure as possible.</p>
    #                      </li>
    #                   </ul>
    #                </li>
    #                <li>
    #                   <p>A malicious user can use public builds to distribute malicious artifacts. We recommend
    #             that you review all pull requests to verify that the pull request is a legitimate change. We
    #             also recommend that you validate any artifacts with their checksums to make sure that the
    #             correct artifacts are being downloaded.</p>
    #                </li>
    #             </ul>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectVisibilityInput}.
    #
    # @option params [String] :project_arn
    #   <p>The Amazon Resource Name (ARN) of the build project.</p>
    #
    # @option params [String] :project_visibility
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
    # @option params [String] :resource_access_role
    #   <p>The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for
    #         the project's builds.</p>
    #
    # @return [Types::UpdateProjectVisibilityOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project_visibility(
    #     project_arn: 'projectArn', # required
    #     project_visibility: 'PUBLIC_READ', # required - accepts ["PUBLIC_READ", "PRIVATE"]
    #     resource_access_role: 'resourceAccessRole'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectVisibilityOutput
    #   resp.data.project_arn #=> String
    #   resp.data.public_project_alias #=> String
    #   resp.data.project_visibility #=> String, one of ["PUBLIC_READ", "PRIVATE"]
    #
    def update_project_visibility(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectVisibilityInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateProjectVisibilityInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateProjectVisibility
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateProjectVisibility
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateProjectVisibility,
        stubs: @stubs,
        params_class: Params::UpdateProjectVisibilityOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_project_visibility
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #       Updates a report group.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateReportGroupInput}.
    #
    # @option params [String] :arn
    #   <p>
    #         The ARN of the report group to update.
    #       </p>
    #
    # @option params [ReportExportConfig] :export_config
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
    # @option params [Array<Tag>] :tags
    #   <p>
    #         An updated list of tag key and value pairs associated with this report group.
    #       </p>
    #            <p>These tags are available for use by Amazon Web Services services that support CodeBuild report group
    #         tags.</p>
    #
    # @return [Types::UpdateReportGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_report_group(
    #     arn: 'arn', # required
    #     export_config: {
    #       export_config_type: 'S3', # accepts ["S3", "NO_EXPORT"]
    #       s3_destination: {
    #         bucket: 'bucket',
    #         bucket_owner: 'bucketOwner',
    #         path: 'path',
    #         packaging: 'ZIP', # accepts ["ZIP", "NONE"]
    #         encryption_key: 'encryptionKey',
    #         encryption_disabled: false
    #       }
    #     },
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateReportGroupOutput
    #   resp.data.report_group #=> Types::ReportGroup
    #   resp.data.report_group.arn #=> String
    #   resp.data.report_group.name #=> String
    #   resp.data.report_group.type #=> String, one of ["TEST", "CODE_COVERAGE"]
    #   resp.data.report_group.export_config #=> Types::ReportExportConfig
    #   resp.data.report_group.export_config.export_config_type #=> String, one of ["S3", "NO_EXPORT"]
    #   resp.data.report_group.export_config.s3_destination #=> Types::S3ReportExportConfig
    #   resp.data.report_group.export_config.s3_destination.bucket #=> String
    #   resp.data.report_group.export_config.s3_destination.bucket_owner #=> String
    #   resp.data.report_group.export_config.s3_destination.path #=> String
    #   resp.data.report_group.export_config.s3_destination.packaging #=> String, one of ["ZIP", "NONE"]
    #   resp.data.report_group.export_config.s3_destination.encryption_key #=> String
    #   resp.data.report_group.export_config.s3_destination.encryption_disabled #=> Boolean
    #   resp.data.report_group.created #=> Time
    #   resp.data.report_group.last_modified #=> Time
    #   resp.data.report_group.tags #=> Array<Tag>
    #   resp.data.report_group.tags[0] #=> Types::Tag
    #   resp.data.report_group.tags[0].key #=> String
    #   resp.data.report_group.tags[0].value #=> String
    #   resp.data.report_group.status #=> String, one of ["ACTIVE", "DELETING"]
    #
    def update_report_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateReportGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateReportGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateReportGroup
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateReportGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateReportGroup,
        stubs: @stubs,
        params_class: Params::UpdateReportGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_report_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Updates the webhook associated with an CodeBuild build project. </p>
    #          <note>
    #             <p> If you use Bitbucket for your repository, <code>rotateSecret</code> is ignored.
    #       </p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateWebhookInput}.
    #
    # @option params [String] :project_name
    #   <p>The name of the CodeBuild project.</p>
    #
    # @option params [String] :branch_filter
    #   <p>A regular expression used to determine which repository branches are built when a
    #         webhook is triggered. If the name of a branch matches the regular expression, then it is
    #         built. If <code>branchFilter</code> is empty, then all branches are built.</p>
    #            <note>
    #               <p> It is recommended that you use <code>filterGroups</code> instead of
    #           <code>branchFilter</code>. </p>
    #            </note>
    #
    # @option params [Boolean] :rotate_secret
    #   <p> A boolean value that specifies whether the associated GitHub repository's secret
    #         token should be updated. If you use Bitbucket for your repository,
    #         <code>rotateSecret</code> is ignored. </p>
    #
    # @option params [Array<Array<WebhookFilter>>] :filter_groups
    #   <p> An array of arrays of <code>WebhookFilter</code> objects used to determine if a
    #         webhook event can trigger a build. A filter group must contain at least one
    #         <code>EVENT</code>
    #               <code>WebhookFilter</code>. </p>
    #
    # @option params [String] :build_type
    #   <p>Specifies the type of build this webhook will trigger.</p>
    #
    # @return [Types::UpdateWebhookOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_webhook(
    #     project_name: 'projectName', # required
    #     branch_filter: 'branchFilter',
    #     rotate_secret: false,
    #     filter_groups: [
    #       [
    #         {
    #           type: 'EVENT', # required - accepts ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #           pattern: 'pattern', # required
    #           exclude_matched_pattern: false
    #         }
    #       ]
    #     ],
    #     build_type: 'BUILD' # accepts ["BUILD", "BUILD_BATCH"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateWebhookOutput
    #   resp.data.webhook #=> Types::Webhook
    #   resp.data.webhook.url #=> String
    #   resp.data.webhook.payload_url #=> String
    #   resp.data.webhook.secret #=> String
    #   resp.data.webhook.branch_filter #=> String
    #   resp.data.webhook.filter_groups #=> Array<Array<WebhookFilter>>
    #   resp.data.webhook.filter_groups[0] #=> Array<WebhookFilter>
    #   resp.data.webhook.filter_groups[0][0] #=> Types::WebhookFilter
    #   resp.data.webhook.filter_groups[0][0].type #=> String, one of ["EVENT", "BASE_REF", "HEAD_REF", "ACTOR_ACCOUNT_ID", "FILE_PATH", "COMMIT_MESSAGE"]
    #   resp.data.webhook.filter_groups[0][0].pattern #=> String
    #   resp.data.webhook.filter_groups[0][0].exclude_matched_pattern #=> Boolean
    #   resp.data.webhook.build_type #=> String, one of ["BUILD", "BUILD_BATCH"]
    #   resp.data.webhook.last_modified_secret #=> Time
    #
    def update_webhook(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateWebhookInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateWebhookInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateWebhook
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::OAuthProviderException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UpdateWebhook
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateWebhook,
        stubs: @stubs,
        params_class: Params::UpdateWebhookOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_webhook
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
