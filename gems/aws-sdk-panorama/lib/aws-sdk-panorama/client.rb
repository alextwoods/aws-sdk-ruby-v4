# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Panorama
  # An API client for OmniCloudServiceLambda
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Panorama</fullname>
  #          <p>
  #             <b>Overview</b>
  #          </p>
  #          <p>This is the <i>AWS Panorama API Reference</i>. For an introduction to the service, see <a href="https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html">What is AWS Panorama?</a> in the
  #         <i>AWS Panorama Developer Guide</i>.</p>
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
    def initialize(config = AWS::SDK::Panorama::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an application instance and deploys it to a device.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInstanceInput}.
    #
    # @option params [String] :name
    #   <p>A name for the application instance.</p>
    #
    # @option params [String] :description
    #   <p>A description for the application instance.</p>
    #
    # @option params [ManifestPayload] :manifest_payload
    #   <p>The application's manifest document.</p>
    #
    # @option params [ManifestOverridesPayload] :manifest_overrides_payload
    #   <p>Setting overrides for the application manifest.</p>
    #
    # @option params [String] :application_instance_id_to_replace
    #   <p>The ID of an application instance to replace with the new instance.</p>
    #
    # @option params [String] :runtime_role_arn
    #   <p>The ARN of a runtime role for the application instance.</p>
    #
    # @option params [String] :default_runtime_context_device
    #   <p>A device's ID.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the application instance.</p>
    #
    # @return [Types::CreateApplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application_instance(
    #     name: 'Name',
    #     description: 'Description',
    #     manifest_payload: {
    #       # One of:
    #       payload_data: 'PayloadData'
    #     }, # required
    #     manifest_overrides_payload: {
    #       # One of:
    #       payload_data: 'PayloadData'
    #     },
    #     application_instance_id_to_replace: 'ApplicationInstanceIdToReplace',
    #     runtime_role_arn: 'RuntimeRoleArn',
    #     default_runtime_context_device: 'DefaultRuntimeContextDevice', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationInstanceOutput
    #   resp.data.application_instance_id #=> String
    #
    def create_application_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplicationInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateApplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplicationInstance,
        stubs: @stubs,
        params_class: Params::CreateApplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a job to run on one or more devices.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateJobForDevicesInput}.
    #
    # @option params [Array<String>] :device_ids
    #   <p>IDs of target devices.</p>
    #
    # @option params [DeviceJobConfig] :device_job_config
    #   <p>Configuration settings for the job.</p>
    #
    # @option params [String] :job_type
    #   <p>The type of job to run.</p>
    #
    # @return [Types::CreateJobForDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_job_for_devices(
    #     device_ids: [
    #       'member'
    #     ], # required
    #     device_job_config: {
    #       ota_job_config: {
    #         image_version: 'ImageVersion' # required
    #       }
    #     }, # required
    #     job_type: 'OTA' # required - accepts ["OTA"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateJobForDevicesOutput
    #   resp.data.jobs #=> Array<Job>
    #   resp.data.jobs[0] #=> Types::Job
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].device_id #=> String
    #
    def create_job_for_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateJobForDevicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateJobForDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateJobForDevices
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateJobForDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateJobForDevices,
        stubs: @stubs,
        params_class: Params::CreateJobForDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_job_for_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a camera stream node.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNodeFromTemplateJobInput}.
    #
    # @option params [String] :template_type
    #   <p>The type of node.</p>
    #
    # @option params [String] :output_package_name
    #   <p>An output package name for the node.</p>
    #
    # @option params [String] :output_package_version
    #   <p>An output package version for the node.</p>
    #
    # @option params [String] :node_name
    #   <p>A name for the node.</p>
    #
    # @option params [String] :node_description
    #   <p>A description for the node.</p>
    #
    # @option params [Hash<String, String>] :template_parameters
    #   <p>Template parameters for the node.</p>
    #
    # @option params [Array<JobResourceTags>] :job_tags
    #   <p>Tags for the job.</p>
    #
    # @return [Types::CreateNodeFromTemplateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_node_from_template_job(
    #     template_type: 'RTSP_CAMERA_STREAM', # required - accepts ["RTSP_CAMERA_STREAM"]
    #     output_package_name: 'OutputPackageName', # required
    #     output_package_version: 'OutputPackageVersion', # required
    #     node_name: 'NodeName', # required
    #     node_description: 'NodeDescription',
    #     template_parameters: {
    #       'key' => 'value'
    #     }, # required
    #     job_tags: [
    #       {
    #         resource_type: 'PACKAGE', # required - accepts ["PACKAGE"]
    #         tags: {
    #           'key' => 'value'
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNodeFromTemplateJobOutput
    #   resp.data.job_id #=> String
    #
    def create_node_from_template_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNodeFromTemplateJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNodeFromTemplateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNodeFromTemplateJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateNodeFromTemplateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNodeFromTemplateJob,
        stubs: @stubs,
        params_class: Params::CreateNodeFromTemplateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_node_from_template_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a package and storage location in an Amazon S3 access point.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePackageInput}.
    #
    # @option params [String] :package_name
    #   <p>A name for the package.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the package.</p>
    #
    # @return [Types::CreatePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package(
    #     package_name: 'PackageName', # required
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePackageOutput
    #   resp.data.package_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.storage_location #=> Types::StorageLocation
    #   resp.data.storage_location.bucket #=> String
    #   resp.data.storage_location.repo_prefix_location #=> String
    #   resp.data.storage_location.generated_prefix_location #=> String
    #   resp.data.storage_location.binary_prefix_location #=> String
    #   resp.data.storage_location.manifest_prefix_location #=> String
    #
    def create_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePackageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePackage
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePackage,
        stubs: @stubs,
        params_class: Params::CreatePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Imports a node package.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePackageImportJobInput}.
    #
    # @option params [String] :job_type
    #   <p>A job type for the package import job.</p>
    #
    # @option params [PackageImportJobInputConfig] :input_config
    #   <p>An input config for the package import job.</p>
    #
    # @option params [PackageImportJobOutputConfig] :output_config
    #   <p>An output config for the package import job.</p>
    #
    # @option params [String] :client_token
    #   <p>A client token for the package import job.</p>
    #
    # @option params [Array<JobResourceTags>] :job_tags
    #   <p>Tags for the package import job.</p>
    #
    # @return [Types::CreatePackageImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_package_import_job(
    #     job_type: 'NODE_PACKAGE_VERSION', # required - accepts ["NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"]
    #     input_config: {
    #       package_version_input_config: {
    #         s3_location: {
    #           region: 'Region',
    #           bucket_name: 'BucketName', # required
    #           object_key: 'ObjectKey' # required
    #         } # required
    #       }
    #     }, # required
    #     output_config: {
    #       package_version_output_config: {
    #         package_name: 'PackageName', # required
    #         package_version: 'PackageVersion', # required
    #         mark_latest: false
    #       }
    #     }, # required
    #     client_token: 'ClientToken', # required
    #     job_tags: [
    #       {
    #         resource_type: 'PACKAGE', # required - accepts ["PACKAGE"]
    #         tags: {
    #           'key' => 'value'
    #         } # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePackageImportJobOutput
    #   resp.data.job_id #=> String
    #
    def create_package_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePackageImportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePackageImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePackageImportJob
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePackageImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePackageImportJob,
        stubs: @stubs,
        params_class: Params::CreatePackageImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_package_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a device.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDeviceInput}.
    #
    # @option params [String] :device_id
    #   <p>The device's ID.</p>
    #
    # @return [Types::DeleteDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_device(
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDeviceOutput
    #   resp.data.device_id #=> String
    #
    def delete_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDevice
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDevice,
        stubs: @stubs,
        params_class: Params::DeleteDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a package.</p>
    #          <note>
    #             <p>To delete a package, you need permission to call <code>s3:DeleteObject</code> in addition to permissions for
    #         the AWS Panorama API.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeletePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The package's ID.</p>
    #
    # @option params [Boolean] :force_delete
    #   <p>Delete the package even if it has artifacts stored in its access point. Deletes the package's artifacts from
    #         Amazon S3.</p>
    #
    # @return [Types::DeletePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_package(
    #     package_id: 'PackageId', # required
    #     force_delete: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePackageOutput
    #
    def delete_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePackageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePackage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeletePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePackage,
        stubs: @stubs,
        params_class: Params::DeletePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deregisters a package version.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterPackageVersionInput}.
    #
    # @option params [String] :owner_account
    #   <p>An owner account.</p>
    #
    # @option params [String] :package_id
    #   <p>A package ID.</p>
    #
    # @option params [String] :package_version
    #   <p>A package version.</p>
    #
    # @option params [String] :patch_version
    #   <p>A patch version.</p>
    #
    # @option params [String] :updated_latest_patch_version
    #   <p>If the version was marked latest, the new version to maker as latest.</p>
    #
    # @return [Types::DeregisterPackageVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_package_version(
    #     owner_account: 'OwnerAccount',
    #     package_id: 'PackageId', # required
    #     package_version: 'PackageVersion', # required
    #     patch_version: 'PatchVersion', # required
    #     updated_latest_patch_version: 'UpdatedLatestPatchVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterPackageVersionOutput
    #
    def deregister_package_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterPackageVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterPackageVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterPackageVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeregisterPackageVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterPackageVersion,
        stubs: @stubs,
        params_class: Params::DeregisterPackageVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_package_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an application instance on a device.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationInstanceInput}.
    #
    # @option params [String] :application_instance_id
    #   <p>The application instance's ID.</p>
    #
    # @return [Types::DescribeApplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_instance(
    #     application_instance_id: 'ApplicationInstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationInstanceOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.default_runtime_context_device #=> String
    #   resp.data.default_runtime_context_device_name #=> String
    #   resp.data.application_instance_id_to_replace #=> String
    #   resp.data.runtime_role_arn #=> String
    #   resp.data.status #=> String, one of ["DEPLOYMENT_PENDING", "DEPLOYMENT_REQUESTED", "DEPLOYMENT_IN_PROGRESS", "DEPLOYMENT_ERROR", "DEPLOYMENT_SUCCEEDED", "REMOVAL_PENDING", "REMOVAL_REQUESTED", "REMOVAL_IN_PROGRESS", "REMOVAL_FAILED", "REMOVAL_SUCCEEDED", "DEPLOYMENT_FAILED"]
    #   resp.data.health_status #=> String, one of ["RUNNING", "ERROR", "NOT_AVAILABLE"]
    #   resp.data.status_description #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #   resp.data.application_instance_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_application_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationInstance
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeApplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationInstance,
        stubs: @stubs,
        params_class: Params::DescribeApplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an application instance's configuration manifest.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationInstanceDetailsInput}.
    #
    # @option params [String] :application_instance_id
    #   <p>The application instance's ID.</p>
    #
    # @return [Types::DescribeApplicationInstanceDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_instance_details(
    #     application_instance_id: 'ApplicationInstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationInstanceDetailsOutput
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.default_runtime_context_device #=> String
    #   resp.data.manifest_payload #=> ManifestPayload
    #   resp.data.manifest_overrides_payload #=> ManifestOverridesPayload
    #   resp.data.application_instance_id_to_replace #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.application_instance_id #=> String
    #
    def describe_application_instance_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationInstanceDetailsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationInstanceDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationInstanceDetails
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeApplicationInstanceDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationInstanceDetails,
        stubs: @stubs,
        params_class: Params::DescribeApplicationInstanceDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_instance_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a device.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeviceInput}.
    #
    # @option params [String] :device_id
    #   <p>The device's ID.</p>
    #
    # @return [Types::DescribeDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device(
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeviceOutput
    #   resp.data.device_id #=> String
    #   resp.data.name #=> String
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.type #=> String, one of ["PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"]
    #   resp.data.device_connection_status #=> String, one of ["ONLINE", "OFFLINE", "AWAITING_CREDENTIALS", "NOT_AVAILABLE", "ERROR"]
    #   resp.data.created_time #=> Time
    #   resp.data.provisioning_status #=> String, one of ["AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"]
    #   resp.data.latest_software #=> String
    #   resp.data.current_software #=> String
    #   resp.data.serial_number #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.networking_configuration #=> Types::NetworkPayload
    #   resp.data.networking_configuration.ethernet0 #=> Types::EthernetPayload
    #   resp.data.networking_configuration.ethernet0.connection_type #=> String, one of ["STATIC_IP", "DHCP"]
    #   resp.data.networking_configuration.ethernet0.static_ip_connection_info #=> Types::StaticIpConnectionInfo
    #   resp.data.networking_configuration.ethernet0.static_ip_connection_info.ip_address #=> String
    #   resp.data.networking_configuration.ethernet0.static_ip_connection_info.mask #=> String
    #   resp.data.networking_configuration.ethernet0.static_ip_connection_info.dns #=> Array<String>
    #   resp.data.networking_configuration.ethernet0.static_ip_connection_info.dns[0] #=> String
    #   resp.data.networking_configuration.ethernet0.static_ip_connection_info.default_gateway #=> String
    #   resp.data.networking_configuration.ethernet1 #=> Types::EthernetPayload
    #   resp.data.networking_configuration.ntp #=> Types::NtpPayload
    #   resp.data.networking_configuration.ntp.ntp_servers #=> Array<String>
    #   resp.data.networking_configuration.ntp.ntp_servers[0] #=> String
    #   resp.data.current_networking_status #=> Types::NetworkStatus
    #   resp.data.current_networking_status.ethernet0_status #=> Types::EthernetStatus
    #   resp.data.current_networking_status.ethernet0_status.ip_address #=> String
    #   resp.data.current_networking_status.ethernet0_status.connection_status #=> String, one of ["CONNECTED", "NOT_CONNECTED", "CONNECTING"]
    #   resp.data.current_networking_status.ethernet0_status.hw_address #=> String
    #   resp.data.current_networking_status.ethernet1_status #=> Types::EthernetStatus
    #   resp.data.current_networking_status.ntp_status #=> Types::NtpStatus
    #   resp.data.current_networking_status.ntp_status.connection_status #=> String, one of ["CONNECTED", "NOT_CONNECTED", "CONNECTING"]
    #   resp.data.current_networking_status.ntp_status.ip_address #=> String
    #   resp.data.current_networking_status.ntp_status.ntp_server_name #=> String
    #   resp.data.current_networking_status.last_updated_time #=> Time
    #   resp.data.lease_expiration_time #=> Time
    #   resp.data.alternate_softwares #=> Array<AlternateSoftwareMetadata>
    #   resp.data.alternate_softwares[0] #=> Types::AlternateSoftwareMetadata
    #   resp.data.alternate_softwares[0].version #=> String
    #   resp.data.latest_alternate_software #=> String
    #   resp.data.brand #=> String, one of ["AWS_PANORAMA", "LENOVO"]
    #
    def describe_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDevice
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDevice,
        stubs: @stubs,
        params_class: Params::DescribeDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a device job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDeviceJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    #
    # @return [Types::DescribeDeviceJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_device_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDeviceJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.device_id #=> String
    #   resp.data.device_arn #=> String
    #   resp.data.device_name #=> String
    #   resp.data.device_type #=> String, one of ["PANORAMA_APPLIANCE_DEVELOPER_KIT", "PANORAMA_APPLIANCE"]
    #   resp.data.image_version #=> String
    #   resp.data.status #=> String, one of ["PENDING", "IN_PROGRESS", "VERIFYING", "REBOOTING", "DOWNLOADING", "COMPLETED", "FAILED"]
    #   resp.data.created_time #=> Time
    #
    def describe_device_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDeviceJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDeviceJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDeviceJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeDeviceJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDeviceJob,
        stubs: @stubs,
        params_class: Params::DescribeDeviceJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_device_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a node.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNodeInput}.
    #
    # @option params [String] :node_id
    #   <p>The node's ID.</p>
    #
    # @option params [String] :owner_account
    #   <p>The account ID of the node's owner.</p>
    #
    # @return [Types::DescribeNodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node(
    #     node_id: 'NodeId', # required
    #     owner_account: 'OwnerAccount'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNodeOutput
    #   resp.data.node_id #=> String
    #   resp.data.name #=> String
    #   resp.data.category #=> String, one of ["BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"]
    #   resp.data.owner_account #=> String
    #   resp.data.package_name #=> String
    #   resp.data.package_id #=> String
    #   resp.data.package_arn #=> String
    #   resp.data.package_version #=> String
    #   resp.data.patch_version #=> String
    #   resp.data.node_interface #=> Types::NodeInterface
    #   resp.data.node_interface.inputs #=> Array<NodeInputPort>
    #   resp.data.node_interface.inputs[0] #=> Types::NodeInputPort
    #   resp.data.node_interface.inputs[0].name #=> String
    #   resp.data.node_interface.inputs[0].description #=> String
    #   resp.data.node_interface.inputs[0].type #=> String, one of ["BOOLEAN", "STRING", "INT32", "FLOAT32", "MEDIA"]
    #   resp.data.node_interface.inputs[0].default_value #=> String
    #   resp.data.node_interface.inputs[0].max_connections #=> Integer
    #   resp.data.node_interface.outputs #=> Array<NodeOutputPort>
    #   resp.data.node_interface.outputs[0] #=> Types::NodeOutputPort
    #   resp.data.node_interface.outputs[0].name #=> String
    #   resp.data.node_interface.outputs[0].description #=> String
    #   resp.data.node_interface.outputs[0].type #=> String, one of ["BOOLEAN", "STRING", "INT32", "FLOAT32", "MEDIA"]
    #   resp.data.asset_name #=> String
    #   resp.data.description #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #
    def describe_node(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNodeInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNode
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeNode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNode,
        stubs: @stubs,
        params_class: Params::DescribeNodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_node
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a job to create a camera stream node.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNodeFromTemplateJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    #
    # @return [Types::DescribeNodeFromTemplateJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_node_from_template_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNodeFromTemplateJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.status #=> String, one of ["PENDING", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #   resp.data.output_package_name #=> String
    #   resp.data.output_package_version #=> String
    #   resp.data.node_name #=> String
    #   resp.data.node_description #=> String
    #   resp.data.template_type #=> String, one of ["RTSP_CAMERA_STREAM"]
    #   resp.data.template_parameters #=> Hash<String, String>
    #   resp.data.template_parameters['key'] #=> String
    #   resp.data.job_tags #=> Array<JobResourceTags>
    #   resp.data.job_tags[0] #=> Types::JobResourceTags
    #   resp.data.job_tags[0].resource_type #=> String, one of ["PACKAGE"]
    #   resp.data.job_tags[0].tags #=> Hash<String, String>
    #   resp.data.job_tags[0].tags['key'] #=> String
    #
    def describe_node_from_template_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNodeFromTemplateJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNodeFromTemplateJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNodeFromTemplateJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeNodeFromTemplateJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNodeFromTemplateJob,
        stubs: @stubs,
        params_class: Params::DescribeNodeFromTemplateJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_node_from_template_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a package.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePackageInput}.
    #
    # @option params [String] :package_id
    #   <p>The package's ID.</p>
    #
    # @return [Types::DescribePackageOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package(
    #     package_id: 'PackageId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackageOutput
    #   resp.data.package_id #=> String
    #   resp.data.package_name #=> String
    #   resp.data.arn #=> String
    #   resp.data.storage_location #=> Types::StorageLocation
    #   resp.data.storage_location.bucket #=> String
    #   resp.data.storage_location.repo_prefix_location #=> String
    #   resp.data.storage_location.generated_prefix_location #=> String
    #   resp.data.storage_location.binary_prefix_location #=> String
    #   resp.data.storage_location.manifest_prefix_location #=> String
    #   resp.data.read_access_principal_arns #=> Array<String>
    #   resp.data.read_access_principal_arns[0] #=> String
    #   resp.data.write_access_principal_arns #=> Array<String>
    #   resp.data.created_time #=> Time
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def describe_package(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackageInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackageInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackage
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePackage
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackage,
        stubs: @stubs,
        params_class: Params::DescribePackageOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_package
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a package import job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePackageImportJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The job's ID.</p>
    #
    # @return [Types::DescribePackageImportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_import_job(
    #     job_id: 'JobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackageImportJobOutput
    #   resp.data.job_id #=> String
    #   resp.data.client_token #=> String
    #   resp.data.job_type #=> String, one of ["NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"]
    #   resp.data.input_config #=> Types::PackageImportJobInputConfig
    #   resp.data.input_config.package_version_input_config #=> Types::PackageVersionInputConfig
    #   resp.data.input_config.package_version_input_config.s3_location #=> Types::S3Location
    #   resp.data.input_config.package_version_input_config.s3_location.region #=> String
    #   resp.data.input_config.package_version_input_config.s3_location.bucket_name #=> String
    #   resp.data.input_config.package_version_input_config.s3_location.object_key #=> String
    #   resp.data.output_config #=> Types::PackageImportJobOutputConfig
    #   resp.data.output_config.package_version_output_config #=> Types::PackageVersionOutputConfig
    #   resp.data.output_config.package_version_output_config.package_name #=> String
    #   resp.data.output_config.package_version_output_config.package_version #=> String
    #   resp.data.output_config.package_version_output_config.mark_latest #=> Boolean
    #   resp.data.output #=> Types::PackageImportJobOutput
    #   resp.data.output.package_id #=> String
    #   resp.data.output.package_version #=> String
    #   resp.data.output.patch_version #=> String
    #   resp.data.output.output_s3_location #=> Types::OutPutS3Location
    #   resp.data.output.output_s3_location.bucket_name #=> String
    #   resp.data.output.output_s3_location.object_key #=> String
    #   resp.data.created_time #=> Time
    #   resp.data.last_updated_time #=> Time
    #   resp.data.status #=> String, one of ["PENDING", "SUCCEEDED", "FAILED"]
    #   resp.data.status_message #=> String
    #   resp.data.job_tags #=> Array<JobResourceTags>
    #   resp.data.job_tags[0] #=> Types::JobResourceTags
    #   resp.data.job_tags[0].resource_type #=> String, one of ["PACKAGE"]
    #   resp.data.job_tags[0].tags #=> Hash<String, String>
    #   resp.data.job_tags[0].tags['key'] #=> String
    #
    def describe_package_import_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackageImportJobInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackageImportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackageImportJob
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePackageImportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackageImportJob,
        stubs: @stubs,
        params_class: Params::DescribePackageImportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_package_import_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a package version.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePackageVersionInput}.
    #
    # @option params [String] :owner_account
    #   <p>The version's owner account.</p>
    #
    # @option params [String] :package_id
    #   <p>The version's ID.</p>
    #
    # @option params [String] :package_version
    #   <p>The version's version.</p>
    #
    # @option params [String] :patch_version
    #   <p>The version's patch version.</p>
    #
    # @return [Types::DescribePackageVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_package_version(
    #     owner_account: 'OwnerAccount',
    #     package_id: 'PackageId', # required
    #     package_version: 'PackageVersion', # required
    #     patch_version: 'PatchVersion'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePackageVersionOutput
    #   resp.data.owner_account #=> String
    #   resp.data.package_id #=> String
    #   resp.data.package_arn #=> String
    #   resp.data.package_name #=> String
    #   resp.data.package_version #=> String
    #   resp.data.patch_version #=> String
    #   resp.data.is_latest_patch #=> Boolean
    #   resp.data.status #=> String, one of ["REGISTER_PENDING", "REGISTER_COMPLETED", "FAILED", "DELETING"]
    #   resp.data.status_description #=> String
    #   resp.data.registered_time #=> Time
    #
    def describe_package_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePackageVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePackageVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePackageVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePackageVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePackageVersion,
        stubs: @stubs,
        params_class: Params::DescribePackageVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_package_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of application instance dependencies.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationInstanceDependenciesInput}.
    #
    # @option params [String] :application_instance_id
    #   <p>The application instance's ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of application instance dependencies to return in one page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::ListApplicationInstanceDependenciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_instance_dependencies(
    #     application_instance_id: 'ApplicationInstanceId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationInstanceDependenciesOutput
    #   resp.data.package_objects #=> Array<PackageObject>
    #   resp.data.package_objects[0] #=> Types::PackageObject
    #   resp.data.package_objects[0].name #=> String
    #   resp.data.package_objects[0].package_version #=> String
    #   resp.data.package_objects[0].patch_version #=> String
    #   resp.data.next_token #=> String
    #
    def list_application_instance_dependencies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationInstanceDependenciesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationInstanceDependenciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationInstanceDependencies
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListApplicationInstanceDependencies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationInstanceDependencies,
        stubs: @stubs,
        params_class: Params::ListApplicationInstanceDependenciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_instance_dependencies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of application node instances.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationInstanceNodeInstancesInput}.
    #
    # @option params [String] :application_instance_id
    #   <p>The node instances' application instance ID.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of node instances to return in one page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::ListApplicationInstanceNodeInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_instance_node_instances(
    #     application_instance_id: 'ApplicationInstanceId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationInstanceNodeInstancesOutput
    #   resp.data.node_instances #=> Array<NodeInstance>
    #   resp.data.node_instances[0] #=> Types::NodeInstance
    #   resp.data.node_instances[0].node_instance_id #=> String
    #   resp.data.node_instances[0].node_id #=> String
    #   resp.data.node_instances[0].package_name #=> String
    #   resp.data.node_instances[0].package_version #=> String
    #   resp.data.node_instances[0].package_patch_version #=> String
    #   resp.data.node_instances[0].node_name #=> String
    #   resp.data.node_instances[0].current_status #=> String, one of ["RUNNING", "ERROR", "NOT_AVAILABLE"]
    #   resp.data.next_token #=> String
    #
    def list_application_instance_node_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationInstanceNodeInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationInstanceNodeInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationInstanceNodeInstances
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListApplicationInstanceNodeInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationInstanceNodeInstances,
        stubs: @stubs,
        params_class: Params::ListApplicationInstanceNodeInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_instance_node_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of application instances.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationInstancesInput}.
    #
    # @option params [String] :device_id
    #   <p>The application instances' device ID.</p>
    #
    # @option params [String] :status_filter
    #   <p>Only include instances with a specific status.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of application instances to return in one page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::ListApplicationInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_instances(
    #     device_id: 'DeviceId',
    #     status_filter: 'DEPLOYMENT_SUCCEEDED', # accepts ["DEPLOYMENT_SUCCEEDED", "DEPLOYMENT_ERROR", "REMOVAL_SUCCEEDED", "REMOVAL_FAILED", "PROCESSING_DEPLOYMENT", "PROCESSING_REMOVAL", "DEPLOYMENT_FAILED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationInstancesOutput
    #   resp.data.application_instances #=> Array<ApplicationInstance>
    #   resp.data.application_instances[0] #=> Types::ApplicationInstance
    #   resp.data.application_instances[0].name #=> String
    #   resp.data.application_instances[0].application_instance_id #=> String
    #   resp.data.application_instances[0].default_runtime_context_device #=> String
    #   resp.data.application_instances[0].default_runtime_context_device_name #=> String
    #   resp.data.application_instances[0].description #=> String
    #   resp.data.application_instances[0].status #=> String, one of ["DEPLOYMENT_PENDING", "DEPLOYMENT_REQUESTED", "DEPLOYMENT_IN_PROGRESS", "DEPLOYMENT_ERROR", "DEPLOYMENT_SUCCEEDED", "REMOVAL_PENDING", "REMOVAL_REQUESTED", "REMOVAL_IN_PROGRESS", "REMOVAL_FAILED", "REMOVAL_SUCCEEDED", "DEPLOYMENT_FAILED"]
    #   resp.data.application_instances[0].health_status #=> String, one of ["RUNNING", "ERROR", "NOT_AVAILABLE"]
    #   resp.data.application_instances[0].status_description #=> String
    #   resp.data.application_instances[0].created_time #=> Time
    #   resp.data.application_instances[0].arn #=> String
    #   resp.data.application_instances[0].tags #=> Hash<String, String>
    #   resp.data.application_instances[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_application_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationInstancesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationInstances
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListApplicationInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationInstances,
        stubs: @stubs,
        params_class: Params::ListApplicationInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of devices.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicesInput}.
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of devices to return in one page of results.</p>
    #
    # @return [Types::ListDevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesOutput
    #   resp.data.devices #=> Array<Device>
    #   resp.data.devices[0] #=> Types::Device
    #   resp.data.devices[0].device_id #=> String
    #   resp.data.devices[0].name #=> String
    #   resp.data.devices[0].created_time #=> Time
    #   resp.data.devices[0].provisioning_status #=> String, one of ["AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"]
    #   resp.data.devices[0].last_updated_time #=> Time
    #   resp.data.devices[0].lease_expiration_time #=> Time
    #   resp.data.devices[0].brand #=> String, one of ["AWS_PANORAMA", "LENOVO"]
    #   resp.data.next_token #=> String
    #
    def list_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevices
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevices,
        stubs: @stubs,
        params_class: Params::ListDevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDevicesJobsInput}.
    #
    # @option params [String] :device_id
    #   <p>Filter results by the job's target device ID.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of device jobs to return in one page of results.</p>
    #
    # @return [Types::ListDevicesJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_devices_jobs(
    #     device_id: 'DeviceId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDevicesJobsOutput
    #   resp.data.device_jobs #=> Array<DeviceJob>
    #   resp.data.device_jobs[0] #=> Types::DeviceJob
    #   resp.data.device_jobs[0].device_name #=> String
    #   resp.data.device_jobs[0].device_id #=> String
    #   resp.data.device_jobs[0].job_id #=> String
    #   resp.data.device_jobs[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_devices_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDevicesJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDevicesJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDevicesJobs
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListDevicesJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDevicesJobs,
        stubs: @stubs,
        params_class: Params::ListDevicesJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_devices_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of camera stream node jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNodeFromTemplateJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of node from template jobs to return in one page of results.</p>
    #
    # @return [Types::ListNodeFromTemplateJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_node_from_template_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNodeFromTemplateJobsOutput
    #   resp.data.node_from_template_jobs #=> Array<NodeFromTemplateJob>
    #   resp.data.node_from_template_jobs[0] #=> Types::NodeFromTemplateJob
    #   resp.data.node_from_template_jobs[0].job_id #=> String
    #   resp.data.node_from_template_jobs[0].template_type #=> String, one of ["RTSP_CAMERA_STREAM"]
    #   resp.data.node_from_template_jobs[0].status #=> String, one of ["PENDING", "SUCCEEDED", "FAILED"]
    #   resp.data.node_from_template_jobs[0].status_message #=> String
    #   resp.data.node_from_template_jobs[0].created_time #=> Time
    #   resp.data.node_from_template_jobs[0].node_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_node_from_template_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNodeFromTemplateJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNodeFromTemplateJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNodeFromTemplateJobs
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListNodeFromTemplateJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNodeFromTemplateJobs,
        stubs: @stubs,
        params_class: Params::ListNodeFromTemplateJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_node_from_template_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of nodes.</p>
    #
    # @param [Hash] params
    #   See {Types::ListNodesInput}.
    #
    # @option params [String] :category
    #   <p>Search for nodes by category.</p>
    #
    # @option params [String] :owner_account
    #   <p>Search for nodes by the account ID of the nodes' owner.</p>
    #
    # @option params [String] :package_name
    #   <p>Search for nodes by name.</p>
    #
    # @option params [String] :package_version
    #   <p>Search for nodes by version.</p>
    #
    # @option params [String] :patch_version
    #   <p>Search for nodes by patch version.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of nodes to return in one page of results.</p>
    #
    # @return [Types::ListNodesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_nodes(
    #     category: 'BUSINESS_LOGIC', # accepts ["BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"]
    #     owner_account: 'OwnerAccount',
    #     package_name: 'PackageName',
    #     package_version: 'PackageVersion',
    #     patch_version: 'PatchVersion',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListNodesOutput
    #   resp.data.nodes #=> Array<Node>
    #   resp.data.nodes[0] #=> Types::Node
    #   resp.data.nodes[0].node_id #=> String
    #   resp.data.nodes[0].name #=> String
    #   resp.data.nodes[0].category #=> String, one of ["BUSINESS_LOGIC", "ML_MODEL", "MEDIA_SOURCE", "MEDIA_SINK"]
    #   resp.data.nodes[0].owner_account #=> String
    #   resp.data.nodes[0].package_name #=> String
    #   resp.data.nodes[0].package_id #=> String
    #   resp.data.nodes[0].package_arn #=> String
    #   resp.data.nodes[0].package_version #=> String
    #   resp.data.nodes[0].patch_version #=> String
    #   resp.data.nodes[0].description #=> String
    #   resp.data.nodes[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_nodes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListNodesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListNodesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListNodes
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException]),
        data_parser: Parsers::ListNodes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListNodes,
        stubs: @stubs,
        params_class: Params::ListNodesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_nodes
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of package import jobs.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPackageImportJobsInput}.
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of package import jobs to return in one page of results.</p>
    #
    # @return [Types::ListPackageImportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_package_import_jobs(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackageImportJobsOutput
    #   resp.data.package_import_jobs #=> Array<PackageImportJob>
    #   resp.data.package_import_jobs[0] #=> Types::PackageImportJob
    #   resp.data.package_import_jobs[0].job_id #=> String
    #   resp.data.package_import_jobs[0].job_type #=> String, one of ["NODE_PACKAGE_VERSION", "MARKETPLACE_NODE_PACKAGE_VERSION"]
    #   resp.data.package_import_jobs[0].status #=> String, one of ["PENDING", "SUCCEEDED", "FAILED"]
    #   resp.data.package_import_jobs[0].status_message #=> String
    #   resp.data.package_import_jobs[0].created_time #=> Time
    #   resp.data.package_import_jobs[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_package_import_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackageImportJobsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackageImportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackageImportJobs
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackageImportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackageImportJobs,
        stubs: @stubs,
        params_class: Params::ListPackageImportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_package_import_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of packages.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPackagesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of packages to return in one page of results.</p>
    #
    # @option params [String] :next_token
    #   <p>Specify the pagination token from a previous request to retrieve the next page of results.</p>
    #
    # @return [Types::ListPackagesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_packages(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPackagesOutput
    #   resp.data.packages #=> Array<PackageListItem>
    #   resp.data.packages[0] #=> Types::PackageListItem
    #   resp.data.packages[0].package_id #=> String
    #   resp.data.packages[0].package_name #=> String
    #   resp.data.packages[0].arn #=> String
    #   resp.data.packages[0].created_time #=> Time
    #   resp.data.packages[0].tags #=> Hash<String, String>
    #   resp.data.packages[0].tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_packages(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPackagesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPackagesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPackages
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPackages
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPackages,
        stubs: @stubs,
        params_class: Params::ListPackagesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_packages
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags for a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a device and returns a configuration archive. The configuration archive is a ZIP file that contains a
    #       provisioning certificate that is valid for 5 minutes. Name the configuration archive
    #           <code>certificates-omni_<i>device-name</i>.zip</code> and transfer it to the device within 5
    #       minutes. Use the included USB storage device and connect it to the USB 3.0 port next to the HDMI output.</p>
    #
    # @param [Hash] params
    #   See {Types::ProvisionDeviceInput}.
    #
    # @option params [String] :name
    #   <p>A name for the device.</p>
    #
    # @option params [String] :description
    #   <p>A description for the device.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the device.</p>
    #
    # @option params [NetworkPayload] :networking_configuration
    #   <p>A networking configuration for the device.</p>
    #
    # @return [Types::ProvisionDeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_device(
    #     name: 'Name', # required
    #     description: 'Description',
    #     tags: {
    #       'key' => 'value'
    #     },
    #     networking_configuration: {
    #       ethernet0: {
    #         connection_type: 'STATIC_IP', # required - accepts ["STATIC_IP", "DHCP"]
    #         static_ip_connection_info: {
    #           ip_address: 'IpAddress', # required
    #           mask: 'Mask', # required
    #           dns: [
    #             'member'
    #           ], # required
    #           default_gateway: 'DefaultGateway' # required
    #         }
    #       },
    #       ntp: {
    #         ntp_servers: [
    #           'member'
    #         ] # required
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ProvisionDeviceOutput
    #   resp.data.device_id #=> String
    #   resp.data.arn #=> String
    #   resp.data.status #=> String, one of ["AWAITING_PROVISIONING", "PENDING", "SUCCEEDED", "FAILED", "ERROR", "DELETING"]
    #   resp.data.certificates #=> String
    #   resp.data.iot_thing_name #=> String
    #
    def provision_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ProvisionDeviceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ProvisionDeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ProvisionDevice
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::ProvisionDevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ProvisionDevice,
        stubs: @stubs,
        params_class: Params::ProvisionDeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :provision_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a package version.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterPackageVersionInput}.
    #
    # @option params [String] :owner_account
    #   <p>An owner account.</p>
    #
    # @option params [String] :package_id
    #   <p>A package ID.</p>
    #
    # @option params [String] :package_version
    #   <p>A package version.</p>
    #
    # @option params [String] :patch_version
    #   <p>A patch version.</p>
    #
    # @option params [Boolean] :mark_latest
    #   <p>Whether to mark the new version as the latest version.</p>
    #
    # @return [Types::RegisterPackageVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_package_version(
    #     owner_account: 'OwnerAccount',
    #     package_id: 'PackageId', # required
    #     package_version: 'PackageVersion', # required
    #     patch_version: 'PatchVersion', # required
    #     mark_latest: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterPackageVersionOutput
    #
    def register_package_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterPackageVersionInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterPackageVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterPackageVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::AccessDeniedException]),
        data_parser: Parsers::RegisterPackageVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterPackageVersion,
        stubs: @stubs,
        params_class: Params::RegisterPackageVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_package_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes an application instance.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveApplicationInstanceInput}.
    #
    # @option params [String] :application_instance_id
    #   <p>An application instance ID.</p>
    #
    # @return [Types::RemoveApplicationInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_application_instance(
    #     application_instance_id: 'ApplicationInstanceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveApplicationInstanceOutput
    #
    def remove_application_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveApplicationInstanceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveApplicationInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveApplicationInstance
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::RemoveApplicationInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveApplicationInstance,
        stubs: @stubs,
        params_class: Params::RemoveApplicationInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_application_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tags a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>Tags for the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource's ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Tag keys to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a device's metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDeviceMetadataInput}.
    #
    # @option params [String] :device_id
    #   <p>The device's ID.</p>
    #
    # @option params [String] :description
    #   <p>A description for the device.</p>
    #
    # @return [Types::UpdateDeviceMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_device_metadata(
    #     device_id: 'DeviceId', # required
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDeviceMetadataOutput
    #   resp.data.device_id #=> String
    #
    def update_device_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDeviceMetadataInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDeviceMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDeviceMetadata
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateDeviceMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDeviceMetadata,
        stubs: @stubs,
        params_class: Params::UpdateDeviceMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_device_metadata
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
