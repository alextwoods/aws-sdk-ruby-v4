# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Cloud9
  # An API client for AWSCloud9WorkspaceManagementService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Cloud9</fullname>
  #          <p>Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and
  #       release software in the cloud.</p>
  #          <p>For more information about Cloud9, see the <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide">Cloud9 User Guide</a>.</p>
  #          <p>Cloud9 supports these operations:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>CreateEnvironmentEC2</code>: Creates an Cloud9 development environment, launches
  #           an Amazon EC2 instance, and then connects from the instance to the environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>CreateEnvironmentMembership</code>: Adds an environment member to an
  #           environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteEnvironment</code>: Deletes an environment. If an Amazon EC2 instance is
  #           connected to the environment, also terminates the instance.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteEnvironmentMembership</code>: Deletes an environment member from an
  #           environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeEnvironmentMemberships</code>: Gets information about environment
  #           members for an environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeEnvironments</code>: Gets information about environments.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeEnvironmentStatus</code>: Gets status information for an
  #           environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListEnvironments</code>: Gets a list of environment identifiers.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListTagsForResource</code>: Gets the tags for an environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>TagResource</code>: Adds tags to an environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UntagResource</code>: Removes tags from an environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateEnvironment</code>: Changes the settings of an existing
  #           environment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateEnvironmentMembership</code>: Changes the settings of an existing
  #           environment member for an environment.</p>
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
    def initialize(config = AWS::SDK::Cloud9::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and
    #       then connects from the instance to the environment.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentEC2Input}.
    #
    # @option params [String] :name
    #   <p>The name of the environment to create.</p>
    #            <p>This name is visible to other IAM users in the same Amazon Web Services account.</p>
    #
    # @option params [String] :description
    #   <p>The description of the environment to create.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, case-sensitive string that helps Cloud9 to ensure this operation completes no
    #         more than one time.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html">Client Tokens</a> in the
    #           <i>Amazon EC2 API Reference</i>.</p>
    #
    # @option params [String] :instance_type
    #   <p>The type of instance to connect to the environment (for example,
    #         <code>t2.micro</code>).</p>
    #
    # @option params [String] :subnet_id
    #   <p>The ID of the subnet in Amazon VPC that Cloud9 will use to communicate with the Amazon EC2
    #         instance.</p>
    #
    # @option params [String] :image_id
    #   <p>The identifier for the Amazon Machine Image (AMI) that's used to create the EC2 instance.
    #         To choose an AMI for the instance, you must specify a valid AMI alias or a valid Amazon EC2 Systems Manager (SSM)
    #         path.</p>
    #            <p>The default AMI is used if the parameter isn't explicitly assigned a value in the request.
    #         Because Amazon Linux AMI has ended standard support as of December 31, 2020, we recommend you
    #         choose Amazon Linux 2, which includes long term support through 2023.</p>
    #            <p>
    #               <b>AMI aliases </b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Linux (default):
    #               <code>amazonlinux-1-x86_64</code>
    #                     </b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Linux 2: <code>amazonlinux-2-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 18.04: <code>ubuntu-18.04-x86_64</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>
    #               <b>SSM paths</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Linux (default):
    #                 <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-1-x86_64</code>
    #                     </b>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Amazon Linux 2:
    #             <code>resolve:ssm:/aws/service/cloud9/amis/amazonlinux-2-x86_64</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Ubuntu 18.04:
    #             <code>resolve:ssm:/aws/service/cloud9/amis/ubuntu-18.04-x86_64</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :automatic_stop_time_minutes
    #   <p>The number of minutes until the running instance is shut down after the environment has
    #         last been used.</p>
    #
    # @option params [String] :owner_arn
    #   <p>The Amazon Resource Name (ARN) of the environment owner. This ARN can be the ARN of any
    #         IAM principal. If this value is not specified, the ARN defaults to this environment's
    #         creator.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>An array of key-value pairs that will be associated with the new Cloud9 development
    #         environment.</p>
    #
    # @option params [String] :connection_type
    #   <p>The connection type used for connecting to an Amazon EC2 environment. Valid values are
    #           <code>CONNECT_SSH</code> (default) and <code>CONNECT_SSM</code> (connected through
    #         Amazon EC2 Systems Manager).</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloud9/latest/user-guide/ec2-ssm.html">Accessing no-ingress EC2 instances with
    #           Amazon EC2 Systems Manager</a> in the <i>Cloud9 User Guide</i>.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is <code>DryRunOperation</code>. Otherwise, it is <code>UnauthorizedOperation</code>.</p>
    #
    # @return [Types::CreateEnvironmentEC2Output]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_ec2(
    #     name: 'name', # required
    #     description: 'description',
    #     client_request_token: 'clientRequestToken',
    #     instance_type: 'instanceType', # required
    #     subnet_id: 'subnetId',
    #     image_id: 'imageId',
    #     automatic_stop_time_minutes: 1,
    #     owner_arn: 'ownerArn',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     connection_type: 'CONNECT_SSH', # accepts ["CONNECT_SSH", "CONNECT_SSM"]
    #     dry_run: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentEC2Output
    #   resp.data.environment_id #=> String
    #
    def create_environment_ec2(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentEC2Input.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentEC2Input,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironmentEC2
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::CreateEnvironmentEC2
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironmentEC2,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentEC2Output
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment_ec2
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an environment member to an Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateEnvironmentMembershipInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment that contains the environment member you want to add.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member you want to add.</p>
    #
    # @option params [String] :permissions
    #   <p>The type of environment member permissions you want to associate with this environment
    #         member. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateEnvironmentMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_environment_membership(
    #     environment_id: 'environmentId', # required
    #     user_arn: 'userArn', # required
    #     permissions: 'read-write' # required - accepts ["read-write", "read-only"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEnvironmentMembershipOutput
    #   resp.data.membership #=> Types::EnvironmentMember
    #   resp.data.membership.permissions #=> String, one of ["owner", "read-write", "read-only"]
    #   resp.data.membership.user_id #=> String
    #   resp.data.membership.user_arn #=> String
    #   resp.data.membership.environment_id #=> String
    #   resp.data.membership.last_access #=> Time
    #
    def create_environment_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEnvironmentMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEnvironmentMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEnvironmentMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::CreateEnvironmentMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEnvironmentMembership,
        stubs: @stubs,
        params_class: Params::CreateEnvironmentMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_environment_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Cloud9 development environment. If an Amazon EC2 instance is connected to the
    #       environment, also terminates the instance.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to delete.</p>
    #
    # @return [Types::DeleteEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment(
    #     environment_id: 'environmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentOutput
    #
    def delete_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::DeleteEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironment,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an environment member from an Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEnvironmentMembershipInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to delete the environment member from.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member to delete from the
    #         environment.</p>
    #
    # @return [Types::DeleteEnvironmentMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_environment_membership(
    #     environment_id: 'environmentId', # required
    #     user_arn: 'userArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEnvironmentMembershipOutput
    #
    def delete_environment_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEnvironmentMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEnvironmentMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEnvironmentMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::DeleteEnvironmentMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEnvironmentMembership,
        stubs: @stubs,
        params_class: Params::DeleteEnvironmentMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_environment_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about environment members for an Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentMembershipsInput}.
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of an individual environment member to get information
    #         about. If no value is specified, information about all environment members are
    #         returned.</p>
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to get environment member information about.</p>
    #
    # @option params [Array<String>] :permissions
    #   <p>The type of environment member permissions to get information about. Available values
    #         include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>owner</code>: Owns the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #            <p>If no value is specified, information about all environment members are returned.</p>
    #
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 25 items in the list, only the first 25
    #         items are returned, along with a unique string called a <i>next token</i>. To
    #         get the next batch of items in the list, call this operation again, adding the next token to
    #         the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of environment members to get information about.</p>
    #
    # @return [Types::DescribeEnvironmentMembershipsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_memberships(
    #     user_arn: 'userArn',
    #     environment_id: 'environmentId',
    #     permissions: [
    #       'owner' # accepts ["owner", "read-write", "read-only"]
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentMembershipsOutput
    #   resp.data.memberships #=> Array<EnvironmentMember>
    #   resp.data.memberships[0] #=> Types::EnvironmentMember
    #   resp.data.memberships[0].permissions #=> String, one of ["owner", "read-write", "read-only"]
    #   resp.data.memberships[0].user_id #=> String
    #   resp.data.memberships[0].user_arn #=> String
    #   resp.data.memberships[0].environment_id #=> String
    #   resp.data.memberships[0].last_access #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_environment_memberships(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentMembershipsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentMembershipsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironmentMemberships
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::DescribeEnvironmentMemberships
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironmentMemberships,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentMembershipsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environment_memberships
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets status information for an Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentStatusInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to get status information about.</p>
    #
    # @return [Types::DescribeEnvironmentStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environment_status(
    #     environment_id: 'environmentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentStatusOutput
    #   resp.data.status #=> String, one of ["error", "creating", "connecting", "ready", "stopping", "stopped", "deleting"]
    #   resp.data.message #=> String
    #
    def describe_environment_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironmentStatus
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::DescribeEnvironmentStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironmentStatus,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environment_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about Cloud9 development environments.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEnvironmentsInput}.
    #
    # @option params [Array<String>] :environment_ids
    #   <p>The IDs of individual environments to get information about.</p>
    #
    # @return [Types::DescribeEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_environments(
    #     environment_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEnvironmentsOutput
    #   resp.data.environments #=> Array<Environment>
    #   resp.data.environments[0] #=> Types::Environment
    #   resp.data.environments[0].id #=> String
    #   resp.data.environments[0].name #=> String
    #   resp.data.environments[0].description #=> String
    #   resp.data.environments[0].type #=> String, one of ["ssh", "ec2"]
    #   resp.data.environments[0].connection_type #=> String, one of ["CONNECT_SSH", "CONNECT_SSM"]
    #   resp.data.environments[0].arn #=> String
    #   resp.data.environments[0].owner_arn #=> String
    #   resp.data.environments[0].lifecycle #=> Types::EnvironmentLifecycle
    #   resp.data.environments[0].lifecycle.status #=> String, one of ["CREATING", "CREATED", "CREATE_FAILED", "DELETING", "DELETE_FAILED"]
    #   resp.data.environments[0].lifecycle.reason #=> String
    #   resp.data.environments[0].lifecycle.failure_resource #=> String
    #   resp.data.environments[0].managed_credentials_status #=> String, one of ["ENABLED_ON_CREATE", "ENABLED_BY_OWNER", "DISABLED_BY_DEFAULT", "DISABLED_BY_OWNER", "DISABLED_BY_COLLABORATOR", "PENDING_REMOVAL_BY_COLLABORATOR", "PENDING_START_REMOVAL_BY_COLLABORATOR", "PENDING_REMOVAL_BY_OWNER", "PENDING_START_REMOVAL_BY_OWNER", "FAILED_REMOVAL_BY_COLLABORATOR", "FAILED_REMOVAL_BY_OWNER"]
    #
    def describe_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::DescribeEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEnvironments,
        stubs: @stubs,
        params_class: Params::DescribeEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of Cloud9 development environment identifiers.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEnvironmentsInput}.
    #
    # @option params [String] :next_token
    #   <p>During a previous call, if there are more than 25 items in the list, only the first 25
    #         items are returned, along with a unique string called a <i>next token</i>. To
    #         get the next batch of items in the list, call this operation again, adding the next token to
    #         the call. To get all of the items in the list, keep calling this operation with each
    #         subsequent next token that is returned, until no more next tokens are returned.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of environments to get identifiers for.</p>
    #
    # @return [Types::ListEnvironmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_environments(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEnvironmentsOutput
    #   resp.data.next_token #=> String
    #   resp.data.environment_ids #=> Array<String>
    #   resp.data.environment_ids[0] #=> String
    #
    def list_environments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEnvironmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEnvironmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEnvironments
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::ListEnvironments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEnvironments,
        stubs: @stubs,
        params_class: Params::ListEnvironmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_environments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of the tags associated with an Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to get the tags
    #         for.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'ResourceARN' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::InternalServerErrorException, Errors::NotFoundException]),
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

    # <p>Adds tags to an Cloud9 development environment.</p>
    #          <important>
    #             <p>Tags that you add to an Cloud9 environment by using this method will NOT be
    #         automatically propagated to underlying resources.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to add tags
    #         to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags to add to the given Cloud9 development environment.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceARN', # required
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConcurrentAccessException, Errors::InternalServerErrorException, Errors::NotFoundException]),
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

    # <p>Removes tags from an Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Cloud9 development environment to remove tags
    #         from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag names of the tags to remove from the given Cloud9 development
    #         environment.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'ResourceARN', # required
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
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BadRequestException, Errors::ConcurrentAccessException, Errors::InternalServerErrorException, Errors::NotFoundException]),
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

    # <p>Changes the settings of an existing Cloud9 development environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment to change settings.</p>
    #
    # @option params [String] :name
    #   <p>A replacement name for the environment.</p>
    #
    # @option params [String] :description
    #   <p>Any new or replacement description for the environment.</p>
    #
    # @option params [String] :managed_credentials_action
    #   <p>Allows the environment owner to turn on or turn off the Amazon Web Services managed temporary
    #         credentials for an Cloud9 environment by using one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ENABLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DISABLE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <note>
    #               <p>Only the environment owner can change the status of managed temporary credentials. An <code>AccessDeniedException</code> is thrown if an attempt to turn on or turn off managed temporary credentials is made by an account that's not the environment
    #         owner.</p>
    #            </note>
    #
    # @return [Types::UpdateEnvironmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment(
    #     environment_id: 'environmentId', # required
    #     name: 'name',
    #     description: 'description',
    #     managed_credentials_action: 'ENABLE' # accepts ["ENABLE", "DISABLE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentOutput
    #
    def update_environment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironment
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::UpdateEnvironment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironment,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the settings of an existing environment member for an Cloud9 development
    #       environment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateEnvironmentMembershipInput}.
    #
    # @option params [String] :environment_id
    #   <p>The ID of the environment for the environment member whose settings you want to
    #         change.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the environment member whose settings you want to
    #         change.</p>
    #
    # @option params [String] :permissions
    #   <p>The replacement type of environment member permissions you want to associate with this
    #         environment member. Available values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>read-only</code>: Has read-only access to the environment.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>read-write</code>: Has read-write access to the environment.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateEnvironmentMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_environment_membership(
    #     environment_id: 'environmentId', # required
    #     user_arn: 'userArn', # required
    #     permissions: 'read-write' # required - accepts ["read-write", "read-only"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEnvironmentMembershipOutput
    #   resp.data.membership #=> Types::EnvironmentMember
    #   resp.data.membership.permissions #=> String, one of ["owner", "read-write", "read-only"]
    #   resp.data.membership.user_id #=> String
    #   resp.data.membership.user_arn #=> String
    #   resp.data.membership.environment_id #=> String
    #   resp.data.membership.last_access #=> Time
    #
    def update_environment_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEnvironmentMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEnvironmentMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEnvironmentMembership
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::BadRequestException, Errors::ForbiddenException, Errors::LimitExceededException, Errors::InternalServerErrorException, Errors::NotFoundException, Errors::ConflictException]),
        data_parser: Parsers::UpdateEnvironmentMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEnvironmentMembership,
        stubs: @stubs,
        params_class: Params::UpdateEnvironmentMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_environment_membership
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
