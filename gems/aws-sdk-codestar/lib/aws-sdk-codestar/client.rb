# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CodeStar
  # An API client for CodeStar_20170419
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS CodeStar</fullname>
  #          <p>This is the API reference for AWS CodeStar. This reference provides descriptions of the
  #       operations and data types for the AWS CodeStar API along with usage examples.</p>
  #          <p>You can use the AWS CodeStar API to work with:</p>
  #          <p>Projects and their resources, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>DeleteProject</code>, which deletes a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeProject</code>, which lists the attributes of a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListProjects</code>, which lists all projects associated with your AWS
  #           account.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListResources</code>, which lists the resources associated with a
  #           project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListTagsForProject</code>, which lists the tags associated with a
  #           project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>TagProject</code>, which adds tags to a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UntagProject</code>, which removes tags from a project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateProject</code>, which updates the attributes of a project.</p>
  #             </li>
  #          </ul>
  #          <p>Teams and team members, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>AssociateTeamMember</code>, which adds an IAM user to the team for a
  #           project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DisassociateTeamMember</code>, which removes an IAM user from the team for a
  #           project.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListTeamMembers</code>, which lists all the IAM users in the team for a
  #           project, including their roles and attributes.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateTeamMember</code>, which updates a team member's attributes in a
  #           project.</p>
  #             </li>
  #          </ul>
  #          <p>Users, by calling the following:</p>
  #          <ul>
  #             <li>
  #                <p>
  #                   <code>CreateUserProfile</code>, which creates a user profile that contains data
  #           associated with the user across all projects.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DeleteUserProfile</code>, which deletes all user profile information across
  #           all projects.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>DescribeUserProfile</code>, which describes the profile of a user.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>ListUserProfiles</code>, which lists all user profiles.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <code>UpdateUserProfile</code>, which updates the profile for a user.</p>
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
    def initialize(config = AWS::SDK::CodeStar::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds an IAM user to the team for an AWS CodeStar project.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateTeamMemberInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project to which you will add the IAM user.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested the team
    #         member association to the project. This token can be used to repeat the request.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM user you want to add to the AWS CodeStar
    #         project.</p>
    #
    # @option params [String] :project_role
    #   <p>The AWS CodeStar project role that will apply to this user. This role determines what actions
    #         a user can take in an AWS CodeStar project.</p>
    #
    # @option params [Boolean] :remote_access_allowed
    #   <p>Whether the team member is allowed to use an SSH public/private key pair to remotely
    #         access project resources, for example Amazon EC2 instances.</p>
    #
    # @return [Types::AssociateTeamMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_team_member(
    #     project_id: 'projectId', # required
    #     client_request_token: 'clientRequestToken',
    #     user_arn: 'userArn', # required
    #     project_role: 'projectRole', # required
    #     remote_access_allowed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateTeamMemberOutput
    #   resp.data.client_request_token #=> String
    #
    def associate_team_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateTeamMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateTeamMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateTeamMember
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectConfigurationException, Errors::ProjectNotFoundException, Errors::InvalidServiceRoleException, Errors::ValidationException, Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::TeamMemberAlreadyAssociatedException]),
        data_parser: Parsers::AssociateTeamMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateTeamMember,
        stubs: @stubs,
        params_class: Params::AssociateTeamMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_team_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a project, including project resources. This action creates a project based on
    #       a submitted project request. A set of source code files and a toolchain template file
    #       can be included with the project request. If these are not provided, an empty project is created.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateProjectInput}.
    #
    # @option params [String] :name
    #   <p>The display name for the project to be created in AWS CodeStar.</p>
    #
    # @option params [String] :id
    #   <p>The ID of the project to be created in AWS CodeStar.</p>
    #
    # @option params [String] :description
    #   <p>The description of the project, if any.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested project
    #         creation. This token can be used to repeat the request.</p>
    #
    # @option params [Array<Code>] :source_code
    #   <p>A list of the Code objects submitted with the project request. If this
    #         parameter is specified, the request must also include the toolchain parameter.</p>
    #
    # @option params [Toolchain] :toolchain
    #   <p>The name of the toolchain template file submitted with the project request. If
    #         this parameter is specified, the request must also include the sourceCode parameter.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags created for the project.</p>
    #
    # @return [Types::CreateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_project(
    #     name: 'name', # required
    #     id: 'id', # required
    #     description: 'description',
    #     client_request_token: 'clientRequestToken',
    #     source_code: [
    #       {
    #         source: {
    #           s3: {
    #             bucket_name: 'bucketName',
    #             bucket_key: 'bucketKey'
    #           } # required
    #         }, # required
    #         destination: {
    #           code_commit: {
    #             name: 'name' # required
    #           },
    #           git_hub: {
    #             name: 'name', # required
    #             description: 'description',
    #             type: 'type', # required
    #             owner: 'owner', # required
    #             private_repository: false, # required
    #             issues_enabled: false, # required
    #             token: 'token' # required
    #           }
    #         } # required
    #       }
    #     ],
    #     toolchain: {
    #       source: {
    #       }, # required
    #       role_arn: 'roleArn',
    #       stack_parameters: {
    #         'key' => 'value'
    #       }
    #     },
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateProjectOutput
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.project_template_id #=> String
    #
    def create_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateProjectInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectConfigurationException, Errors::InvalidServiceRoleException, Errors::ProjectAlreadyExistsException, Errors::ValidationException, Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::ProjectCreationFailedException]),
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

    # <p>Creates a profile for a user that includes user preferences, such as the display name
    #       and email address assocciated with the user, in AWS CodeStar. The user profile is not
    #       project-specific. Information in the user profile is displayed wherever the user's information
    #       appears to other users in AWS CodeStar.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserProfileInput}.
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the user in IAM.</p>
    #
    # @option params [String] :display_name
    #   <p>The name that will be displayed as the friendly name for the user in AWS CodeStar. </p>
    #
    # @option params [String] :email_address
    #   <p>The email address that will be displayed as part of the user's profile in
    #         AWS CodeStar.</p>
    #
    # @option params [String] :ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
    #         user remote access to project resources, this public key will be used along with the user's
    #         private key for SSH access.</p>
    #
    # @return [Types::CreateUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user_profile(
    #     user_arn: 'userArn', # required
    #     display_name: 'displayName', # required
    #     email_address: 'emailAddress', # required
    #     ssh_public_key: 'sshPublicKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserProfileOutput
    #   resp.data.user_arn #=> String
    #   resp.data.display_name #=> String
    #   resp.data.email_address #=> String
    #   resp.data.ssh_public_key #=> String
    #   resp.data.created_timestamp #=> Time
    #   resp.data.last_modified_timestamp #=> Time
    #
    def create_user_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUserProfile
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UserProfileAlreadyExistsException]),
        data_parser: Parsers::CreateUserProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUserProfile,
        stubs: @stubs,
        params_class: Params::CreateUserProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a project, including project resources. Does not delete users associated with
    #       the project, but does delete the IAM roles that allowed access to the project.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProjectInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the project to be deleted in AWS CodeStar.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A user- or system-generated token that identifies the entity that requested project
    #         deletion. This token can be used to repeat the request. </p>
    #
    # @option params [Boolean] :delete_stack
    #   <p>Whether to send a delete request for the primary stack in AWS CloudFormation originally
    #         used to generate the project and its resources. This option will delete all AWS resources for
    #         the project (except for any buckets in Amazon S3) as well as deleting the project itself.
    #         Recommended for most use cases.</p>
    #
    # @return [Types::DeleteProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_project(
    #     id: 'id', # required
    #     client_request_token: 'clientRequestToken',
    #     delete_stack: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProjectOutput
    #   resp.data.stack_id #=> String
    #   resp.data.project_arn #=> String
    #
    def delete_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProjectInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidServiceRoleException, Errors::ValidationException, Errors::ConcurrentModificationException]),
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

    # <p>Deletes a user profile in AWS CodeStar, including all personal preference data associated with
    #       that profile, such as display name and email address. It does not delete the history of that
    #       user, for example the history of commits made by that user.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserProfileInput}.
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the user to delete from AWS CodeStar.</p>
    #
    # @return [Types::DeleteUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_profile(
    #     user_arn: 'userArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserProfileOutput
    #   resp.data.user_arn #=> String
    #
    def delete_user_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserProfile
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException]),
        data_parser: Parsers::DeleteUserProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserProfile,
        stubs: @stubs,
        params_class: Params::DeleteUserProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes a project and its resources.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeProjectInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the project.</p>
    #
    # @return [Types::DescribeProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_project(
    #     id: 'id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeProjectOutput
    #   resp.data.name #=> String
    #   resp.data.id #=> String
    #   resp.data.arn #=> String
    #   resp.data.description #=> String
    #   resp.data.client_request_token #=> String
    #   resp.data.created_time_stamp #=> Time
    #   resp.data.stack_id #=> String
    #   resp.data.project_template_id #=> String
    #   resp.data.status #=> Types::ProjectStatus
    #   resp.data.status.state #=> String
    #   resp.data.status.reason #=> String
    #
    def describe_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeProject
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectConfigurationException, Errors::ProjectNotFoundException, Errors::InvalidServiceRoleException, Errors::ValidationException, Errors::ConcurrentModificationException]),
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

    # <p>Describes a user in AWS CodeStar and the user attributes across all projects.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserProfileInput}.
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #
    # @return [Types::DescribeUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user_profile(
    #     user_arn: 'userArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserProfileOutput
    #   resp.data.user_arn #=> String
    #   resp.data.display_name #=> String
    #   resp.data.email_address #=> String
    #   resp.data.ssh_public_key #=> String
    #   resp.data.created_timestamp #=> Time
    #   resp.data.last_modified_timestamp #=> Time
    #
    def describe_user_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUserProfile
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UserProfileNotFoundException]),
        data_parser: Parsers::DescribeUserProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUserProfile,
        stubs: @stubs,
        params_class: Params::DescribeUserProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a user from a project. Removing a user from a project also removes the IAM
    #       policies from that user that allowed access to the project and its resources. Disassociating a
    #       team member does not remove that user's profile from AWS CodeStar. It does not remove the user from
    #       IAM.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateTeamMemberInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the AWS CodeStar project from which you want to remove a team member.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM user or group whom you want to remove from
    #         the project.</p>
    #
    # @return [Types::DisassociateTeamMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_team_member(
    #     project_id: 'projectId', # required
    #     user_arn: 'userArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateTeamMemberOutput
    #
    def disassociate_team_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateTeamMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateTeamMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateTeamMember
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::InvalidServiceRoleException, Errors::ValidationException, Errors::ConcurrentModificationException]),
        data_parser: Parsers::DisassociateTeamMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateTeamMember,
        stubs: @stubs,
        params_class: Params::DisassociateTeamMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_team_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all projects in AWS CodeStar associated with your AWS account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProjectsInput}.
    #
    # @option params [String] :next_token
    #   <p>The continuation token to be used to return the next set of results, if the results
    #         cannot be returned in one response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum amount of data that can be contained in a single set of results.</p>
    #
    # @return [Types::ListProjectsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_projects(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProjectsOutput
    #   resp.data.projects #=> Array<ProjectSummary>
    #   resp.data.projects[0] #=> Types::ProjectSummary
    #   resp.data.projects[0].project_id #=> String
    #   resp.data.projects[0].project_arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_projects(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProjectsInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
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

    # <p>Lists resources associated with a project in AWS CodeStar.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    #
    # @option params [String] :next_token
    #   <p>The continuation token for the next set of results, if the results cannot be returned
    #         in one response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum amount of data that can be contained in a single set of results.</p>
    #
    # @return [Types::ListResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources(
    #     project_id: 'projectId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesOutput
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].id #=> String
    #   resp.data.next_token #=> String
    #
    def list_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResources
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResources,
        stubs: @stubs,
        params_class: Params::ListResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the tags for a project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForProjectInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the project to get tags for.</p>
    #
    # @option params [String] :next_token
    #   <p>Reserved for future use.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Reserved for future use.</p>
    #
    # @return [Types::ListTagsForProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_project(
    #     id: 'id', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForProjectOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_for_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForProject
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListTagsForProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForProject,
        stubs: @stubs,
        params_class: Params::ListTagsForProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all team members associated with a project.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTeamMembersInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project for which you want to list team members.</p>
    #
    # @option params [String] :next_token
    #   <p>The continuation token for the next set of results, if the results cannot be returned
    #         in one response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of team members you want returned in a response.</p>
    #
    # @return [Types::ListTeamMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_team_members(
    #     project_id: 'projectId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTeamMembersOutput
    #   resp.data.team_members #=> Array<TeamMember>
    #   resp.data.team_members[0] #=> Types::TeamMember
    #   resp.data.team_members[0].user_arn #=> String
    #   resp.data.team_members[0].project_role #=> String
    #   resp.data.team_members[0].remote_access_allowed #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_team_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTeamMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTeamMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTeamMembers
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListTeamMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTeamMembers,
        stubs: @stubs,
        params_class: Params::ListTeamMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_team_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the user profiles configured for your AWS account in AWS CodeStar.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserProfilesInput}.
    #
    # @option params [String] :next_token
    #   <p>The continuation token for the next set of results, if the results cannot be returned
    #         in one response.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a response.</p>
    #
    # @return [Types::ListUserProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_profiles(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserProfilesOutput
    #   resp.data.user_profiles #=> Array<UserProfileSummary>
    #   resp.data.user_profiles[0] #=> Types::UserProfileSummary
    #   resp.data.user_profiles[0].user_arn #=> String
    #   resp.data.user_profiles[0].display_name #=> String
    #   resp.data.user_profiles[0].email_address #=> String
    #   resp.data.user_profiles[0].ssh_public_key #=> String
    #   resp.data.next_token #=> String
    #
    def list_user_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserProfiles
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::ValidationException]),
        data_parser: Parsers::ListUserProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserProfiles,
        stubs: @stubs,
        params_class: Params::ListUserProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds tags to a project.</p>
    #
    # @param [Hash] params
    #   See {Types::TagProjectInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the project you want to add a tag to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags you want to add to the project.</p>
    #
    # @return [Types::TagProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_project(
    #     id: 'id', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagProjectOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def tag_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagProject
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::ValidationException, Errors::ConcurrentModificationException, Errors::LimitExceededException]),
        data_parser: Parsers::TagProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagProject,
        stubs: @stubs,
        params_class: Params::TagProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags from a project.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagProjectInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the project to remove tags from.</p>
    #
    # @option params [Array<String>] :tags
    #   <p>The tags to remove from the project.</p>
    #
    # @return [Types::UntagProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_project(
    #     id: 'id', # required
    #     tags: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagProjectOutput
    #
    def untag_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagProjectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagProjectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagProject
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::ValidationException, Errors::ConcurrentModificationException, Errors::LimitExceededException]),
        data_parser: Parsers::UntagProject
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagProject,
        stubs: @stubs,
        params_class: Params::UntagProjectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_project
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a project in AWS CodeStar.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateProjectInput}.
    #
    # @option params [String] :id
    #   <p>The ID of the project you want to update.</p>
    #
    # @option params [String] :name
    #   <p>The name of the project you want to update.</p>
    #
    # @option params [String] :description
    #   <p>The description of the project, if any.</p>
    #
    # @return [Types::UpdateProjectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_project(
    #     id: 'id', # required
    #     name: 'name',
    #     description: 'description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateProjectOutput
    #
    def update_project(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateProjectInput.build(params)
      response_body = ::StringIO.new
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectNotFoundException, Errors::ValidationException]),
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

    # <p>Updates a team member's attributes in an AWS CodeStar project. For example, you can change a
    #       team member's role in the project, or change whether they have remote access to project
    #       resources.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTeamMemberInput}.
    #
    # @option params [String] :project_id
    #   <p>The ID of the project.</p>
    #
    # @option params [String] :user_arn
    #   <p>The Amazon Resource Name (ARN) of the user for whom you want to change team membership
    #         attributes.</p>
    #
    # @option params [String] :project_role
    #   <p>The role assigned to the user in the project. Project roles have different levels of
    #         access. For more information, see <a href="http://docs.aws.amazon.com/codestar/latest/userguide/working-with-teams.html">Working with
    #           Teams</a> in the <i>AWS CodeStar User Guide</i>.</p>
    #
    # @option params [Boolean] :remote_access_allowed
    #   <p>Whether a team member is allowed to remotely access project resources using the SSH
    #         public key associated with the user's profile. Even if this is set to True, the user must
    #         associate a public key with their profile before the user can access resources.</p>
    #
    # @return [Types::UpdateTeamMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_team_member(
    #     project_id: 'projectId', # required
    #     user_arn: 'userArn', # required
    #     project_role: 'projectRole',
    #     remote_access_allowed: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTeamMemberOutput
    #   resp.data.user_arn #=> String
    #   resp.data.project_role #=> String
    #   resp.data.remote_access_allowed #=> Boolean
    #
    def update_team_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTeamMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTeamMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTeamMember
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProjectConfigurationException, Errors::ProjectNotFoundException, Errors::InvalidServiceRoleException, Errors::TeamMemberNotFoundException, Errors::ValidationException, Errors::ConcurrentModificationException, Errors::LimitExceededException]),
        data_parser: Parsers::UpdateTeamMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTeamMember,
        stubs: @stubs,
        params_class: Params::UpdateTeamMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_team_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a user's profile in AWS CodeStar. The user profile is not project-specific.
    #       Information in the user profile is displayed wherever the user's information appears to other
    #       users in AWS CodeStar. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserProfileInput}.
    #
    # @option params [String] :user_arn
    #   <p>The name that will be displayed as the friendly name for the user in AWS
    #         CodeStar.</p>
    #
    # @option params [String] :display_name
    #   <p>The name that is displayed as the friendly name for the user in AWS CodeStar.</p>
    #
    # @option params [String] :email_address
    #   <p>The email address that is displayed as part of the user's profile in AWS
    #         CodeStar.</p>
    #
    # @option params [String] :ssh_public_key
    #   <p>The SSH public key associated with the user in AWS CodeStar. If a project owner allows the
    #         user remote access to project resources, this public key will be used along with the user's
    #         private key for SSH access.</p>
    #
    # @return [Types::UpdateUserProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user_profile(
    #     user_arn: 'userArn', # required
    #     display_name: 'displayName',
    #     email_address: 'emailAddress',
    #     ssh_public_key: 'sshPublicKey'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserProfileOutput
    #   resp.data.user_arn #=> String
    #   resp.data.display_name #=> String
    #   resp.data.email_address #=> String
    #   resp.data.ssh_public_key #=> String
    #   resp.data.created_timestamp #=> Time
    #   resp.data.last_modified_timestamp #=> Time
    #
    def update_user_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUserProfile
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::UserProfileNotFoundException]),
        data_parser: Parsers::UpdateUserProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUserProfile,
        stubs: @stubs,
        params_class: Params::UpdateUserProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user_profile
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
