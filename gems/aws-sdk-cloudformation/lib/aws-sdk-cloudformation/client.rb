# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CloudFormation
  # An API client for CloudFormation
  # See {#initialize} for a full list of supported configuration options
  # <fullname>CloudFormation</fullname>
  #          <p>CloudFormation allows you to create and manage Amazon Web Services infrastructure
  #          deployments predictably and repeatedly. You can use CloudFormation to leverage
  #             Amazon Web Services products, such as Amazon Elastic Compute Cloud, Amazon Elastic Block Store,
  #             Amazon Simple Notification Service, Elastic Load Balancing, and Auto Scaling to build highly
  #          reliable, highly scalable, cost-effective applications without creating or configuring the
  #          underlying Amazon Web Services infrastructure.</p>
  #          <p>With CloudFormation, you declare all your resources and dependencies in a template
  #          file. The template defines a collection of resources as a single unit called a stack.
  #             CloudFormation creates and deletes all member resources of the stack together and
  #          manages all dependencies between the resources for you.</p>
  #          <p>For more information about CloudFormation, see the <a href="http://aws.amazon.com/cloudformation/">CloudFormation product page</a>.</p>
  #          <p>CloudFormation makes use of other Amazon Web Services products. If you need
  #          additional technical information about a specific Amazon Web Services product, you can find
  #          the product's technical documentation at <a href="https://docs.aws.amazon.com/">
  #                <code>docs.aws.amazon.com</code>
  #             </a>.</p>
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
    def initialize(config = AWS::SDK::CloudFormation::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Activates a public third-party extension, making it available for use in stack
    #          templates. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-public.html">Using
    #             public extensions</a> in the <i>CloudFormation User Guide</i>.</p>
    #          <p>Once you have activated a public third-party extension in your account and region, use
    #             <a href="AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a> to specify configuration properties for the extension. For
    #          more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration">Configuring extensions at the account level</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ActivateTypeInput}.
    #
    # @option params [String] :type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    # @option params [String] :public_type_arn
    #   <p>The Amazon Resource Name (ARN) of the public extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    # @option params [String] :publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>PublicTypeArn</code>, or <code>TypeName</code>,
    #               <code>Type</code>, and <code>PublisherId</code>.</p>
    #
    # @option params [String] :type_name_alias
    #   <p>An alias to assign to the public extension, in this account and region. If you specify
    #            an alias for the extension, CloudFormation treats the alias as the extension type
    #            name within this account and region. You must use the alias to refer to the extension in
    #            your templates, API calls, and CloudFormation console.</p>
    #            <p>An extension alias must be unique within a given account and region. You can activate
    #            the same public resource multiple times in the same account and region, using different
    #            type name aliases.</p>
    #
    # @option params [Boolean] :auto_update
    #   <p>Whether to automatically update the extension in this account and region when a new
    #               <i>minor</i> version is published by the extension publisher. Major
    #            versions released by the publisher must be manually updated.</p>
    #            <p>The default is <code>true</code>.</p>
    #
    # @option params [LoggingConfig] :logging_config
    #   <p>Contains logging configuration information for an extension.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The name of the IAM execution role to use to activate the
    #            extension.</p>
    #
    # @option params [String] :version_bump
    #   <p>Manually updates a previously-activated type to a new major or minor version, if
    #            available. You can also use this parameter to update the value of
    #            <code>AutoUpdate</code>.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>MAJOR</code>: CloudFormation updates the extension to the newest
    #                  major version, if one is available.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MINOR</code>: CloudFormation updates the extension to the newest
    #                  minor version, if one is available.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :major_version
    #   <p>The major version of this extension you want to activate, if multiple major versions are
    #            available. The default is the latest major version. CloudFormation uses the latest
    #            available <i>minor</i> version of the major version selected.</p>
    #            <p>You can specify <code>MajorVersion</code> or <code>VersionBump</code>, but not
    #            both.</p>
    #
    # @return [Types::ActivateTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_type(
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     public_type_arn: 'PublicTypeArn',
    #     publisher_id: 'PublisherId',
    #     type_name: 'TypeName',
    #     type_name_alias: 'TypeNameAlias',
    #     auto_update: false,
    #     logging_config: {
    #       log_role_arn: 'LogRoleArn', # required
    #       log_group_name: 'LogGroupName' # required
    #     },
    #     execution_role_arn: 'ExecutionRoleArn',
    #     version_bump: 'MAJOR', # accepts ["MAJOR", "MINOR"]
    #     major_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivateTypeOutput
    #   resp.data.arn #=> String
    #
    def activate_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::ActivateType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateType,
        stubs: @stubs,
        params_class: Params::ActivateTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns configuration data for the specified CloudFormation extensions, from
    #          the CloudFormation registry for the account and region.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration">Configuring extensions at the account level</a> in the
    #             <i>CloudFormation User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDescribeTypeConfigurationsInput}.
    #
    # @option params [Array<TypeConfigurationIdentifier>] :type_configuration_identifiers
    #   <p>The list of identifiers for the desired extension configurations.</p>
    #
    # @return [Types::BatchDescribeTypeConfigurationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_type_configurations(
    #     type_configuration_identifiers: [
    #       {
    #         type_arn: 'TypeArn',
    #         type_configuration_alias: 'TypeConfigurationAlias',
    #         type_configuration_arn: 'TypeConfigurationArn',
    #         type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #         type_name: 'TypeName'
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDescribeTypeConfigurationsOutput
    #   resp.data.errors #=> Array<BatchDescribeTypeConfigurationsError>
    #   resp.data.errors[0] #=> Types::BatchDescribeTypeConfigurationsError
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #   resp.data.errors[0].type_configuration_identifier #=> Types::TypeConfigurationIdentifier
    #   resp.data.errors[0].type_configuration_identifier.type_arn #=> String
    #   resp.data.errors[0].type_configuration_identifier.type_configuration_alias #=> String
    #   resp.data.errors[0].type_configuration_identifier.type_configuration_arn #=> String
    #   resp.data.errors[0].type_configuration_identifier.type #=> String, one of ["RESOURCE", "MODULE", "HOOK"]
    #   resp.data.errors[0].type_configuration_identifier.type_name #=> String
    #   resp.data.unprocessed_type_configurations #=> Array<TypeConfigurationIdentifier>
    #   resp.data.type_configurations #=> Array<TypeConfigurationDetails>
    #   resp.data.type_configurations[0] #=> Types::TypeConfigurationDetails
    #   resp.data.type_configurations[0].arn #=> String
    #   resp.data.type_configurations[0].alias #=> String
    #   resp.data.type_configurations[0].configuration #=> String
    #   resp.data.type_configurations[0].last_updated #=> Time
    #   resp.data.type_configurations[0].type_arn #=> String
    #   resp.data.type_configurations[0].type_name #=> String
    #   resp.data.type_configurations[0].is_default_configuration #=> Boolean
    #
    def batch_describe_type_configurations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDescribeTypeConfigurationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDescribeTypeConfigurationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDescribeTypeConfigurations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeConfigurationNotFoundException]),
        data_parser: Parsers::BatchDescribeTypeConfigurations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDescribeTypeConfigurations,
        stubs: @stubs,
        params_class: Params::BatchDescribeTypeConfigurationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_describe_type_configurations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels an update on the specified stack. If the call completes successfully, the stack
    #          rolls back the update and reverts to the previous stack configuration.</p>
    #          <note>
    #             <p>You can cancel only stacks that are in the <code>UPDATE_IN_PROGRESS</code>
    #             state.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CancelUpdateStackInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>CancelUpdateStack</code> request. Specify this token
    #            if you plan to retry requests so that CloudFormation knows that you're not attempting
    #            to cancel an update on a stack with the same name. You might retry
    #               <code>CancelUpdateStack</code> requests to ensure that CloudFormation successfully
    #            received them.</p>
    #
    # @return [Types::CancelUpdateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_update_stack(
    #     stack_name: 'StackName', # required
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelUpdateStackOutput
    #
    def cancel_update_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelUpdateStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelUpdateStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelUpdateStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::CancelUpdateStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelUpdateStack,
        stubs: @stubs,
        params_class: Params::CancelUpdateStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_update_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>For a specified stack that's in the <code>UPDATE_ROLLBACK_FAILED</code> state, continues
    #          rolling it back to the <code>UPDATE_ROLLBACK_COMPLETE</code> state. Depending on the cause
    #          of the failure, you can manually <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> fix the error</a> and continue the rollback. By continuing the rollback, you can
    #          return your stack to a working state (the <code>UPDATE_ROLLBACK_COMPLETE</code> state), and
    #          then try to update the stack again.</p>
    #          <p>A stack goes into the <code>UPDATE_ROLLBACK_FAILED</code> state when CloudFormation can't roll back all changes after a failed stack update. For example, you
    #          might have a stack that's rolling back to an old database instance that was deleted outside
    #          of CloudFormation. Because CloudFormation doesn't know the database was deleted, it
    #          assumes that the database instance still exists and attempts to roll back to it, causing
    #          the update rollback to fail.</p>
    #
    # @param [Hash] params
    #   See {Types::ContinueUpdateRollbackInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique ID of the stack that you want to continue rolling back.</p>
    #            <note>
    #               <p>Don't specify the name of a nested stack (a stack that was created by using the
    #                  <code>AWS::CloudFormation::Stack</code> resource). Instead, use this operation on the
    #               parent stack (the stack that contains the <code>AWS::CloudFormation::Stack</code>
    #               resource).</p>
    #            </note>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to roll back the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation always uses this
    #            role for all future operations on the stack. Provided that users have permission to operate
    #            on the stack, CloudFormation uses this role even if the users don't have permission
    #            to pass it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that's generated from your user credentials.</p>
    #
    # @option params [Array<String>] :resources_to_skip
    #   <p>A list of the logical IDs of the resources that CloudFormation skips during the
    #            continue update rollback operation. You can specify only resources that are in the
    #               <code>UPDATE_FAILED</code> state because a rollback failed. You can't specify resources
    #            that are in the <code>UPDATE_FAILED</code> state for other reasons, for example, because an
    #            update was canceled. To check why a resource update failed, use the <a>DescribeStackResources</a> action, and view the resource status reason.</p>
    #            <important>
    #               <p>Specify this property to skip rolling back resources that CloudFormation
    #               can't successfully roll back. We recommend that you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/troubleshooting.html#troubleshooting-errors-update-rollback-failed"> troubleshoot</a> resources before skipping them. CloudFormation sets
    #               the status of the specified resources to <code>UPDATE_COMPLETE</code> and continues to
    #               roll back the stack. After the rollback is complete, the state of the skipped resources
    #               will be inconsistent with the state of the resources in the stack template. Before
    #               performing another stack update, you must update the stack or resources to be consistent
    #               with each other. If you don't, subsequent stack updates might fail, and the stack will
    #               become unrecoverable.</p>
    #            </important>
    #            <p>Specify the minimum number of resources required to successfully roll back your stack.
    #            For example, a failed resource update might cause dependent resources to fail. In this
    #            case, it might not be necessary to skip the dependent resources.</p>
    #            <p>To skip resources that are part of nested stacks, use the following format:
    #               <code>NestedStackName.ResourceLogicalID</code>. If you want to specify the logical ID of
    #            a stack resource (<code>Type: AWS::CloudFormation::Stack</code>) in the
    #               <code>ResourcesToSkip</code> list, then its corresponding embedded stack must be in one
    #            of the following states: <code>DELETE_IN_PROGRESS</code>, <code>DELETE_COMPLETE</code>, or
    #               <code>DELETE_FAILED</code>.</p>
    #            <note>
    #               <p>Don't confuse a child stack's name with its corresponding logical ID defined in the
    #               parent stack. For an example of a continue update rollback operation with nested stacks,
    #               see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-continueupdaterollback.html#nested-stacks">Using ResourcesToSkip to recover a nested stacks hierarchy</a>.</p>
    #            </note>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>ContinueUpdateRollback</code> request. Specify this
    #            token if you plan to retry requests so that CloudFormationknows that you're not
    #            attempting to continue the rollback to a stack with the same name. You might retry
    #               <code>ContinueUpdateRollback</code> requests to ensure that CloudFormation
    #            successfully received them.</p>
    #
    # @return [Types::ContinueUpdateRollbackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.continue_update_rollback(
    #     stack_name: 'StackName', # required
    #     role_arn: 'RoleARN',
    #     resources_to_skip: [
    #       'member'
    #     ],
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ContinueUpdateRollbackOutput
    #
    def continue_update_rollback(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ContinueUpdateRollbackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ContinueUpdateRollbackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ContinueUpdateRollback
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::ContinueUpdateRollback
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ContinueUpdateRollback,
        stubs: @stubs,
        params_class: Params::ContinueUpdateRollbackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :continue_update_rollback
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a list of changes that will be applied to a stack so that you can review the
    #          changes before executing them. You can create a change set for a stack that doesn't exist
    #          or an existing stack. If you create a change set for a stack that doesn't exist, the change
    #          set shows all of the resources that CloudFormation will create. If you create a change
    #          set for an existing stack, CloudFormation compares the stack's information with the
    #          information that you submit in the change set and lists the differences. Use change sets to
    #          understand which resources CloudFormation will create or change, and how it will change
    #          resources in an existing stack, before you create or update a stack.</p>
    #          <p>To create a change set for a stack that doesn't exist, for the
    #             <code>ChangeSetType</code> parameter, specify <code>CREATE</code>. To create a change
    #          set for an existing stack, specify <code>UPDATE</code> for the <code>ChangeSetType</code>
    #          parameter. To create a change set for an import operation, specify <code>IMPORT</code> for
    #          the <code>ChangeSetType</code> parameter. After the <code>CreateChangeSet</code> call
    #          successfully completes, CloudFormation starts creating the change set. To check the
    #          status of the change set or to review it, use the <a>DescribeChangeSet</a>
    #          action.</p>
    #          <p>When you are satisfied with the changes the change set will make, execute the change set
    #          by using the <a>ExecuteChangeSet</a> action. CloudFormation doesn't make
    #          changes until you execute the change set.</p>
    #          <p>To create a change set for the entire stack hierarchy, set
    #             <code>IncludeNestedStacks</code> to <code>True</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateChangeSetInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique ID of the stack for which you are creating a change set. CloudFormation generates the change set by comparing this stack's information with the
    #            information that you submit, such as a modified template or different parameter input
    #            values.</p>
    #
    # @option params [String] :template_body
    #   <p>A structure that contains the body of the revised template, with a minimum length of 1
    #            byte and a maximum length of 51,200 bytes. CloudFormation generates the change set by
    #            comparing this template with the template of the stack that you specified.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #            <code>TemplateURL</code>.</p>
    #
    # @option params [String] :template_url
    #   <p>The location of the file that contains the revised template. The URL must point to a
    #            template (max size: 460,800 bytes) that's located in an Amazon S3 bucket or a
    #            Systems Manager document. CloudFormation generates the change set by comparing this
    #            template with the stack that you specified.</p>
    #            <p>Conditional: You must specify only <code>TemplateBody</code> or
    #            <code>TemplateURL</code>.</p>
    #
    # @option params [Boolean] :use_previous_template
    #   <p>Whether to reuse the template that's associated with the stack to create the change
    #            set.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the change
    #            set. For more information, see the <a>Parameter</a> data type.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks, you must explicitly acknowledge this
    #                  by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation
    #                        returns an <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM resources in CloudFormation templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this
    #                  can include simple actions like find-and-replace operations, all the way to extensive
    #                  transformations of entire templates. Because of this, users typically create a change
    #                  set from the processed template, so that they can review the changes resulting from
    #                  the macros before actually creating the stack. If your stack template contains one or
    #                  more macros, and you choose to create a stack directly from the processed template,
    #                  without first reviewing the resulting changes in a change set, you must acknowledge
    #                  this capability. This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <note>
    #                     <p>This capacity doesn't apply to creating change sets, and specifying it when
    #                     creating change sets has no effect.</p>
    #                     <p>If you want to create a stack from a stack template that contains macros
    #                        <i>and</i> nested stacks, you must create or update the stack
    #                     directly from the template using the <a>CreateStack</a> or <a>UpdateStack</a> action, and specifying this capability.</p>
    #                  </note>
    #                  <p>For more information about macros, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using CloudFormation macros to
    #                     perform custom processing on templates</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The template resource types that you have permissions to work with if you execute this
    #            change set, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #               <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource type that you're updating, the
    #            stack update fails. By default, CloudFormation grants permissions to all resource
    #            types. Identity and Access Management (IAM) uses this parameter for condition keys
    #            in IAM policies for CloudFormation. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling access with Identity and Access Management</a> in the CloudFormation User Guide.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes when executing the change set. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation uses this role for all
    #            future operations on the stack. Provided that users have permission to operate on the
    #            stack, CloudFormation uses this role even if the users don't have permission to pass
    #            it. Ensure that the role grants least permission.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that is generated from your user credentials.</p>
    #
    # @option params [RollbackConfiguration] :rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    # @option params [Array<String>] :notification_ar_ns
    #   <p>The Amazon Resource Names (ARNs) of Amazon Simple Notification Service (Amazon SNS) topics
    #            that CloudFormation associates with the stack. To remove all associated notification
    #            topics, specify an empty list.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates these
    #            tags to resources in the stack. You can specify a maximum of 50 tags.</p>
    #
    # @option params [String] :change_set_name
    #   <p>The name of the change set. The name must be unique among all change sets that are
    #            associated with the specified stack.</p>
    #            <p>A change set name can contain only alphanumeric, case sensitive characters, and hyphens.
    #            It must start with an alphabetical character and can't exceed 128 characters.</p>
    #
    # @option params [String] :client_token
    #   <p>A unique identifier for this <code>CreateChangeSet</code> request. Specify this token if
    #            you plan to retry requests so that CloudFormation knows that you're not attempting to
    #            create another change set with the same name. You might retry <code>CreateChangeSet</code>
    #            requests to ensure that CloudFormation successfully received them.</p>
    #
    # @option params [String] :description
    #   <p>A description to help you identify this change set.</p>
    #
    # @option params [String] :change_set_type
    #   <p>The type of change set operation. To create a change set for a new stack, specify
    #               <code>CREATE</code>. To create a change set for an existing stack, specify
    #               <code>UPDATE</code>. To create a change set for an import operation, specify
    #               <code>IMPORT</code>.</p>
    #            <p>If you create a change set for a new stack, CloudFormation creates a stack with a
    #            unique stack ID, but no template or resources. The stack will be in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-describing-stacks.html#d0e11995">
    #                  <code>REVIEW_IN_PROGRESS</code>
    #               </a> state until you execute the change
    #            set.</p>
    #            <p>By default, CloudFormation specifies <code>UPDATE</code>. You can't use the
    #               <code>UPDATE</code> type to create a change set for a new stack or the
    #               <code>CREATE</code> type to create a change set for an existing stack.</p>
    #
    # @option params [Array<ResourceToImport>] :resources_to_import
    #   <p>The resources to import into your stack.</p>
    #
    # @option params [Boolean] :include_nested_stacks
    #   <p>Creates a change set for the all nested stacks specified in the template. The default
    #            behavior of this action is set to <code>False</code>. To include nested sets in a change
    #            set, specify <code>True</code>.</p>
    #
    # @return [Types::CreateChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_change_set(
    #     stack_name: 'StackName', # required
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     capabilities: [
    #       'CAPABILITY_IAM' # accepts ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #     ],
    #     resource_types: [
    #       'member'
    #     ],
    #     role_arn: 'RoleARN',
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: 'Arn', # required
    #           type: 'Type' # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     notification_ar_ns: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     change_set_name: 'ChangeSetName', # required
    #     client_token: 'ClientToken',
    #     description: 'Description',
    #     change_set_type: 'CREATE', # accepts ["CREATE", "UPDATE", "IMPORT"]
    #     resources_to_import: [
    #       {
    #         resource_type: 'ResourceType', # required
    #         logical_resource_id: 'LogicalResourceId', # required
    #         resource_identifier: {
    #           'key' => 'value'
    #         } # required
    #       }
    #     ],
    #     include_nested_stacks: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateChangeSetOutput
    #   resp.data.id #=> String
    #   resp.data.stack_id #=> String
    #
    def create_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InsufficientCapabilitiesException, Errors::LimitExceededException]),
        data_parser: Parsers::CreateChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateChangeSet,
        stubs: @stubs,
        params_class: Params::CreateChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a stack as specified in the template. After the call completes successfully, the
    #          stack creation starts. You can check the status of the stack through the <a>DescribeStacks</a>operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStackInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name that's associated with the stack. The name must be unique in the Region in
    #            which you are creating the stack.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case sensitive) and hyphens.
    #               It must start with an alphabetical character and can't be longer than 128
    #               characters.</p>
    #            </note>
    #
    # @option params [String] :template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #               <code>TemplateURL</code> parameter, but not both.</p>
    #
    # @option params [String] :template_url
    #   <p>Location of file containing the template body. The URL must point to a template (max
    #            size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager
    #            document. For more information, go to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the <code>TemplateBody</code> or the
    #               <code>TemplateURL</code> parameter, but not both.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #            For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #            type.</p>
    #
    # @option params [Boolean] :disable_rollback
    #   <p>Set to <code>true</code> to disable rollback of the stack if stack creation failed. You
    #            can specify either <code>DisableRollback</code> or <code>OnFailure</code>, but not
    #            both.</p>
    #            <p>Default: <code>false</code>
    #            </p>
    #
    # @option params [RollbackConfiguration] :rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    # @option params [Integer] :timeout_in_minutes
    #   <p>The amount of time that can pass before the stack status becomes CREATE_FAILED; if
    #               <code>DisableRollback</code> is not set or is set to <code>false</code>, the stack will
    #            be rolled back.</p>
    #
    # @option params [Array<String>] :notification_ar_ns
    #   <p>The Amazon Simple Notification Service (Amazon SNS) topic ARNs to publish stack related
    #            events. You can find your Amazon SNS topic ARNs using the Amazon SNS
    #            console or your Command Line Interface (CLI).</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to create the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks, you must explicitly acknowledge this
    #                  by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this
    #                  can include simple actions like find-and-replace operations, all the way to extensive
    #                  transformations of entire templates. Because of this, users typically create a change
    #                  set from the processed template, so that they can review the changes resulting from
    #                  the macros before actually creating the stack. If your stack template contains one or
    #                  more macros, and you choose to create a stack directly from the processed template,
    #                  without first reviewing the resulting changes in a change set, you must acknowledge
    #                  this capability. This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to create a stack from a stack template that contains macros
    #                     <i>and</i> nested stacks, you must create the stack directly from
    #                  the template using this capability.</p>
    #                  <important>
    #                     <p>You should only create stacks directly from a stack template that contains
    #                     macros if you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for
    #                     processing stack templates. Be aware that the Lambda function owner
    #                     can update the function operation without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
    #                        CloudFormation macros to perform custom processing on
    #                  templates</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The template resource types that you have permissions to work with for this create stack
    #            action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #               <code>Custom::MyCustomInstance</code>. Use the following syntax to describe template
    #            resource types: <code>AWS::*</code> (for all Amazon Web Services resources),
    #               <code>Custom::*</code> (for all custom resources),
    #                  <code>Custom::<i>logical_ID</i>
    #               </code> (for a specific custom resource),
    #               <code>AWS::<i>service_name</i>::*</code> (for all resources of a
    #            particular Amazon Web Services service), and
    #                  <code>AWS::<i>service_name</i>::<i>resource_logical_ID</i>
    #               </code> (for a specific Amazon Web Services resource).</p>
    #            <p>If the list of resource types doesn't include a resource that you're creating, the stack
    #            creation fails. By default, CloudFormation grants permissions to all resource
    #            types. Identity and Access Management (IAM) uses this parameter for CloudFormation-specific condition keys in IAM policies. For more
    #            information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with
    #                  Identity and Access Management</a>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to create the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation always uses this
    #            role for all future operations on the stack. Provided that users have permission to operate
    #            on the stack, CloudFormation uses this role even if the users don't have permission
    #            to pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that's generated from your user credentials.</p>
    #
    # @option params [String] :on_failure
    #   <p>Determines what action will be taken if stack creation fails. This must be one of:
    #               <code>DO_NOTHING</code>, <code>ROLLBACK</code>, or <code>DELETE</code>. You can specify
    #            either <code>OnFailure</code> or <code>DisableRollback</code>, but not both.</p>
    #            <p>Default: <code>ROLLBACK</code>
    #            </p>
    #
    # @option params [String] :stack_policy_body
    #   <p>Structure containing the stack policy body. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent Updates
    #               to Stack Resources</a> in the <i>CloudFormation User Guide</i>. You can specify
    #            either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but
    #            not both.</p>
    #
    # @option params [String] :stack_policy_url
    #   <p>Location of a file containing the stack policy. The URL must point to a policy (maximum
    #            size: 16 KB) located in an S3 bucket in the same Region as the stack. You can specify
    #            either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but
    #            not both.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates
    #            these tags to the resources created in the stack. A maximum number of 50 tags can be
    #            specified.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>CreateStack</code> request. Specify this token if you
    #            plan to retry requests so that CloudFormation knows that you're not attempting to
    #            create a stack with the same name. You might retry <code>CreateStack</code> requests to
    #            ensure that CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    # @option params [Boolean] :enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack. If a user attempts to
    #            delete a stack with termination protection enabled, the operation fails and the stack
    #            remains unchanged. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a Stack From Being
    #               Deleted</a> in the <i>CloudFormation User Guide</i>. Termination protection is
    #            deactivated on stacks by default.</p>
    #            <p>For <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested stacks</a>,
    #            termination protection is set on the root stack and can't be changed directly on the nested
    #            stack.</p>
    #
    # @return [Types::CreateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack(
    #     stack_name: 'StackName', # required
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     parameters: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     disable_rollback: false,
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: 'Arn', # required
    #           type: 'Type' # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     timeout_in_minutes: 1,
    #     notification_ar_ns: [
    #       'member'
    #     ],
    #     capabilities: [
    #       'CAPABILITY_IAM' # accepts ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #     ],
    #     resource_types: [
    #       'member'
    #     ],
    #     role_arn: 'RoleARN',
    #     on_failure: 'DO_NOTHING', # accepts ["DO_NOTHING", "ROLLBACK", "DELETE"]
    #     stack_policy_body: 'StackPolicyBody',
    #     stack_policy_url: 'StackPolicyURL',
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     client_request_token: 'ClientRequestToken',
    #     enable_termination_protection: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStackOutput
    #   resp.data.stack_id #=> String
    #
    def create_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AlreadyExistsException, Errors::InsufficientCapabilitiesException, Errors::LimitExceededException, Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::CreateStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStack,
        stubs: @stubs,
        params_class: Params::CreateStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates stack instances for the specified accounts, within the specified Amazon Web Services Regions. A stack instance refers to a stack in a specific account and Region.
    #          You must specify at least one value for either <code>Accounts</code> or
    #             <code>DeploymentTargets</code>, and you must specify at least one value for
    #             <code>Regions</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStackInstancesInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to create stack instances
    #            from.</p>
    #
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The names of one or more Amazon Web Services accounts that you
    #            want to create stack instances in the specified Region(s) for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    # @option params [DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts for which to create
    #            stack instances in the specified Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    # @option params [Array<String>] :regions
    #   <p>The names of one or more Amazon Web Services Regions where you want to create stack
    #            instances using the specified Amazon Web Services accounts.</p>
    #
    # @option params [Array<Parameter>] :parameter_overrides
    #   <p>A list of stack set parameters whose values you want to override in the selected stack
    #            instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #            accounts and Amazon Web Services Regions. When specifying parameters and their values, be
    #            aware of how CloudFormation sets parameter values during stack instance
    #            operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify
    #                  its value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter
    #                  and specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify
    #                  both a value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the stack set,
    #                  specify a parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property
    #                  at all.</p>
    #               </li>
    #            </ul>
    #            <p>During stack set updates, any parameter values overridden for a stack instance aren't
    #            updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in
    #            the stack set; to add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update the stack set template.</p>
    #
    # @option params [StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    # @option params [String] :operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #            <p>Repeating this stack set operation with a new operation ID retries all stack instances
    #            whose status is <code>OUTDATED</code>.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the
    #                     <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateStackInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_instances(
    #     stack_set_name: 'StackSetName', # required
    #     accounts: [
    #       'member'
    #     ],
    #     deployment_targets: {
    #       accounts_url: 'AccountsUrl',
    #       organizational_unit_ids: [
    #         'member'
    #       ]
    #     },
    #     regions: [
    #       'member'
    #     ], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: 'SEQUENTIAL', # accepts ["SEQUENTIAL", "PARALLEL"]
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1
    #     },
    #     operation_id: 'OperationId',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStackInstancesOutput
    #   resp.data.operation_id #=> String
    #
    def create_stack_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStackInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStackInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStackInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::LimitExceededException, Errors::OperationIdAlreadyExistsException, Errors::OperationInProgressException, Errors::StackSetNotFoundException, Errors::StaleRequestException]),
        data_parser: Parsers::CreateStackInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStackInstances,
        stubs: @stubs,
        params_class: Params::CreateStackInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stack_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a stack set.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateStackSetInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name to associate with the stack set. The name must be unique in the Region where
    #            you create your stack set.</p>
    #            <note>
    #               <p>A stack name can contain only alphanumeric characters (case-sensitive) and hyphens.
    #               It must start with an alphabetic character and can't be longer than 128
    #               characters.</p>
    #            </note>
    #
    # @option params [String] :description
    #   <p>A description of the stack set. You can use the description to identify the stack set's
    #            purpose or other important information.</p>
    #
    # @option params [String] :template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #            maximum length of 51,200 bytes. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but
    #            not both.</p>
    #
    # @option params [String] :template_url
    #   <p>The location of the file that contains the template body. The URL must point to a
    #            template (maximum size: 460,800 bytes) that's located in an Amazon S3 bucket or a
    #            Systems Manager document. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify either the TemplateBody or the TemplateURL parameter, but
    #            not both.</p>
    #
    # @option params [String] :stack_id
    #   <p>The stack ID you are importing into a new stack set. Specify the Amazon Resource Name
    #            (ARN) of the stack.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>The input parameters for the stack set template.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack set template contains
    #            certain capabilities in order for CloudFormation to create the stack set and related stack
    #            instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stack sets, you must explicitly acknowledge
    #                  this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your stack set template references one or more
    #                  macros, you must create the stack set directly from the processed template, without
    #                  first reviewing the resulting changes in a change set. To create the stack set
    #                  directly, you must acknowledge this capability. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using CloudFormation Macros to
    #                     Perform Custom Processing on Templates</a>.</p>
    #                  <important>
    #                     <p>Stack sets with service-managed permissions don't currently support the use of
    #                     macros in templates. (This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
    #                     transforms, which are macros hosted by CloudFormation.) Even if you specify this capability
    #                     for a stack set with service-managed permissions, if you reference a macro in your
    #                     template the stack set operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pairs to associate with this stack set and the stacks created from it.
    #               CloudFormation also propagates these tags to supported resources that are
    #            created in the stacks. A maximum number of 50 tags can be specified.</p>
    #            <p>If you specify tags as part of a <code>CreateStackSet</code> action, CloudFormation checks to see if you have the required IAM permission to
    #            tag resources. If you don't, the entire <code>CreateStackSet</code> action fails with an
    #               <code>access denied</code> error, and the stack set is not created.</p>
    #
    # @option params [String] :administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use to create this
    #            stack set.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles
    #            to control which users or groups can manage specific stack sets within the same
    #            administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Prerequisites: Granting Permissions for Stack
    #               Set Operations</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    # @option params [String] :execution_role_name
    #   <p>The name of the IAM execution role to use to create the stack set. If you
    #            do not specify an execution role, CloudFormation uses the
    #               <code>AWSCloudFormationStackSetExecutionRole</code> role for the stack set
    #            operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to
    #            control which stack resources users and groups can include in their stack sets.</p>
    #
    # @option params [String] :permission_model
    #   <p>Describes how the IAM roles required for stack set operations are
    #            created. By default, <code>SELF-MANAGED</code> is specified.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #                  execution roles required to deploy to target accounts. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #                     Self-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #                     IAM roles required to deploy to accounts managed by Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [AutoDeployment] :auto_deployment
    #   <p>Describes whether StackSets automatically deploys to Organizations accounts that
    #            are added to the target organization or organizational unit (OU). Specify only if
    #               <code>PermissionModel</code> is <code>SERVICE_MANAGED</code>.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>To create a stack set with service-managed permissions while signed in to the
    #                     management account, specify <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>To create a stack set with service-managed permissions while signed in to a
    #                  delegated administrator account, specify <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated admin in the
    #                     management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #            <p>Stack sets with service-managed permissions are created in the management account, including stack sets that are created by delegated
    #            administrators.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>CreateStackSet</code> request. Specify this token if
    #            you plan to retry requests so that CloudFormation knows that you're not attempting
    #            to create another stack set with the same name. You might retry <code>CreateStackSet</code>
    #            requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #
    # @option params [ManagedExecution] :managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #            conflicting operations.</p>
    #
    # @return [Types::CreateStackSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_stack_set(
    #     stack_set_name: 'StackSetName', # required
    #     description: 'Description',
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     stack_id: 'StackId',
    #     parameters: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     capabilities: [
    #       'CAPABILITY_IAM' # accepts ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     administration_role_arn: 'AdministrationRoleARN',
    #     execution_role_name: 'ExecutionRoleName',
    #     permission_model: 'SERVICE_MANAGED', # accepts ["SERVICE_MANAGED", "SELF_MANAGED"]
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false
    #     },
    #     call_as: 'SELF', # accepts ["SELF", "DELEGATED_ADMIN"]
    #     client_request_token: 'ClientRequestToken',
    #     managed_execution: {
    #       active: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateStackSetOutput
    #   resp.data.stack_set_id #=> String
    #
    def create_stack_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateStackSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateStackSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateStackSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CreatedButModifiedException, Errors::LimitExceededException, Errors::NameAlreadyExistsException]),
        data_parser: Parsers::CreateStackSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateStackSet,
        stubs: @stubs,
        params_class: Params::CreateStackSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_stack_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates a public extension that was previously activated in this account and
    #          region.</p>
    #          <p>Once deactivated, an extension can't be used in any CloudFormation operation.
    #          This includes stack update operations where the stack template includes the extension, even
    #          if no updates are being made to the extension. In addition, deactivated extensions aren't
    #          automatically updated if a new version of the extension is released.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateTypeInput}.
    #
    # @option params [String] :type_name
    #   <p>The type name of the extension, in this account and region. If you specified a type name
    #            alias when enabling the extension, use the type name alias.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :type
    #   <p>The extension type.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and region.</p>
    #            <p>Conditional: You must specify either <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @return [Types::DeactivateTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_type(
    #     type_name: 'TypeName',
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     arn: 'Arn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateTypeOutput
    #
    def deactivate_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::DeactivateType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateType,
        stubs: @stubs,
        params_class: Params::DeactivateTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified change set. Deleting change sets ensures that no one executes the
    #          wrong change set.</p>
    #          <p>If the call successfully completes, CloudFormation successfully deleted the change
    #          set.</p>
    #          <p>If <code>IncludeNestedStacks</code> specifies <code>True</code> during the creation of
    #          the nested change set, then <code>DeleteChangeSet</code> will delete all change sets that
    #          belong to the stacks hierarchy and will also delete all change sets for nested stacks with
    #          the status of <code>REVIEW_IN_PROGRESS</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteChangeSetInput}.
    #
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to delete.</p>
    #
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set to delete, specify the stack name or Amazon
    #            Resource Name (ARN) that's associated with it.</p>
    #
    # @return [Types::DeleteChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_change_set(
    #     change_set_name: 'ChangeSetName', # required
    #     stack_name: 'StackName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteChangeSetOutput
    #
    def delete_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidChangeSetStatusException]),
        data_parser: Parsers::DeleteChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteChangeSet,
        stubs: @stubs,
        params_class: Params::DeleteChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified stack. Once the call completes successfully, stack deletion starts.
    #          Deleted stacks don't show up in the <a>DescribeStacks</a> operation if the
    #          deletion has been completed successfully.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStackInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack.</p>
    #
    # @option params [Array<String>] :retain_resources
    #   <p>For stacks in the <code>DELETE_FAILED</code> state, a list of resource logical IDs that
    #            are associated with the resources you want to retain. During deletion, CloudFormation deletes the stack but doesn't delete the retained resources.</p>
    #            <p>Retaining resources is useful when you can't delete a resource, such as a non-empty S3
    #            bucket, but you want to delete the stack.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to delete the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that's generated from your user credentials.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>DeleteStack</code> request. Specify this token if you
    #            plan to retry requests so that CloudFormation knows that you're not attempting to
    #            delete a stack with the same name. You might retry <code>DeleteStack</code> requests to
    #            ensure that CloudFormation successfully received them.</p>
    #            <p>All events initiated by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    # @return [Types::DeleteStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack(
    #     stack_name: 'StackName', # required
    #     retain_resources: [
    #       'member'
    #     ],
    #     role_arn: 'RoleARN',
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStackOutput
    #
    def delete_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::DeleteStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStack,
        stubs: @stubs,
        params_class: Params::DeleteStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes stack instances for the specified accounts, in the specified Amazon Web Services Regions.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStackInstancesInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to delete stack instances
    #            for.</p>
    #
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The names of the Amazon Web Services accounts that you want to
    #            delete stack instances for.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    # @option params [DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts from which to delete
    #            stack instances.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    # @option params [Array<String>] :regions
    #   <p>The Amazon Web Services Regions where you want to delete stack set instances.</p>
    #
    # @option params [StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    # @option params [Boolean] :retain_stacks
    #   <p>Removes the stack instances from the specified stack set, but doesn't delete the stacks.
    #            You can't reassociate a retained stack or add an existing, saved stack to a new stack
    #            set.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
    #
    # @option params [String] :operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You can retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>Repeating this stack set operation with a new operation ID retries all stack instances
    #            whose status is <code>OUTDATED</code>.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteStackInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_instances(
    #     stack_set_name: 'StackSetName', # required
    #     accounts: [
    #       'member'
    #     ],
    #     deployment_targets: {
    #       accounts_url: 'AccountsUrl',
    #       organizational_unit_ids: [
    #         'member'
    #       ]
    #     },
    #     regions: [
    #       'member'
    #     ], # required
    #     operation_preferences: {
    #       region_concurrency_type: 'SEQUENTIAL', # accepts ["SEQUENTIAL", "PARALLEL"]
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1
    #     },
    #     retain_stacks: false, # required
    #     operation_id: 'OperationId',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStackInstancesOutput
    #   resp.data.operation_id #=> String
    #
    def delete_stack_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStackInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStackInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStackInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::OperationIdAlreadyExistsException, Errors::OperationInProgressException, Errors::StackSetNotFoundException, Errors::StaleRequestException]),
        data_parser: Parsers::DeleteStackInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStackInstances,
        stubs: @stubs,
        params_class: Params::DeleteStackInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stack_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a stack set. Before you can delete a stack set, all its member stack instances
    #          must be deleted. For more information about how to complete this, see <a>DeleteStackInstances</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteStackSetInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you're deleting. You can obtain this value
    #            by running <a>ListStackSets</a>.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DeleteStackSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_stack_set(
    #     stack_set_name: 'StackSetName', # required
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteStackSetOutput
    #
    def delete_stack_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteStackSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteStackSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteStackSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationInProgressException, Errors::StackSetNotEmptyException]),
        data_parser: Parsers::DeleteStackSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteStackSet,
        stubs: @stubs,
        params_class: Params::DeleteStackSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_stack_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Marks an extension or extension version as <code>DEPRECATED</code> in the CloudFormation registry, removing it from active use. Deprecated extensions or
    #          extension versions cannot be used in CloudFormation operations.</p>
    #          <p>To deregister an entire extension, you must individually deregister all active versions
    #          of that extension. If an extension has only a single active version, deregistering that
    #          version results in the extension itself being deregistered and marked as deprecated in the
    #          registry.</p>
    #          <p>You can't deregister the default version of an extension if there are other active
    #          version of that extension. If you do deregister the default version of an extension, the
    #          extension type itself is deregistered as well and marked as deprecated.</p>
    #          <p>To view the deprecation status of an extension or extension version, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterTypeInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it is
    #            registered.</p>
    #
    # @return [Types::DeregisterTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_type(
    #     arn: 'Arn',
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName',
    #     version_id: 'VersionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterTypeOutput
    #
    def deregister_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::DeregisterType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterType,
        stubs: @stubs,
        params_class: Params::DeregisterTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves your account's CloudFormation limits, such as the maximum number of stacks
    #          that you can create in your account. For more information about account limits, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cloudformation-limits.html">CloudFormation Quotas</a> in the
    #          <i>CloudFormation User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountLimitsInput}.
    #
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of limits that you want to retrieve.</p>
    #
    # @return [Types::DescribeAccountLimitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_limits(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountLimitsOutput
    #   resp.data.account_limits #=> Array<AccountLimit>
    #   resp.data.account_limits[0] #=> Types::AccountLimit
    #   resp.data.account_limits[0].name #=> String
    #   resp.data.account_limits[0].value #=> Integer
    #   resp.data.next_token #=> String
    #
    def describe_account_limits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountLimitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountLimitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountLimits
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
        data_parser: Parsers::DescribeAccountLimits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountLimits,
        stubs: @stubs,
        params_class: Params::DescribeAccountLimitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_limits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the inputs for the change set and a list of changes that CloudFormation will
    #          make if you execute the change set. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks-changesets.html">Updating Stacks Using Change Sets</a> in the CloudFormation User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChangeSetInput}.
    #
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to
    #            describe.</p>
    #
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set, specify the stack name or ID (ARN) of the
    #            change set you want to describe.</p>
    #
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>DescribeChangeSet</a> response output) that
    #            identifies the next page of information that you want to retrieve.</p>
    #
    # @return [Types::DescribeChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set(
    #     change_set_name: 'ChangeSetName', # required
    #     stack_name: 'StackName',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChangeSetOutput
    #   resp.data.change_set_name #=> String
    #   resp.data.change_set_id #=> String
    #   resp.data.stack_id #=> String
    #   resp.data.stack_name #=> String
    #   resp.data.description #=> String
    #   resp.data.parameters #=> Array<Parameter>
    #   resp.data.parameters[0] #=> Types::Parameter
    #   resp.data.parameters[0].parameter_key #=> String
    #   resp.data.parameters[0].parameter_value #=> String
    #   resp.data.parameters[0].use_previous_value #=> Boolean
    #   resp.data.parameters[0].resolved_value #=> String
    #   resp.data.creation_time #=> Time
    #   resp.data.execution_status #=> String, one of ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"]
    #   resp.data.status #=> String, one of ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"]
    #   resp.data.status_reason #=> String
    #   resp.data.notification_ar_ns #=> Array<String>
    #   resp.data.notification_ar_ns[0] #=> String
    #   resp.data.rollback_configuration #=> Types::RollbackConfiguration
    #   resp.data.rollback_configuration.rollback_triggers #=> Array<RollbackTrigger>
    #   resp.data.rollback_configuration.rollback_triggers[0] #=> Types::RollbackTrigger
    #   resp.data.rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.data.rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.data.rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.data.capabilities #=> Array<String>
    #   resp.data.capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.changes #=> Array<Change>
    #   resp.data.changes[0] #=> Types::Change
    #   resp.data.changes[0].type #=> String, one of ["Resource"]
    #   resp.data.changes[0].hook_invocation_count #=> Integer
    #   resp.data.changes[0].resource_change #=> Types::ResourceChange
    #   resp.data.changes[0].resource_change.action #=> String, one of ["Add", "Modify", "Remove", "Import", "Dynamic"]
    #   resp.data.changes[0].resource_change.logical_resource_id #=> String
    #   resp.data.changes[0].resource_change.physical_resource_id #=> String
    #   resp.data.changes[0].resource_change.resource_type #=> String
    #   resp.data.changes[0].resource_change.replacement #=> String, one of ["True", "False", "Conditional"]
    #   resp.data.changes[0].resource_change.scope #=> Array<String>
    #   resp.data.changes[0].resource_change.scope[0] #=> String, one of ["Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"]
    #   resp.data.changes[0].resource_change.details #=> Array<ResourceChangeDetail>
    #   resp.data.changes[0].resource_change.details[0] #=> Types::ResourceChangeDetail
    #   resp.data.changes[0].resource_change.details[0].target #=> Types::ResourceTargetDefinition
    #   resp.data.changes[0].resource_change.details[0].target.attribute #=> String, one of ["Properties", "Metadata", "CreationPolicy", "UpdatePolicy", "DeletionPolicy", "Tags"]
    #   resp.data.changes[0].resource_change.details[0].target.name #=> String
    #   resp.data.changes[0].resource_change.details[0].target.requires_recreation #=> String, one of ["Never", "Conditionally", "Always"]
    #   resp.data.changes[0].resource_change.details[0].evaluation #=> String, one of ["Static", "Dynamic"]
    #   resp.data.changes[0].resource_change.details[0].change_source #=> String, one of ["ResourceReference", "ParameterReference", "ResourceAttribute", "DirectModification", "Automatic"]
    #   resp.data.changes[0].resource_change.details[0].causing_entity #=> String
    #   resp.data.changes[0].resource_change.change_set_id #=> String
    #   resp.data.changes[0].resource_change.module_info #=> Types::ModuleInfo
    #   resp.data.changes[0].resource_change.module_info.type_hierarchy #=> String
    #   resp.data.changes[0].resource_change.module_info.logical_id_hierarchy #=> String
    #   resp.data.next_token #=> String
    #   resp.data.include_nested_stacks #=> Boolean
    #   resp.data.parent_change_set_id #=> String
    #   resp.data.root_change_set_id #=> String
    #
    def describe_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ChangeSetNotFoundException]),
        data_parser: Parsers::DescribeChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChangeSet,
        stubs: @stubs,
        params_class: Params::DescribeChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns hook-related information for the change set and a list of changes that CloudFormation makes when you run the change set.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeChangeSetHooksInput}.
    #
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want to
    #            describe.</p>
    #
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set, specify the stack name or stack ID (ARN) of
    #            the change set you want to describe.</p>
    #
    # @option params [String] :next_token
    #   <p>A string, provided by the <code>DescribeChangeSetHooks</code> response output, that
    #            identifies the next page of information that you want to retrieve.</p>
    #
    # @option params [String] :logical_resource_id
    #   <p>If specified, lists only the hooks related to the specified
    #               <code>LogicalResourceId</code>.</p>
    #
    # @return [Types::DescribeChangeSetHooksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_change_set_hooks(
    #     change_set_name: 'ChangeSetName', # required
    #     stack_name: 'StackName',
    #     next_token: 'NextToken',
    #     logical_resource_id: 'LogicalResourceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeChangeSetHooksOutput
    #   resp.data.change_set_id #=> String
    #   resp.data.change_set_name #=> String
    #   resp.data.hooks #=> Array<ChangeSetHook>
    #   resp.data.hooks[0] #=> Types::ChangeSetHook
    #   resp.data.hooks[0].invocation_point #=> String, one of ["PRE_PROVISION"]
    #   resp.data.hooks[0].failure_mode #=> String, one of ["FAIL", "WARN"]
    #   resp.data.hooks[0].type_name #=> String
    #   resp.data.hooks[0].type_version_id #=> String
    #   resp.data.hooks[0].type_configuration_version_id #=> String
    #   resp.data.hooks[0].target_details #=> Types::ChangeSetHookTargetDetails
    #   resp.data.hooks[0].target_details.target_type #=> String, one of ["RESOURCE"]
    #   resp.data.hooks[0].target_details.resource_target_details #=> Types::ChangeSetHookResourceTargetDetails
    #   resp.data.hooks[0].target_details.resource_target_details.logical_resource_id #=> String
    #   resp.data.hooks[0].target_details.resource_target_details.resource_type #=> String
    #   resp.data.hooks[0].target_details.resource_target_details.resource_action #=> String, one of ["Add", "Modify", "Remove", "Import", "Dynamic"]
    #   resp.data.status #=> String, one of ["PLANNING", "PLANNED", "UNAVAILABLE"]
    #   resp.data.next_token #=> String
    #   resp.data.stack_id #=> String
    #   resp.data.stack_name #=> String
    #
    def describe_change_set_hooks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeChangeSetHooksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeChangeSetHooksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeChangeSetHooks
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ChangeSetNotFoundException]),
        data_parser: Parsers::DescribeChangeSetHooks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeChangeSetHooks,
        stubs: @stubs,
        params_class: Params::DescribeChangeSetHooksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_change_set_hooks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a CloudFormation extension publisher.</p>
    #          <p>If you don't supply a <code>PublisherId</code>, and you have registered as an extension
    #          publisher, <code>DescribePublisher</code> returns information about your own publisher
    #          account.</p>
    #          <p>For more information about registering as a publisher, see:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html">RegisterPublisher</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html">Publishing
    #                   extensions to make them available for public use</a> in the <i>CloudFormation CLI User Guide</i>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DescribePublisherInput}.
    #
    # @option params [String] :publisher_id
    #   <p>The ID of the extension publisher.</p>
    #            <p>If you don't supply a <code>PublisherId</code>, and you have registered as an extension
    #            publisher, <code>DescribePublisher</code> returns information about your own publisher
    #            account.</p>
    #
    # @return [Types::DescribePublisherOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_publisher(
    #     publisher_id: 'PublisherId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePublisherOutput
    #   resp.data.publisher_id #=> String
    #   resp.data.publisher_status #=> String, one of ["VERIFIED", "UNVERIFIED"]
    #   resp.data.identity_provider #=> String, one of ["AWS_Marketplace", "GitHub", "Bitbucket"]
    #   resp.data.publisher_profile #=> String
    #
    def describe_publisher(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePublisherInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePublisherInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePublisher
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::DescribePublisher
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePublisher,
        stubs: @stubs,
        params_class: Params::DescribePublisherOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_publisher
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a stack drift detection operation. A stack drift detection
    #          operation detects whether a stack's actual configuration differs, or has
    #             <i>drifted</i>, from it's expected configuration, as defined in the stack
    #          template and any values specified as template parameters. A stack is considered to have
    #          drifted if one or more of its resources have drifted. For more information about stack and
    #          resource drift, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
    #             Unregulated Configuration Changes to Stacks and Resources</a>.</p>
    #          <p>Use <a>DetectStackDrift</a> to initiate a stack drift detection operation.
    #             <code>DetectStackDrift</code> returns a <code>StackDriftDetectionId</code> you can use
    #          to monitor the progress of the operation using
    #             <code>DescribeStackDriftDetectionStatus</code>. Once the drift detection operation has
    #          completed, use <a>DescribeStackResourceDrifts</a> to return drift information
    #          about the stack and its resources.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackDriftDetectionStatusInput}.
    #
    # @option params [String] :stack_drift_detection_id
    #   <p>The ID of the drift detection results of this operation.</p>
    #            <p>CloudFormation generates new results, with a new drift detection ID, each time this operation is
    #            run. However, the number of drift results CloudFormation retains for any given stack, and for how
    #            long, may vary.</p>
    #
    # @return [Types::DescribeStackDriftDetectionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_drift_detection_status(
    #     stack_drift_detection_id: 'StackDriftDetectionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackDriftDetectionStatusOutput
    #   resp.data.stack_id #=> String
    #   resp.data.stack_drift_detection_id #=> String
    #   resp.data.stack_drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #   resp.data.detection_status #=> String, one of ["DETECTION_IN_PROGRESS", "DETECTION_FAILED", "DETECTION_COMPLETE"]
    #   resp.data.detection_status_reason #=> String
    #   resp.data.drifted_stack_resource_count #=> Integer
    #   resp.data.timestamp #=> Time
    #
    def describe_stack_drift_detection_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackDriftDetectionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackDriftDetectionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackDriftDetectionStatus
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
        data_parser: Parsers::DescribeStackDriftDetectionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackDriftDetectionStatus,
        stubs: @stubs,
        params_class: Params::DescribeStackDriftDetectionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_drift_detection_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns all stack related events for a specified stack in reverse chronological order.
    #          For more information about a stack's event history, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html">Stacks</a> in the
    #          CloudFormation User Guide.</p>
    #          <note>
    #             <p>You can list events for stacks that have failed to create or have been deleted by
    #             specifying the unique stack identifier (stack ID).</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackEventsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of events that you want to retrieve.</p>
    #
    # @return [Types::DescribeStackEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_events(
    #     stack_name: 'StackName',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackEventsOutput
    #   resp.data.stack_events #=> Array<StackEvent>
    #   resp.data.stack_events[0] #=> Types::StackEvent
    #   resp.data.stack_events[0].stack_id #=> String
    #   resp.data.stack_events[0].event_id #=> String
    #   resp.data.stack_events[0].stack_name #=> String
    #   resp.data.stack_events[0].logical_resource_id #=> String
    #   resp.data.stack_events[0].physical_resource_id #=> String
    #   resp.data.stack_events[0].resource_type #=> String
    #   resp.data.stack_events[0].timestamp #=> Time
    #   resp.data.stack_events[0].resource_status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #   resp.data.stack_events[0].resource_status_reason #=> String
    #   resp.data.stack_events[0].resource_properties #=> String
    #   resp.data.stack_events[0].client_request_token #=> String
    #   resp.data.stack_events[0].hook_type #=> String
    #   resp.data.stack_events[0].hook_status #=> String, one of ["HOOK_IN_PROGRESS", "HOOK_COMPLETE_SUCCEEDED", "HOOK_COMPLETE_FAILED", "HOOK_FAILED"]
    #   resp.data.stack_events[0].hook_status_reason #=> String
    #   resp.data.stack_events[0].hook_invocation_point #=> String, one of ["PRE_PROVISION"]
    #   resp.data.stack_events[0].hook_failure_mode #=> String, one of ["FAIL", "WARN"]
    #   resp.data.next_token #=> String
    #
    def describe_stack_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackEvents
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
        data_parser: Parsers::DescribeStackEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackEvents,
        stubs: @stubs,
        params_class: Params::DescribeStackEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the stack instance that's associated with the specified stack set, Amazon Web Services account, and Region.</p>
    #          <p>For a list of stack instances that are associated with a specific stack set, use <a>ListStackInstances</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackInstanceInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or the unique stack ID of the stack set that you want to get stack instance
    #            information for.</p>
    #
    # @option params [String] :stack_instance_account
    #   <p>The ID of an Amazon Web Services account that's associated with this stack
    #            instance.</p>
    #
    # @option params [String] :stack_instance_region
    #   <p>The name of a Region that's associated with this stack instance.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DescribeStackInstanceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_instance(
    #     stack_set_name: 'StackSetName', # required
    #     stack_instance_account: 'StackInstanceAccount', # required
    #     stack_instance_region: 'StackInstanceRegion', # required
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackInstanceOutput
    #   resp.data.stack_instance #=> Types::StackInstance
    #   resp.data.stack_instance.stack_set_id #=> String
    #   resp.data.stack_instance.region #=> String
    #   resp.data.stack_instance.account #=> String
    #   resp.data.stack_instance.stack_id #=> String
    #   resp.data.stack_instance.parameter_overrides #=> Array<Parameter>
    #   resp.data.stack_instance.parameter_overrides[0] #=> Types::Parameter
    #   resp.data.stack_instance.parameter_overrides[0].parameter_key #=> String
    #   resp.data.stack_instance.parameter_overrides[0].parameter_value #=> String
    #   resp.data.stack_instance.parameter_overrides[0].use_previous_value #=> Boolean
    #   resp.data.stack_instance.parameter_overrides[0].resolved_value #=> String
    #   resp.data.stack_instance.status #=> String, one of ["CURRENT", "OUTDATED", "INOPERABLE"]
    #   resp.data.stack_instance.stack_instance_status #=> Types::StackInstanceComprehensiveStatus
    #   resp.data.stack_instance.stack_instance_status.detailed_status #=> String, one of ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE"]
    #   resp.data.stack_instance.status_reason #=> String
    #   resp.data.stack_instance.organizational_unit_id #=> String
    #   resp.data.stack_instance.drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #   resp.data.stack_instance.last_drift_check_timestamp #=> Time
    #
    def describe_stack_instance(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackInstanceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackInstanceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackInstance
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::StackInstanceNotFoundException, Errors::StackSetNotFoundException]),
        data_parser: Parsers::DescribeStackInstance
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackInstance,
        stubs: @stubs,
        params_class: Params::DescribeStackInstanceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_instance
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a description of the specified resource in the specified stack.</p>
    #          <p>For deleted stacks, DescribeStackResource returns resource information for up to 90 days
    #          after the stack has been deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackResourceInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    # @option params [String] :logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    #            <p>Default: There is no default value.</p>
    #
    # @return [Types::DescribeStackResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource(
    #     stack_name: 'StackName', # required
    #     logical_resource_id: 'LogicalResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackResourceOutput
    #   resp.data.stack_resource_detail #=> Types::StackResourceDetail
    #   resp.data.stack_resource_detail.stack_name #=> String
    #   resp.data.stack_resource_detail.stack_id #=> String
    #   resp.data.stack_resource_detail.logical_resource_id #=> String
    #   resp.data.stack_resource_detail.physical_resource_id #=> String
    #   resp.data.stack_resource_detail.resource_type #=> String
    #   resp.data.stack_resource_detail.last_updated_timestamp #=> Time
    #   resp.data.stack_resource_detail.resource_status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #   resp.data.stack_resource_detail.resource_status_reason #=> String
    #   resp.data.stack_resource_detail.description #=> String
    #   resp.data.stack_resource_detail.metadata #=> String
    #   resp.data.stack_resource_detail.drift_information #=> Types::StackResourceDriftInformation
    #   resp.data.stack_resource_detail.drift_information.stack_resource_drift_status #=> String, one of ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #   resp.data.stack_resource_detail.drift_information.last_check_timestamp #=> Time
    #   resp.data.stack_resource_detail.module_info #=> Types::ModuleInfo
    #   resp.data.stack_resource_detail.module_info.type_hierarchy #=> String
    #   resp.data.stack_resource_detail.module_info.logical_id_hierarchy #=> String
    #
    def describe_stack_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackResource
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
        data_parser: Parsers::DescribeStackResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackResource,
        stubs: @stubs,
        params_class: Params::DescribeStackResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns drift information for the resources that have been checked for drift in the
    #          specified stack. This includes actual and expected configuration values for resources where
    #          CloudFormation detects configuration drift.</p>
    #          <p>For a given stack, there will be one <code>StackResourceDrift</code> for each stack
    #          resource that has been checked for drift. Resources that haven't yet been checked for drift
    #          aren't included. Resources that don't currently support drift detection aren't checked, and
    #          so not included. For a list of resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p>
    #          <p>Use <a>DetectStackResourceDrift</a> to detect drift on individual resources,
    #          or <a>DetectStackDrift</a> to detect drift on all supported resources for a
    #          given stack.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackResourceDriftsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack for which you want drift information.</p>
    #
    # @option params [Array<String>] :stack_resource_drift_status_filters
    #   <p>The resource drift status values to use as filters for the resource drift results
    #            returned.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>DELETED</code>: The resource differs from its expected template
    #                  configuration in that the resource has been deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MODIFIED</code>: One or more resource properties differ from their expected
    #                  template values.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IN_SYNC</code>: The resource's actual configuration matches its expected
    #                  template configuration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_CHECKED</code>: CloudFormation doesn't currently return this value.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stack resource drift results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @return [Types::DescribeStackResourceDriftsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resource_drifts(
    #     stack_name: 'StackName', # required
    #     stack_resource_drift_status_filters: [
    #       'IN_SYNC' # accepts ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackResourceDriftsOutput
    #   resp.data.stack_resource_drifts #=> Array<StackResourceDrift>
    #   resp.data.stack_resource_drifts[0] #=> Types::StackResourceDrift
    #   resp.data.stack_resource_drifts[0].stack_id #=> String
    #   resp.data.stack_resource_drifts[0].logical_resource_id #=> String
    #   resp.data.stack_resource_drifts[0].physical_resource_id #=> String
    #   resp.data.stack_resource_drifts[0].physical_resource_id_context #=> Array<PhysicalResourceIdContextKeyValuePair>
    #   resp.data.stack_resource_drifts[0].physical_resource_id_context[0] #=> Types::PhysicalResourceIdContextKeyValuePair
    #   resp.data.stack_resource_drifts[0].physical_resource_id_context[0].key #=> String
    #   resp.data.stack_resource_drifts[0].physical_resource_id_context[0].value #=> String
    #   resp.data.stack_resource_drifts[0].resource_type #=> String
    #   resp.data.stack_resource_drifts[0].expected_properties #=> String
    #   resp.data.stack_resource_drifts[0].actual_properties #=> String
    #   resp.data.stack_resource_drifts[0].property_differences #=> Array<PropertyDifference>
    #   resp.data.stack_resource_drifts[0].property_differences[0] #=> Types::PropertyDifference
    #   resp.data.stack_resource_drifts[0].property_differences[0].property_path #=> String
    #   resp.data.stack_resource_drifts[0].property_differences[0].expected_value #=> String
    #   resp.data.stack_resource_drifts[0].property_differences[0].actual_value #=> String
    #   resp.data.stack_resource_drifts[0].property_differences[0].difference_type #=> String, one of ["ADD", "REMOVE", "NOT_EQUAL"]
    #   resp.data.stack_resource_drifts[0].stack_resource_drift_status #=> String, one of ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #   resp.data.stack_resource_drifts[0].timestamp #=> Time
    #   resp.data.stack_resource_drifts[0].module_info #=> Types::ModuleInfo
    #   resp.data.stack_resource_drifts[0].module_info.type_hierarchy #=> String
    #   resp.data.stack_resource_drifts[0].module_info.logical_id_hierarchy #=> String
    #   resp.data.next_token #=> String
    #
    def describe_stack_resource_drifts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackResourceDriftsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackResourceDriftsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackResourceDrifts
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
        data_parser: Parsers::DescribeStackResourceDrifts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackResourceDrifts,
        stubs: @stubs,
        params_class: Params::DescribeStackResourceDriftsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_resource_drifts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns Amazon Web Services resource descriptions for running and deleted stacks. If
    #             <code>StackName</code> is specified, all the associated resources that are part of the
    #          stack are returned. If <code>PhysicalResourceId</code> is specified, the associated
    #          resources of the stack that the resource belongs to are returned.</p>
    #          <note>
    #             <p>Only the first 100 resources will be returned. If your stack has more resources than
    #             this, you should use <code>ListStackResources</code> instead.</p>
    #          </note>
    #          <p>For deleted stacks, <code>DescribeStackResources</code> returns resource information for
    #          up to 90 days after the stack has been deleted.</p>
    #          <p>You must specify either <code>StackName</code> or <code>PhysicalResourceId</code>, but
    #          not both. In addition, you can specify <code>LogicalResourceId</code> to filter the
    #          returned result. For more information about resources, the <code>LogicalResourceId</code>
    #          and <code>PhysicalResourceId</code>, go to the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/">CloudFormation User
    #          Guide</a>.</p>
    #          <note>
    #             <p>A <code>ValidationError</code> is returned if you specify both <code>StackName</code>
    #             and <code>PhysicalResourceId</code> in the same request.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackResourcesInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #            <p>Required: Conditional. If you don't specify <code>StackName</code>, you must specify
    #               <code>PhysicalResourceId</code>.</p>
    #
    # @option params [String] :logical_resource_id
    #   <p>The logical name of the resource as specified in the template.</p>
    #            <p>Default: There is no default value.</p>
    #
    # @option params [String] :physical_resource_id
    #   <p>The name or unique identifier that corresponds to a physical instance ID of a resource
    #            supported by CloudFormation.</p>
    #            <p>For example, for an Amazon Elastic Compute Cloud (EC2) instance,
    #               <code>PhysicalResourceId</code> corresponds to the <code>InstanceId</code>. You can pass
    #            the EC2 <code>InstanceId</code> to <code>DescribeStackResources</code> to find which stack
    #            the instance belongs to and what other resources are part of the stack.</p>
    #            <p>Required: Conditional. If you don't specify <code>PhysicalResourceId</code>, you must
    #            specify <code>StackName</code>.</p>
    #            <p>Default: There is no default value.</p>
    #
    # @return [Types::DescribeStackResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_resources(
    #     stack_name: 'StackName',
    #     logical_resource_id: 'LogicalResourceId',
    #     physical_resource_id: 'PhysicalResourceId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackResourcesOutput
    #   resp.data.stack_resources #=> Array<StackResource>
    #   resp.data.stack_resources[0] #=> Types::StackResource
    #   resp.data.stack_resources[0].stack_name #=> String
    #   resp.data.stack_resources[0].stack_id #=> String
    #   resp.data.stack_resources[0].logical_resource_id #=> String
    #   resp.data.stack_resources[0].physical_resource_id #=> String
    #   resp.data.stack_resources[0].resource_type #=> String
    #   resp.data.stack_resources[0].timestamp #=> Time
    #   resp.data.stack_resources[0].resource_status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #   resp.data.stack_resources[0].resource_status_reason #=> String
    #   resp.data.stack_resources[0].description #=> String
    #   resp.data.stack_resources[0].drift_information #=> Types::StackResourceDriftInformation
    #   resp.data.stack_resources[0].drift_information.stack_resource_drift_status #=> String, one of ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #   resp.data.stack_resources[0].drift_information.last_check_timestamp #=> Time
    #   resp.data.stack_resources[0].module_info #=> Types::ModuleInfo
    #   resp.data.stack_resources[0].module_info.type_hierarchy #=> String
    #   resp.data.stack_resources[0].module_info.logical_id_hierarchy #=> String
    #
    def describe_stack_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackResources
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
        data_parser: Parsers::DescribeStackResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackResources,
        stubs: @stubs,
        params_class: Params::DescribeStackResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of the specified stack set.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackSetInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set whose description you want.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DescribeStackSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set(
    #     stack_set_name: 'StackSetName', # required
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackSetOutput
    #   resp.data.stack_set #=> Types::StackSet
    #   resp.data.stack_set.stack_set_name #=> String
    #   resp.data.stack_set.stack_set_id #=> String
    #   resp.data.stack_set.description #=> String
    #   resp.data.stack_set.status #=> String, one of ["ACTIVE", "DELETED"]
    #   resp.data.stack_set.template_body #=> String
    #   resp.data.stack_set.parameters #=> Array<Parameter>
    #   resp.data.stack_set.parameters[0] #=> Types::Parameter
    #   resp.data.stack_set.parameters[0].parameter_key #=> String
    #   resp.data.stack_set.parameters[0].parameter_value #=> String
    #   resp.data.stack_set.parameters[0].use_previous_value #=> Boolean
    #   resp.data.stack_set.parameters[0].resolved_value #=> String
    #   resp.data.stack_set.capabilities #=> Array<String>
    #   resp.data.stack_set.capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #   resp.data.stack_set.tags #=> Array<Tag>
    #   resp.data.stack_set.tags[0] #=> Types::Tag
    #   resp.data.stack_set.tags[0].key #=> String
    #   resp.data.stack_set.tags[0].value #=> String
    #   resp.data.stack_set.stack_set_arn #=> String
    #   resp.data.stack_set.administration_role_arn #=> String
    #   resp.data.stack_set.execution_role_name #=> String
    #   resp.data.stack_set.stack_set_drift_detection_details #=> Types::StackSetDriftDetectionDetails
    #   resp.data.stack_set.stack_set_drift_detection_details.drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "NOT_CHECKED"]
    #   resp.data.stack_set.stack_set_drift_detection_details.drift_detection_status #=> String, one of ["COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"]
    #   resp.data.stack_set.stack_set_drift_detection_details.last_drift_check_timestamp #=> Time
    #   resp.data.stack_set.stack_set_drift_detection_details.total_stack_instances_count #=> Integer
    #   resp.data.stack_set.stack_set_drift_detection_details.drifted_stack_instances_count #=> Integer
    #   resp.data.stack_set.stack_set_drift_detection_details.in_sync_stack_instances_count #=> Integer
    #   resp.data.stack_set.stack_set_drift_detection_details.in_progress_stack_instances_count #=> Integer
    #   resp.data.stack_set.stack_set_drift_detection_details.failed_stack_instances_count #=> Integer
    #   resp.data.stack_set.auto_deployment #=> Types::AutoDeployment
    #   resp.data.stack_set.auto_deployment.enabled #=> Boolean
    #   resp.data.stack_set.auto_deployment.retain_stacks_on_account_removal #=> Boolean
    #   resp.data.stack_set.permission_model #=> String, one of ["SERVICE_MANAGED", "SELF_MANAGED"]
    #   resp.data.stack_set.organizational_unit_ids #=> Array<String>
    #   resp.data.stack_set.organizational_unit_ids[0] #=> String
    #   resp.data.stack_set.managed_execution #=> Types::ManagedExecution
    #   resp.data.stack_set.managed_execution.active #=> Boolean
    #
    def describe_stack_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::StackSetNotFoundException]),
        data_parser: Parsers::DescribeStackSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackSet,
        stubs: @stubs,
        params_class: Params::DescribeStackSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description of the specified stack set operation.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeStackSetOperationInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or the unique stack ID of the stack set for the stack operation.</p>
    #
    # @option params [String] :operation_id
    #   <p>The unique ID of the stack set operation.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DescribeStackSetOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stack_set_operation(
    #     stack_set_name: 'StackSetName', # required
    #     operation_id: 'OperationId', # required
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStackSetOperationOutput
    #   resp.data.stack_set_operation #=> Types::StackSetOperation
    #   resp.data.stack_set_operation.operation_id #=> String
    #   resp.data.stack_set_operation.stack_set_id #=> String
    #   resp.data.stack_set_operation.action #=> String, one of ["CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"]
    #   resp.data.stack_set_operation.status #=> String, one of ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"]
    #   resp.data.stack_set_operation.operation_preferences #=> Types::StackSetOperationPreferences
    #   resp.data.stack_set_operation.operation_preferences.region_concurrency_type #=> String, one of ["SEQUENTIAL", "PARALLEL"]
    #   resp.data.stack_set_operation.operation_preferences.region_order #=> Array<String>
    #   resp.data.stack_set_operation.operation_preferences.region_order[0] #=> String
    #   resp.data.stack_set_operation.operation_preferences.failure_tolerance_count #=> Integer
    #   resp.data.stack_set_operation.operation_preferences.failure_tolerance_percentage #=> Integer
    #   resp.data.stack_set_operation.operation_preferences.max_concurrent_count #=> Integer
    #   resp.data.stack_set_operation.operation_preferences.max_concurrent_percentage #=> Integer
    #   resp.data.stack_set_operation.retain_stacks #=> Boolean
    #   resp.data.stack_set_operation.administration_role_arn #=> String
    #   resp.data.stack_set_operation.execution_role_name #=> String
    #   resp.data.stack_set_operation.creation_timestamp #=> Time
    #   resp.data.stack_set_operation.end_timestamp #=> Time
    #   resp.data.stack_set_operation.deployment_targets #=> Types::DeploymentTargets
    #   resp.data.stack_set_operation.deployment_targets.accounts #=> Array<String>
    #   resp.data.stack_set_operation.deployment_targets.accounts[0] #=> String
    #   resp.data.stack_set_operation.deployment_targets.accounts_url #=> String
    #   resp.data.stack_set_operation.deployment_targets.organizational_unit_ids #=> Array<String>
    #   resp.data.stack_set_operation.deployment_targets.organizational_unit_ids[0] #=> String
    #   resp.data.stack_set_operation.stack_set_drift_detection_details #=> Types::StackSetDriftDetectionDetails
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "NOT_CHECKED"]
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.drift_detection_status #=> String, one of ["COMPLETED", "FAILED", "PARTIAL_SUCCESS", "IN_PROGRESS", "STOPPED"]
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.last_drift_check_timestamp #=> Time
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.total_stack_instances_count #=> Integer
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.drifted_stack_instances_count #=> Integer
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.in_sync_stack_instances_count #=> Integer
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.in_progress_stack_instances_count #=> Integer
    #   resp.data.stack_set_operation.stack_set_drift_detection_details.failed_stack_instances_count #=> Integer
    #   resp.data.stack_set_operation.status_reason #=> String
    #
    def describe_stack_set_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStackSetOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStackSetOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStackSetOperation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotFoundException, Errors::StackSetNotFoundException]),
        data_parser: Parsers::DescribeStackSetOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStackSetOperation,
        stubs: @stubs,
        params_class: Params::DescribeStackSetOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stack_set_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the description for the specified stack; if no stack name was specified, then it
    #          returns the description for all the stacks created.</p>
    #          <note>
    #             <p>If the stack doesn't exist, an <code>ValidationError</code> is returned.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeStacksInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    #
    # @return [Types::DescribeStacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_stacks(
    #     stack_name: 'StackName',
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeStacksOutput
    #   resp.data.stacks #=> Array<Stack>
    #   resp.data.stacks[0] #=> Types::Stack
    #   resp.data.stacks[0].stack_id #=> String
    #   resp.data.stacks[0].stack_name #=> String
    #   resp.data.stacks[0].change_set_id #=> String
    #   resp.data.stacks[0].description #=> String
    #   resp.data.stacks[0].parameters #=> Array<Parameter>
    #   resp.data.stacks[0].parameters[0] #=> Types::Parameter
    #   resp.data.stacks[0].parameters[0].parameter_key #=> String
    #   resp.data.stacks[0].parameters[0].parameter_value #=> String
    #   resp.data.stacks[0].parameters[0].use_previous_value #=> Boolean
    #   resp.data.stacks[0].parameters[0].resolved_value #=> String
    #   resp.data.stacks[0].creation_time #=> Time
    #   resp.data.stacks[0].deletion_time #=> Time
    #   resp.data.stacks[0].last_updated_time #=> Time
    #   resp.data.stacks[0].rollback_configuration #=> Types::RollbackConfiguration
    #   resp.data.stacks[0].rollback_configuration.rollback_triggers #=> Array<RollbackTrigger>
    #   resp.data.stacks[0].rollback_configuration.rollback_triggers[0] #=> Types::RollbackTrigger
    #   resp.data.stacks[0].rollback_configuration.rollback_triggers[0].arn #=> String
    #   resp.data.stacks[0].rollback_configuration.rollback_triggers[0].type #=> String
    #   resp.data.stacks[0].rollback_configuration.monitoring_time_in_minutes #=> Integer
    #   resp.data.stacks[0].stack_status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"]
    #   resp.data.stacks[0].stack_status_reason #=> String
    #   resp.data.stacks[0].disable_rollback #=> Boolean
    #   resp.data.stacks[0].notification_ar_ns #=> Array<String>
    #   resp.data.stacks[0].notification_ar_ns[0] #=> String
    #   resp.data.stacks[0].timeout_in_minutes #=> Integer
    #   resp.data.stacks[0].capabilities #=> Array<String>
    #   resp.data.stacks[0].capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #   resp.data.stacks[0].outputs #=> Array<Output>
    #   resp.data.stacks[0].outputs[0] #=> Types::Output
    #   resp.data.stacks[0].outputs[0].output_key #=> String
    #   resp.data.stacks[0].outputs[0].output_value #=> String
    #   resp.data.stacks[0].outputs[0].description #=> String
    #   resp.data.stacks[0].outputs[0].export_name #=> String
    #   resp.data.stacks[0].role_arn #=> String
    #   resp.data.stacks[0].tags #=> Array<Tag>
    #   resp.data.stacks[0].tags[0] #=> Types::Tag
    #   resp.data.stacks[0].tags[0].key #=> String
    #   resp.data.stacks[0].tags[0].value #=> String
    #   resp.data.stacks[0].enable_termination_protection #=> Boolean
    #   resp.data.stacks[0].parent_id #=> String
    #   resp.data.stacks[0].root_id #=> String
    #   resp.data.stacks[0].drift_information #=> Types::StackDriftInformation
    #   resp.data.stacks[0].drift_information.stack_drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #   resp.data.stacks[0].drift_information.last_check_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def describe_stacks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeStacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeStacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeStacks
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
        data_parser: Parsers::DescribeStacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeStacks,
        stubs: @stubs,
        params_class: Params::DescribeStacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_stacks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed information about an extension that has been registered.</p>
    #          <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information
    #          about that specific extension version. Otherwise, it returns information about the default
    #          extension version.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTypeInput}.
    #
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it is
    #            registered.</p>
    #            <p>If you specify a <code>VersionId</code>, <code>DescribeType</code> returns information
    #            about that specific extension version. Otherwise, it returns information about the default
    #            extension version.</p>
    #
    # @option params [String] :publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions provided by Amazon Web Services are not assigned a publisher ID.</p>
    #
    # @option params [String] :public_version_number
    #   <p>The version number of a public third-party extension.</p>
    #
    # @return [Types::DescribeTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_type(
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName',
    #     arn: 'Arn',
    #     version_id: 'VersionId',
    #     publisher_id: 'PublisherId',
    #     public_version_number: 'PublicVersionNumber'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTypeOutput
    #   resp.data.arn #=> String
    #   resp.data.type #=> String, one of ["RESOURCE", "MODULE", "HOOK"]
    #   resp.data.type_name #=> String
    #   resp.data.default_version_id #=> String
    #   resp.data.is_default_version #=> Boolean
    #   resp.data.type_tests_status #=> String, one of ["PASSED", "FAILED", "IN_PROGRESS", "NOT_TESTED"]
    #   resp.data.type_tests_status_description #=> String
    #   resp.data.description #=> String
    #   resp.data.schema #=> String
    #   resp.data.provisioning_type #=> String, one of ["NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"]
    #   resp.data.deprecated_status #=> String, one of ["LIVE", "DEPRECATED"]
    #   resp.data.logging_config #=> Types::LoggingConfig
    #   resp.data.logging_config.log_role_arn #=> String
    #   resp.data.logging_config.log_group_name #=> String
    #   resp.data.required_activated_types #=> Array<RequiredActivatedType>
    #   resp.data.required_activated_types[0] #=> Types::RequiredActivatedType
    #   resp.data.required_activated_types[0].type_name_alias #=> String
    #   resp.data.required_activated_types[0].original_type_name #=> String
    #   resp.data.required_activated_types[0].publisher_id #=> String
    #   resp.data.required_activated_types[0].supported_major_versions #=> Array<Integer>
    #   resp.data.required_activated_types[0].supported_major_versions[0] #=> Integer
    #   resp.data.execution_role_arn #=> String
    #   resp.data.visibility #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.source_url #=> String
    #   resp.data.documentation_url #=> String
    #   resp.data.last_updated #=> Time
    #   resp.data.time_created #=> Time
    #   resp.data.configuration_schema #=> String
    #   resp.data.publisher_id #=> String
    #   resp.data.original_type_name #=> String
    #   resp.data.original_type_arn #=> String
    #   resp.data.public_version_number #=> String
    #   resp.data.latest_public_version #=> String
    #   resp.data.is_activated #=> Boolean
    #   resp.data.auto_update #=> Boolean
    #
    def describe_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::DescribeType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeType,
        stubs: @stubs,
        params_class: Params::DescribeTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about an extension's registration, including its current status and
    #          type and version identifiers.</p>
    #          <p>When you initiate a registration request using <code>
    #                <a>RegisterType</a>
    #             </code>, you can then use <code>
    #                <a>DescribeTypeRegistration</a>
    #             </code> to
    #          monitor the progress of that registration request.</p>
    #          <p>Once the registration request has completed, use <code>
    #                <a>DescribeType</a>
    #             </code> to return detailed information about an extension.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeTypeRegistrationInput}.
    #
    # @option params [String] :registration_token
    #   <p>The identifier for this registration request.</p>
    #            <p>This registration token is generated by CloudFormation when you initiate a
    #            registration request using <code>
    #                  <a>RegisterType</a>
    #               </code>.</p>
    #
    # @return [Types::DescribeTypeRegistrationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_type_registration(
    #     registration_token: 'RegistrationToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeTypeRegistrationOutput
    #   resp.data.progress_status #=> String, one of ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #   resp.data.description #=> String
    #   resp.data.type_arn #=> String
    #   resp.data.type_version_arn #=> String
    #
    def describe_type_registration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeTypeRegistrationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeTypeRegistrationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeTypeRegistration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::DescribeTypeRegistration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeTypeRegistration,
        stubs: @stubs,
        params_class: Params::DescribeTypeRegistrationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_type_registration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detects whether a stack's actual configuration differs, or has
    #             <i>drifted</i>, from it's expected configuration, as defined in the stack
    #          template and any values specified as template parameters. For each resource in the stack
    #          that supports drift detection, CloudFormation compares the actual configuration of the resource with
    #          its expected template configuration. Only resource properties explicitly defined in the
    #          stack template are checked for drift. A stack is considered to have drifted if one or more
    #          of its resources differ from their expected template configurations. For more information,
    #          see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
    #             Unregulated Configuration Changes to Stacks and Resources</a>.</p>
    #          <p>Use <code>DetectStackDrift</code> to detect drift on all supported resources for a given
    #          stack, or <a>DetectStackResourceDrift</a> to detect drift on individual
    #          resources.</p>
    #          <p>For a list of stack resources that currently support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p>
    #          <p>
    #             <code>DetectStackDrift</code> can take up to several minutes, depending on the number of
    #          resources contained within the stack. Use <a>DescribeStackDriftDetectionStatus</a> to monitor the progress of a detect stack drift operation. Once the drift detection
    #          operation has completed, use <a>DescribeStackResourceDrifts</a> to return drift
    #          information about the stack and its resources.</p>
    #          <p>When detecting drift on a stack, CloudFormation doesn't detect drift on any nested stacks
    #          belonging to that stack. Perform <code>DetectStackDrift</code> directly on the nested stack
    #          itself.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectStackDriftInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack for which you want to detect drift.</p>
    #
    # @option params [Array<String>] :logical_resource_ids
    #   <p>The logical names of any resources you want to use as filters.</p>
    #
    # @return [Types::DetectStackDriftOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_drift(
    #     stack_name: 'StackName', # required
    #     logical_resource_ids: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectStackDriftOutput
    #   resp.data.stack_drift_detection_id #=> String
    #
    def detect_stack_drift(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectStackDriftInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectStackDriftInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectStackDrift
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
        data_parser: Parsers::DetectStackDrift
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectStackDrift,
        stubs: @stubs,
        params_class: Params::DetectStackDriftOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_stack_drift
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about whether a resource's actual configuration differs, or has
    #             <i>drifted</i>, from it's expected configuration, as defined in the stack
    #          template and any values specified as template parameters. This information includes actual
    #          and expected property values for resources in which CloudFormation detects drift. Only resource
    #          properties explicitly defined in the stack template are checked for drift. For more
    #          information about stack and resource drift, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html">Detecting
    #             Unregulated Configuration Changes to Stacks and Resources</a>.</p>
    #          <p>Use <code>DetectStackResourceDrift</code> to detect drift on individual resources, or
    #             <a>DetectStackDrift</a> to detect drift on all resources in a given stack
    #          that support drift detection.</p>
    #          <p>Resources that don't currently support drift detection can't be checked. For a list of
    #          resources that support drift detection, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift-resource-list.html">Resources that Support Drift Detection</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectStackResourceDriftInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name of the stack to which the resource belongs.</p>
    #
    # @option params [String] :logical_resource_id
    #   <p>The logical name of the resource for which to return drift information.</p>
    #
    # @return [Types::DetectStackResourceDriftOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_resource_drift(
    #     stack_name: 'StackName', # required
    #     logical_resource_id: 'LogicalResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectStackResourceDriftOutput
    #   resp.data.stack_resource_drift #=> Types::StackResourceDrift
    #   resp.data.stack_resource_drift.stack_id #=> String
    #   resp.data.stack_resource_drift.logical_resource_id #=> String
    #   resp.data.stack_resource_drift.physical_resource_id #=> String
    #   resp.data.stack_resource_drift.physical_resource_id_context #=> Array<PhysicalResourceIdContextKeyValuePair>
    #   resp.data.stack_resource_drift.physical_resource_id_context[0] #=> Types::PhysicalResourceIdContextKeyValuePair
    #   resp.data.stack_resource_drift.physical_resource_id_context[0].key #=> String
    #   resp.data.stack_resource_drift.physical_resource_id_context[0].value #=> String
    #   resp.data.stack_resource_drift.resource_type #=> String
    #   resp.data.stack_resource_drift.expected_properties #=> String
    #   resp.data.stack_resource_drift.actual_properties #=> String
    #   resp.data.stack_resource_drift.property_differences #=> Array<PropertyDifference>
    #   resp.data.stack_resource_drift.property_differences[0] #=> Types::PropertyDifference
    #   resp.data.stack_resource_drift.property_differences[0].property_path #=> String
    #   resp.data.stack_resource_drift.property_differences[0].expected_value #=> String
    #   resp.data.stack_resource_drift.property_differences[0].actual_value #=> String
    #   resp.data.stack_resource_drift.property_differences[0].difference_type #=> String, one of ["ADD", "REMOVE", "NOT_EQUAL"]
    #   resp.data.stack_resource_drift.stack_resource_drift_status #=> String, one of ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #   resp.data.stack_resource_drift.timestamp #=> Time
    #   resp.data.stack_resource_drift.module_info #=> Types::ModuleInfo
    #   resp.data.stack_resource_drift.module_info.type_hierarchy #=> String
    #   resp.data.stack_resource_drift.module_info.logical_id_hierarchy #=> String
    #
    def detect_stack_resource_drift(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectStackResourceDriftInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectStackResourceDriftInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectStackResourceDrift
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
        data_parser: Parsers::DetectStackResourceDrift
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectStackResourceDrift,
        stubs: @stubs,
        params_class: Params::DetectStackResourceDriftOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_stack_resource_drift
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detect drift on a stack set. When CloudFormation performs drift detection on a
    #          stack set, it performs drift detection on the stack associated with each stack instance in
    #          the stack set. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">How CloudFormation performs drift detection on a stack set</a>.</p>
    #          <p>
    #             <code>DetectStackSetDrift</code> returns the <code>OperationId</code> of the stack set
    #          drift detection operation. Use this operation id with <code>
    #                <a>DescribeStackSetOperation</a>
    #             </code> to monitor the progress of the drift
    #          detection operation. The drift detection operation may take some time, depending on the
    #          number of stack instances included in the stack set, in addition to the number of resources
    #          included in each stack.</p>
    #          <p>Once the operation has completed, use the following actions to return drift
    #          information:</p>
    #          <ul>
    #             <li>
    #                <p>Use <code>
    #                      <a>DescribeStackSet</a>
    #                   </code> to return detailed information
    #                about the stack set, including detailed information about the last
    #                   <i>completed</i> drift operation performed on the stack set.
    #                (Information about drift operations that are in progress isn't included.)</p>
    #             </li>
    #             <li>
    #                <p>Use <code>
    #                      <a>ListStackInstances</a>
    #                   </code> to return a list of stack
    #                instances belonging to the stack set, including the drift status and last drift time
    #                checked of each instance.</p>
    #             </li>
    #             <li>
    #                <p>Use <code>
    #                      <a>DescribeStackInstance</a>
    #                   </code> to return detailed
    #                information about a specific stack instance, including its drift status and last
    #                drift time checked.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about performing a drift detection operation on a stack set, see
    #             <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-drift.html">Detecting unmanaged
    #             changes in stack sets</a>.</p>
    #          <p>You can only run a single drift detection operation on a given stack set at one
    #          time.</p>
    #          <p>To stop a drift detection stack set operation, use <code>
    #                <a>StopStackSetOperation</a>
    #             </code>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetectStackSetDriftInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name of the stack set on which to perform the drift detection operation.</p>
    #
    # @option params [StackSetOperationPreferences] :operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a stack set
    #            operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
    #
    # @option params [String] :operation_id
    #   <p>
    #               <i>The ID of the stack set operation.</i>
    #            </p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DetectStackSetDriftOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detect_stack_set_drift(
    #     stack_set_name: 'StackSetName', # required
    #     operation_preferences: {
    #       region_concurrency_type: 'SEQUENTIAL', # accepts ["SEQUENTIAL", "PARALLEL"]
    #       region_order: [
    #         'member'
    #       ],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1
    #     },
    #     operation_id: 'OperationId',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetectStackSetDriftOutput
    #   resp.data.operation_id #=> String
    #
    def detect_stack_set_drift(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetectStackSetDriftInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetectStackSetDriftInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetectStackSetDrift
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::OperationInProgressException, Errors::StackSetNotFoundException]),
        data_parser: Parsers::DetectStackSetDrift
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetectStackSetDrift,
        stubs: @stubs,
        params_class: Params::DetectStackSetDriftOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detect_stack_set_drift
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the estimated monthly cost of a template. The return value is an Amazon Web Services Simple Monthly Calculator URL with a query string that describes the
    #          resources required to run the template.</p>
    #
    # @param [Hash] params
    #   See {Types::EstimateTemplateCostInput}.
    #
    # @option params [String] :template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.)</p>
    #            <p>Conditional: You must pass <code>TemplateBody</code> or <code>TemplateURL</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    # @option params [String] :template_url
    #   <p>Location of file containing the template body. The URL must point to a template that's
    #            located in an Amazon S3 bucket or a Systems Manager document. For more information,
    #            go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters.</p>
    #
    # @return [Types::EstimateTemplateCostOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.estimate_template_cost(
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     parameters: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EstimateTemplateCostOutput
    #   resp.data.url #=> String
    #
    def estimate_template_cost(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EstimateTemplateCostInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EstimateTemplateCostInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EstimateTemplateCost
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
        data_parser: Parsers::EstimateTemplateCost
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EstimateTemplateCost,
        stubs: @stubs,
        params_class: Params::EstimateTemplateCostOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :estimate_template_cost
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a stack using the input information that was provided when the specified change
    #          set was created. After the call successfully completes, CloudFormation starts updating
    #          the stack. Use the <a>DescribeStacks</a> action to view the status of the
    #          update.</p>
    #          <p>When you execute a change set, CloudFormation deletes all other change sets
    #          associated with the stack because they aren't valid for the updated stack.</p>
    #          <p>If a stack policy is associated with the stack, CloudFormation enforces the policy
    #          during the update. You can't specify a temporary stack policy that overrides the current
    #          policy.</p>
    #          <p>To create a change set for the entire stack hierarchy, <code>IncludeNestedStacks</code>
    #          must have been set to <code>True</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::ExecuteChangeSetInput}.
    #
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of the change set that you want use to update the
    #            specified stack.</p>
    #
    # @option params [String] :stack_name
    #   <p>If you specified the name of a change set, specify the stack name or Amazon Resource
    #            Name (ARN) that's associated with the change set you want to execute.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>ExecuteChangeSet</code> request. Specify this token
    #            if you plan to retry requests so that CloudFormation knows that you're not attempting
    #            to execute a change set to update a stack with the same name. You might retry
    #               <code>ExecuteChangeSet</code> requests to ensure that CloudFormation successfully
    #            received them.</p>
    #
    # @option params [Boolean] :disable_rollback
    #   <p>Preserves the state of previously provisioned resources when an operation fails.</p>
    #            <p>Default: <code>True</code>
    #            </p>
    #
    # @return [Types::ExecuteChangeSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.execute_change_set(
    #     change_set_name: 'ChangeSetName', # required
    #     stack_name: 'StackName',
    #     client_request_token: 'ClientRequestToken',
    #     disable_rollback: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ExecuteChangeSetOutput
    #
    def execute_change_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ExecuteChangeSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ExecuteChangeSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ExecuteChangeSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ChangeSetNotFoundException, Errors::InsufficientCapabilitiesException, Errors::InvalidChangeSetStatusException, Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::ExecuteChangeSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ExecuteChangeSet,
        stubs: @stubs,
        params_class: Params::ExecuteChangeSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :execute_change_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the stack policy for a specified stack. If a stack doesn't have a policy, a null
    #          value is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetStackPolicyInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or unique stack ID that's associated with the stack whose policy you want to
    #            get.</p>
    #
    # @return [Types::GetStackPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_stack_policy(
    #     stack_name: 'StackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetStackPolicyOutput
    #   resp.data.stack_policy_body #=> String
    #
    def get_stack_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetStackPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetStackPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetStackPolicy
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
        data_parser: Parsers::GetStackPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetStackPolicy,
        stubs: @stubs,
        params_class: Params::GetStackPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_stack_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the template body for a specified stack. You can get the template for running or
    #          deleted stacks.</p>
    #          <p>For deleted stacks, <code>GetTemplate</code> returns the template for up to 90 days
    #          after the stack has been deleted.</p>
    #          <note>
    #             <p>If the template doesn't exist, a <code>ValidationError</code> is returned.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetTemplateInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that's associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    # @option params [String] :change_set_name
    #   <p>The name or Amazon Resource Name (ARN) of a change set for which CloudFormation
    #            returns the associated template. If you specify a name, you must also specify the
    #               <code>StackName</code>.</p>
    #
    # @option params [String] :template_stage
    #   <p>For templates that include transforms, the stage of the template that CloudFormation returns. To get the user-submitted template, specify
    #               <code>Original</code>. To get the template after CloudFormation has processed
    #            all transforms, specify <code>Processed</code>.</p>
    #            <p>If the template doesn't include transforms, <code>Original</code> and
    #               <code>Processed</code> return the same template. By default, CloudFormation
    #            specifies <code>Processed</code>.</p>
    #
    # @return [Types::GetTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template(
    #     stack_name: 'StackName',
    #     change_set_name: 'ChangeSetName',
    #     template_stage: 'Original' # accepts ["Original", "Processed"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemplateOutput
    #   resp.data.template_body #=> String
    #   resp.data.stages_available #=> Array<String>
    #   resp.data.stages_available[0] #=> String, one of ["Original", "Processed"]
    #
    def get_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemplate
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ChangeSetNotFoundException]),
        data_parser: Parsers::GetTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemplate,
        stubs: @stubs,
        params_class: Params::GetTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a new or existing template. The
    #             <code>GetTemplateSummary</code> action is useful for viewing parameter information, such
    #          as default parameter values and parameter types, before you create or update a stack or
    #          stack set.</p>
    #          <p>You can use the <code>GetTemplateSummary</code> action when you submit a template, or
    #          you can get template information for a stack set, or a running or deleted stack.</p>
    #          <p>For deleted stacks, <code>GetTemplateSummary</code> returns the template information for
    #          up to 90 days after the stack has been deleted. If the template doesn't exist, a
    #             <code>ValidationError</code> is returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetTemplateSummaryInput}.
    #
    # @option params [String] :template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. For more information about templates, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a> in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    # @option params [String] :template_url
    #   <p>Location of file containing the template body. The URL must point to a template (max
    #            size: 460,800 bytes) that's located in an Amazon S3 bucket or a Systems Manager
    #            document. For more information about templates, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name or the stack ID that's associated with the stack, which aren't always
    #            interchangeable. For running stacks, you can specify either the stack's name or its unique
    #            stack ID. For deleted stack, you must specify the unique stack ID.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set from which the stack was created.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>StackName</code>, <code>StackSetName</code>, <code>TemplateBody</code>, or
    #               <code>TemplateURL</code>.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetTemplateSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_template_summary(
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     stack_name: 'StackName',
    #     stack_set_name: 'StackSetName',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetTemplateSummaryOutput
    #   resp.data.parameters #=> Array<ParameterDeclaration>
    #   resp.data.parameters[0] #=> Types::ParameterDeclaration
    #   resp.data.parameters[0].parameter_key #=> String
    #   resp.data.parameters[0].default_value #=> String
    #   resp.data.parameters[0].parameter_type #=> String
    #   resp.data.parameters[0].no_echo #=> Boolean
    #   resp.data.parameters[0].description #=> String
    #   resp.data.parameters[0].parameter_constraints #=> Types::ParameterConstraints
    #   resp.data.parameters[0].parameter_constraints.allowed_values #=> Array<String>
    #   resp.data.parameters[0].parameter_constraints.allowed_values[0] #=> String
    #   resp.data.description #=> String
    #   resp.data.capabilities #=> Array<String>
    #   resp.data.capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #   resp.data.capabilities_reason #=> String
    #   resp.data.resource_types #=> Array<String>
    #   resp.data.resource_types[0] #=> String
    #   resp.data.version #=> String
    #   resp.data.metadata #=> String
    #   resp.data.declared_transforms #=> Array<String>
    #   resp.data.declared_transforms[0] #=> String
    #   resp.data.resource_identifier_summaries #=> Array<ResourceIdentifierSummary>
    #   resp.data.resource_identifier_summaries[0] #=> Types::ResourceIdentifierSummary
    #   resp.data.resource_identifier_summaries[0].resource_type #=> String
    #   resp.data.resource_identifier_summaries[0].logical_resource_ids #=> Array<String>
    #   resp.data.resource_identifier_summaries[0].logical_resource_ids[0] #=> String
    #   resp.data.resource_identifier_summaries[0].resource_identifiers #=> Array<String>
    #   resp.data.resource_identifier_summaries[0].resource_identifiers[0] #=> String
    #
    def get_template_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetTemplateSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetTemplateSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetTemplateSummary
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::StackSetNotFoundException]),
        data_parser: Parsers::GetTemplateSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetTemplateSummary,
        stubs: @stubs,
        params_class: Params::GetTemplateSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_template_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Import existing stacks into a new stack sets. Use the stack import operation to import
    #          up to 10 stacks into a new stack set in the same account as the source stack or in a
    #          different administrator account and Region, by specifying the stack ID of the stack you
    #          intend to import.</p>
    #          <note>
    #             <p>
    #                <code>ImportStacksToStackSet</code> is only supported by self-managed
    #             permissions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ImportStacksToStackSetInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name of the stack set. The name must be unique in the Region where you create your
    #            stack set.</p>
    #
    # @option params [Array<String>] :stack_ids
    #   <p>The IDs of the stacks you are importing into a stack set. You import up to 10 stacks per
    #            stack set at a time.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    #
    # @option params [String] :stack_ids_url
    #   <p>The Amazon S3 URL which contains list of stack ids to be inputted.</p>
    #            <p>Specify either <code>StackIds</code> or <code>StackIdsUrl</code>.</p>
    #
    # @option params [Array<String>] :organizational_unit_ids
    #   <p>The list of OU ID's to which the stacks being imported has to be mapped as deployment
    #            target.</p>
    #
    # @option params [StackSetOperationPreferences] :operation_preferences
    #   <p>The user-specified preferences for how CloudFormation performs a stack set
    #            operation.</p>
    #            <p>For more information about maximum concurrent accounts and failure tolerance, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-concepts.html#stackset-ops-options">Stack set operation options</a>.</p>
    #
    # @option params [String] :operation_id
    #   <p>A unique, user defined, identifier for the stack set operation.</p>
    #
    # @option params [String] :call_as
    #   <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>For service managed stack sets, specify <code>DELEGATED_ADMIN</code>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ImportStacksToStackSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.import_stacks_to_stack_set(
    #     stack_set_name: 'StackSetName', # required
    #     stack_ids: [
    #       'member'
    #     ],
    #     stack_ids_url: 'StackIdsUrl',
    #     organizational_unit_ids: [
    #       'member'
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: 'SEQUENTIAL', # accepts ["SEQUENTIAL", "PARALLEL"]
    #       region_order: [
    #         'member'
    #       ],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1
    #     },
    #     operation_id: 'OperationId',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ImportStacksToStackSetOutput
    #   resp.data.operation_id #=> String
    #
    def import_stacks_to_stack_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ImportStacksToStackSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ImportStacksToStackSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ImportStacksToStackSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::LimitExceededException, Errors::OperationIdAlreadyExistsException, Errors::OperationInProgressException, Errors::StackNotFoundException, Errors::StackSetNotFoundException, Errors::StaleRequestException]),
        data_parser: Parsers::ImportStacksToStackSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ImportStacksToStackSet,
        stubs: @stubs,
        params_class: Params::ImportStacksToStackSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :import_stacks_to_stack_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the ID and status of each active change set for a stack. For example, CloudFormation lists change sets that are in the <code>CREATE_IN_PROGRESS</code> or
    #             <code>CREATE_PENDING</code> state.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChangeSetsInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the Amazon Resource Name (ARN) of the stack for which you want to list
    #            change sets.</p>
    #
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>ListChangeSets</a> response output) that
    #            identifies the next page of change sets that you want to retrieve.</p>
    #
    # @return [Types::ListChangeSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_change_sets(
    #     stack_name: 'StackName', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChangeSetsOutput
    #   resp.data.summaries #=> Array<ChangeSetSummary>
    #   resp.data.summaries[0] #=> Types::ChangeSetSummary
    #   resp.data.summaries[0].stack_id #=> String
    #   resp.data.summaries[0].stack_name #=> String
    #   resp.data.summaries[0].change_set_id #=> String
    #   resp.data.summaries[0].change_set_name #=> String
    #   resp.data.summaries[0].execution_status #=> String, one of ["UNAVAILABLE", "AVAILABLE", "EXECUTE_IN_PROGRESS", "EXECUTE_COMPLETE", "EXECUTE_FAILED", "OBSOLETE"]
    #   resp.data.summaries[0].status #=> String, one of ["CREATE_PENDING", "CREATE_IN_PROGRESS", "CREATE_COMPLETE", "DELETE_PENDING", "DELETE_IN_PROGRESS", "DELETE_COMPLETE", "DELETE_FAILED", "FAILED"]
    #   resp.data.summaries[0].status_reason #=> String
    #   resp.data.summaries[0].creation_time #=> Time
    #   resp.data.summaries[0].description #=> String
    #   resp.data.summaries[0].include_nested_stacks #=> Boolean
    #   resp.data.summaries[0].parent_change_set_id #=> String
    #   resp.data.summaries[0].root_change_set_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_change_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChangeSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChangeSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChangeSets
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
        data_parser: Parsers::ListChangeSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChangeSets,
        stubs: @stubs,
        params_class: Params::ListChangeSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_change_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all exported output values in the account and Region in which you call this
    #          action. Use this action to see the exported output values that you can import into other
    #          stacks. To import values, use the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html">
    #                <code>Fn::ImportValue</code>
    #             </a> function.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-exports.html">
    #             CloudFormation export stack output values</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListExportsInput}.
    #
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>ListExports</a> response output) that identifies
    #            the next page of exported output values that you asked to retrieve.</p>
    #
    # @return [Types::ListExportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_exports(
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListExportsOutput
    #   resp.data.exports #=> Array<Export>
    #   resp.data.exports[0] #=> Types::Export
    #   resp.data.exports[0].exporting_stack_id #=> String
    #   resp.data.exports[0].name #=> String
    #   resp.data.exports[0].value #=> String
    #   resp.data.next_token #=> String
    #
    def list_exports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListExportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListExportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListExports
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
        data_parser: Parsers::ListExports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListExports,
        stubs: @stubs,
        params_class: Params::ListExportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_exports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all stacks that are importing an exported output value. To modify or remove an
    #          exported output value, first use this action to see which stacks are using it. To see the
    #          exported output values in your account, see <a>ListExports</a>.</p>
    #          <p>For more information about importing an exported output value, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference-importvalue.html">
    #                <code>Fn::ImportValue</code>
    #             </a> function.</p>
    #
    # @param [Hash] params
    #   See {Types::ListImportsInput}.
    #
    # @option params [String] :export_name
    #   <p>The name of the exported output value. CloudFormation returns the stack names that
    #            are importing this value.</p>
    #
    # @option params [String] :next_token
    #   <p>A string (provided by the <a>ListImports</a> response output) that identifies
    #            the next page of stacks that are importing the specified exported output value.</p>
    #
    # @return [Types::ListImportsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_imports(
    #     export_name: 'ExportName', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListImportsOutput
    #   resp.data.imports #=> Array<String>
    #   resp.data.imports[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_imports(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListImportsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListImportsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListImports
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
        data_parser: Parsers::ListImports
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListImports,
        stubs: @stubs,
        params_class: Params::ListImportsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_imports
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about stack instances that are associated with the specified
    #          stack set. You can filter for stack instances that are associated with a specific Amazon Web Services account name or Region, or that have a specific status.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStackInstancesInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to list stack instances for.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous request didn't return all the remaining results, the response's
    #               <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #            results, call <code>ListStackInstances</code> again and assign that token to the request
    #            object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [Array<StackInstanceFilter>] :filters
    #   <p>The status that stack instances are filtered by.</p>
    #
    # @option params [String] :stack_instance_account
    #   <p>The name of the Amazon Web Services account that you want to list stack instances
    #            for.</p>
    #
    # @option params [String] :stack_instance_region
    #   <p>The name of the Region where you want to list stack instances.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListStackInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_instances(
    #     stack_set_name: 'StackSetName', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     filters: [
    #       {
    #         name: 'DETAILED_STATUS', # accepts ["DETAILED_STATUS"]
    #         values: 'Values'
    #       }
    #     ],
    #     stack_instance_account: 'StackInstanceAccount',
    #     stack_instance_region: 'StackInstanceRegion',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStackInstancesOutput
    #   resp.data.summaries #=> Array<StackInstanceSummary>
    #   resp.data.summaries[0] #=> Types::StackInstanceSummary
    #   resp.data.summaries[0].stack_set_id #=> String
    #   resp.data.summaries[0].region #=> String
    #   resp.data.summaries[0].account #=> String
    #   resp.data.summaries[0].stack_id #=> String
    #   resp.data.summaries[0].status #=> String, one of ["CURRENT", "OUTDATED", "INOPERABLE"]
    #   resp.data.summaries[0].status_reason #=> String
    #   resp.data.summaries[0].stack_instance_status #=> Types::StackInstanceComprehensiveStatus
    #   resp.data.summaries[0].stack_instance_status.detailed_status #=> String, one of ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED", "INOPERABLE"]
    #   resp.data.summaries[0].organizational_unit_id #=> String
    #   resp.data.summaries[0].drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #   resp.data.summaries[0].last_drift_check_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_stack_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStackInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStackInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStackInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::StackSetNotFoundException]),
        data_parser: Parsers::ListStackInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStackInstances,
        stubs: @stubs,
        params_class: Params::ListStackInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stack_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns descriptions of all resources of the specified stack.</p>
    #          <p>For deleted stacks, ListStackResources returns resource information for up to 90 days
    #          after the stack has been deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStackResourcesInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or the unique stack ID that is associated with the stack, which aren't always
    #            interchangeable:</p>
    #            <ul>
    #               <li>
    #                  <p>Running stacks: You can specify either the stack's name or its unique stack
    #                  ID.</p>
    #               </li>
    #               <li>
    #                  <p>Deleted stacks: You must specify the unique stack ID.</p>
    #               </li>
    #            </ul>
    #            <p>Default: There is no default value.</p>
    #
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stack resources that you want to
    #            retrieve.</p>
    #
    # @return [Types::ListStackResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_resources(
    #     stack_name: 'StackName', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStackResourcesOutput
    #   resp.data.stack_resource_summaries #=> Array<StackResourceSummary>
    #   resp.data.stack_resource_summaries[0] #=> Types::StackResourceSummary
    #   resp.data.stack_resource_summaries[0].logical_resource_id #=> String
    #   resp.data.stack_resource_summaries[0].physical_resource_id #=> String
    #   resp.data.stack_resource_summaries[0].resource_type #=> String
    #   resp.data.stack_resource_summaries[0].last_updated_timestamp #=> Time
    #   resp.data.stack_resource_summaries[0].resource_status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "DELETE_SKIPPED", "UPDATE_IN_PROGRESS", "UPDATE_FAILED", "UPDATE_COMPLETE", "IMPORT_FAILED", "IMPORT_COMPLETE", "IMPORT_IN_PROGRESS", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "UPDATE_ROLLBACK_FAILED", "ROLLBACK_IN_PROGRESS", "ROLLBACK_COMPLETE", "ROLLBACK_FAILED"]
    #   resp.data.stack_resource_summaries[0].resource_status_reason #=> String
    #   resp.data.stack_resource_summaries[0].drift_information #=> Types::StackResourceDriftInformationSummary
    #   resp.data.stack_resource_summaries[0].drift_information.stack_resource_drift_status #=> String, one of ["IN_SYNC", "MODIFIED", "DELETED", "NOT_CHECKED"]
    #   resp.data.stack_resource_summaries[0].drift_information.last_check_timestamp #=> Time
    #   resp.data.stack_resource_summaries[0].module_info #=> Types::ModuleInfo
    #   resp.data.stack_resource_summaries[0].module_info.type_hierarchy #=> String
    #   resp.data.stack_resource_summaries[0].module_info.logical_id_hierarchy #=> String
    #   resp.data.next_token #=> String
    #
    def list_stack_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStackResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStackResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStackResources
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
        data_parser: Parsers::ListStackResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStackResources,
        stubs: @stubs,
        params_class: Params::ListStackResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stack_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about the results of a stack set operation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStackSetOperationResultsInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to get operation results
    #            for.</p>
    #
    # @option params [String] :operation_id
    #   <p>The ID of the stack set operation.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous request didn't return all the remaining results, the response object's
    #               <code>NextToken</code> parameter value is set to a token. To retrieve the next set of
    #            results, call <code>ListStackSetOperationResults</code> again and assign that token to the
    #            request object's <code>NextToken</code> parameter. If there are no remaining results, the
    #            previous response object's <code>NextToken</code> parameter is set to
    #            <code>null</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListStackSetOperationResultsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operation_results(
    #     stack_set_name: 'StackSetName', # required
    #     operation_id: 'OperationId', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStackSetOperationResultsOutput
    #   resp.data.summaries #=> Array<StackSetOperationResultSummary>
    #   resp.data.summaries[0] #=> Types::StackSetOperationResultSummary
    #   resp.data.summaries[0].account #=> String
    #   resp.data.summaries[0].region #=> String
    #   resp.data.summaries[0].status #=> String, one of ["PENDING", "RUNNING", "SUCCEEDED", "FAILED", "CANCELLED"]
    #   resp.data.summaries[0].status_reason #=> String
    #   resp.data.summaries[0].account_gate_result #=> Types::AccountGateResult
    #   resp.data.summaries[0].account_gate_result.status #=> String, one of ["SUCCEEDED", "FAILED", "SKIPPED"]
    #   resp.data.summaries[0].account_gate_result.status_reason #=> String
    #   resp.data.summaries[0].organizational_unit_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_stack_set_operation_results(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStackSetOperationResultsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStackSetOperationResultsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStackSetOperationResults
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotFoundException, Errors::StackSetNotFoundException]),
        data_parser: Parsers::ListStackSetOperationResults
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStackSetOperationResults,
        stubs: @stubs,
        params_class: Params::ListStackSetOperationResultsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stack_set_operation_results
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about operations performed on a stack set.</p>
    #
    # @param [Hash] params
    #   See {Types::ListStackSetOperationsInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to get operation summaries
    #            for.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the
    #            response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call <code>ListStackSetOperations</code> again and assign that token
    #            to the request object's <code>NextToken</code> parameter. If there are no remaining
    #            results, the previous response object's <code>NextToken</code> parameter is set to
    #               <code>null</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListStackSetOperationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_set_operations(
    #     stack_set_name: 'StackSetName', # required
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStackSetOperationsOutput
    #   resp.data.summaries #=> Array<StackSetOperationSummary>
    #   resp.data.summaries[0] #=> Types::StackSetOperationSummary
    #   resp.data.summaries[0].operation_id #=> String
    #   resp.data.summaries[0].action #=> String, one of ["CREATE", "UPDATE", "DELETE", "DETECT_DRIFT"]
    #   resp.data.summaries[0].status #=> String, one of ["RUNNING", "SUCCEEDED", "FAILED", "STOPPING", "STOPPED", "QUEUED"]
    #   resp.data.summaries[0].creation_timestamp #=> Time
    #   resp.data.summaries[0].end_timestamp #=> Time
    #   resp.data.summaries[0].status_reason #=> String
    #   resp.data.next_token #=> String
    #
    def list_stack_set_operations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStackSetOperationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStackSetOperationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStackSetOperations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::StackSetNotFoundException]),
        data_parser: Parsers::ListStackSetOperations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStackSetOperations,
        stubs: @stubs,
        params_class: Params::ListStackSetOperationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stack_set_operations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about stack sets that are associated with the user.</p>
    #          <ul>
    #             <li>
    #                <p>[Self-managed permissions] If you set the <code>CallAs</code> parameter to
    #                   <code>SELF</code> while signed in to your Amazon Web Services account,
    #                   <code>ListStackSets</code> returns all self-managed stack sets in your Amazon Web Services account.</p>
    #             </li>
    #             <li>
    #                <p>[Service-managed permissions] If you set the <code>CallAs</code> parameter to
    #                   <code>SELF</code> while signed in to the organization's management account, <code>ListStackSets</code> returns all stack sets in the
    #                management account.</p>
    #             </li>
    #             <li>
    #                <p>[Service-managed permissions] If you set the <code>CallAs</code> parameter to
    #                   <code>DELEGATED_ADMIN</code> while signed in to your member account,
    #                   <code>ListStackSets</code> returns all stack sets with service-managed permissions
    #                in the management account.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::ListStackSetsInput}.
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #            object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
    #            of results, call <code>ListStackSets</code> again and assign that token to the request
    #            object's <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [String] :status
    #   <p>The status of the stack sets that you want to get summary information about.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the management account or as a delegated administrator in a
    #            member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::ListStackSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stack_sets(
    #     next_token: 'NextToken',
    #     max_results: 1,
    #     status: 'ACTIVE', # accepts ["ACTIVE", "DELETED"]
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStackSetsOutput
    #   resp.data.summaries #=> Array<StackSetSummary>
    #   resp.data.summaries[0] #=> Types::StackSetSummary
    #   resp.data.summaries[0].stack_set_name #=> String
    #   resp.data.summaries[0].stack_set_id #=> String
    #   resp.data.summaries[0].description #=> String
    #   resp.data.summaries[0].status #=> String, one of ["ACTIVE", "DELETED"]
    #   resp.data.summaries[0].auto_deployment #=> Types::AutoDeployment
    #   resp.data.summaries[0].auto_deployment.enabled #=> Boolean
    #   resp.data.summaries[0].auto_deployment.retain_stacks_on_account_removal #=> Boolean
    #   resp.data.summaries[0].permission_model #=> String, one of ["SERVICE_MANAGED", "SELF_MANAGED"]
    #   resp.data.summaries[0].drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #   resp.data.summaries[0].last_drift_check_timestamp #=> Time
    #   resp.data.summaries[0].managed_execution #=> Types::ManagedExecution
    #   resp.data.summaries[0].managed_execution.active #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_stack_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStackSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStackSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStackSets
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
        data_parser: Parsers::ListStackSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStackSets,
        stubs: @stubs,
        params_class: Params::ListStackSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stack_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the summary information for stacks whose status matches the specified
    #          StackStatusFilter. Summary information for stacks that have been deleted is kept for 90
    #          days after the stack is deleted. If no StackStatusFilter is specified, summary information
    #          for all stacks is returned (including existing stacks and stacks that have been
    #          deleted).</p>
    #
    # @param [Hash] params
    #   See {Types::ListStacksInput}.
    #
    # @option params [String] :next_token
    #   <p>A string that identifies the next page of stacks that you want to retrieve.</p>
    #
    # @option params [Array<String>] :stack_status_filter
    #   <p>Stack status to use as a filter. Specify one or more stack status codes to list only
    #            stacks with the specified status codes. For a complete list of stack status codes, see the
    #               <code>StackStatus</code> parameter of the <a>Stack</a> data type.</p>
    #
    # @return [Types::ListStacksOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_stacks(
    #     next_token: 'NextToken',
    #     stack_status_filter: [
    #       'CREATE_IN_PROGRESS' # accepts ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListStacksOutput
    #   resp.data.stack_summaries #=> Array<StackSummary>
    #   resp.data.stack_summaries[0] #=> Types::StackSummary
    #   resp.data.stack_summaries[0].stack_id #=> String
    #   resp.data.stack_summaries[0].stack_name #=> String
    #   resp.data.stack_summaries[0].template_description #=> String
    #   resp.data.stack_summaries[0].creation_time #=> Time
    #   resp.data.stack_summaries[0].last_updated_time #=> Time
    #   resp.data.stack_summaries[0].deletion_time #=> Time
    #   resp.data.stack_summaries[0].stack_status #=> String, one of ["CREATE_IN_PROGRESS", "CREATE_FAILED", "CREATE_COMPLETE", "ROLLBACK_IN_PROGRESS", "ROLLBACK_FAILED", "ROLLBACK_COMPLETE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETE_COMPLETE", "UPDATE_IN_PROGRESS", "UPDATE_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_COMPLETE", "UPDATE_FAILED", "UPDATE_ROLLBACK_IN_PROGRESS", "UPDATE_ROLLBACK_FAILED", "UPDATE_ROLLBACK_COMPLETE_CLEANUP_IN_PROGRESS", "UPDATE_ROLLBACK_COMPLETE", "REVIEW_IN_PROGRESS", "IMPORT_IN_PROGRESS", "IMPORT_COMPLETE", "IMPORT_ROLLBACK_IN_PROGRESS", "IMPORT_ROLLBACK_FAILED", "IMPORT_ROLLBACK_COMPLETE"]
    #   resp.data.stack_summaries[0].stack_status_reason #=> String
    #   resp.data.stack_summaries[0].parent_id #=> String
    #   resp.data.stack_summaries[0].root_id #=> String
    #   resp.data.stack_summaries[0].drift_information #=> Types::StackDriftInformationSummary
    #   resp.data.stack_summaries[0].drift_information.stack_drift_status #=> String, one of ["DRIFTED", "IN_SYNC", "UNKNOWN", "NOT_CHECKED"]
    #   resp.data.stack_summaries[0].drift_information.last_check_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_stacks(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListStacksInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListStacksInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListStacks
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
        data_parser: Parsers::ListStacks
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListStacks,
        stubs: @stubs,
        params_class: Params::ListStacksOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_stacks
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of registration tokens for the specified extension(s).</p>
    #
    # @param [Hash] params
    #   See {Types::ListTypeRegistrationsInput}.
    #
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type_arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :registration_status_filter
    #   <p>The current status of the extension registration request.</p>
    #            <p>The default is <code>IN_PROGRESS</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #            object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
    #            of results, call this action again and assign that token to the request object's
    #               <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @return [Types::ListTypeRegistrationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_type_registrations(
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName',
    #     type_arn: 'TypeArn',
    #     registration_status_filter: 'COMPLETE', # accepts ["COMPLETE", "IN_PROGRESS", "FAILED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTypeRegistrationsOutput
    #   resp.data.registration_token_list #=> Array<String>
    #   resp.data.registration_token_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_type_registrations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTypeRegistrationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTypeRegistrationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTypeRegistrations
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::ListTypeRegistrations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTypeRegistrations,
        stubs: @stubs,
        params_class: Params::ListTypeRegistrationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_type_registrations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about the versions of an extension.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTypeVersionsInput}.
    #
    # @option params [String] :type
    #   <p>The kind of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension for which you want version summary information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #            information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all of the remaining results, the
    #            response object's <code>NextToken</code> parameter value is set to a token. To retrieve the
    #            next set of results, call this action again and assign that token to the request object's
    #               <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @option params [String] :deprecated_status
    #   <p>The deprecation status of the extension versions that you want to get summary
    #            information about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension version is registered and can be used in CloudFormation operations, dependent on its provisioning behavior and visibility
    #                  scope.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension version has been deregistered and can no
    #                  longer be used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>LIVE</code>.</p>
    #
    # @option params [String] :publisher_id
    #   <p>The publisher ID of the extension publisher.</p>
    #            <p>Extensions published by Amazon aren't assigned a publisher ID.</p>
    #
    # @return [Types::ListTypeVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_type_versions(
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName',
    #     arn: 'Arn',
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     deprecated_status: 'LIVE', # accepts ["LIVE", "DEPRECATED"]
    #     publisher_id: 'PublisherId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTypeVersionsOutput
    #   resp.data.type_version_summaries #=> Array<TypeVersionSummary>
    #   resp.data.type_version_summaries[0] #=> Types::TypeVersionSummary
    #   resp.data.type_version_summaries[0].type #=> String, one of ["RESOURCE", "MODULE", "HOOK"]
    #   resp.data.type_version_summaries[0].type_name #=> String
    #   resp.data.type_version_summaries[0].version_id #=> String
    #   resp.data.type_version_summaries[0].is_default_version #=> Boolean
    #   resp.data.type_version_summaries[0].arn #=> String
    #   resp.data.type_version_summaries[0].time_created #=> Time
    #   resp.data.type_version_summaries[0].description #=> String
    #   resp.data.type_version_summaries[0].public_version_number #=> String
    #   resp.data.next_token #=> String
    #
    def list_type_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTypeVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTypeVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTypeVersions
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::ListTypeVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTypeVersions,
        stubs: @stubs,
        params_class: Params::ListTypeVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_type_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summary information about extension that have been registered with CloudFormation.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTypesInput}.
    #
    # @option params [String] :visibility
    #   <p>The scope at which the extensions are visible and usable in CloudFormation
    #            operations.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PRIVATE</code>: Extensions that are visible and usable within this account
    #                  and region. This includes:</p>
    #                  <ul>
    #                     <li>
    #                        <p>Private extensions you have registered in this account and region.</p>
    #                     </li>
    #                     <li>
    #                        <p>Public extensions that you have activated in this account and region.</p>
    #                     </li>
    #                  </ul>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PUBLIC</code>: Extensions that are publicly visible and available to be
    #                  activated within any Amazon Web Services account. This includes extensions from Amazon Web Services, in
    #                  addition to third-party publishers.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>PRIVATE</code>.</p>
    #
    # @option params [String] :provisioning_type
    #   <p>For resource types, the provisioning behavior of the resource type. CloudFormation determines the
    #            provisioning type during registration, based on the types of handlers in the schema handler
    #            package submitted.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>FULLY_MUTABLE</code>: The resource type includes an update handler to
    #                  process updates to the type during stack update operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IMMUTABLE</code>: The resource type doesn't include an update handler, so
    #                  the type can't be updated and must instead be replaced during stack update
    #                  operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NON_PROVISIONABLE</code>: The resource type doesn't include create, read,
    #                  and delete handlers, and therefore can't actually be provisioned.</p>
    #               </li>
    #            </ul>
    #            <p>The default is <code>FULLY_MUTABLE</code>.</p>
    #
    # @option params [String] :deprecated_status
    #   <p>The deprecation status of the extension that you want to get summary information
    #            about.</p>
    #            <p>Valid values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>LIVE</code>: The extension is registered for use in CloudFormation
    #                  operations.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DEPRECATED</code>: The extension has been deregistered and can no longer be
    #                  used in CloudFormation operations.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :type
    #   <p>The type of extension.</p>
    #
    # @option params [TypeFilters] :filters
    #   <p>Filter criteria to use in determining which extensions to return.</p>
    #            <p>Filters must be compatible with <code>Visibility</code> to return valid results. For
    #            example, specifying <code>AWS_TYPES</code> for <code>Category</code> and
    #               <code>PRIVATE</code> for <code>Visibility</code> returns an empty list of types, but
    #            specifying <code>PUBLIC</code> for <code>Visibility</code> returns the desired list.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to be returned with a single call. If the number of
    #            available results exceeds this maximum, the response includes a <code>NextToken</code>
    #            value that you can assign to the <code>NextToken</code> request parameter to get the next
    #            set of results.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous paginated request didn't return all the remaining results, the response
    #            object's <code>NextToken</code> parameter value is set to a token. To retrieve the next set
    #            of results, call this action again and assign that token to the request object's
    #               <code>NextToken</code> parameter. If there are no remaining results, the previous
    #            response object's <code>NextToken</code> parameter is set to <code>null</code>.</p>
    #
    # @return [Types::ListTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_types(
    #     visibility: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE"]
    #     provisioning_type: 'NON_PROVISIONABLE', # accepts ["NON_PROVISIONABLE", "IMMUTABLE", "FULLY_MUTABLE"]
    #     deprecated_status: 'LIVE', # accepts ["LIVE", "DEPRECATED"]
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     filters: {
    #       category: 'REGISTERED', # accepts ["REGISTERED", "ACTIVATED", "THIRD_PARTY", "AWS_TYPES"]
    #       publisher_id: 'PublisherId',
    #       type_name_prefix: 'TypeNamePrefix'
    #     },
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTypesOutput
    #   resp.data.type_summaries #=> Array<TypeSummary>
    #   resp.data.type_summaries[0] #=> Types::TypeSummary
    #   resp.data.type_summaries[0].type #=> String, one of ["RESOURCE", "MODULE", "HOOK"]
    #   resp.data.type_summaries[0].type_name #=> String
    #   resp.data.type_summaries[0].default_version_id #=> String
    #   resp.data.type_summaries[0].type_arn #=> String
    #   resp.data.type_summaries[0].last_updated #=> Time
    #   resp.data.type_summaries[0].description #=> String
    #   resp.data.type_summaries[0].publisher_id #=> String
    #   resp.data.type_summaries[0].original_type_name #=> String
    #   resp.data.type_summaries[0].public_version_number #=> String
    #   resp.data.type_summaries[0].latest_public_version #=> String
    #   resp.data.type_summaries[0].publisher_identity #=> String, one of ["AWS_Marketplace", "GitHub", "Bitbucket"]
    #   resp.data.type_summaries[0].publisher_name #=> String
    #   resp.data.type_summaries[0].is_activated #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTypes
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::ListTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTypes,
        stubs: @stubs,
        params_class: Params::ListTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Publishes the specified extension to the CloudFormation registry as a public
    #          extension in this region. Public extensions are available for use by all CloudFormation users. For more information about publishing extensions, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html">Publishing extensions to make them available for public use</a> in the
    #                <i>CloudFormation CLI User Guide</i>.</p>
    #          <p>To publish an extension, you must be registered as a publisher with CloudFormation. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterPublisher.html">RegisterPublisher</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishTypeInput}.
    #
    # @option params [String] :type
    #   <p>The type of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :public_version_number
    #   <p>The version number to assign to this version of the extension.</p>
    #            <p>Use the following format, and adhere to semantic versioning when assigning a version
    #            number to your extension:</p>
    #            <p>
    #               <code>MAJOR.MINOR.PATCH</code>
    #            </p>
    #            <p>For more information, see <a href="https://semver.org/">Semantic Versioning
    #               2.0.0</a>.</p>
    #            <p>If you don't specify a version number, CloudFormation increments the version
    #            number by one minor version release.</p>
    #            <p>You cannot specify a version number the first time you publish a type. CloudFormation
    #            automatically sets the first version number to be <code>1.0.0</code>.</p>
    #
    # @return [Types::PublishTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_type(
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     arn: 'Arn',
    #     type_name: 'TypeName',
    #     public_version_number: 'PublicVersionNumber'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishTypeOutput
    #   resp.data.public_type_arn #=> String
    #
    def publish_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::PublishType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishType,
        stubs: @stubs,
        params_class: Params::PublishTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Reports progress of a resource handler to CloudFormation.</p>
    #          <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>. Don't use this API in your code.</p>
    #
    # @param [Hash] params
    #   See {Types::RecordHandlerProgressInput}.
    #
    # @option params [String] :bearer_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @option params [String] :operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @option params [String] :current_operation_status
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @option params [String] :status_message
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @option params [String] :error_code
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @option params [String] :resource_model
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>Reserved for use by the <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/what-is-cloudformation-cli.html">CloudFormation CLI</a>.</p>
    #
    # @return [Types::RecordHandlerProgressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.record_handler_progress(
    #     bearer_token: 'BearerToken', # required
    #     operation_status: 'PENDING', # required - accepts ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED"]
    #     current_operation_status: 'PENDING', # accepts ["PENDING", "IN_PROGRESS", "SUCCESS", "FAILED"]
    #     status_message: 'StatusMessage',
    #     error_code: 'NotUpdatable', # accepts ["NotUpdatable", "InvalidRequest", "AccessDenied", "InvalidCredentials", "AlreadyExists", "NotFound", "ResourceConflict", "Throttling", "ServiceLimitExceeded", "NotStabilized", "GeneralServiceException", "ServiceInternalError", "NetworkFailure", "InternalFailure", "InvalidTypeConfiguration", "HandlerInternalFailure", "NonCompliant", "Unknown"]
    #     resource_model: 'ResourceModel',
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RecordHandlerProgressOutput
    #
    def record_handler_progress(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RecordHandlerProgressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RecordHandlerProgressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RecordHandlerProgress
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidStateTransitionException, Errors::OperationStatusCheckFailedException]),
        data_parser: Parsers::RecordHandlerProgress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RecordHandlerProgress,
        stubs: @stubs,
        params_class: Params::RecordHandlerProgressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :record_handler_progress
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers your account as a publisher of public extensions in the CloudFormation registry. Public extensions are available for use by all CloudFormation users.
    #          This publisher ID applies to your account in all Amazon Web Services Regions.</p>
    #          <p>For information about requirements for registering as a public extension publisher, see
    #             <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs">Registering your account to publish CloudFormation
    #             extensions</a> in the <i>CloudFormation CLI User
    #          Guide</i>.</p>
    #          <p></p>
    #
    # @param [Hash] params
    #   See {Types::RegisterPublisherInput}.
    #
    # @option params [Boolean] :accept_terms_and_conditions
    #   <p>Whether you accept the <a href="https://cloudformation-registry-documents.s3.amazonaws.com/Terms_and_Conditions_for_AWS_CloudFormation_Registry_Publishers.pdf">Terms and Conditions</a> for publishing extensions in the CloudFormation
    #            registry. You must accept the terms and conditions in order to register to publish public
    #            extensions to the CloudFormation registry.</p>
    #            <p>The default is <code>false</code>.</p>
    #
    # @option params [String] :connection_arn
    #   <p>If you are using a Bitbucket or GitHub account for identity verification, the Amazon
    #            Resource Name (ARN) for your connection to that account.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-prereqs">Registering your account to publish CloudFormation
    #               extensions</a> in the <i>CloudFormation CLI User
    #            Guide</i>.</p>
    #
    # @return [Types::RegisterPublisherOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_publisher(
    #     accept_terms_and_conditions: false,
    #     connection_arn: 'ConnectionArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterPublisherOutput
    #   resp.data.publisher_id #=> String
    #
    def register_publisher(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterPublisherInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterPublisherInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterPublisher
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::RegisterPublisher
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterPublisher,
        stubs: @stubs,
        params_class: Params::RegisterPublisherOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_publisher
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an extension with the CloudFormation service. Registering an
    #          extension makes it available for use in CloudFormation templates in your Amazon Web Services account, and includes:</p>
    #          <ul>
    #             <li>
    #                <p>Validating the extension schema.</p>
    #             </li>
    #             <li>
    #                <p>Determining which handlers, if any, have been specified for the extension.</p>
    #             </li>
    #             <li>
    #                <p>Making the extension available for use in your account.</p>
    #             </li>
    #          </ul>
    #          <p>For more information about how to develop extensions and ready them for registration,
    #          see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-types.html">Creating Resource
    #             Providers</a> in the <i>CloudFormation CLI User
    #          Guide</i>.</p>
    #          <p>You can have a maximum of 50 resource extension versions registered at a time. This
    #          maximum is per account and per region. Use <a href="AWSCloudFormation/latest/APIReference/API_DeregisterType.html">DeregisterType</a> to deregister specific extension versions if necessary.</p>
    #          <p>Once you have initiated a registration request using <code>
    #                <a>RegisterType</a>
    #             </code>, you can use <code>
    #                <a>DescribeTypeRegistration</a>
    #             </code> to
    #          monitor the progress of the registration request.</p>
    #          <p>Once you have registered a private extension in your account and region, use <a href="AWSCloudFormation/latest/APIReference/API_SetTypeConfiguration.html">SetTypeConfiguration</a> to specify configuration properties for the extension. For
    #          more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration">Configuring extensions at the account level</a> in the <i>CloudFormation User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterTypeInput}.
    #
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension being registered.</p>
    #            <p>We suggest that extension names adhere to the following patterns:</p>
    #            <ul>
    #               <li>
    #                  <p>For resource types,
    #                     <i>company_or_organization</i>::<i>service</i>::<i>type</i>.</p>
    #               </li>
    #               <li>
    #                  <p>For modules,
    #                     <i>company_or_organization</i>::<i>service</i>::<i>type</i>::MODULE.</p>
    #               </li>
    #               <li>
    #                  <p>For hooks, <i>MyCompany</i>::<i>Testing</i>::<i>MyTestHook</i>.</p>
    #               </li>
    #            </ul>
    #
    #            <note>
    #               <p>The following organization namespaces are reserved and can't be used in your
    #               extension names:</p>
    #               <ul>
    #                  <li>
    #                     <p>
    #                        <code>Alexa</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AMZN</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Amazon</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>AWS</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Custom</code>
    #                     </p>
    #                  </li>
    #                  <li>
    #                     <p>
    #                        <code>Dev</code>
    #                     </p>
    #                  </li>
    #               </ul>
    #            </note>
    #
    # @option params [String] :schema_handler_package
    #   <p>A URL to the S3 bucket containing the extension project package that contains the
    #            necessary files for the extension you want to register.</p>
    #            <p>For information about generating a schema handler package for the extension you want to
    #            register, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html">submit</a>
    #            in the <i>CloudFormation CLI User Guide</i>.</p>
    #            <note>
    #               <p>The user registering the extension must be able to access the package in the S3
    #               bucket. That's, the user needs to have <a href="https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html">GetObject</a> permissions for the
    #               schema handler package. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html">Actions, Resources, and Condition Keys
    #                  for Amazon S3</a> in the <i>Identity and Access Management User
    #                  Guide</i>.</p>
    #            </note>
    #
    # @option params [LoggingConfig] :logging_config
    #   <p>Specifies logging configuration information for an extension.</p>
    #
    # @option params [String] :execution_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role for CloudFormation to assume when invoking the extension.</p>
    #            <p>For CloudFormation to assume the specified execution role, the role must
    #            contain a trust relationship with the CloudFormation service principle
    #               (<code>resources.cloudformation.amazonaws.com</code>). For more information about adding
    #            trust relationships, see <a href="IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy">Modifying a role trust policy</a> in the <i>Identity and Access Management User
    #               Guide</i>.</p>
    #            <p>If your extension calls Amazon Web Services APIs in any of its handlers, you must create
    #            an <i>
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html">IAM execution role</a>
    #               </i> that includes the necessary
    #            permissions to call those Amazon Web Services APIs, and provision that execution role in
    #            your account. When CloudFormation needs to invoke the resource type handler,
    #               CloudFormation assumes this execution role to create a temporary session token,
    #            which it then passes to the resource type handler, thereby supplying your resource type
    #            with the appropriate credentials.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier that acts as an idempotency key for this registration request.
    #            Specifying a client request token prevents CloudFormation from generating more
    #            than one version of an extension from the same registration request, even if the request is
    #            submitted multiple times.</p>
    #
    # @return [Types::RegisterTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_type(
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName', # required
    #     schema_handler_package: 'SchemaHandlerPackage', # required
    #     logging_config: {
    #       log_role_arn: 'LogRoleArn', # required
    #       log_group_name: 'LogGroupName' # required
    #     },
    #     execution_role_arn: 'ExecutionRoleArn',
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterTypeOutput
    #   resp.data.registration_token #=> String
    #
    def register_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException]),
        data_parser: Parsers::RegisterType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterType,
        stubs: @stubs,
        params_class: Params::RegisterTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>When specifying <code>RollbackStack</code>, you preserve the state of previously
    #          provisioned resources when an operation fails. You can check the status of the stack
    #          through the <a>DescribeStacks</a> operation.</p>
    #          <p>Rolls back the specified stack to the last known stable state from
    #             <code>CREATE_FAILED</code> or <code>UPDATE_FAILED</code> stack statuses.</p>
    #          <p>This operation will delete a stack if it doesn't contain a last known stable state. A
    #          last known stable state includes any status in a <code>*_COMPLETE</code>. This includes the
    #          following stack statuses.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CREATE_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UPDATE_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>UPDATE_ROLLBACK_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IMPORT_COMPLETE</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>IMPORT_ROLLBACK_COMPLETE</code>
    #                </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::RollbackStackInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name that's associated with the stack.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management role that CloudFormation
    #            assumes to rollback the stack.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>RollbackStack</code> request.</p>
    #
    # @return [Types::RollbackStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.rollback_stack(
    #     stack_name: 'StackName', # required
    #     role_arn: 'RoleARN',
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RollbackStackOutput
    #   resp.data.stack_id #=> String
    #
    def rollback_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RollbackStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RollbackStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RollbackStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::RollbackStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RollbackStack,
        stubs: @stubs,
        params_class: Params::RollbackStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :rollback_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets a stack policy for a specified stack.</p>
    #
    # @param [Hash] params
    #   See {Types::SetStackPolicyInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or unique stack ID that you want to associate a policy with.</p>
    #
    # @option params [String] :stack_policy_body
    #   <p>Structure containing the stack policy body. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/protect-stack-resources.html"> Prevent updates
    #               to stack resources</a> in the CloudFormation User Guide. You can specify either the
    #               <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
    #            both.</p>
    #
    # @option params [String] :stack_policy_url
    #   <p>Location of a file containing the stack policy. The URL must point to a policy (maximum
    #            size: 16 KB) located in an Amazon S3 bucket in the same Amazon Web Services Region
    #            as the stack. You can specify either the <code>StackPolicyBody</code> or the
    #               <code>StackPolicyURL</code> parameter, but not both.</p>
    #
    # @return [Types::SetStackPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_stack_policy(
    #     stack_name: 'StackName', # required
    #     stack_policy_body: 'StackPolicyBody',
    #     stack_policy_url: 'StackPolicyURL'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetStackPolicyOutput
    #
    def set_stack_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetStackPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetStackPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetStackPolicy
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
        data_parser: Parsers::SetStackPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetStackPolicy,
        stubs: @stubs,
        params_class: Params::SetStackPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_stack_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specifies the configuration data for a registered CloudFormation extension, in
    #          the given account and region.</p>
    #          <p>To view the current configuration data for an extension, refer to the
    #             <code>ConfigurationSchema</code> element of <a href="AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a>.
    #          For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/registry-register.html#registry-set-configuration">Configuring extensions at the account level</a> in the
    #             <i>CloudFormation User Guide</i>.</p>
    #          <important>
    #             <p>It's strongly recommended that you use dynamic references to restrict sensitive
    #             configuration definitions, such as third-party credentials. For more details on dynamic
    #             references, see <a href="https://docs.aws.amazon.com/">Using dynamic references to specify
    #                template values</a> in the <i>CloudFormation User
    #             Guide</i>.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::SetTypeConfigurationInput}.
    #
    # @option params [String] :type_arn
    #   <p>The Amazon Resource Name (ARN) for the extension, in this account and region.</p>
    #            <p>For public extensions, this will be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_ActivateType.html">activate the type</a> in this account and region. For private extensions, this will
    #            be the ARN assigned when you <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_RegisterType.html">register the type</a> in this account and region.</p>
    #            <p>Do not include the extension versions suffix at the end of the ARN. You can set the
    #            configuration for an extension, but not for a specific extension version.</p>
    #
    # @option params [String] :configuration
    #   <p>The configuration data for the extension, in this account and region.</p>
    #            <p>The configuration data must be formatted as JSON, and validate against the schema
    #            returned in the <code>ConfigurationSchema</code> response element of <a href="AWSCloudFormation/latest/APIReference/API_DescribeType.html">API_DescribeType</a>. For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-model.html#resource-type-howto-configuration">Defining account-level configuration data for an extension</a> in the
    #                  <i>CloudFormation CLI User Guide</i>.</p>
    #
    # @option params [String] :configuration_alias
    #   <p>An alias by which to refer to this extension configuration data.</p>
    #            <p>Conditional: Specifying a configuration alias is required when setting a configuration
    #            for a resource type extension.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #               <code>TypeName</code>.</p>
    #
    # @option params [String] :type
    #   <p>The type of extension.</p>
    #            <p>Conditional: You must specify <code>ConfigurationArn</code>, or <code>Type</code> and
    #               <code>TypeName</code>.</p>
    #
    # @return [Types::SetTypeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_type_configuration(
    #     type_arn: 'TypeArn',
    #     configuration: 'Configuration', # required
    #     configuration_alias: 'ConfigurationAlias',
    #     type_name: 'TypeName',
    #     type: 'RESOURCE' # accepts ["RESOURCE", "MODULE", "HOOK"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTypeConfigurationOutput
    #   resp.data.configuration_arn #=> String
    #
    def set_type_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTypeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTypeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTypeConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::SetTypeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTypeConfiguration,
        stubs: @stubs,
        params_class: Params::SetTypeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_type_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Specify the default version of an extension. The default version of an extension will be
    #          used in CloudFormation operations.</p>
    #
    # @param [Hash] params
    #   See {Types::SetTypeDefaultVersionInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension for which you want version summary
    #            information.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type
    #   <p>The kind of extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension.</p>
    #            <p>Conditional: You must specify either <code>TypeName</code> and <code>Type</code>, or
    #               <code>Arn</code>.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of a specific version of the extension. The version ID is the value at the end of
    #            the Amazon Resource Name (ARN) assigned to the extension version when it is
    #            registered.</p>
    #
    # @return [Types::SetTypeDefaultVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_type_default_version(
    #     arn: 'Arn',
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName',
    #     version_id: 'VersionId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetTypeDefaultVersionOutput
    #
    def set_type_default_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetTypeDefaultVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetTypeDefaultVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetTypeDefaultVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::SetTypeDefaultVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetTypeDefaultVersion,
        stubs: @stubs,
        params_class: Params::SetTypeDefaultVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_type_default_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a signal to the specified resource with a success or failure status. You can use
    #          the <code>SignalResource</code> operation in conjunction with a creation policy or update policy. CloudFormation doesn't proceed with a stack creation or update until resources receive
    #          the required number of signals or the timeout period is exceeded. The <code>SignalResource</code> operation is
    #          useful in cases where you want to send signals from anywhere other than an Amazon EC2
    #          instance.</p>
    #
    # @param [Hash] params
    #   See {Types::SignalResourceInput}.
    #
    # @option params [String] :stack_name
    #   <p>The stack name or unique stack ID that includes the resource that you want to
    #            signal.</p>
    #
    # @option params [String] :logical_resource_id
    #   <p>The logical ID of the resource that you want to signal. The logical ID is the name of
    #            the resource that given in the template.</p>
    #
    # @option params [String] :unique_id
    #   <p>A unique ID of the signal. When you signal Amazon EC2 instances or Auto Scaling groups, specify the instance ID that you are signaling as the unique ID. If
    #            you send multiple signals to a single resource (such as signaling a wait condition), each
    #            signal requires a different unique ID.</p>
    #
    # @option params [String] :status
    #   <p>The status of the signal, which is either success or failure. A failure signal causes
    #               CloudFormation to immediately fail the stack creation or update.</p>
    #
    # @return [Types::SignalResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.signal_resource(
    #     stack_name: 'StackName', # required
    #     logical_resource_id: 'LogicalResourceId', # required
    #     unique_id: 'UniqueId', # required
    #     status: 'SUCCESS' # required - accepts ["SUCCESS", "FAILURE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SignalResourceOutput
    #
    def signal_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SignalResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SignalResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SignalResource
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
        data_parser: Parsers::SignalResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SignalResource,
        stubs: @stubs,
        params_class: Params::SignalResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :signal_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Stops an in-progress operation on a stack set and its associated stack instances. StackSets will cancel all the unstarted stack instance deployments and wait for those are in-progress to complete.</p>
    #
    # @param [Hash] params
    #   See {Types::StopStackSetOperationInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to stop the operation for.</p>
    #
    # @option params [String] :operation_id
    #   <p>The ID of the stack operation.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::StopStackSetOperationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.stop_stack_set_operation(
    #     stack_set_name: 'StackSetName', # required
    #     operation_id: 'OperationId', # required
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StopStackSetOperationOutput
    #
    def stop_stack_set_operation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StopStackSetOperationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StopStackSetOperationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StopStackSetOperation
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::OperationNotFoundException, Errors::StackSetNotFoundException]),
        data_parser: Parsers::StopStackSetOperation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StopStackSetOperation,
        stubs: @stubs,
        params_class: Params::StopStackSetOperationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :stop_stack_set_operation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tests a registered extension to make sure it meets all necessary requirements for being
    #          published in the CloudFormation registry.</p>
    #          <ul>
    #             <li>
    #                <p>For resource types, this includes passing all contracts tests defined for the
    #                type.</p>
    #             </li>
    #             <li>
    #                <p>For modules, this includes determining if the module's model meets all necessary
    #                requirements.</p>
    #             </li>
    #          </ul>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/publish-extension.html#publish-extension-testing">Testing your public extension prior to publishing</a> in the <i>CloudFormation CLI User Guide</i>.</p>
    #          <p>If you don't specify a version, CloudFormation uses the default version of the
    #          extension in your account and region for testing.</p>
    #          <p>To perform testing, CloudFormation assumes the execution role specified when
    #          the type was registered. For more information, see <a href="AWSCloudFormation/latest/APIReference/API_RegisterType.html">RegisterType</a>.</p>
    #          <p>Once you've initiated testing on an extension using <code>TestType</code>, you can use
    #             <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_DescribeType.html">DescribeType</a> to monitor the current test status and test
    #          status description for the extension.</p>
    #          <p>An extension must have a test status of <code>PASSED</code> before it can be published.
    #          For more information, see <a href="https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-publish.html">Publishing extensions to make them available for public use</a>
    #          in the <i>CloudFormation CLI User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TestTypeInput}.
    #
    # @option params [String] :arn
    #   <p>The Amazon Resource Name (ARN) of the extension.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :type
    #   <p>The type of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :type_name
    #   <p>The name of the extension to test.</p>
    #            <p>Conditional: You must specify <code>Arn</code>, or <code>TypeName</code> and
    #               <code>Type</code>.</p>
    #
    # @option params [String] :version_id
    #   <p>The version of the extension to test.</p>
    #            <p>You can specify the version id with either <code>Arn</code>, or with
    #               <code>TypeName</code> and <code>Type</code>.</p>
    #            <p>If you don't specify a version, CloudFormation uses the default version of the
    #            extension in this account and region for testing.</p>
    #
    # @option params [String] :log_delivery_bucket
    #   <p>The S3 bucket to which CloudFormation delivers the contract test execution
    #            logs.</p>
    #            <p>CloudFormation delivers the logs by the time contract testing has completed and
    #            the extension has been assigned a test type status of <code>PASSED</code> or
    #               <code>FAILED</code>.</p>
    #            <p>The user calling <code>TestType</code> must be able to access items in the specified S3
    #            bucket. Specifically, the user needs the following permissions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>GetObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PutObject</code>
    #                  </p>
    #               </li>
    #            </ul>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazons3.html">Actions, Resources, and
    #               Condition Keys for Amazon S3</a> in the <i>Amazon Web Services
    #               Identity and Access Management User Guide</i>.</p>
    #
    # @return [Types::TestTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_type(
    #     arn: 'Arn',
    #     type: 'RESOURCE', # accepts ["RESOURCE", "MODULE", "HOOK"]
    #     type_name: 'TypeName',
    #     version_id: 'VersionId',
    #     log_delivery_bucket: 'LogDeliveryBucket'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestTypeOutput
    #   resp.data.type_version_arn #=> String
    #
    def test_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestType
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CFNRegistryException, Errors::TypeNotFoundException]),
        data_parser: Parsers::TestType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestType,
        stubs: @stubs,
        params_class: Params::TestTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a stack as specified in the template. After the call completes successfully, the
    #          stack update starts. You can check the status of the stack through the <a>DescribeStacks</a> action.</p>
    #          <p>To get a copy of the template for an existing stack, you can use the <a>GetTemplate</a> action.</p>
    #          <p>For more information about creating an update template, updating a stack, and monitoring
    #          the progress of the update, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-updating-stacks.html">Updating a
    #             Stack</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStackInput}.
    #
    # @option params [String] :stack_name
    #   <p>The name or unique stack ID of the stack to update.</p>
    #
    # @option params [String] :template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. (For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.)</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #               <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #
    # @option params [String] :template_url
    #   <p>Location of file containing the template body. The URL must point to a template that's
    #            located in an Amazon S3 bucket or a Systems Manager document. For more information,
    #            go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #               <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #
    # @option params [Boolean] :use_previous_template
    #   <p>Reuse the existing template that is associated with the stack that you are
    #            updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code>, <code>TemplateURL</code>, or set the
    #               <code>UsePreviousTemplate</code> to <code>true</code>.</p>
    #
    # @option params [String] :stack_policy_during_update_body
    #   <p>Structure containing the temporary overriding stack policy body. You can specify either
    #            the <code>StackPolicyDuringUpdateBody</code> or the <code>StackPolicyDuringUpdateURL</code>
    #            parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #            during this update. If you don't specify a stack policy, the current policy that is
    #            associated with the stack will be used.</p>
    #
    # @option params [String] :stack_policy_during_update_url
    #   <p>Location of a file containing the temporary overriding stack policy. The URL must point
    #            to a policy (max size: 16KB) located in an S3 bucket in the same Region as the stack. You
    #            can specify either the <code>StackPolicyDuringUpdateBody</code> or the
    #               <code>StackPolicyDuringUpdateURL</code> parameter, but not both.</p>
    #            <p>If you want to update protected resources, specify a temporary overriding stack policy
    #            during this update. If you don't specify a stack policy, the current policy that is
    #            associated with the stack will be used.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of <code>Parameter</code> structures that specify input parameters for the stack.
    #            For more information, see the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_Parameter.html">Parameter</a> data
    #            type.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to update the stack.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks, you must explicitly acknowledge this
    #                  by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we suggest that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html">AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html">AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some template contain macros. Macros perform custom processing on templates; this
    #                  can include simple actions like find-and-replace operations, all the way to extensive
    #                  transformations of entire templates. Because of this, users typically create a change
    #                  set from the processed template, so that they can review the changes resulting from
    #                  the macros before actually updating the stack. If your stack template contains one or
    #                  more macros, and you choose to update a stack directly from the processed template,
    #                  without first reviewing the resulting changes in a change set, you must acknowledge
    #                  this capability. This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a> transforms, which are macros hosted by CloudFormation.</p>
    #                  <p>If you want to update a stack from a stack template that contains macros
    #                     <i>and</i> nested stacks, you must update the stack directly from
    #                  the template using this capability.</p>
    #                  <important>
    #                     <p>You should only update stacks directly from a stack template that contains
    #                     macros if you know what processing the macro performs.</p>
    #                     <p>Each macro relies on an underlying Lambda service function for
    #                     processing stack templates. Be aware that the Lambda function owner can update the
    #                     function operation without CloudFormation being notified.</p>
    #                  </important>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using
    #                        CloudFormation Macros to Perform Custom Processing on
    #                  Templates</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :resource_types
    #   <p>The template resource types that you have permissions to work with for this update stack
    #            action, such as <code>AWS::EC2::Instance</code>, <code>AWS::EC2::*</code>, or
    #               <code>Custom::MyCustomInstance</code>.</p>
    #            <p>If the list of resource types doesn't include a resource that you're updating, the stack
    #            update fails. By default, CloudFormation grants permissions to all resource types.
    #               Identity and Access Management (IAM) uses this parameter for CloudFormation-specific condition keys in IAM policies. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html">Controlling Access with Identity and Access Management</a>.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role
    #            that CloudFormation assumes to update the stack. CloudFormation uses the
    #            role's credentials to make calls on your behalf. CloudFormation always uses this
    #            role for all future operations on the stack. Provided that users have permission to operate
    #            on the stack, CloudFormation uses this role even if the users don't have permission
    #            to pass it. Ensure that the role grants least privilege.</p>
    #            <p>If you don't specify a value, CloudFormation uses the role that was previously
    #            associated with the stack. If no role is available, CloudFormation uses a temporary
    #            session that is generated from your user credentials.</p>
    #
    # @option params [RollbackConfiguration] :rollback_configuration
    #   <p>The rollback triggers for CloudFormation to monitor during stack creation and
    #            updating operations, and for the specified monitoring period afterwards.</p>
    #
    # @option params [String] :stack_policy_body
    #   <p>Structure containing a new stack policy body. You can specify either the
    #               <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but not
    #            both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #            you created during a stack update. If you don't specify a stack policy, the current policy
    #            that is associated with the stack is unchanged.</p>
    #
    # @option params [String] :stack_policy_url
    #   <p>Location of a file containing the updated stack policy. The URL must point to a policy
    #            (max size: 16KB) located in an S3 bucket in the same Region as the stack. You can specify
    #            either the <code>StackPolicyBody</code> or the <code>StackPolicyURL</code> parameter, but
    #            not both.</p>
    #            <p>You might update the stack policy, for example, in order to protect a new resource that
    #            you created during a stack update. If you don't specify a stack policy, the current policy
    #            that is associated with the stack is unchanged.</p>
    #
    # @option params [Array<String>] :notification_ar_ns
    #   <p>Amazon Simple Notification Service topic Amazon Resource Names (ARNs) that CloudFormation associates with the stack. Specify an empty list to remove all
    #            notification topics.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Key-value pairs to associate with this stack. CloudFormation also propagates
    #            these tags to supported resources in the stack. You can specify a maximum number of 50
    #            tags.</p>
    #            <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's
    #            tags. If you specify an empty value, CloudFormation removes all associated
    #            tags.</p>
    #
    # @option params [Boolean] :disable_rollback
    #   <p>Preserve the state of previously provisioned resources when an operation fails.</p>
    #            <p>Default: <code>False</code>
    #            </p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique identifier for this <code>UpdateStack</code> request. Specify this token if you
    #            plan to retry requests so that CloudFormation knows that you're not attempting to
    #            update a stack with the same name. You might retry <code>UpdateStack</code> requests to
    #            ensure that CloudFormation successfully received them.</p>
    #            <p>All events triggered by a given stack operation are assigned the same client request
    #            token, which you can use to track operations. For example, if you execute a
    #               <code>CreateStack</code> operation with the token <code>token1</code>, then all the
    #               <code>StackEvents</code> generated by that operation will have
    #               <code>ClientRequestToken</code> set as <code>token1</code>.</p>
    #            <p>In the console, stack operations display the client request token on the Events tab.
    #            Stack operations that are initiated from the console use the token format
    #               <i>Console-StackOperation-ID</i>, which helps you easily identify the
    #            stack operation . For example, if you create a stack using the console, each stack event
    #            would be assigned the same token in the following format:
    #               <code>Console-CreateStack-7f59c3cf-00d2-40c7-b2ff-e75db0987002</code>.</p>
    #
    # @return [Types::UpdateStackOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack(
    #     stack_name: 'StackName', # required
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     use_previous_template: false,
    #     stack_policy_during_update_body: 'StackPolicyDuringUpdateBody',
    #     stack_policy_during_update_url: 'StackPolicyDuringUpdateURL',
    #     parameters: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     capabilities: [
    #       'CAPABILITY_IAM' # accepts ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #     ],
    #     resource_types: [
    #       'member'
    #     ],
    #     role_arn: 'RoleARN',
    #     rollback_configuration: {
    #       rollback_triggers: [
    #         {
    #           arn: 'Arn', # required
    #           type: 'Type' # required
    #         }
    #       ],
    #       monitoring_time_in_minutes: 1
    #     },
    #     stack_policy_body: 'StackPolicyBody',
    #     stack_policy_url: 'StackPolicyURL',
    #     notification_ar_ns: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     disable_rollback: false,
    #     client_request_token: 'ClientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStackOutput
    #   resp.data.stack_id #=> String
    #
    def update_stack(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStackInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStackInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStack
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InsufficientCapabilitiesException, Errors::TokenAlreadyExistsException]),
        data_parser: Parsers::UpdateStack
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStack,
        stubs: @stubs,
        params_class: Params::UpdateStackOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stack
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the parameter values for stack instances for the specified accounts, within the
    #          specified Amazon Web Services Regions. A stack instance refers to a stack in a specific
    #          account and Region.</p>
    #          <p>You can only update stack instances in Amazon Web Services Regions and accounts where
    #          they already exist; to create additional stack instances, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_CreateStackInstances.html">CreateStackInstances</a>.</p>
    #          <p>During stack set updates, any parameters overridden for a stack instance aren't updated,
    #          but retain their overridden value.</p>
    #          <p>You can only update the parameter <i>values</i> that are specified in the
    #          stack set; to add or delete a parameter itself, use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update the stack set template. If you add a parameter to a
    #          template, before you can override the parameter value specified in the stack set you must
    #          first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update all stack instances with the updated template and
    #          parameter value specified in the stack set. Once a stack instance has been updated with the
    #          new parameter, you can then override the parameter value using
    #             <code>UpdateStackInstances</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStackInstancesInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set associated with the stack instances.</p>
    #
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The names of one or more Amazon Web Services accounts for
    #            which you want to update parameter values for stack instances. The overridden parameter
    #            values will be applied to all stack instances in the specified accounts and Amazon Web Services Regions.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    # @option params [DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts for which you want to
    #            update parameter values for stack instances. If your update targets OUs, the overridden
    #            parameter values only apply to the accounts that are currently in the target OUs and their
    #            child OUs. Accounts added to the target OUs and their child OUs in the future won't use the
    #            overridden values.</p>
    #            <p>You can specify <code>Accounts</code> or <code>DeploymentTargets</code>, but not
    #            both.</p>
    #
    # @option params [Array<String>] :regions
    #   <p>The names of one or more Amazon Web Services Regions in which you want to update
    #            parameter values for stack instances. The overridden parameter values will be applied to
    #            all stack instances in the specified accounts and Amazon Web Services Regions.</p>
    #
    # @option params [Array<Parameter>] :parameter_overrides
    #   <p>A list of input parameters whose values you want to update for the specified stack
    #            instances.</p>
    #            <p>Any overridden parameter values will be applied to all stack instances in the specified
    #            accounts and Amazon Web Services Regions. When specifying parameters and their values, be
    #            aware of how CloudFormation sets parameter values during stack instance update
    #            operations:</p>
    #            <ul>
    #               <li>
    #                  <p>To override the current value for a parameter, include the parameter and specify
    #                  its value.</p>
    #               </li>
    #               <li>
    #                  <p>To leave an overridden parameter set to its present value, include the parameter
    #                  and specify <code>UsePreviousValue</code> as <code>true</code>. (You can't specify
    #                  both a value and set <code>UsePreviousValue</code> to <code>true</code>.)</p>
    #               </li>
    #               <li>
    #                  <p>To set an overridden parameter back to the value specified in the stack set,
    #                  specify a parameter list but don't include the parameter in the list.</p>
    #               </li>
    #               <li>
    #                  <p>To leave all parameters set to their present values, don't specify this property
    #                  at all.</p>
    #               </li>
    #            </ul>
    #            <p>During stack set updates, any parameter values overridden for a stack instance aren't
    #            updated, but retain their overridden value.</p>
    #            <p>You can only override the parameter <i>values</i> that are specified in
    #            the stack set; to add or delete a parameter itself, use <code>UpdateStackSet</code> to
    #            update the stack set template. If you add a parameter to a template, before you can
    #            override the parameter value specified in the stack set you must first use <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/APIReference/API_UpdateStackSet.html">UpdateStackSet</a> to update all stack instances with the updated template and
    #            parameter value specified in the stack set. Once a stack instance has been updated with the
    #            new parameter, you can then override the parameter value using
    #               <code>UpdateStackInstances</code>.</p>
    #
    # @option params [StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    # @option params [String] :operation_id
    #   <p>The unique identifier for this stack set operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, the SDK generates one
    #            automatically.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateStackInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_instances(
    #     stack_set_name: 'StackSetName', # required
    #     accounts: [
    #       'member'
    #     ],
    #     deployment_targets: {
    #       accounts_url: 'AccountsUrl',
    #       organizational_unit_ids: [
    #         'member'
    #       ]
    #     },
    #     regions: [
    #       'member'
    #     ], # required
    #     parameter_overrides: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: 'SEQUENTIAL', # accepts ["SEQUENTIAL", "PARALLEL"]
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1
    #     },
    #     operation_id: 'OperationId',
    #     call_as: 'SELF' # accepts ["SELF", "DELEGATED_ADMIN"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStackInstancesOutput
    #   resp.data.operation_id #=> String
    #
    def update_stack_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStackInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStackInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStackInstances
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::OperationIdAlreadyExistsException, Errors::OperationInProgressException, Errors::StackInstanceNotFoundException, Errors::StackSetNotFoundException, Errors::StaleRequestException]),
        data_parser: Parsers::UpdateStackInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStackInstances,
        stubs: @stubs,
        params_class: Params::UpdateStackInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stack_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the stack set, and associated stack instances in the specified accounts and
    #             Amazon Web Services Regions.</p>
    #          <p>Even if the stack set operation created by updating the stack set fails (completely or
    #          partially, below or above a specified failure tolerance), the stack set is updated with
    #          your changes. Subsequent <a>CreateStackInstances</a> calls on the specified
    #          stack set use the updated stack set.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateStackSetInput}.
    #
    # @option params [String] :stack_set_name
    #   <p>The name or unique ID of the stack set that you want to update.</p>
    #
    # @option params [String] :description
    #   <p>A brief description of updates that you are making.</p>
    #
    # @option params [String] :template_body
    #   <p>The structure that contains the template body, with a minimum length of 1 byte and a
    #            maximum length of 51,200 bytes. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #               <code>UsePreviousTemplate</code> to true.</p>
    #
    # @option params [String] :template_url
    #   <p>The location of the file that contains the template body. The URL must point to a
    #            template (maximum size: 460,800 bytes) that is located in an Amazon S3 bucket or a
    #            Systems Manager document. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #               <code>UsePreviousTemplate</code> to true.</p>
    #
    # @option params [Boolean] :use_previous_template
    #   <p>Use the existing template that's associated with the stack set that you're
    #            updating.</p>
    #            <p>Conditional: You must specify only one of the following parameters:
    #               <code>TemplateBody</code> or <code>TemplateURL</code>—or set
    #               <code>UsePreviousTemplate</code> to true.</p>
    #
    # @option params [Array<Parameter>] :parameters
    #   <p>A list of input parameters for the stack set template.</p>
    #
    # @option params [Array<String>] :capabilities
    #   <p>In some cases, you must explicitly acknowledge that your stack template contains certain
    #            capabilities in order for CloudFormation to update the stack set and its associated stack
    #            instances.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_IAM</code> and <code>CAPABILITY_NAMED_IAM</code>
    #                  </p>
    #                  <p>Some stack templates might include resources that can affect permissions in your
    #                     Amazon Web Services account; for example, by creating new Identity and Access Management
    #                     (IAM) users. For those stacks sets, you must explicitly acknowledge
    #                  this by specifying one of these capabilities.</p>
    #                  <p>The following IAM resources require you to specify either the
    #                     <code>CAPABILITY_IAM</code> or <code>CAPABILITY_NAMED_IAM</code>
    #                  capability.</p>
    #                  <ul>
    #                     <li>
    #                        <p>If you have IAM resources, you can specify either
    #                        capability.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you have IAM resources with custom names, you
    #                           <i>must</i> specify <code>CAPABILITY_NAMED_IAM</code>.</p>
    #                     </li>
    #                     <li>
    #                        <p>If you don't specify either of these capabilities, CloudFormation returns an
    #                           <code>InsufficientCapabilities</code> error.</p>
    #                     </li>
    #                  </ul>
    #                  <p>If your stack template contains these resources, we recommend that you review all
    #                  permissions associated with them and edit their permissions if necessary.</p>
    #                  <ul>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-accesskey.html">
    #                           AWS::IAM::AccessKey</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-group.html">
    #                           AWS::IAM::Group</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-instanceprofile.html"> AWS::IAM::InstanceProfile</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-policy.html">
    #                           AWS::IAM::Policy</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iam-role.html">
    #                           AWS::IAM::Role</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-user.html">
    #                           AWS::IAM::User</a>
    #                        </p>
    #                     </li>
    #                     <li>
    #                        <p>
    #                           <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iam-addusertogroup.html"> AWS::IAM::UserToGroupAddition</a>
    #                        </p>
    #                     </li>
    #                  </ul>
    #                  <p>For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities">Acknowledging IAM Resources in CloudFormation Templates</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>CAPABILITY_AUTO_EXPAND</code>
    #                  </p>
    #                  <p>Some templates reference macros. If your stack set template references one or more
    #                  macros, you must update the stack set directly from the processed template, without
    #                  first reviewing the resulting changes in a change set. To update the stack set
    #                  directly, you must acknowledge this capability. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-macros.html">Using CloudFormation Macros to
    #                     Perform Custom Processing on Templates</a>.</p>
    #                  <important>
    #                     <p>Stack sets with service-managed permissions do not currently support the use of
    #                     macros in templates. (This includes the <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/create-reusable-transform-function-snippets-and-add-to-your-template-with-aws-include-transform.html">AWS::Include</a> and <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/transform-aws-serverless.html">AWS::Serverless</a>
    #                     transforms, which are macros hosted by CloudFormation.) Even if you specify this capability
    #                     for a stack set with service-managed permissions, if you reference a macro in your
    #                     template the stack set operation will fail.</p>
    #                  </important>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The key-value pairs to associate with this stack set and the stacks created from it.
    #               CloudFormation also propagates these tags to supported resources that are created in
    #            the stacks. You can specify a maximum number of 50 tags.</p>
    #            <p>If you specify tags for this parameter, those tags replace any list of tags that are
    #            currently associated with this stack set. This means:</p>
    #            <ul>
    #               <li>
    #                  <p>If you don't specify this parameter, CloudFormation doesn't modify the stack's
    #                  tags.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify <i>any</i> tags using this parameter, you must
    #                  specify <i>all</i> the tags that you want associated with this stack
    #                  set, even tags you've specified before (for example, when creating the stack set or
    #                  during a previous update of the stack set.). Any tags that you don't include in the
    #                  updated list of tags are removed from the stack set, and therefore from the stacks
    #                  and resources as well.</p>
    #               </li>
    #               <li>
    #                  <p>If you specify an empty value, CloudFormation removes all currently associated
    #                  tags.</p>
    #               </li>
    #            </ul>
    #            <p>If you specify new tags as part of an <code>UpdateStackSet</code> action, CloudFormation checks to see if you have the required IAM permission to tag
    #            resources. If you omit tags that are currently associated with the stack set from the list
    #            of tags you specify, CloudFormation assumes that you want to remove those tags from the
    #            stack set, and checks to see if you have permission to untag resources. If you don't have
    #            the necessary permission(s), the entire <code>UpdateStackSet</code> action fails with an
    #               <code>access denied</code> error, and the stack set is not updated.</p>
    #
    # @option params [StackSetOperationPreferences] :operation_preferences
    #   <p>Preferences for how CloudFormation performs this stack set operation.</p>
    #
    # @option params [String] :administration_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role to use to update this
    #            stack set.</p>
    #            <p>Specify an IAM role only if you are using customized administrator roles
    #            to control which users or groups can manage specific stack sets within the same
    #            administrator account. For more information, see <a href="http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html">Granting Permissions for Stack Set
    #               Operations</a> in the <i>CloudFormation User Guide</i>.</p>
    #            <p>If you specified a customized administrator role when you created the stack set, you
    #            must specify a customized administrator role, even if it is the same customized
    #            administrator role used with this stack set previously.</p>
    #
    # @option params [String] :execution_role_name
    #   <p>The name of the IAM execution role to use to update the stack set. If you
    #            do not specify an execution role, CloudFormation uses the
    #               <code>AWSCloudFormationStackSetExecutionRole</code> role for the stack set
    #            operation.</p>
    #            <p>Specify an IAM role only if you are using customized execution roles to
    #            control which stack resources users and groups can include in their stack sets.</p>
    #            <p>If you specify a customized execution role, CloudFormation uses that role to update the stack. If
    #            you do not specify a customized execution role, CloudFormation performs the update using the role
    #            previously associated with the stack set, so long as you have permissions to perform
    #            operations on the stack set.</p>
    #
    # @option params [DeploymentTargets] :deployment_targets
    #   <p>[Service-managed permissions] The Organizations accounts in which to update
    #            associated stack instances.</p>
    #            <p>To update all the stack instances associated with this stack set, do not specify
    #               <code>DeploymentTargets</code> or <code>Regions</code>.</p>
    #            <p>If the stack set update includes changes to the template (that is, if
    #               <code>TemplateBody</code> or <code>TemplateURL</code> is specified), or the
    #               <code>Parameters</code>, CloudFormation marks all stack instances with a status of
    #               <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    #            and Amazon Web Services Regions. If the stack set update doesn't include changes to the
    #            template or parameters, CloudFormation updates the stack instances in the specified
    #            accounts and Regions, while leaving all other stack instances with their existing stack
    #            instance status.</p>
    #
    # @option params [String] :permission_model
    #   <p>Describes how the IAM roles required for stack set operations are
    #            created. You cannot modify <code>PermissionModel</code> if there are stack instances
    #            associated with your stack set.</p>
    #            <ul>
    #               <li>
    #                  <p>With <code>self-managed</code> permissions, you must create the administrator and
    #                  execution roles required to deploy to target accounts. For more information, see
    #                     <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html">Grant
    #                     Self-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #               <li>
    #                  <p>With <code>service-managed</code> permissions, StackSets automatically creates the
    #                     IAM roles required to deploy to accounts managed by Organizations. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html">Grant Service-Managed Stack Set Permissions</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [AutoDeployment] :auto_deployment
    #   <p>[Service-managed permissions] Describes whether StackSets automatically deploys to
    #               Organizations accounts that are added to a target organization or organizational
    #            unit (OU).</p>
    #            <p>If you specify <code>AutoDeployment</code>, don't specify <code>DeploymentTargets</code>
    #            or <code>Regions</code>.</p>
    #
    # @option params [String] :operation_id
    #   <p>The unique ID for this stack set operation.</p>
    #            <p>The operation ID also functions as an idempotency token, to ensure that CloudFormation performs the stack set operation only once, even if you retry the request
    #            multiple times. You might retry stack set operation requests to ensure that CloudFormation successfully received them.</p>
    #            <p>If you don't specify an operation ID, CloudFormation generates one
    #            automatically.</p>
    #            <p>Repeating this stack set operation with a new operation ID retries all stack instances
    #            whose status is <code>OUTDATED</code>.</p>
    #
    # @option params [Array<String>] :accounts
    #   <p>[Self-managed permissions] The accounts in which to update associated stack instances.
    #            If you specify accounts, you must also specify the Amazon Web Services Regions in which to
    #            update stack set instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this stack set,
    #            don't specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the stack set update includes changes to the template (that is, if the
    #               <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #               <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #               <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    #            and Amazon Web Services Regions. If the stack set update does not include changes to the
    #            template or parameters, CloudFormation updates the stack instances in the specified accounts and
    #               Amazon Web Services Regions, while leaving all other stack instances with their existing
    #            stack instance status.</p>
    #
    # @option params [Array<String>] :regions
    #   <p>The Amazon Web Services Regions in which to update associated stack instances. If you
    #            specify Regions, you must also specify accounts in which to update stack set
    #            instances.</p>
    #            <p>To update <i>all</i> the stack instances associated with this stack set,
    #            do not specify the <code>Accounts</code> or <code>Regions</code> properties.</p>
    #            <p>If the stack set update includes changes to the template (that is, if the
    #               <code>TemplateBody</code> or <code>TemplateURL</code> properties are specified), or the
    #               <code>Parameters</code> property, CloudFormation marks all stack instances with a status of
    #               <code>OUTDATED</code> prior to updating the stack instances in the specified accounts
    #            and Regions. If the stack set update does not include changes to the template or
    #            parameters, CloudFormation updates the stack instances in the specified accounts and Regions, while
    #            leaving all other stack instances with their existing stack instance status.</p>
    #
    # @option params [String] :call_as
    #   <p>[Service-managed permissions] Specifies whether you are acting as an account
    #            administrator in the organization's management account or as a delegated
    #            administrator in a member account.</p>
    #            <p>By default, <code>SELF</code> is specified. Use <code>SELF</code> for stack sets with
    #            self-managed permissions.</p>
    #            <ul>
    #               <li>
    #                  <p>If you are signed in to the management account, specify
    #                     <code>SELF</code>.</p>
    #               </li>
    #               <li>
    #                  <p>If you are signed in to a delegated administrator account, specify
    #                     <code>DELEGATED_ADMIN</code>.</p>
    #                  <p>Your Amazon Web Services account must be registered as a delegated administrator in
    #                  the management account. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-orgs-delegated-admin.html">Register a delegated administrator</a> in the <i>CloudFormation User Guide</i>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [ManagedExecution] :managed_execution
    #   <p>Describes whether StackSets performs non-conflicting operations concurrently and queues
    #            conflicting operations.</p>
    #
    # @return [Types::UpdateStackSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_stack_set(
    #     stack_set_name: 'StackSetName', # required
    #     description: 'Description',
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL',
    #     use_previous_template: false,
    #     parameters: [
    #       {
    #         parameter_key: 'ParameterKey',
    #         parameter_value: 'ParameterValue',
    #         use_previous_value: false,
    #         resolved_value: 'ResolvedValue'
    #       }
    #     ],
    #     capabilities: [
    #       'CAPABILITY_IAM' # accepts ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #     ],
    #     tags: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ],
    #     operation_preferences: {
    #       region_concurrency_type: 'SEQUENTIAL', # accepts ["SEQUENTIAL", "PARALLEL"]
    #       region_order: [
    #         'member'
    #       ],
    #       failure_tolerance_count: 1,
    #       failure_tolerance_percentage: 1,
    #       max_concurrent_count: 1,
    #       max_concurrent_percentage: 1
    #     },
    #     administration_role_arn: 'AdministrationRoleARN',
    #     execution_role_name: 'ExecutionRoleName',
    #     deployment_targets: {
    #       accounts: [
    #         'member'
    #       ],
    #       accounts_url: 'AccountsUrl',
    #       organizational_unit_ids: [
    #         'member'
    #       ]
    #     },
    #     permission_model: 'SERVICE_MANAGED', # accepts ["SERVICE_MANAGED", "SELF_MANAGED"]
    #     auto_deployment: {
    #       enabled: false,
    #       retain_stacks_on_account_removal: false
    #     },
    #     operation_id: 'OperationId',
    #     call_as: 'SELF', # accepts ["SELF", "DELEGATED_ADMIN"]
    #     managed_execution: {
    #       active: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateStackSetOutput
    #   resp.data.operation_id #=> String
    #
    def update_stack_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateStackSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateStackSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateStackSet
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidOperationException, Errors::OperationIdAlreadyExistsException, Errors::OperationInProgressException, Errors::StackInstanceNotFoundException, Errors::StackSetNotFoundException, Errors::StaleRequestException]),
        data_parser: Parsers::UpdateStackSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateStackSet,
        stubs: @stubs,
        params_class: Params::UpdateStackSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_stack_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates termination protection for the specified stack. If a user attempts to delete a
    #          stack with termination protection enabled, the operation fails and the stack remains
    #          unchanged. For more information, see <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html">Protecting a
    #             Stack From Being Deleted</a> in the <i>CloudFormation User Guide</i>.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html">nested
    #             stacks</a>, termination protection is set on the root stack and can't be changed
    #          directly on the nested stack.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateTerminationProtectionInput}.
    #
    # @option params [Boolean] :enable_termination_protection
    #   <p>Whether to enable termination protection on the specified stack.</p>
    #
    # @option params [String] :stack_name
    #   <p>The name or unique ID of the stack for which you want to set termination
    #            protection.</p>
    #
    # @return [Types::UpdateTerminationProtectionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_termination_protection(
    #     enable_termination_protection: false, # required
    #     stack_name: 'StackName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateTerminationProtectionOutput
    #   resp.data.stack_id #=> String
    #
    def update_termination_protection(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateTerminationProtectionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateTerminationProtectionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateTerminationProtection
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
        data_parser: Parsers::UpdateTerminationProtection
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateTerminationProtection,
        stubs: @stubs,
        params_class: Params::UpdateTerminationProtectionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_termination_protection
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Validates a specified template. CloudFormation first checks if the template is
    #          valid JSON. If it isn't, CloudFormation checks if the template is valid YAML. If
    #          both these checks fail, CloudFormation returns a template validation error.</p>
    #
    # @param [Hash] params
    #   See {Types::ValidateTemplateInput}.
    #
    # @option params [String] :template_body
    #   <p>Structure containing the template body with a minimum length of 1 byte and a maximum
    #            length of 51,200 bytes. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    # @option params [String] :template_url
    #   <p>Location of file containing the template body. The URL must point to a template (max
    #            size: 460,800 bytes) that is located in an Amazon S3 bucket or a Systems Manager
    #            document. For more information, go to <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-anatomy.html">Template Anatomy</a>
    #            in the CloudFormation User Guide.</p>
    #            <p>Conditional: You must pass <code>TemplateURL</code> or <code>TemplateBody</code>. If
    #            both are passed, only <code>TemplateBody</code> is used.</p>
    #
    # @return [Types::ValidateTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.validate_template(
    #     template_body: 'TemplateBody',
    #     template_url: 'TemplateURL'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ValidateTemplateOutput
    #   resp.data.parameters #=> Array<TemplateParameter>
    #   resp.data.parameters[0] #=> Types::TemplateParameter
    #   resp.data.parameters[0].parameter_key #=> String
    #   resp.data.parameters[0].default_value #=> String
    #   resp.data.parameters[0].no_echo #=> Boolean
    #   resp.data.parameters[0].description #=> String
    #   resp.data.description #=> String
    #   resp.data.capabilities #=> Array<String>
    #   resp.data.capabilities[0] #=> String, one of ["CAPABILITY_IAM", "CAPABILITY_NAMED_IAM", "CAPABILITY_AUTO_EXPAND"]
    #   resp.data.capabilities_reason #=> String
    #   resp.data.declared_transforms #=> Array<String>
    #   resp.data.declared_transforms[0] #=> String
    #
    def validate_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ValidateTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ValidateTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ValidateTemplate
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
        data_parser: Parsers::ValidateTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ValidateTemplate,
        stubs: @stubs,
        params_class: Params::ValidateTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :validate_template
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
