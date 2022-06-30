# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::Mobile
  # An API client for AWSMobileService
  # See {#initialize} for a full list of supported configuration options
  # <p>
  #             AWS Mobile Service provides mobile app and website developers with capabilities
  #             required to configure AWS resources and bootstrap their developer desktop projects
  #             with the necessary SDKs, constants, tools and samples to make use of those resources.
  #         </p>
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
    def initialize(config = AWS::SDK::Mobile::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>
    #             Creates an AWS Mobile Hub project.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :name
    #   <p>
    #               Name of the project.
    #           </p>
    #
    # @option params [String] :region
    #   <p>
    #               Default region where project resources should be created.
    #           </p>
    #
    # @option params [String] :contents
    #   <p>
    #               ZIP or YAML file which contains configuration settings to be used when creating
    #               the project. This may be the contents of the file downloaded from the URL provided
    #               in an export project operation.
    #           </p>
    #
    # @option params [String] :snapshot_id
    #   <p>
    #               Unique identifier for an exported snapshot of project configuration. This
    #               snapshot identifier is included in the share URL when a project is exported.
    #           </p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     name: 'name',
    #     region: 'region',
    #     contents: 'contents',
    #     snapshot_id: 'snapshotId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.details #=> Types::ProjectDetails
    #   resp.data.details.name #=> String
    #   resp.data.details.project_id #=> String
    #   resp.data.details.region #=> String
    #   resp.data.details.state #=> String, one of ["NORMAL", "SYNCING", "IMPORTING"]
    #   resp.data.details.created_date #=> Time
    #   resp.data.details.last_updated_date #=> Time
    #   resp.data.details.console_url #=> String
    #   resp.data.details.resources #=> Array<Resource>
    #   resp.data.details.resources[0] #=> Types::Resource
    #   resp.data.details.resources[0].type #=> String
    #   resp.data.details.resources[0].name #=> String
    #   resp.data.details.resources[0].arn #=> String
    #   resp.data.details.resources[0].feature #=> String
    #   resp.data.details.resources[0].attributes #=> Hash<String, String>
    #   resp.data.details.resources[0].attributes['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
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
    #             Delets a project in AWS Mobile Hub.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     project_id: 'projectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #   resp.data.deleted_resources #=> Array<Resource>
    #   resp.data.deleted_resources[0] #=> Types::Resource
    #   resp.data.deleted_resources[0].type #=> String
    #   resp.data.deleted_resources[0].name #=> String
    #   resp.data.deleted_resources[0].arn #=> String
    #   resp.data.deleted_resources[0].feature #=> String
    #   resp.data.deleted_resources[0].attributes #=> Hash<String, String>
    #   resp.data.deleted_resources[0].attributes['key'] #=> String
    #   resp.data.orphaned_resources #=> Array<Resource>
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
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
    #             Get the bundle details for the requested bundle id.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeBundleInput}.
    #
    # @option params [String] :bundle_id
    #   <p>
    #               Unique bundle identifier.
    #           </p>
    #
    # @return [Types::DescribeBundleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_bundle(
    #     bundle_id: 'bundleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeBundleOutput
    #   resp.data.details #=> Types::BundleDetails
    #   resp.data.details.bundle_id #=> String
    #   resp.data.details.title #=> String
    #   resp.data.details.version #=> String
    #   resp.data.details.description #=> String
    #   resp.data.details.icon_url #=> String
    #   resp.data.details.available_platforms #=> Array<String>
    #   resp.data.details.available_platforms[0] #=> String, one of ["OSX", "WINDOWS", "LINUX", "OBJC", "SWIFT", "ANDROID", "JAVASCRIPT"]
    #
    def describe_bundle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeBundleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeBundleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeBundle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeBundle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeBundle,
        stubs: @stubs,
        params_class: Params::DescribeBundleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_bundle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Gets details about a project in AWS Mobile Hub.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectInput}.
    #
    # @option params [String] :project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    # @option params [Boolean] :sync_from_resources
    #   <p>
    #               If set to true, causes AWS Mobile Hub to synchronize information from other services, e.g., update state of AWS CloudFormation stacks in the AWS Mobile Hub project.
    #           </p>
    #
    # @return [Types::DescribeProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project(
    #     project_id: 'projectId', # required
    #     sync_from_resources: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectOutput
    #   resp.data.details #=> Types::ProjectDetails
    #   resp.data.details.name #=> String
    #   resp.data.details.project_id #=> String
    #   resp.data.details.region #=> String
    #   resp.data.details.state #=> String, one of ["NORMAL", "SYNCING", "IMPORTING"]
    #   resp.data.details.created_date #=> Time
    #   resp.data.details.last_updated_date #=> Time
    #   resp.data.details.console_url #=> String
    #   resp.data.details.resources #=> Array<Resource>
    #   resp.data.details.resources[0] #=> Types::Resource
    #   resp.data.details.resources[0].type #=> String
    #   resp.data.details.resources[0].name #=> String
    #   resp.data.details.resources[0].arn #=> String
    #   resp.data.details.resources[0].feature #=> String
    #   resp.data.details.resources[0].attributes #=> Hash<String, String>
    #   resp.data.details.resources[0].attributes['key'] #=> String
    #
    def describe_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeProject,
        stubs: @stubs,
        params_class: Params::DescribeProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Generates customized software development kit (SDK) and or tool packages
    #             used to integrate mobile web or mobile app clients with backend AWS resources.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ExportBundleInput}.
    #
    # @option params [String] :bundle_id
    #   <p>
    #               Unique bundle identifier.
    #           </p>
    #
    # @option params [String] :project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    # @option params [String] :platform
    #   <p>
    #               Developer desktop or target application platform.
    #           </p>
    #
    # @return [Types::ExportBundleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_bundle(
    #     bundle_id: 'bundleId', # required
    #     project_id: 'projectId',
    #     platform: 'OSX' # accepts ["OSX", "WINDOWS", "LINUX", "OBJC", "SWIFT", "ANDROID", "JAVASCRIPT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportBundleOutput
    #   resp.data.download_url #=> String
    #
    def export_bundle(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportBundleInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportBundleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportBundle
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ExportBundle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportBundle,
        stubs: @stubs,
        params_class: Params::ExportBundleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_bundle
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Exports project configuration to a snapshot which can be downloaded and shared.
    #             Note that mobile app push credentials are encrypted in exported projects, so they
    #             can only be shared successfully within the same AWS account.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ExportProjectInput}.
    #
    # @option params [String] :project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    # @return [Types::ExportProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_project(
    #     project_id: 'projectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportProjectOutput
    #   resp.data.download_url #=> String
    #   resp.data.share_url #=> String
    #   resp.data.snapshot_id #=> String
    #
    def export_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportProjectInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportProject
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ExportProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportProject,
        stubs: @stubs,
        params_class: Params::ExportProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             List all available bundles.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListBundlesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>
    #               Maximum number of records to list in a single response.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               Pagination token. Set to null to start listing bundles from start.
    #               If non-null pagination token is returned in a result, then pass its
    #               value in here in another request to list more bundles.
    #           </p>
    #
    # @return [Types::ListBundlesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_bundles(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBundlesOutput
    #   resp.data.bundle_list #=> Array<BundleDetails>
    #   resp.data.bundle_list[0] #=> Types::BundleDetails
    #   resp.data.bundle_list[0].bundle_id #=> String
    #   resp.data.bundle_list[0].title #=> String
    #   resp.data.bundle_list[0].version #=> String
    #   resp.data.bundle_list[0].description #=> String
    #   resp.data.bundle_list[0].icon_url #=> String
    #   resp.data.bundle_list[0].available_platforms #=> Array<String>
    #   resp.data.bundle_list[0].available_platforms[0] #=> String, one of ["OSX", "WINDOWS", "LINUX", "OBJC", "SWIFT", "ANDROID", "JAVASCRIPT"]
    #   resp.data.next_token #=> String
    #
    def list_bundles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBundlesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBundlesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBundles
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListBundles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBundles,
        stubs: @stubs,
        params_class: Params::ListBundlesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_bundles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             Lists projects in AWS Mobile Hub.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [Integer] :max_results
    #   <p>
    #               Maximum number of records to list in a single response.
    #           </p>
    #
    # @option params [String] :next_token
    #   <p>
    #               Pagination token. Set to null to start listing projects from start.
    #               If non-null pagination token is returned in a result, then pass its
    #               value in here in another request to list more projects.
    #           </p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<ProjectSummary>
    #   resp.data.projects[0] #=> Types::ProjectSummary
    #   resp.data.projects[0].name #=> String
    #   resp.data.projects[0].project_id #=> String
    #   resp.data.next_token #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
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
    #             Update an existing project.
    #         </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :contents
    #   <p>
    #               ZIP or YAML file which contains project configuration to be updated. This should
    #               be the contents of the file downloaded from the URL provided in an export project
    #               operation.
    #           </p>
    #
    # @option params [String] :project_id
    #   <p>
    #               Unique project identifier.
    #           </p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     contents: 'contents',
    #     project_id: 'projectId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #   resp.data.details #=> Types::ProjectDetails
    #   resp.data.details.name #=> String
    #   resp.data.details.project_id #=> String
    #   resp.data.details.region #=> String
    #   resp.data.details.state #=> String, one of ["NORMAL", "SYNCING", "IMPORTING"]
    #   resp.data.details.created_date #=> Time
    #   resp.data.details.last_updated_date #=> Time
    #   resp.data.details.console_url #=> String
    #   resp.data.details.resources #=> Array<Resource>
    #   resp.data.details.resources[0] #=> Types::Resource
    #   resp.data.details.resources[0].type #=> String
    #   resp.data.details.resources[0].name #=> String
    #   resp.data.details.resources[0].arn #=> String
    #   resp.data.details.resources[0].feature #=> String
    #   resp.data.details.resources[0].attributes #=> Hash<String, String>
    #   resp.data.details.resources[0].attributes['key'] #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::AccountActionRequiredException, Errors::BadRequestException, Errors::TooManyRequestsException, Errors::UnauthorizedException, Errors::NotFoundException, Errors::InternalFailureException, Errors::ServiceUnavailableException]),
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

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
