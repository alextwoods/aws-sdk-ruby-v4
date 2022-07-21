# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Identitystore
  # An API client for AWSIdentityStore
  # See {#initialize} for a full list of supported configuration options
  # <p>The AWS Single Sign-On (SSO) Identity Store service provides a single place to retrieve all of your
  #          identities (users and groups). For more information about AWS, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">AWS Single Sign-On User
  #             Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Identitystore::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Retrieves the group metadata and attributes from <code>GroupId</code> in an identity store.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGroupInput}.
    #
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains number and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier for a group in the identity store.</p>
    #
    # @return [Types::DescribeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group(
    #     identity_store_id: 'IdentityStoreId', # required
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGroupOutput
    #   resp.data.group_id #=> String
    #   resp.data.display_name #=> String
    #
    def describe_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGroup
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGroup,
        stubs: @stubs,
        params_class: Params::DescribeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the user metadata and attributes from <code>UserId</code> in an identity store.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserInput}.
    #
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains number and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier for a user in the identity store.</p>
    #
    # @return [Types::DescribeUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user(
    #     identity_store_id: 'IdentityStoreId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserOutput
    #   resp.data.user_name #=> String
    #   resp.data.user_id #=> String
    #
    def describe_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUser
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUser,
        stubs: @stubs,
        params_class: Params::DescribeUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the attribute name and value of the group that you specified in the search. We only support <code>DisplayName</code> as a valid filter
    #          attribute path currently, and filter is required. This API returns minimum attributes, including <code>GroupId</code> and group
    #             <code>DisplayName</code> in the response.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains number and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in the
    #               <code>ListUsers</code> and <code>ListGroups</code> request to specify how many results
    #            to return in one page. The length limit is 50 characters.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> API
    #            operations. This value is generated by the identity store service. It is returned in the
    #            API response if the total results are more than the size of one page. This token is also
    #            returned when it is used in the API request to search for the next page.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request. </p>
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     identity_store_id: 'IdentityStoreId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         attribute_path: 'AttributePath', # required
    #         attribute_value: 'AttributeValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.groups #=> Array<Group>
    #   resp.data.groups[0] #=> Types::Group
    #   resp.data.groups[0].group_id #=> String
    #   resp.data.groups[0].display_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Lists the attribute name and value of the user that you specified in the search. We only support <code>UserName</code> as a valid filter attribute
    #          path currently, and filter is required. This API returns minimum attributes, including <code>UserId</code> and <code>UserName</code> in the
    #          response.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :identity_store_id
    #   <p>The globally unique identifier for the identity store, such as
    #            <code>d-1234567890</code>. In this example, <code>d-</code> is a fixed prefix, and
    #               <code>1234567890</code> is a randomly generated string that contains number and lower
    #            case letters. This value is generated at the time that a new identity store is
    #            created.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned per request. This parameter is used in the
    #               <code>ListUsers</code> and <code>ListGroups</code> request to specify how many results
    #            to return in one page. The length limit is 50 characters.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token used for the <code>ListUsers</code> and <code>ListGroups</code> API
    #            operations. This value is generated by the identity store service. It is returned in the
    #            API response if the total results are more than the size of one page. This token is also
    #            returned when it is used in the API request to search for the next page.</p>
    #
    # @option params [Array<Filter>] :filters
    #   <p>A list of <code>Filter</code> objects, which is used in the <code>ListUsers</code> and <code>ListGroups</code> request. </p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     identity_store_id: 'IdentityStoreId', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filters: [
    #       {
    #         attribute_path: 'AttributePath', # required
    #         attribute_value: 'AttributeValue' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].user_name #=> String
    #   resp.data.users[0].user_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ResourceNotFoundException, Errors::ValidationException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
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
