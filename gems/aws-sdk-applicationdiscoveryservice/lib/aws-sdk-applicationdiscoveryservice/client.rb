# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::ApplicationDiscoveryService
  # An API client for AWSPoseidonService_V2015_11_01
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Amazon Web Services Application Discovery Service</fullname>
  #
  #          <p>Amazon Web Services Application Discovery Service helps you plan application migration projects. It
  #       automatically identifies servers, virtual machines (VMs), and network dependencies in your
  #       on-premises data centers. For more information, see the <a href="http://aws.amazon.com/application-discovery/faqs/">Amazon Web Services Application Discovery Service FAQ</a>.
  #       Application Discovery Service offers three ways of performing discovery and
  #       collecting data about your on-premises servers:</p>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Agentless discovery</b> is recommended for environments
  #           that use VMware vCenter Server. This mode doesn't require you to install an agent on each
  #           host. It does not work in non-VMware environments.</p>
  #
  #                <ul>
  #                   <li>
  #                      <p>Agentless discovery gathers server information regardless of the operating
  #               systems, which minimizes the time required for initial on-premises infrastructure
  #               assessment.</p>
  #                   </li>
  #                   <li>
  #                      <p>Agentless discovery doesn't collect information about network dependencies, only
  #               agent-based discovery collects that information.</p>
  #                   </li>
  #                </ul>
  #             </li>
  #          </ul>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Agent-based discovery</b> collects a richer set of data
  #           than agentless discovery by using the Amazon Web Services Application Discovery Agent, which you install
  #           on one or more hosts in your data center.</p>
  #
  #                <ul>
  #                   <li>
  #                      <p> The agent captures infrastructure and application information, including an
  #               inventory of running processes, system performance information, resource utilization,
  #               and network dependencies.</p>
  #                   </li>
  #                   <li>
  #                      <p>The information collected by agents is secured at rest and in transit to the
  #               Application Discovery Service database in the cloud. </p>
  #                   </li>
  #                </ul>
  #             </li>
  #          </ul>
  #
  #          <ul>
  #             <li>
  #                <p>
  #                   <b>Amazon Web Services Partner Network (APN) solutions</b> integrate with
  #           Application Discovery Service, enabling you to import details of your on-premises
  #           environment directly into Migration Hub without using the discovery connector or discovery
  #           agent.</p>
  #
  #                <ul>
  #                   <li>
  #                      <p>Third-party application discovery tools can query Amazon Web Services Application Discovery
  #               Service, and they can write to the Application Discovery Service database using the
  #               public API.</p>
  #                   </li>
  #                   <li>
  #                      <p>In this way, you can import data into Migration Hub and view it, so that you can
  #               associate applications with servers and track migrations.</p>
  #                   </li>
  #                </ul>
  #             </li>
  #          </ul>
  #
  #
  #          <p>
  #             <b>Recommendations</b>
  #          </p>
  #          <p>We recommend that you use agent-based discovery for non-VMware environments, and
  #       whenever you want to collect information about network dependencies. You can run agent-based
  #       and agentless discovery simultaneously. Use agentless discovery to complete the initial
  #       infrastructure assessment quickly, and then install agents on select hosts to collect
  #       additional information.</p>
  #
  #          <p>
  #             <b>Working With This Guide</b>
  #          </p>
  #
  #          <p>This API reference provides descriptions, syntax, and usage examples for each of the
  #       actions and data types for Application Discovery Service. The topic for each action shows the
  #       API request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to
  #       access an API that is tailored to the programming language or platform that you're using. For
  #       more information, see <a href="http://aws.amazon.com/tools/#SDKs">Amazon Web Services
  #       SDKs</a>.</p>
  #
  #          <note>
  #             <ul>
  #                <li>
  #                   <p>Remember that you must set your Migration Hub home region before you call any of
  #             these APIs.</p>
  #                </li>
  #                <li>
  #                   <p>You must make API calls for write actions (create, notify, associate, disassociate,
  #             import, or put) while in your home region, or a <code>HomeRegionNotSetException</code>
  #             error is returned.</p>
  #                </li>
  #                <li>
  #                   <p>API calls for read actions (list, describe, stop, and delete) are permitted outside
  #             of your home region.</p>
  #                </li>
  #                <li>
  #                   <p>Although it is unlikely, the Migration Hub home region could change. If you call
  #             APIs outside the home region, an <code>InvalidInputException</code> is returned.</p>
  #                </li>
  #                <li>
  #                   <p>You must call <code>GetHomeRegion</code> to obtain the latest Migration Hub home
  #             region.</p>
  #                </li>
  #             </ul>
  #          </note>
  #
  #          <p>This guide is intended for use with the <a href="http://docs.aws.amazon.com/application-discovery/latest/userguide/">Amazon Web Services Application
  #         Discovery Service User Guide</a>.</p>
  #
  #          <important>
  #             <p>All data is handled according to the <a href="http://aws.amazon.com/privacy/">Amazon Web Services
  #           Privacy Policy</a>. You can operate Application Discovery Service offline to inspect
  #         collected data before it is shared with the service.</p>
  #          </important>
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
    def initialize(config = AWS::SDK::ApplicationDiscoveryService::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Associates one or more configuration items with an application.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateConfigurationItemsToApplicationInput}.
    #
    # @option params [String] :application_configuration_id
    #   <p>The configuration ID of an application with which items are to be associated.</p>
    #
    # @option params [Array<String>] :configuration_ids
    #   <p>The ID of each configuration item to be associated with an application.</p>
    #
    # @return [Types::AssociateConfigurationItemsToApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_configuration_items_to_application(
    #     application_configuration_id: 'applicationConfigurationId', # required
    #     configuration_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateConfigurationItemsToApplicationOutput
    #
    def associate_configuration_items_to_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateConfigurationItemsToApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateConfigurationItemsToApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateConfigurationItemsToApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::AssociateConfigurationItemsToApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateConfigurationItemsToApplication,
        stubs: @stubs,
        params_class: Params::AssociateConfigurationItemsToApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_configuration_items_to_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes one or more import tasks, each identified by their import ID. Each import task has
    #       a number of records that can identify servers or applications. </p>
    #
    #          <p>Amazon Web Services Application Discovery Service has built-in matching logic that will identify when
    #       discovered servers match existing entries that you've previously discovered, the information
    #       for the already-existing discovered server is updated. When you delete an import task that
    #       contains records that were used to match, the information in those matched records that comes
    #       from the deleted records will also be deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDeleteImportDataInput}.
    #
    # @option params [Array<String>] :import_task_ids
    #   <p>The IDs for the import tasks that you want to delete.</p>
    #
    # @return [Types::BatchDeleteImportDataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_delete_import_data(
    #     import_task_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDeleteImportDataOutput
    #   resp.data.errors #=> Array<BatchDeleteImportDataError>
    #   resp.data.errors[0] #=> Types::BatchDeleteImportDataError
    #   resp.data.errors[0].import_task_id #=> String
    #   resp.data.errors[0].error_code #=> String, one of ["NOT_FOUND", "INTERNAL_SERVER_ERROR", "OVER_LIMIT"]
    #   resp.data.errors[0].error_description #=> String
    #
    def batch_delete_import_data(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDeleteImportDataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDeleteImportDataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDeleteImportData
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::BatchDeleteImportData
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDeleteImportData,
        stubs: @stubs,
        params_class: Params::BatchDeleteImportDataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_delete_import_data
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an application with the given name and description.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApplicationInput}.
    #
    # @option params [String] :name
    #   <p>Name of the application to be created.</p>
    #
    # @option params [String] :description
    #   <p>Description of the application to be created.</p>
    #
    # @return [Types::CreateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_application(
    #     name: 'name', # required
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApplicationOutput
    #   resp.data.configuration_id #=> String
    #
    def create_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::CreateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApplication,
        stubs: @stubs,
        params_class: Params::CreateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates one or more tags for configuration items. Tags are metadata that help you
    #       categorize IT assets. This API accepts a list of multiple configuration items.</p>
    #
    #          <important>
    #             <p>Do not store sensitive information (like personal data) in tags.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::CreateTagsInput}.
    #
    # @option params [Array<String>] :configuration_ids
    #   <p>A list of configuration items that you want to tag.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags that you want to associate with one or more configuration items. Specify the tags
    #         that you want to create in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #
    # @return [Types::CreateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_tags(
    #     configuration_ids: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateTagsOutput
    #
    def create_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::CreateTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateTags,
        stubs: @stubs,
        params_class: Params::CreateTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a list of applications and their associations with configuration
    #       items.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApplicationsInput}.
    #
    # @option params [Array<String>] :configuration_ids
    #   <p>Configuration ID of an application to be deleted.</p>
    #
    # @return [Types::DeleteApplicationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_applications(
    #     configuration_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApplicationsOutput
    #
    def delete_applications(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApplicationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApplicationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApplications
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DeleteApplications
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApplications,
        stubs: @stubs,
        params_class: Params::DeleteApplicationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_applications
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the association between configuration items and one or more tags. This API
    #       accepts a list of multiple configuration items.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteTagsInput}.
    #
    # @option params [Array<String>] :configuration_ids
    #   <p>A list of configuration items with tags that you want to delete.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Tags that you want to delete from one or more configuration items. Specify the tags
    #         that you want to delete in a <i>key</i>-<i>value</i> format. For
    #         example:</p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #
    # @return [Types::DeleteTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_tags(
    #     configuration_ids: [
    #       'member'
    #     ], # required
    #     tags: [
    #       {
    #         key: 'key', # required
    #         value: 'value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteTagsOutput
    #
    def delete_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DeleteTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteTags,
        stubs: @stubs,
        params_class: Params::DeleteTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists agents or connectors as specified by ID or other filters. All agents/connectors
    #       associated with your user account can be listed if you call <code>DescribeAgents</code> as is
    #       without passing any parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAgentsInput}.
    #
    # @option params [Array<String>] :agent_ids
    #   <p>The agent or the Connector IDs for which you want information. If you specify no IDs,
    #         the system returns information about all agents/Connectors associated with your Amazon Web Services user
    #         account.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "collectionStatus", "value": "STARTED"}</code>
    #            </p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of agents/Connectors to return in a single page of output. The maximum
    #         value is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>DescribeAgentsRequest$agentIds</code> but set
    #           <code>DescribeAgentsRequest$maxResults</code> to 10, you received a set of 10 results along
    #         with a token. Use that token in this query to get the next set of 10.</p>
    #
    # @return [Types::DescribeAgentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_agents(
    #     agent_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'condition' # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAgentsOutput
    #   resp.data.agents_info #=> Array<AgentInfo>
    #   resp.data.agents_info[0] #=> Types::AgentInfo
    #   resp.data.agents_info[0].agent_id #=> String
    #   resp.data.agents_info[0].host_name #=> String
    #   resp.data.agents_info[0].agent_network_info_list #=> Array<AgentNetworkInfo>
    #   resp.data.agents_info[0].agent_network_info_list[0] #=> Types::AgentNetworkInfo
    #   resp.data.agents_info[0].agent_network_info_list[0].ip_address #=> String
    #   resp.data.agents_info[0].agent_network_info_list[0].mac_address #=> String
    #   resp.data.agents_info[0].connector_id #=> String
    #   resp.data.agents_info[0].version #=> String
    #   resp.data.agents_info[0].health #=> String, one of ["HEALTHY", "UNHEALTHY", "RUNNING", "UNKNOWN", "BLACKLISTED", "SHUTDOWN"]
    #   resp.data.agents_info[0].last_health_ping_time #=> String
    #   resp.data.agents_info[0].collection_status #=> String
    #   resp.data.agents_info[0].agent_type #=> String
    #   resp.data.agents_info[0].registered_time #=> String
    #   resp.data.next_token #=> String
    #
    def describe_agents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAgentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAgentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAgents
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeAgents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAgents,
        stubs: @stubs,
        params_class: Params::DescribeAgentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_agents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves attributes for a list of configuration item IDs.</p>
    #
    #          <note>
    #             <p>All of the supplied IDs must be for the same asset type from one of the
    #         following:</p>
    #             <ul>
    #                <li>
    #                   <p>server</p>
    #                </li>
    #                <li>
    #                   <p>application</p>
    #                </li>
    #                <li>
    #                   <p>process</p>
    #                </li>
    #                <li>
    #                   <p>connection</p>
    #                </li>
    #             </ul>
    #
    #             <p>Output fields are specific to the asset type specified. For example, the output for a
    #           <i>server</i> configuration item includes a list of attributes about the
    #         server, such as host name, operating system, number of network cards, etc.</p>
    #             <p>For a complete list of outputs for each asset type, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#DescribeConfigurations">Using the DescribeConfigurations Action</a> in the <i>Amazon Web Services Application
    #           Discovery Service User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeConfigurationsInput}.
    #
    # @option params [Array<String>] :configuration_ids
    #   <p>One or more configuration IDs.</p>
    #
    # @return [Types::DescribeConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_configurations(
    #     configuration_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeConfigurationsOutput
    #   resp.data.configurations #=> Array<Hash<String, String>>
    #   resp.data.configurations[0] #=> Hash<String, String>
    #   resp.data.configurations[0]['key'] #=> String
    #
    def describe_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists exports as specified by ID. All continuous exports associated with your user
    #       account can be listed if you call <code>DescribeContinuousExports</code> as is without passing
    #       any parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeContinuousExportsInput}.
    #
    # @option params [Array<String>] :export_ids
    #   <p>The unique IDs assigned to the exports.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token from the previous call to <code>DescribeExportTasks</code>.</p>
    #
    # @return [Types::DescribeContinuousExportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_continuous_exports(
    #     export_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeContinuousExportsOutput
    #   resp.data.descriptions #=> Array<ContinuousExportDescription>
    #   resp.data.descriptions[0] #=> Types::ContinuousExportDescription
    #   resp.data.descriptions[0].export_id #=> String
    #   resp.data.descriptions[0].status #=> String, one of ["START_IN_PROGRESS", "START_FAILED", "ACTIVE", "ERROR", "STOP_IN_PROGRESS", "STOP_FAILED", "INACTIVE"]
    #   resp.data.descriptions[0].status_detail #=> String
    #   resp.data.descriptions[0].s3_bucket #=> String
    #   resp.data.descriptions[0].start_time #=> Time
    #   resp.data.descriptions[0].stop_time #=> Time
    #   resp.data.descriptions[0].data_source #=> String, one of ["AGENT"]
    #   resp.data.descriptions[0].schema_storage_config #=> Hash<String, String>
    #   resp.data.descriptions[0].schema_storage_config['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def describe_continuous_exports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeContinuousExportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeContinuousExportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeContinuousExports
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeContinuousExports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeContinuousExports,
        stubs: @stubs,
        params_class: Params::DescribeContinuousExportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_continuous_exports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>DescribeExportConfigurations</code> is deprecated. Use <a href="https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_DescribeExportTasks.html">DescribeExportTasks</a>, instead.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::DescribeExportConfigurationsInput}.
    #
    # @option params [Array<String>] :export_ids
    #   <p>A list of continuous export IDs to search for.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A number between 1 and 100 specifying the maximum number of continuous export
    #         descriptions returned.</p>
    #
    # @option params [String] :next_token
    #   <p>The token from the previous call to describe-export-tasks.</p>
    #
    # @return [Types::DescribeExportConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_configurations(
    #     export_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExportConfigurationsOutput
    #   resp.data.exports_info #=> Array<ExportInfo>
    #   resp.data.exports_info[0] #=> Types::ExportInfo
    #   resp.data.exports_info[0].export_id #=> String
    #   resp.data.exports_info[0].export_status #=> String, one of ["FAILED", "SUCCEEDED", "IN_PROGRESS"]
    #   resp.data.exports_info[0].status_message #=> String
    #   resp.data.exports_info[0].configurations_download_url #=> String
    #   resp.data.exports_info[0].export_request_time #=> Time
    #   resp.data.exports_info[0].is_truncated #=> Boolean
    #   resp.data.exports_info[0].requested_start_time #=> Time
    #   resp.data.exports_info[0].requested_end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_export_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExportConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExportConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExportConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeExportConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExportConfigurations,
        stubs: @stubs,
        params_class: Params::DescribeExportConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_export_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieve status of one or more export tasks. You can retrieve the status of up to 100
    #       export tasks.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeExportTasksInput}.
    #
    # @option params [Array<String>] :export_ids
    #   <p>One or more unique identifiers used to query the status of an export request.</p>
    #
    # @option params [Array<ExportFilter>] :filters
    #   <p>One or more filters.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>AgentId</code> - ID of the agent whose collected data will be
    #             exported</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of volume results returned by <code>DescribeExportTasks</code> in
    #         paginated output. When this parameter is used, <code>DescribeExportTasks</code> only returns
    #           <code>maxResults</code> results in a single page along with a <code>nextToken</code>
    #         response element.</p>
    #
    # @option params [String] :next_token
    #   <p>The <code>nextToken</code> value returned from a previous paginated
    #           <code>DescribeExportTasks</code> request where <code>maxResults</code> was used and the
    #         results exceeded the value of that parameter. Pagination continues from the end of the
    #         previous results that returned the <code>nextToken</code> value. This value is null when there
    #         are no more results to return.</p>
    #
    # @return [Types::DescribeExportTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_export_tasks(
    #     export_ids: [
    #       'member'
    #     ],
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'condition' # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeExportTasksOutput
    #   resp.data.exports_info #=> Array<ExportInfo>
    #   resp.data.exports_info[0] #=> Types::ExportInfo
    #   resp.data.exports_info[0].export_id #=> String
    #   resp.data.exports_info[0].export_status #=> String, one of ["FAILED", "SUCCEEDED", "IN_PROGRESS"]
    #   resp.data.exports_info[0].status_message #=> String
    #   resp.data.exports_info[0].configurations_download_url #=> String
    #   resp.data.exports_info[0].export_request_time #=> Time
    #   resp.data.exports_info[0].is_truncated #=> Boolean
    #   resp.data.exports_info[0].requested_start_time #=> Time
    #   resp.data.exports_info[0].requested_end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_export_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeExportTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeExportTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeExportTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeExportTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeExportTasks,
        stubs: @stubs,
        params_class: Params::DescribeExportTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_export_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of import tasks for your account, including status information, times,
    #       IDs, the Amazon S3 Object URL for the import file, and more.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeImportTasksInput}.
    #
    # @option params [Array<ImportTaskFilter>] :filters
    #   <p>An array of name-value pairs that you provide to filter the results for the
    #           <code>DescribeImportTask</code> request to a specific subset of results. Currently, wildcard
    #         values aren't supported for filters.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results that you want this request to return, up to 100.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to request a specific page of results.</p>
    #
    # @return [Types::DescribeImportTasksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_import_tasks(
    #     filters: [
    #       {
    #         name: 'IMPORT_TASK_ID', # accepts ["IMPORT_TASK_ID", "STATUS", "NAME"]
    #         values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeImportTasksOutput
    #   resp.data.next_token #=> String
    #   resp.data.tasks #=> Array<ImportTask>
    #   resp.data.tasks[0] #=> Types::ImportTask
    #   resp.data.tasks[0].import_task_id #=> String
    #   resp.data.tasks[0].client_request_token #=> String
    #   resp.data.tasks[0].name #=> String
    #   resp.data.tasks[0].import_url #=> String
    #   resp.data.tasks[0].status #=> String, one of ["IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.tasks[0].import_request_time #=> Time
    #   resp.data.tasks[0].import_completion_time #=> Time
    #   resp.data.tasks[0].import_deleted_time #=> Time
    #   resp.data.tasks[0].server_import_success #=> Integer
    #   resp.data.tasks[0].server_import_failure #=> Integer
    #   resp.data.tasks[0].application_import_success #=> Integer
    #   resp.data.tasks[0].application_import_failure #=> Integer
    #   resp.data.tasks[0].errors_and_failed_entries_zip #=> String
    #
    def describe_import_tasks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeImportTasksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeImportTasksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeImportTasks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeImportTasks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeImportTasks,
        stubs: @stubs,
        params_class: Params::DescribeImportTasksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_import_tasks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of configuration items that have tags as specified by the key-value
    #       pairs, name and value, passed to the optional parameter <code>filters</code>.</p>
    #          <p>There are three valid tag filter names:</p>
    #          <ul>
    #             <li>
    #                <p>tagKey</p>
    #             </li>
    #             <li>
    #                <p>tagValue</p>
    #             </li>
    #             <li>
    #                <p>configurationId</p>
    #             </li>
    #          </ul>
    #          <p>Also, all configuration items associated with your user account that have tags can be
    #       listed if you call <code>DescribeTags</code> as is without passing any parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTagsInput}.
    #
    # @option params [Array<TagFilter>] :filters
    #   <p>You can filter the list using a <i>key</i>-<i>value</i>
    #         format. You can separate these items by using logical operators. Allowed filters include
    #           <code>tagKey</code>, <code>tagValue</code>, and <code>configurationId</code>. </p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of items to return in a single page of output. The maximum value is
    #         100.</p>
    #
    # @option params [String] :next_token
    #   <p>A token to start the list. Use this token to get the next set of results.</p>
    #
    # @return [Types::DescribeTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_tags(
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTagsOutput
    #   resp.data.tags #=> Array<ConfigurationTag>
    #   resp.data.tags[0] #=> Types::ConfigurationTag
    #   resp.data.tags[0].configuration_type #=> String, one of ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"]
    #   resp.data.tags[0].configuration_id #=> String
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.tags[0].time_of_creation #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DescribeTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTags,
        stubs: @stubs,
        params_class: Params::DescribeTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates one or more configuration items from an application.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateConfigurationItemsFromApplicationInput}.
    #
    # @option params [String] :application_configuration_id
    #   <p>Configuration ID of an application from which each item is disassociated.</p>
    #
    # @option params [Array<String>] :configuration_ids
    #   <p>Configuration ID of each item to be disassociated from an application.</p>
    #
    # @return [Types::DisassociateConfigurationItemsFromApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_configuration_items_from_application(
    #     application_configuration_id: 'applicationConfigurationId', # required
    #     configuration_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateConfigurationItemsFromApplicationOutput
    #
    def disassociate_configuration_items_from_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateConfigurationItemsFromApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateConfigurationItemsFromApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateConfigurationItemsFromApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::DisassociateConfigurationItemsFromApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateConfigurationItemsFromApplication,
        stubs: @stubs,
        params_class: Params::DisassociateConfigurationItemsFromApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_configuration_items_from_application
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deprecated. Use <code>StartExportTask</code> instead.</p>
    #          <p>Exports all discovered configuration data to an Amazon S3 bucket or an application that
    #       enables you to view and evaluate the data. Data includes tags and tag associations, processes,
    #       connections, servers, and system performance. This API returns an export ID that you can query
    #       using the <i>DescribeExportConfigurations</i> API. The system imposes a limit of
    #       two configuration exports in six hours.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::ExportConfigurationsInput}.
    #
    # @return [Types::ExportConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.export_configurations()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExportConfigurationsOutput
    #   resp.data.export_id #=> String
    #
    def export_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExportConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExportConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExportConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::ExportConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExportConfigurations,
        stubs: @stubs,
        params_class: Params::ExportConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :export_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a short summary of discovered assets.</p>
    #          <p>This API operation takes no request parameters and is called as is at the command
    #       prompt as shown in the example.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDiscoverySummaryInput}.
    #
    # @return [Types::GetDiscoverySummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_discovery_summary()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDiscoverySummaryOutput
    #   resp.data.servers #=> Integer
    #   resp.data.applications #=> Integer
    #   resp.data.servers_mapped_to_applications #=> Integer
    #   resp.data.servers_mappedto_tags #=> Integer
    #   resp.data.agent_summary #=> Types::CustomerAgentInfo
    #   resp.data.agent_summary.active_agents #=> Integer
    #   resp.data.agent_summary.healthy_agents #=> Integer
    #   resp.data.agent_summary.black_listed_agents #=> Integer
    #   resp.data.agent_summary.shutdown_agents #=> Integer
    #   resp.data.agent_summary.unhealthy_agents #=> Integer
    #   resp.data.agent_summary.total_agents #=> Integer
    #   resp.data.agent_summary.unknown_agents #=> Integer
    #   resp.data.connector_summary #=> Types::CustomerConnectorInfo
    #   resp.data.connector_summary.active_connectors #=> Integer
    #   resp.data.connector_summary.healthy_connectors #=> Integer
    #   resp.data.connector_summary.black_listed_connectors #=> Integer
    #   resp.data.connector_summary.shutdown_connectors #=> Integer
    #   resp.data.connector_summary.unhealthy_connectors #=> Integer
    #   resp.data.connector_summary.total_connectors #=> Integer
    #   resp.data.connector_summary.unknown_connectors #=> Integer
    #   resp.data.me_collector_summary #=> Types::CustomerMeCollectorInfo
    #   resp.data.me_collector_summary.active_me_collectors #=> Integer
    #   resp.data.me_collector_summary.healthy_me_collectors #=> Integer
    #   resp.data.me_collector_summary.deny_listed_me_collectors #=> Integer
    #   resp.data.me_collector_summary.shutdown_me_collectors #=> Integer
    #   resp.data.me_collector_summary.unhealthy_me_collectors #=> Integer
    #   resp.data.me_collector_summary.total_me_collectors #=> Integer
    #   resp.data.me_collector_summary.unknown_me_collectors #=> Integer
    #
    def get_discovery_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDiscoverySummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDiscoverySummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDiscoverySummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::GetDiscoverySummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDiscoverySummary,
        stubs: @stubs,
        params_class: Params::GetDiscoverySummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_discovery_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of configuration items as specified by the value passed to the
    #       required parameter <code>configurationType</code>. Optional filtering may be applied to refine
    #       search results.</p>
    #
    # @param [Hash] params
    #   See {Types::ListConfigurationsInput}.
    #
    # @option params [String] :configuration_type
    #   <p>A valid configuration identified by Application Discovery Service. </p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>You can filter the request using various logical operators and a
    #           <i>key</i>-<i>value</i> format. For example: </p>
    #            <p>
    #               <code>{"key": "serverType", "value": "webServer"}</code>
    #            </p>
    #            <p>For a complete list of filter options and guidance about using them with this action,
    #         see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of items to return. The maximum value is 100.</p>
    #
    # @option params [String] :next_token
    #   <p>Token to retrieve the next set of results. For example, if a previous call to
    #         ListConfigurations returned 100 items, but you set
    #           <code>ListConfigurationsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    #
    # @option params [Array<OrderByElement>] :order_by
    #   <p>Certain filter criteria return output that can be sorted in ascending or descending
    #         order. For a list of output characteristics for each filter, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-api-queries.html#ListConfigurations">Using the ListConfigurations Action</a> in the <i>Amazon Web Services Application Discovery
    #           Service User Guide</i>.</p>
    #
    # @return [Types::ListConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_configurations(
    #     configuration_type: 'SERVER', # required - accepts ["SERVER", "PROCESS", "CONNECTION", "APPLICATION"]
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'condition' # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken',
    #     order_by: [
    #       {
    #         field_name: 'fieldName', # required
    #         sort_order: 'ASC' # accepts ["ASC", "DESC"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListConfigurationsOutput
    #   resp.data.configurations #=> Array<Hash<String, String>>
    #   resp.data.configurations[0] #=> Hash<String, String>
    #   resp.data.configurations[0]['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::ListConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListConfigurations,
        stubs: @stubs,
        params_class: Params::ListConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of servers that are one network hop away from a specified
    #       server.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServerNeighborsInput}.
    #
    # @option params [String] :configuration_id
    #   <p>Configuration ID of the server for which neighbors are being listed.</p>
    #
    # @option params [Boolean] :port_information_needed
    #   <p>Flag to indicate if port and protocol information is needed as part of the
    #         response.</p>
    #
    # @option params [Array<String>] :neighbor_configuration_ids
    #   <p>List of configuration IDs to test for one-hop-away.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Maximum number of results to return in a single page of output.</p>
    #
    # @option params [String] :next_token
    #   <p>Token to retrieve the next set of results. For example, if you previously specified 100
    #         IDs for <code>ListServerNeighborsRequest$neighborConfigurationIds</code> but set
    #           <code>ListServerNeighborsRequest$maxResults</code> to 10, you received a set of 10 results
    #         along with a token. Use that token in this query to get the next set of 10.</p>
    #
    # @return [Types::ListServerNeighborsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_server_neighbors(
    #     configuration_id: 'configurationId', # required
    #     port_information_needed: false,
    #     neighbor_configuration_ids: [
    #       'member'
    #     ],
    #     max_results: 1,
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServerNeighborsOutput
    #   resp.data.neighbors #=> Array<NeighborConnectionDetail>
    #   resp.data.neighbors[0] #=> Types::NeighborConnectionDetail
    #   resp.data.neighbors[0].source_server_id #=> String
    #   resp.data.neighbors[0].destination_server_id #=> String
    #   resp.data.neighbors[0].destination_port #=> Integer
    #   resp.data.neighbors[0].transport_protocol #=> String
    #   resp.data.neighbors[0].connections_count #=> Integer
    #   resp.data.next_token #=> String
    #   resp.data.known_dependency_count #=> Integer
    #
    def list_server_neighbors(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServerNeighborsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServerNeighborsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServerNeighbors
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::ListServerNeighbors
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServerNeighbors,
        stubs: @stubs,
        params_class: Params::ListServerNeighborsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_server_neighbors
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Start the continuous flow of agent's discovered data into Amazon Athena.</p>
    #
    # @param [Hash] params
    #   See {Types::StartContinuousExportInput}.
    #
    # @return [Types::StartContinuousExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_continuous_export()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartContinuousExportOutput
    #   resp.data.export_id #=> String
    #   resp.data.s3_bucket #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.data_source #=> String, one of ["AGENT"]
    #   resp.data.schema_storage_config #=> Hash<String, String>
    #   resp.data.schema_storage_config['key'] #=> String
    #
    def start_continuous_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartContinuousExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartContinuousExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartContinuousExport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::ConflictErrorException, Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException, Errors::ResourceInUseException]),
        data_parser: Parsers::StartContinuousExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartContinuousExport,
        stubs: @stubs,
        params_class: Params::StartContinuousExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_continuous_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Instructs the specified agents or connectors to start collecting data.</p>
    #
    # @param [Hash] params
    #   See {Types::StartDataCollectionByAgentIdsInput}.
    #
    # @option params [Array<String>] :agent_ids
    #   <p>The IDs of the agents or connectors from which to start collecting data. If you send a
    #         request to an agent/connector ID that you do not have permission to contact, according to your
    #         Amazon Web Services account, the service does not throw an exception. Instead, it returns the error in the
    #           <i>Description</i> field. If you send a request to multiple agents/connectors
    #         and you do not have permission to contact some of those agents/connectors, the system does not
    #         throw an exception. Instead, the system shows <code>Failed</code> in the
    #           <i>Description</i> field.</p>
    #
    # @return [Types::StartDataCollectionByAgentIdsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_data_collection_by_agent_ids(
    #     agent_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartDataCollectionByAgentIdsOutput
    #   resp.data.agents_configuration_status #=> Array<AgentConfigurationStatus>
    #   resp.data.agents_configuration_status[0] #=> Types::AgentConfigurationStatus
    #   resp.data.agents_configuration_status[0].agent_id #=> String
    #   resp.data.agents_configuration_status[0].operation_succeeded #=> Boolean
    #   resp.data.agents_configuration_status[0].description #=> String
    #
    def start_data_collection_by_agent_ids(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartDataCollectionByAgentIdsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartDataCollectionByAgentIdsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartDataCollectionByAgentIds
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::StartDataCollectionByAgentIds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartDataCollectionByAgentIds,
        stubs: @stubs,
        params_class: Params::StartDataCollectionByAgentIdsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_data_collection_by_agent_ids
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Begins the export of discovered data to an S3 bucket.</p>
    #          <p> If you specify <code>agentIds</code> in a filter, the task exports up to 72 hours of
    #       detailed data collected by the identified Application Discovery Agent, including network,
    #       process, and performance details. A time range for exported agent data may be set by using
    #         <code>startTime</code> and <code>endTime</code>. Export of detailed agent data is limited to
    #       five concurrently running exports. </p>
    #          <p> If you do not include an <code>agentIds</code> filter, summary data is exported that
    #       includes both Amazon Web Services Agentless Discovery Connector data and summary data from Amazon Web Services Discovery
    #       Agents. Export of summary data is limited to two exports per day. </p>
    #
    # @param [Hash] params
    #   See {Types::StartExportTaskInput}.
    #
    # @option params [Array<String>] :export_data_format
    #   <p>The file format for the returned export data. Default value is <code>CSV</code>.
    #           <b>Note:</b>
    #               <i>The</i>
    #               <code>GRAPHML</code>
    #               <i>option has been deprecated.</i>
    #            </p>
    #
    # @option params [Array<ExportFilter>] :filters
    #   <p>If a filter is present, it selects the single <code>agentId</code> of the Application
    #         Discovery Agent for which data is exported. The <code>agentId</code> can be found in the
    #         results of the <code>DescribeAgents</code> API or CLI. If no filter is present,
    #           <code>startTime</code> and <code>endTime</code> are ignored and exported data includes both
    #         Agentless Discovery Connector data and summary data from Application Discovery agents.
    #       </p>
    #
    # @option params [Time] :start_time
    #   <p>The start timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, data is exported starting from the first
    #         data collected by the agent.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end timestamp for exported data from the single Application Discovery Agent
    #         selected in the filters. If no value is specified, exported data includes the most recent data
    #         collected by the agent.</p>
    #
    # @return [Types::StartExportTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_export_task(
    #     export_data_format: [
    #       'CSV' # accepts ["CSV", "GRAPHML"]
    #     ],
    #     filters: [
    #       {
    #         name: 'name', # required
    #         values: [
    #           'member'
    #         ], # required
    #         condition: 'condition' # required
    #       }
    #     ],
    #     start_time: Time.now,
    #     end_time: Time.now
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartExportTaskOutput
    #   resp.data.export_id #=> String
    #
    def start_export_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartExportTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartExportTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartExportTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::StartExportTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartExportTask,
        stubs: @stubs,
        params_class: Params::StartExportTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_export_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts an import task, which allows you to import details of your on-premises environment
    #       directly into Amazon Web Services Migration Hub without having to use the Application Discovery Service (ADS)
    #       tools such as the Discovery Connector or Discovery Agent. This gives you the option to perform
    #       migration assessment and planning directly from your imported data, including the ability to
    #       group your devices as applications and track their migration status.</p>
    #
    #          <p>To start an import request, do this:</p>
    #
    #          <ol>
    #             <li>
    #                <p>Download the specially formatted comma separated value (CSV) import template, which
    #           you can find here: <a href="https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv">https://s3.us-west-2.amazonaws.com/templates-7cffcf56-bd96-4b1c-b45b-a5b42f282e46/import_template.csv</a>.</p>
    #             </li>
    #             <li>
    #                <p>Fill out the template with your server and application data.</p>
    #             </li>
    #             <li>
    #                <p>Upload your import file to an Amazon S3 bucket, and make a note of it's Object URL.
    #           Your import file must be in the CSV format.</p>
    #             </li>
    #             <li>
    #                <p>Use the console or the <code>StartImportTask</code> command with the Amazon Web Services CLI or one of
    #           the Amazon Web Services SDKs to import the records from your file.</p>
    #             </li>
    #          </ol>
    #
    #          <p>For more information, including step-by-step procedures, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/discovery-import.html">Migration Hub
    #         Import</a> in the <i>Amazon Web Services Application Discovery Service User
    #       Guide</i>.</p>
    #
    #          <note>
    #             <p>There are limits to the number of import tasks you can create (and delete) in an Amazon Web Services
    #         account. For more information, see <a href="https://docs.aws.amazon.com/application-discovery/latest/userguide/ads_service_limits.html">Amazon Web Services Application
    #           Discovery Service Limits</a> in the <i>Amazon Web Services Application Discovery Service User
    #           Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::StartImportTaskInput}.
    #
    # @option params [String] :client_request_token
    #   <p>Optional. A unique token that you can provide to prevent the same import request from
    #         occurring more than once. If you don't provide a token, a token is automatically
    #         generated.</p>
    #
    #            <p>Sending more than one <code>StartImportTask</code> request with the same client request
    #         token will return information about the original import task with that client request
    #         token.</p>
    #
    # @option params [String] :name
    #   <p>A descriptive name for this request. You can use this name to filter future requests
    #         related to this import task, such as identifying applications and servers that were included
    #         in this import task. We recommend that you use a meaningful name for each import task.</p>
    #
    # @option params [String] :import_url
    #   <p>The URL for your import file that you've uploaded to Amazon S3.</p>
    #
    #            <note>
    #               <p>If you're using the Amazon Web Services CLI, this URL is structured as follows:
    #             <code>s3://BucketName/ImportFileName.CSV</code>
    #               </p>
    #            </note>
    #
    # @return [Types::StartImportTaskOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_import_task(
    #     client_request_token: 'clientRequestToken',
    #     name: 'name', # required
    #     import_url: 'importUrl' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartImportTaskOutput
    #   resp.data.task #=> Types::ImportTask
    #   resp.data.task.import_task_id #=> String
    #   resp.data.task.client_request_token #=> String
    #   resp.data.task.name #=> String
    #   resp.data.task.import_url #=> String
    #   resp.data.task.status #=> String, one of ["IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_COMPLETE_WITH_ERRORS", "IMPORT_FAILED", "IMPORT_FAILED_SERVER_LIMIT_EXCEEDED", "IMPORT_FAILED_RECORD_LIMIT_EXCEEDED", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "DELETE_FAILED_LIMIT_EXCEEDED", "INTERNAL_ERROR"]
    #   resp.data.task.import_request_time #=> Time
    #   resp.data.task.import_completion_time #=> Time
    #   resp.data.task.import_deleted_time #=> Time
    #   resp.data.task.server_import_success #=> Integer
    #   resp.data.task.server_import_failure #=> Integer
    #   resp.data.task.application_import_success #=> Integer
    #   resp.data.task.application_import_failure #=> Integer
    #   resp.data.task.errors_and_failed_entries_zip #=> String
    #
    def start_import_task(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartImportTaskInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartImportTaskInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartImportTask
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException, Errors::ResourceInUseException]),
        data_parser: Parsers::StartImportTask
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartImportTask,
        stubs: @stubs,
        params_class: Params::StartImportTaskOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_import_task
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stop the continuous flow of agent's discovered data into Amazon Athena.</p>
    #
    # @param [Hash] params
    #   See {Types::StopContinuousExportInput}.
    #
    # @option params [String] :export_id
    #   <p>The unique ID assigned to this export.</p>
    #
    # @return [Types::StopContinuousExportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_continuous_export(
    #     export_id: 'exportId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopContinuousExportOutput
    #   resp.data.start_time #=> Time
    #   resp.data.stop_time #=> Time
    #
    def stop_continuous_export(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopContinuousExportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopContinuousExportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopContinuousExport
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException, Errors::ResourceInUseException]),
        data_parser: Parsers::StopContinuousExport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopContinuousExport,
        stubs: @stubs,
        params_class: Params::StopContinuousExportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_continuous_export
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Instructs the specified agents or connectors to stop collecting data.</p>
    #
    # @param [Hash] params
    #   See {Types::StopDataCollectionByAgentIdsInput}.
    #
    # @option params [Array<String>] :agent_ids
    #   <p>The IDs of the agents or connectors from which to stop collecting data.</p>
    #
    # @return [Types::StopDataCollectionByAgentIdsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_data_collection_by_agent_ids(
    #     agent_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopDataCollectionByAgentIdsOutput
    #   resp.data.agents_configuration_status #=> Array<AgentConfigurationStatus>
    #   resp.data.agents_configuration_status[0] #=> Types::AgentConfigurationStatus
    #   resp.data.agents_configuration_status[0].agent_id #=> String
    #   resp.data.agents_configuration_status[0].operation_succeeded #=> Boolean
    #   resp.data.agents_configuration_status[0].description #=> String
    #
    def stop_data_collection_by_agent_ids(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopDataCollectionByAgentIdsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopDataCollectionByAgentIdsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopDataCollectionByAgentIds
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::StopDataCollectionByAgentIds
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopDataCollectionByAgentIds,
        stubs: @stubs,
        params_class: Params::StopDataCollectionByAgentIdsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_data_collection_by_agent_ids
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates metadata about an application.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApplicationInput}.
    #
    # @option params [String] :configuration_id
    #   <p>Configuration ID of the application to be updated.</p>
    #
    # @option params [String] :name
    #   <p>New name of the application to be updated.</p>
    #
    # @option params [String] :description
    #   <p>New description of the application to be updated.</p>
    #
    # @return [Types::UpdateApplicationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_application(
    #     configuration_id: 'configurationId', # required
    #     name: 'name',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApplicationOutput
    #
    def update_application(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApplicationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApplicationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApplication
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::InvalidParameterException, Errors::AuthorizationErrorException, Errors::ServerInternalErrorException, Errors::HomeRegionNotSetException]),
        data_parser: Parsers::UpdateApplication
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApplication,
        stubs: @stubs,
        params_class: Params::UpdateApplicationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_application
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
