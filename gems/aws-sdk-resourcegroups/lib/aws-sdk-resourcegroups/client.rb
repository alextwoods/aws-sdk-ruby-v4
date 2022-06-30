# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require_relative 'middleware/request_id'

module AWS::SDK::ResourceGroups
  # An API client for Ardi
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Resource Groups</fullname>
  #
  #         <p>AWS Resource Groups lets you organize AWS resources such as Amazon EC2 instances, Amazon Relational Database Service
  #             databases, and Amazon S3 buckets into groups using criteria that you define as tags. A
  #             resource group is a collection of resources that match the resource types specified in a
  #             query, and share one or more tags or portions of tags. You can create a group of
  #             resources based on their roles in your cloud infrastructure, lifecycle stages, regions,
  #             application layers, or virtually any criteria. Resource Groups enable you to automate management
  #             tasks, such as those in AWS Systems Manager Automation documents, on tag-related resources in
  #             AWS Systems Manager. Groups of tagged resources also let you quickly view a custom console in
  #             AWS Systems Manager that shows AWS Config compliance and other monitoring data about member
  #             resources.</p>
  #         <p>To create a resource group, build a resource query, and specify tags that identify the
  #             criteria that members of the group have in common. Tags are key-value pairs.</p>
  #         <p>For more information about Resource Groups, see the <a href="https://docs.aws.amazon.com/ARG/latest/userguide/welcome.html">AWS Resource Groups User Guide</a>.</p>
  #         <p>AWS Resource Groups uses a REST-compliant API that you can use to perform the following types of
  #             operations.</p>
  #         <ul>
  #             <li>
  #                 <p>Create, Read, Update, and Delete (CRUD) operations on resource groups and
  #                     resource query entities</p>
  #             </li>
  #             <li>
  #                 <p>Applying, editing, and removing tags from resource groups</p>
  #             </li>
  #             <li>
  #                 <p>Resolving resource group member ARNs so they can be returned as search
  #                     results</p>
  #             </li>
  #             <li>
  #                 <p>Getting data about resources that are members of a group</p>
  #             </li>
  #             <li>
  #                 <p>Searching AWS resources based on a resource query</p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::ResourceGroups::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates a resource group with the specified name and description. You can optionally
    #             include a resource query, or a service configuration. For more information about
    #             constructing a resource query, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create a tag-based group in Resource Groups</a>. For more
    #             information about service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                 groups</a>.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:CreateGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :name
    #   <p>The name of the group, which is the identifier of the group in other operations. You
    #               can't change the name of a resource group after you create it. A resource group name can
    #               consist of letters, numbers, hyphens, periods, and underscores. The name cannot start
    #               with <code>AWS</code> or <code>aws</code>; these are reserved. A resource group name
    #               must be unique within each AWS Region in your AWS account.</p>
    #
    # @option params [String] :description
    #   <p>The description of the resource group. Descriptions can consist of letters, numbers,
    #               hyphens, underscores, periods, and spaces.</p>
    #
    # @option params [ResourceQuery] :resource_query
    #   <p>The resource query that determines which AWS resources are members of this group.
    #               For more information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                   a tag-based group in Resource Groups</a>. </p>
    #           <note>
    #               <p>A resource group can contain either a <code>ResourceQuery</code> or a
    #                       <code>Configuration</code>, but not both.</p>
    #           </note>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the group. A tag is key-value pair string.</p>
    #
    # @option params [Array<GroupConfigurationItem>] :configuration
    #   <p>A configuration associates the resource group with an AWS service and specifies how
    #               the service can interact with the resources in the group. A configuration is an array of
    #                   <a>GroupConfigurationItem</a> elements. For details about the syntax of
    #               service configurations, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                   groups</a>.</p>
    #           <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #           </note>
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     name: 'Name', # required
    #     description: 'Description',
    #     resource_query: {
    #       type: 'TAG_FILTERS_1_0', # required - accepts ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #       query: 'Query' # required
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     configuration: [
    #       {
    #         type: 'Type', # required
    #         parameters: [
    #           {
    #             name: 'Name', # required
    #             values: [
    #               'member'
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.name #=> String
    #   resp.data.group.description #=> String
    #   resp.data.resource_query #=> Types::ResourceQuery
    #   resp.data.resource_query.type #=> String, one of ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #   resp.data.resource_query.query #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.group_configuration #=> Types::GroupConfiguration
    #   resp.data.group_configuration.configuration #=> Array<GroupConfigurationItem>
    #   resp.data.group_configuration.configuration[0] #=> Types::GroupConfigurationItem
    #   resp.data.group_configuration.configuration[0].type #=> String
    #   resp.data.group_configuration.configuration[0].parameters #=> Array<GroupConfigurationParameter>
    #   resp.data.group_configuration.configuration[0].parameters[0] #=> Types::GroupConfigurationParameter
    #   resp.data.group_configuration.configuration[0].parameters[0].name #=> String
    #   resp.data.group_configuration.configuration[0].parameters[0].values #=> Array<String>
    #   resp.data.group_configuration.configuration[0].parameters[0].values[0] #=> String
    #   resp.data.group_configuration.proposed_configuration #=> Array<GroupConfigurationItem>
    #   resp.data.group_configuration.status #=> String, one of ["UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.group_configuration.failure_reason #=> String
    #
    def create_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroup,
        stubs: @stubs,
        params_class: Params::CreateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified resource group. Deleting a resource group does not delete any
    #             resources that are members of the group; it only deletes the group structure.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:DeleteGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to delete.</p>
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     group_name: 'GroupName',
    #     group: 'Group'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.name #=> String
    #   resp.data.group.description #=> String
    #
    def delete_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroup,
        stubs: @stubs,
        params_class: Params::DeleteGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specified resource group.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:GetGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>Deprecated - don't use this parameter. Use <code>Group</code> instead.</p>
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to retrieve.</p>
    #
    # @return [Types::GetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group(
    #     group_name: 'GroupName',
    #     group: 'Group'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.name #=> String
    #   resp.data.group.description #=> String
    #
    def get_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroup,
        stubs: @stubs,
        params_class: Params::GetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the service configuration associated with the specified resource group. For
    #             details about the service configuration syntax, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for resource
    #                 groups</a>.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:GetGroupConfiguration</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetGroupConfigurationInput}.
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group.</p>
    #
    # @return [Types::GetGroupConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_configuration(
    #     group: 'Group'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupConfigurationOutput
    #   resp.data.group_configuration #=> Types::GroupConfiguration
    #   resp.data.group_configuration.configuration #=> Array<GroupConfigurationItem>
    #   resp.data.group_configuration.configuration[0] #=> Types::GroupConfigurationItem
    #   resp.data.group_configuration.configuration[0].type #=> String
    #   resp.data.group_configuration.configuration[0].parameters #=> Array<GroupConfigurationParameter>
    #   resp.data.group_configuration.configuration[0].parameters[0] #=> Types::GroupConfigurationParameter
    #   resp.data.group_configuration.configuration[0].parameters[0].name #=> String
    #   resp.data.group_configuration.configuration[0].parameters[0].values #=> Array<String>
    #   resp.data.group_configuration.configuration[0].parameters[0].values[0] #=> String
    #   resp.data.group_configuration.proposed_configuration #=> Array<GroupConfigurationItem>
    #   resp.data.group_configuration.status #=> String, one of ["UPDATING", "UPDATE_COMPLETE", "UPDATE_FAILED"]
    #   resp.data.group_configuration.failure_reason #=> String
    #
    def get_group_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroupConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetGroupConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroupConfiguration,
        stubs: @stubs,
        params_class: Params::GetGroupConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource query associated with the specified resource group. For more
    #             information about resource queries, see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create
    #                 a tag-based group in Resource Groups</a>.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:GetGroupQuery</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetGroupQueryInput}.
    #
    # @option params [String] :group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to query.</p>
    #
    # @return [Types::GetGroupQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_query(
    #     group_name: 'GroupName',
    #     group: 'Group'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupQueryOutput
    #   resp.data.group_query #=> Types::GroupQuery
    #   resp.data.group_query.group_name #=> String
    #   resp.data.group_query.resource_query #=> Types::ResourceQuery
    #   resp.data.group_query.resource_query.type #=> String, one of ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #   resp.data.group_query.resource_query.query #=> String
    #
    def get_group_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupQueryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroupQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetGroupQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroupQuery,
        stubs: @stubs,
        params_class: Params::GetGroupQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group_query
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of tags that are associated with a resource group, specified by an
    #             ARN.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:GetTags</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetTagsInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the resource group whose tags you want to retrieve.</p>
    #
    # @return [Types::GetTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_tags(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTagsOutput
    #   resp.data.arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def get_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTagsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTags
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTags,
        stubs: @stubs,
        params_class: Params::GetTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified resources to the specified group.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:GroupResources</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GroupResourcesInput}.
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to add resources to.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The list of ARNs for resources to be added to the group. </p>
    #
    # @return [Types::GroupResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.group_resources(
    #     group: 'Group', # required
    #     resource_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GroupResourcesOutput
    #   resp.data.succeeded #=> Array<String>
    #   resp.data.succeeded[0] #=> String
    #   resp.data.failed #=> Array<FailedResource>
    #   resp.data.failed[0] #=> Types::FailedResource
    #   resp.data.failed[0].resource_arn #=> String
    #   resp.data.failed[0].error_message #=> String
    #   resp.data.failed[0].error_code #=> String
    #   resp.data.pending #=> Array<PendingResource>
    #   resp.data.pending[0] #=> Types::PendingResource
    #   resp.data.pending[0].resource_arn #=> String
    #
    def group_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GroupResourcesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GroupResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GroupResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GroupResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GroupResources,
        stubs: @stubs,
        params_class: Params::GroupResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :group_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of ARNs of the resources that are members of a specified resource
    #             group.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:ListGroupResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>cloudformation:DescribeStacks</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>cloudformation:ListStackResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>tag:GetResources</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListGroupResourcesInput}.
    #
    # @option params [String] :group_name
    #   <important>
    #               <p>
    #                  <i>
    #                     <b>Deprecated - don't use this parameter. Use the
    #                               <code>Group</code> request field instead.</b>
    #                  </i>
    #               </p>
    #           </important>
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group</p>
    #
    # @option params [Array<ResourceFilter>] :filters
    #   <p>Filters, formatted as <a>ResourceFilter</a> objects, that you want to apply
    #               to a <code>ListGroupResources</code> operation. Filters the results to include only
    #               those of the specified resource types.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>resource-type</code> - Filter resources by their type. Specify up to
    #                       five resource types in the format <code>AWS::ServiceCode::ResourceType</code>.
    #                       For example, <code>AWS::EC2::Instance</code>, or <code>AWS::S3::Bucket</code>.
    #                   </p>
    #               </li>
    #            </ul>
    #           <p>When you specify a <code>resource-type</code> filter for
    #                   <code>ListGroupResources</code>, AWS Resource Groups validates your filter resource types
    #               against the types that are defined in the query associated with the group. For example,
    #               if a group contains only S3 buckets because its query specifies only that resource type,
    #               but your <code>resource-type</code> filter includes EC2 instances, AWS Resource Groups
    #               does not filter for EC2 instances. In this case, a <code>ListGroupResources</code>
    #               request returns a <code>BadRequestException</code> error with a message similar to the
    #               following:</p>
    #           <p>
    #               <code>The resource types specified as filters in the request are not
    #               valid.</code>
    #            </p>
    #           <p>The error includes a list of resource types that failed the validation because they
    #               are not part of the query associated with the group. This validation doesn't occur when
    #               the group query specifies <code>AWS::AllSupported</code>, because a group based on such
    #               a query can contain any of the allowed resource types for the query type (tag-based or
    #               AWS CloudFormation stack-based queries).</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value that is specific to the
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #   response element is present and has a value (is not null). Include that value as the
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #   of the results. Note that the service might return fewer results than the maximum even when there
    #   are more results available. You should check <code>NextToken</code> after every operation to
    #   ensure that you receive all of the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #   indicates that more output is available. Set this parameter to the value provided by a previous
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #
    # @return [Types::ListGroupResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_resources(
    #     group_name: 'GroupName',
    #     group: 'Group',
    #     filters: [
    #       {
    #         name: 'resource-type', # required - accepts ["resource-type"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupResourcesOutput
    #   resp.data.resources #=> Array<ListGroupResourcesItem>
    #   resp.data.resources[0] #=> Types::ListGroupResourcesItem
    #   resp.data.resources[0].identifier #=> Types::ResourceIdentifier
    #   resp.data.resources[0].identifier.resource_arn #=> String
    #   resp.data.resources[0].identifier.resource_type #=> String
    #   resp.data.resources[0].status #=> Types::ResourceStatus
    #   resp.data.resources[0].status.name #=> String, one of ["PENDING"]
    #   resp.data.resource_identifiers #=> Array<ResourceIdentifier>
    #   resp.data.next_token #=> String
    #   resp.data.query_errors #=> Array<QueryError>
    #   resp.data.query_errors[0] #=> Types::QueryError
    #   resp.data.query_errors[0].error_code #=> String, one of ["CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING"]
    #   resp.data.query_errors[0].message #=> String
    #
    def list_group_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupResourcesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::ListGroupResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupResources,
        stubs: @stubs,
        params_class: Params::ListGroupResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_group_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of existing resource groups in your account.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:ListGroups</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [Array<GroupFilter>] :filters
    #   <p>Filters, formatted as <a>GroupFilter</a> objects, that you want to apply to
    #               a <code>ListGroups</code> operation.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>resource-type</code> - Filter the results to include only those of the
    #                       specified resource types. Specify up to five resource types in the format
    #                               <code>AWS::<i>ServiceCode</i>::<i>ResourceType</i>
    #                     </code>.
    #                       For example, <code>AWS::EC2::Instance</code>, or
    #                       <code>AWS::S3::Bucket</code>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>configuration-type</code> - Filter the results to include only those
    #                       groups that have the specified configuration types attached. The current
    #                       supported values are:</p>
    #                   <ul>
    #                     <li>
    #                           <p>
    #                           <code>AWS:EC2::CapacityReservationPool</code>
    #                        </p>
    #                       </li>
    #                     <li>
    #                           <p>
    #                           <code>AWS:EC2::HostManagement</code>
    #                        </p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value that is specific to the
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #   response element is present and has a value (is not null). Include that value as the
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #   of the results. Note that the service might return fewer results than the maximum even when there
    #   are more results available. You should check <code>NextToken</code> after every operation to
    #   ensure that you receive all of the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #   indicates that more output is available. Set this parameter to the value provided by a previous
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     filters: [
    #       {
    #         name: 'resource-type', # required - accepts ["resource-type", "configuration-type"]
    #         values: [
    #           'member'
    #         ] # required
    #       }
    #     ],
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.group_identifiers #=> Array<GroupIdentifier>
    #   resp.data.group_identifiers[0] #=> Types::GroupIdentifier
    #   resp.data.group_identifiers[0].group_name #=> String
    #   resp.data.group_identifiers[0].group_arn #=> String
    #   resp.data.groups #=> Array<Group>
    #   resp.data.groups[0] #=> Types::Group
    #   resp.data.groups[0].group_arn #=> String
    #   resp.data.groups[0].name #=> String
    #   resp.data.groups[0].description #=> String
    #   resp.data.next_token #=> String
    #
    def list_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroups
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroups,
        stubs: @stubs,
        params_class: Params::ListGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a service configuration to the specified group. This occurs asynchronously,
    #             and can take time to complete. You can use <a>GetGroupConfiguration</a> to
    #             check the status of the update.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:PutGroupConfiguration</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::PutGroupConfigurationInput}.
    #
    # @option params [String] :group
    #   <p>The name or ARN of the resource group with the configuration that you want to
    #               update.</p>
    #
    # @option params [Array<GroupConfigurationItem>] :configuration
    #   <p>The new configuration to associate with the specified group. A configuration
    #               associates the resource group with an AWS service and specifies how the service can
    #               interact with the resources in the group. A configuration is an array of <a>GroupConfigurationItem</a> elements.</p>
    #           <p>For information about the syntax of a service configuration, see <a href="https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html">Service configurations for
    #                   resource groups</a>.</p>
    #           <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #           </note>
    #
    # @return [Types::PutGroupConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_group_configuration(
    #     group: 'Group',
    #     configuration: [
    #       {
    #         type: 'Type', # required
    #         parameters: [
    #           {
    #             name: 'Name', # required
    #             values: [
    #               'member'
    #             ]
    #           }
    #         ]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutGroupConfigurationOutput
    #
    def put_group_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutGroupConfigurationInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutGroupConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutGroupConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutGroupConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutGroupConfiguration,
        stubs: @stubs,
        params_class: Params::PutGroupConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_group_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of AWS resource identifiers that matches the specified query. The
    #             query uses the same format as a resource query in a CreateGroup or UpdateGroupQuery
    #             operation.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:SearchResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>cloudformation:DescribeStacks</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>cloudformation:ListStackResources</code>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <code>tag:GetResources</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::SearchResourcesInput}.
    #
    # @option params [ResourceQuery] :resource_query
    #   <p>The search query, using the same formats that are supported for resource group
    #               definition. For more information, see <a>CreateGroup</a>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #   response. If you do not include this parameter, it defaults to a value that is specific to the
    #   operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #   response element is present and has a value (is not null). Include that value as the
    #   <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #   of the results. Note that the service might return fewer results than the maximum even when there
    #   are more results available. You should check <code>NextToken</code> after every operation to
    #   ensure that you receive all of the results.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #   <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #   indicates that more output is available. Set this parameter to the value provided by a previous
    #   call's <code>NextToken</code> response to indicate where the output should continue from.</p>
    #
    # @return [Types::SearchResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.search_resources(
    #     resource_query: {
    #       type: 'TAG_FILTERS_1_0', # required - accepts ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #       query: 'Query' # required
    #     }, # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SearchResourcesOutput
    #   resp.data.resource_identifiers #=> Array<ResourceIdentifier>
    #   resp.data.resource_identifiers[0] #=> Types::ResourceIdentifier
    #   resp.data.resource_identifiers[0].resource_arn #=> String
    #   resp.data.resource_identifiers[0].resource_type #=> String
    #   resp.data.next_token #=> String
    #   resp.data.query_errors #=> Array<QueryError>
    #   resp.data.query_errors[0] #=> Types::QueryError
    #   resp.data.query_errors[0].error_code #=> String, one of ["CLOUDFORMATION_STACK_INACTIVE", "CLOUDFORMATION_STACK_NOT_EXISTING"]
    #   resp.data.query_errors[0].message #=> String
    #
    def search_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SearchResourcesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SearchResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SearchResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::TooManyRequestsException, Errors::UnauthorizedException]),
        data_parser: Parsers::SearchResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SearchResources,
        stubs: @stubs,
        params_class: Params::SearchResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :search_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a resource group with the specified ARN. Existing tags on a resource
    #             group are not changed if they are not specified in the request parameters.</p>
    #         <important>
    #             <p>Do not store personally identifiable information (PII) or other confidential or
    #                 sensitive information in tags. We use tags to provide you with billing and
    #                 administration services. Tags are not intended to be used for private or sensitive
    #                 data.</p>
    #         </important>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:Tag</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::TagInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the resource group to which to add tags.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to add to the specified resource group. A tag is a string-to-string map of
    #               key-value pairs.</p>
    #
    # @return [Types::TagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag(
    #     arn: 'Arn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagOutput
    #   resp.data.arn #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def tag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Tag
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::Tag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Tag,
        stubs: @stubs,
        params_class: Params::TagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified resources from the specified group.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:UngroupResources</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UngroupResourcesInput}.
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group from which to remove the resources.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>The ARNs of the resources to be removed from the group.</p>
    #
    # @return [Types::UngroupResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.ungroup_resources(
    #     group: 'Group', # required
    #     resource_arns: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UngroupResourcesOutput
    #   resp.data.succeeded #=> Array<String>
    #   resp.data.succeeded[0] #=> String
    #   resp.data.failed #=> Array<FailedResource>
    #   resp.data.failed[0] #=> Types::FailedResource
    #   resp.data.failed[0].resource_arn #=> String
    #   resp.data.failed[0].error_message #=> String
    #   resp.data.failed[0].error_code #=> String
    #   resp.data.pending #=> Array<PendingResource>
    #   resp.data.pending[0] #=> Types::PendingResource
    #   resp.data.pending[0].resource_arn #=> String
    #
    def ungroup_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UngroupResourcesInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UngroupResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UngroupResources
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UngroupResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UngroupResources,
        stubs: @stubs,
        params_class: Params::UngroupResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :ungroup_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes tags from a specified resource group.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:Untag</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UntagInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the resource group from which to remove tags. The command removed both the
    #               specified keys and any values associated with those keys.</p>
    #
    # @option params [Array<String>] :keys
    #   <p>The keys of the tags to be removed.</p>
    #
    # @return [Types::UntagOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag(
    #     arn: 'Arn', # required
    #     keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagOutput
    #   resp.data.arn #=> String
    #   resp.data.keys #=> Array<String>
    #   resp.data.keys[0] #=> String
    #
    def untag(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Untag
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::Untag
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Untag,
        stubs: @stubs,
        params_class: Params::UntagOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the description for an existing group. You cannot update the name of a
    #             resource group.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:UpdateGroup</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to modify.</p>
    #
    # @option params [String] :description
    #   <p>The new description that you want to update the resource group with. Descriptions can
    #               contain letters, numbers, hyphens, underscores, periods, and spaces.</p>
    #
    # @return [Types::UpdateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group(
    #     group_name: 'GroupName',
    #     group: 'Group',
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.group_arn #=> String
    #   resp.data.group.name #=> String
    #   resp.data.group.description #=> String
    #
    def update_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroup,
        stubs: @stubs,
        params_class: Params::UpdateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the resource query of a group. For more information about resource queries,
    #             see <a href="https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag">Create a tag-based group in Resource Groups</a>.</p>
    #         <p>
    #             <b>Minimum permissions</b>
    #          </p>
    #          <p>To run this command, you must have the following permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <code>resource-groups:UpdateGroupQuery</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupQueryInput}.
    #
    # @option params [String] :group_name
    #   <p>Don't use this parameter. Use <code>Group</code> instead.</p>
    #
    # @option params [String] :group
    #   <p>The name or the ARN of the resource group to query.</p>
    #
    # @option params [ResourceQuery] :resource_query
    #   <p>The resource query to determine which AWS resources are members of this resource
    #               group.</p>
    #           <note>
    #               <p>A resource group can contain either a <code>Configuration</code> or a
    #                       <code>ResourceQuery</code>, but not both.</p>
    #           </note>
    #
    # @return [Types::UpdateGroupQueryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group_query(
    #     group_name: 'GroupName',
    #     group: 'Group',
    #     resource_query: {
    #       type: 'TAG_FILTERS_1_0', # required - accepts ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #       query: 'Query' # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupQueryOutput
    #   resp.data.group_query #=> Types::GroupQuery
    #   resp.data.group_query.group_name #=> String
    #   resp.data.group_query.resource_query #=> Types::ResourceQuery
    #   resp.data.group_query.resource_query.type #=> String, one of ["TAG_FILTERS_1_0", "CLOUDFORMATION_STACK_1_0"]
    #   resp.data.group_query.resource_query.query #=> String
    #
    def update_group_query(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupQueryInput.build(params)
      response_body = StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupQueryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroupQuery
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ForbiddenException, Errors::InternalServerErrorException, Errors::MethodNotAllowedException, Errors::NotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateGroupQuery
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroupQuery,
        stubs: @stubs,
        params_class: Params::UpdateGroupQueryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group_query
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
