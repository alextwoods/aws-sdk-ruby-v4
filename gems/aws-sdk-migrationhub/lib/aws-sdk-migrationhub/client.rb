# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::MigrationHub
  # An API client for AWSMigrationHub
  # See {#initialize} for a full list of supported configuration options
  # <p>The AWS Migration Hub API methods help to obtain server and application migration status
  #          and integrate your resource-specific migration tool by providing a programmatic interface
  #          to Migration Hub.</p>
  #          <p>Remember that you must set your AWS Migration Hub home region before you call any of
  #          these APIs, or a <code>HomeRegionNotSetException</code> error will be returned. Also, you
  #          must make the API calls while in your home region.</p>
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
    def initialize(config = AWS::SDK::MigrationHub::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates a created artifact of an AWS cloud resource, the target receiving the
    #          migration, with the migration task performed by a migration tool. This API has the
    #          following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Migration tools can call the <code>AssociateCreatedArtifact</code> operation to
    #                indicate which AWS artifact is associated with a migration task.</p>
    #             </li>
    #             <li>
    #                <p>The created artifact name must be provided in ARN (Amazon Resource Name) format
    #                which will contain information about type and region; for example:
    #                   <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p>
    #             </li>
    #             <li>
    #                <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance,
    #                or DMS endpoint, etc.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::AssociateCreatedArtifactInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #
    # @option params [CreatedArtifact] :created_artifact
    #   <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
    #            instance, etc.) </p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::AssociateCreatedArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_created_artifact(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     created_artifact: {
    #       name: 'Name', # required
    #       description: 'Description'
    #     }, # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateCreatedArtifactOutput
    #
    def associate_created_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateCreatedArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateCreatedArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateCreatedArtifact
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AssociateCreatedArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateCreatedArtifact,
        stubs: @stubs,
        params_class: Params::AssociateCreatedArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_created_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a discovered resource ID from Application Discovery Service with a migration
    #          task.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDiscoveredResourceInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    #
    # @option params [String] :migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #
    # @option params [DiscoveredResource] :discovered_resource
    #   <p>Object representing a Resource.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::AssociateDiscoveredResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_discovered_resource(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     discovered_resource: {
    #       configuration_id: 'ConfigurationId', # required
    #       description: 'Description'
    #     }, # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDiscoveredResourceOutput
    #
    def associate_discovered_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDiscoveredResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDiscoveredResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDiscoveredResource
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::PolicyErrorException, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AssociateDiscoveredResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDiscoveredResource,
        stubs: @stubs,
        params_class: Params::AssociateDiscoveredResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_discovered_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a progress update stream which is an AWS resource used for access control as
    #          well as a namespace for migration task names that is implicitly linked to your AWS account.
    #          It must uniquely identify the migration tool as it is used for all updates made by the
    #          tool; however, it does not need to be unique for each AWS account because it is scoped to
    #          the AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProgressUpdateStreamInput}.
    #
    # @option params [String] :progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::CreateProgressUpdateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_progress_update_stream(
    #     progress_update_stream_name: 'ProgressUpdateStreamName', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProgressUpdateStreamOutput
    #
    def create_progress_update_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProgressUpdateStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateProgressUpdateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateProgressUpdateStream
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateProgressUpdateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateProgressUpdateStream,
        stubs: @stubs,
        params_class: Params::CreateProgressUpdateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_progress_update_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a progress update stream, including all of its tasks, which was previously
    #          created as an AWS resource used for access control. This API has the following
    #          traits:</p>
    #          <ul>
    #             <li>
    #                <p>The only parameter needed for <code>DeleteProgressUpdateStream</code> is the
    #                stream name (same as a <code>CreateProgressUpdateStream</code> call).</p>
    #             </li>
    #             <li>
    #                <p>The call will return, and a background process will asynchronously delete the
    #                stream and all of its resources (tasks, associated resources, resource attributes,
    #                created artifacts).</p>
    #             </li>
    #             <li>
    #                <p>If the stream takes time to be deleted, it might still show up on a
    #                   <code>ListProgressUpdateStreams</code> call.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>CreateProgressUpdateStream</code>, <code>ImportMigrationTask</code>,
    #                   <code>NotifyMigrationTaskState</code>, and all Associate[*] APIs related to the
    #                tasks belonging to the stream will throw "InvalidInputException" if the stream of the
    #                same name is in the process of being deleted.</p>
    #             </li>
    #             <li>
    #                <p>Once the stream and all of its resources are deleted,
    #                   <code>CreateProgressUpdateStream</code> for a stream of the same name will
    #                succeed, and that stream will be an entirely new logical resource (without any
    #                resources associated with the old stream).</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteProgressUpdateStreamInput}.
    #
    # @option params [String] :progress_update_stream_name
    #   <p>The name of the ProgressUpdateStream. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::DeleteProgressUpdateStreamOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_progress_update_stream(
    #     progress_update_stream_name: 'ProgressUpdateStreamName', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProgressUpdateStreamOutput
    #
    def delete_progress_update_stream(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProgressUpdateStreamInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProgressUpdateStreamInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProgressUpdateStream
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteProgressUpdateStream
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProgressUpdateStream,
        stubs: @stubs,
        params_class: Params::DeleteProgressUpdateStreamOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_progress_update_stream
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the migration status of an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeApplicationStateInput}.
    #
    # @option params [String] :application_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            grouped application.</p>
    #
    # @return [Types::DescribeApplicationStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_application_state(
    #     application_id: 'ApplicationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeApplicationStateOutput
    #   resp.data.application_status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"]
    #   resp.data.last_updated_time #=> Time
    #
    def describe_application_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeApplicationStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeApplicationStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeApplicationState
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyErrorException, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeApplicationState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeApplicationState,
        stubs: @stubs,
        params_class: Params::DescribeApplicationStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_application_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of all attributes associated with a specific migration task.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMigrationTaskInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #
    # @option params [String] :migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #
    # @return [Types::DescribeMigrationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_migration_task(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMigrationTaskOutput
    #   resp.data.migration_task #=> Types::MigrationTask
    #   resp.data.migration_task.progress_update_stream #=> String
    #   resp.data.migration_task.migration_task_name #=> String
    #   resp.data.migration_task.task #=> Types::Task
    #   resp.data.migration_task.task.status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.migration_task.task.status_detail #=> String
    #   resp.data.migration_task.task.progress_percent #=> Integer
    #   resp.data.migration_task.update_date_time #=> Time
    #   resp.data.migration_task.resource_attribute_list #=> Array<ResourceAttribute>
    #   resp.data.migration_task.resource_attribute_list[0] #=> Types::ResourceAttribute
    #   resp.data.migration_task.resource_attribute_list[0].type #=> String, one of ["IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER"]
    #   resp.data.migration_task.resource_attribute_list[0].value #=> String
    #
    def describe_migration_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMigrationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMigrationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMigrationTask
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeMigrationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMigrationTask,
        stubs: @stubs,
        params_class: Params::DescribeMigrationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_migration_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a created artifact of an AWS resource with a migration task performed by a
    #          migration tool that was previously associated. This API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>A migration user can call the <code>DisassociateCreatedArtifacts</code> operation
    #                to disassociate a created AWS Artifact from a migration task.</p>
    #             </li>
    #             <li>
    #                <p>The created artifact name must be provided in ARN (Amazon Resource Name) format
    #                which will contain information about type and region; for example:
    #                   <code>arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b</code>.</p>
    #             </li>
    #             <li>
    #                <p>Examples of the AWS resource behind the created artifact are, AMI's, EC2 instance,
    #                or RDS instance, etc.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DisassociateCreatedArtifactInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task to be disassociated with the
    #            artifact. <i>Do not store personal data in this field.</i>
    #            </p>
    #
    # @option params [String] :created_artifact_name
    #   <p>An ARN of the AWS resource related to the migration (e.g., AMI, EC2 instance, RDS
    #            instance, etc.)</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::DisassociateCreatedArtifactOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_created_artifact(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     created_artifact_name: 'CreatedArtifactName', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateCreatedArtifactOutput
    #
    def disassociate_created_artifact(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateCreatedArtifactInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateCreatedArtifactInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateCreatedArtifact
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DisassociateCreatedArtifact
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateCreatedArtifact,
        stubs: @stubs,
        params_class: Params::DisassociateCreatedArtifactOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_created_artifact
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociate an Application Discovery Service discovered resource from a migration
    #          task.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDiscoveredResourceInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    #
    # @option params [String] :migration_task_name
    #   <p>The identifier given to the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #
    # @option params [String] :configuration_id
    #   <p>ConfigurationId of the Application Discovery Service resource to be
    #            disassociated.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::DisassociateDiscoveredResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_discovered_resource(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     configuration_id: 'ConfigurationId', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDiscoveredResourceOutput
    #
    def disassociate_discovered_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDiscoveredResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDiscoveredResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDiscoveredResource
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DisassociateDiscoveredResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDiscoveredResource,
        stubs: @stubs,
        params_class: Params::DisassociateDiscoveredResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_discovered_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a new migration task which represents a server, database, etc., being migrated
    #          to AWS by a migration tool.</p>
    #          <p>This API is a prerequisite to calling the <code>NotifyMigrationTaskState</code> API as
    #          the migration tool must first register the migration task with Migration Hub.</p>
    #
    # @param [Hash] params
    #   See {Types::ImportMigrationTaskInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. ></p>
    #
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::ImportMigrationTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_migration_task(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportMigrationTaskOutput
    #
    def import_migration_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportMigrationTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportMigrationTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportMigrationTask
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ImportMigrationTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportMigrationTask,
        stubs: @stubs,
        params_class: Params::ImportMigrationTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_migration_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the migration statuses for your applications. If you use the optional
    #             <code>ApplicationIds</code> parameter, only the migration statuses for those
    #          applications will be returned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApplicationStatesInput}.
    #
    # @option params [Array<String>] :application_ids
    #   <p>The configurationIds from the Application Discovery Service that uniquely identifies
    #            your applications.</p>
    #
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to be returned per page.</p>
    #
    # @return [Types::ListApplicationStatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_application_states(
    #     application_ids: [
    #       'member'
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApplicationStatesOutput
    #   resp.data.application_state_list #=> Array<ApplicationState>
    #   resp.data.application_state_list[0] #=> Types::ApplicationState
    #   resp.data.application_state_list[0].application_id #=> String
    #   resp.data.application_state_list[0].application_status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"]
    #   resp.data.application_state_list[0].last_updated_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_application_states(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApplicationStatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApplicationStatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApplicationStates
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListApplicationStates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApplicationStates,
        stubs: @stubs,
        params_class: Params::ListApplicationStatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_application_states
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the created artifacts attached to a given migration task in an update stream. This
    #          API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Gets the list of the created artifacts while
    #                migration is taking place.</p>
    #             </li>
    #             <li>
    #                <p>Shows the artifacts created by the migration tool that was associated by the
    #                   <code>AssociateCreatedArtifact</code> API. </p>
    #             </li>
    #             <li>
    #                <p>Lists created artifacts in a paginated interface. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListCreatedArtifactsInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to be returned per page.</p>
    #
    # @return [Types::ListCreatedArtifactsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_created_artifacts(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCreatedArtifactsOutput
    #   resp.data.next_token #=> String
    #   resp.data.created_artifact_list #=> Array<CreatedArtifact>
    #   resp.data.created_artifact_list[0] #=> Types::CreatedArtifact
    #   resp.data.created_artifact_list[0].name #=> String
    #   resp.data.created_artifact_list[0].description #=> String
    #
    def list_created_artifacts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCreatedArtifactsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCreatedArtifactsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCreatedArtifacts
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListCreatedArtifacts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCreatedArtifacts,
        stubs: @stubs,
        params_class: Params::ListCreatedArtifactsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_created_artifacts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists discovered resources associated with the given <code>MigrationTask</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDiscoveredResourcesInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream.</p>
    #
    # @option params [String] :migration_task_name
    #   <p>The name of the MigrationTask. <i>Do not store personal data in this
    #               field.</i>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results returned per page.</p>
    #
    # @return [Types::ListDiscoveredResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_discovered_resources(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDiscoveredResourcesOutput
    #   resp.data.next_token #=> String
    #   resp.data.discovered_resource_list #=> Array<DiscoveredResource>
    #   resp.data.discovered_resource_list[0] #=> Types::DiscoveredResource
    #   resp.data.discovered_resource_list[0].configuration_id #=> String
    #   resp.data.discovered_resource_list[0].description #=> String
    #
    def list_discovered_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDiscoveredResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDiscoveredResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDiscoveredResources
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListDiscoveredResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDiscoveredResources,
        stubs: @stubs,
        params_class: Params::ListDiscoveredResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_discovered_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all, or filtered by resource name, migration tasks associated with the user
    #          account making this call. This API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Can show a summary list of the most recent migration tasks.</p>
    #             </li>
    #             <li>
    #                <p>Can show a summary list of migration tasks associated with a given discovered
    #                resource.</p>
    #             </li>
    #             <li>
    #                <p>Lists migration tasks in a paginated interface.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListMigrationTasksInput}.
    #
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Value to specify how many results are returned per page.</p>
    #
    # @option params [String] :resource_name
    #   <p>Filter migration tasks by discovered resource name.</p>
    #
    # @return [Types::ListMigrationTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_migration_tasks(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     resource_name: 'ResourceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMigrationTasksOutput
    #   resp.data.next_token #=> String
    #   resp.data.migration_task_summary_list #=> Array<MigrationTaskSummary>
    #   resp.data.migration_task_summary_list[0] #=> Types::MigrationTaskSummary
    #   resp.data.migration_task_summary_list[0].progress_update_stream #=> String
    #   resp.data.migration_task_summary_list[0].migration_task_name #=> String
    #   resp.data.migration_task_summary_list[0].status #=> String, one of ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #   resp.data.migration_task_summary_list[0].progress_percent #=> Integer
    #   resp.data.migration_task_summary_list[0].status_detail #=> String
    #   resp.data.migration_task_summary_list[0].update_date_time #=> Time
    #
    def list_migration_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMigrationTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMigrationTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMigrationTasks
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyErrorException, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListMigrationTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMigrationTasks,
        stubs: @stubs,
        params_class: Params::ListMigrationTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_migration_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists progress update streams associated with the user account making this call.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProgressUpdateStreamsInput}.
    #
    # @option params [String] :next_token
    #   <p>If a <code>NextToken</code> was returned by a previous call, there are more results
    #            available. To retrieve the next page of results, make the call again using the returned
    #            token in <code>NextToken</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Filter to limit the maximum number of results to list per page.</p>
    #
    # @return [Types::ListProgressUpdateStreamsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_progress_update_streams(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProgressUpdateStreamsOutput
    #   resp.data.progress_update_stream_summary_list #=> Array<ProgressUpdateStreamSummary>
    #   resp.data.progress_update_stream_summary_list[0] #=> Types::ProgressUpdateStreamSummary
    #   resp.data.progress_update_stream_summary_list[0].progress_update_stream_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_progress_update_streams(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProgressUpdateStreamsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProgressUpdateStreamsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProgressUpdateStreams
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListProgressUpdateStreams
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProgressUpdateStreams,
        stubs: @stubs,
        params_class: Params::ListProgressUpdateStreamsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_progress_update_streams
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the migration state of an application. For a given application identified by the
    #          value passed to <code>ApplicationId</code>, its status is set or updated by passing one of
    #          three values to <code>Status</code>: <code>NOT_STARTED | IN_PROGRESS |
    #          COMPLETED</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::NotifyApplicationStateInput}.
    #
    # @option params [String] :application_id
    #   <p>The configurationId in Application Discovery Service that uniquely identifies the
    #            grouped application.</p>
    #
    # @option params [String] :status
    #   <p>Status of the application - Not Started, In-Progress, Complete.</p>
    #
    # @option params [Time] :update_date_time
    #   <p>The timestamp when the application state changed.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::NotifyApplicationStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_application_state(
    #     application_id: 'ApplicationId', # required
    #     status: 'NOT_STARTED', # required - accepts ["NOT_STARTED", "IN_PROGRESS", "COMPLETED"]
    #     update_date_time: Time.now,
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyApplicationStateOutput
    #
    def notify_application_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyApplicationStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyApplicationStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyApplicationState
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::PolicyErrorException, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::NotifyApplicationState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyApplicationState,
        stubs: @stubs,
        params_class: Params::NotifyApplicationStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_application_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Notifies Migration Hub of the current status, progress, or other detail regarding a
    #          migration task. This API has the following traits:</p>
    #          <ul>
    #             <li>
    #                <p>Migration tools will call the <code>NotifyMigrationTaskState</code> API to share
    #                the latest progress and status.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MigrationTaskName</code> is used for addressing updates to the correct
    #                target.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ProgressUpdateStream</code> is used for access control and to provide a
    #                namespace for each migration tool.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::NotifyMigrationTaskStateInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #
    # @option params [Task] :task
    #   <p>Information about the task's progress and status.</p>
    #
    # @option params [Time] :update_date_time
    #   <p>The timestamp when the task was gathered.</p>
    #
    # @option params [Integer] :next_update_seconds
    #   <p>Number of seconds after the UpdateDateTime within which the Migration Hub can expect an
    #            update. If Migration Hub does not receive an update within the specified interval, then the
    #            migration task will be considered stale.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::NotifyMigrationTaskStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.notify_migration_task_state(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     task: {
    #       status: 'NOT_STARTED', # required - accepts ["NOT_STARTED", "IN_PROGRESS", "FAILED", "COMPLETED"]
    #       status_detail: 'StatusDetail',
    #       progress_percent: 1
    #     }, # required
    #     update_date_time: Time.now, # required
    #     next_update_seconds: 1, # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::NotifyMigrationTaskStateOutput
    #
    def notify_migration_task_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::NotifyMigrationTaskStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::NotifyMigrationTaskStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::NotifyMigrationTaskState
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::NotifyMigrationTaskState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::NotifyMigrationTaskState,
        stubs: @stubs,
        params_class: Params::NotifyMigrationTaskStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :notify_migration_task_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides identifying details of the resource being migrated so that it can be associated
    #          in the Application Discovery Service repository. This association occurs asynchronously
    #          after <code>PutResourceAttributes</code> returns.</p>
    #          <important>
    #             <ul>
    #                <li>
    #                   <p>Keep in mind that subsequent calls to PutResourceAttributes will override
    #                   previously stored attributes. For example, if it is first called with a MAC
    #                   address, but later, it is desired to <i>add</i> an IP address, it
    #                   will then be required to call it with <i>both</i> the IP and MAC
    #                   addresses to prevent overriding the MAC address.</p>
    #                </li>
    #                <li>
    #                   <p>Note the instructions regarding the special use case of the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList">
    #                         <code>ResourceAttributeList</code>
    #                      </a> parameter when specifying any
    #                   "VM" related value.</p>
    #                </li>
    #             </ul>
    #          </important>
    #
    #          <note>
    #             <p>Because this is an asynchronous call, it will always return 200, whether an
    #             association occurs or not. To confirm if an association was found based on the provided
    #             details, call <code>ListDiscoveredResources</code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutResourceAttributesInput}.
    #
    # @option params [String] :progress_update_stream
    #   <p>The name of the ProgressUpdateStream. </p>
    #
    # @option params [String] :migration_task_name
    #   <p>Unique identifier that references the migration task. <i>Do not store personal
    #               data in this field.</i>
    #            </p>
    #
    # @option params [Array<ResourceAttribute>] :resource_attribute_list
    #   <p>Information about the resource that is being migrated. This data will be used to map the
    #            task to a resource in the Application Discovery Service repository.</p>
    #            <note>
    #               <p>Takes the object array of <code>ResourceAttribute</code> where the <code>Type</code>
    #               field is reserved for the following values: <code>IPV4_ADDRESS | IPV6_ADDRESS |
    #                  MAC_ADDRESS | FQDN | VM_MANAGER_ID | VM_MANAGED_OBJECT_REFERENCE | VM_NAME | VM_PATH
    #                  | BIOS_ID | MOTHERBOARD_SERIAL_NUMBER</code> where the identifying value can be a
    #               string up to 256 characters.</p>
    #            </note>
    #            <important>
    #               <ul>
    #                  <li>
    #
    #                     <p>If any "VM" related value is set for a <code>ResourceAttribute</code> object,
    #                     it is required that <code>VM_MANAGER_ID</code>, as a minimum, is always set. If
    #                        <code>VM_MANAGER_ID</code> is not set, then all "VM" fields will be discarded
    #                     and "VM" fields will not be used for matching the migration task to a server in
    #                     Application Discovery Service repository. See the <a href="https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#API_PutResourceAttributes_Examples">Example</a> section below for a use case of specifying "VM" related
    #                     values.</p>
    #                  </li>
    #                  <li>
    #                     <p> If a server you are trying to match has multiple IP or MAC addresses, you
    #                     should provide as many as you know in separate type/value pairs passed to the
    #                        <code>ResourceAttributeList</code> parameter to maximize the chances of
    #                     matching.</p>
    #                  </li>
    #               </ul>
    #            </important>
    #
    # @option params [Boolean] :dry_run
    #   <p>Optional boolean flag to indicate whether any effect should take place. Used to test if
    #            the caller has permission to make the call.</p>
    #
    # @return [Types::PutResourceAttributesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_resource_attributes(
    #     progress_update_stream: 'ProgressUpdateStream', # required
    #     migration_task_name: 'MigrationTaskName', # required
    #     resource_attribute_list: [
    #       {
    #         type: 'IPV4_ADDRESS', # required - accepts ["IPV4_ADDRESS", "IPV6_ADDRESS", "MAC_ADDRESS", "FQDN", "VM_MANAGER_ID", "VM_MANAGED_OBJECT_REFERENCE", "VM_NAME", "VM_PATH", "BIOS_ID", "MOTHERBOARD_SERIAL_NUMBER"]
    #         value: 'Value' # required
    #       }
    #     ], # required
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutResourceAttributesOutput
    #
    def put_resource_attributes(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutResourceAttributesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutResourceAttributesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutResourceAttributes
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedOperation, Errors::InternalServerError, Errors::ThrottlingException, Errors::AccessDeniedException, Errors::HomeRegionNotSetException, Errors::DryRunOperation, Errors::ResourceNotFoundException, Errors::InvalidInputException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PutResourceAttributes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutResourceAttributes,
        stubs: @stubs,
        params_class: Params::PutResourceAttributesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_resource_attributes
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
