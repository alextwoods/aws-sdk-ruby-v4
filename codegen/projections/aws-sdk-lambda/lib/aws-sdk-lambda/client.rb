# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::Lambda
  # An API client for AWSGirApiService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS Lambda</fullname>
  #          <p>
  #             <b>Overview</b>
  #          </p>
  #          <p>This is the <i>AWS Lambda API Reference</i>. The AWS Lambda Developer Guide provides additional
  #       information. For the service overview, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/welcome.html">What is
  #         AWS Lambda</a>, and for information about how the service works, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html">AWS Lambda: How it Works</a> in the <b>AWS Lambda Developer Guide</b>.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @overload initialize(options)
    # @param [Hash] options
    # @option options [Boolean] :disable_host_prefix (false)
    #   When `true`, does not perform host prefix injection using @endpoint's hostPrefix property.
    #
    # @option options [string] :endpoint
    #   Endpoint of the service
    #
    # @option options [bool] :http_wire_trace (false)
    #   Enable debug wire trace on http requests.
    #
    # @option options [symbol] :log_level (:info)
    #   Default log level to use
    #
    # @option options [Logger] :logger (stdout)
    #   Logger to use for output
    #
    # @option options [MiddlewareBuilder] :middleware
    #   Additional Middleware to be applied for every operation
    #
    # @option options [Bool] :stub_responses (false)
    #   Enable response stubbing. See documentation for {#stub_responses}
    #
    # @option options [Boolean] :validate_input (true)
    #   When `true`, request parameters are validated using the modeled shapes.
    #
    def initialize(options = {})
      @disable_host_prefix = options.fetch(:disable_host_prefix, false)
      @endpoint = options[:endpoint]
      @http_wire_trace = options.fetch(:http_wire_trace, false)
      @log_level = options.fetch(:log_level, :info)
      @logger = options.fetch(:logger, Logger.new($stdout, level: @log_level))
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stub_responses = options.fetch(:stub_responses, false)
      @stubs = Hearth::Stubbing::Stubs.new
      @validate_input = options.fetch(:validate_input, true)

    end

    # <p>Adds permissions to the resource-based policy of a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>. Use this action to grant layer
    #       usage permission to other accounts. You can grant permission to a single account, all AWS accounts, or all
    #       accounts in an organization.</p>
    #          <p>To revoke permission, call <a>RemoveLayerVersionPermission</a> with the statement ID that you
    #       specified when you added it.</p>
    #
    # @param [Hash] params
    #   See {Types::AddLayerVersionPermissionInput}.
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    #
    # @option params [String] :statement_id
    #   <p>An identifier that distinguishes the policy from others on the same layer version.</p>
    #
    # @option params [String] :action
    #   <p>The API action that grants access to the layer. For example, <code>lambda:GetLayerVersion</code>.</p>
    #
    # @option params [String] :principal
    #   <p>An account ID, or <code>*</code> to grant permission to all AWS accounts.</p>
    #
    # @option params [String] :organization_id
    #   <p>With the principal set to <code>*</code>, grant permission to all accounts in the specified
    #         organization.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    # @return [Types::AddLayerVersionPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_layer_version_permission(
    #     layer_name: 'LayerName', # required
    #     version_number: 1, # required
    #     statement_id: 'StatementId', # required
    #     action: 'Action', # required
    #     principal: 'Principal', # required
    #     organization_id: 'OrganizationId',
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::AddLayerVersionPermissionOutput
    #   resp.statement #=> String
    #   resp.revision_id #=> String
    #
    def add_layer_version_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddLayerVersionPermissionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddLayerVersionPermissionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddLayerVersionPermission,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::PolicyLengthExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AddLayerVersionPermission
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::AddLayerVersionPermission,
        params_class: Params::AddLayerVersionPermissionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :add_layer_version_permission
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Grants an AWS service or another account permission to use a function. You can apply the policy at the
    #       function level, or specify a qualifier to restrict access to a single version or alias. If you use a qualifier,
    #       the invoker must use the full Amazon Resource Name (ARN) of that version or alias to invoke the function.</p>
    #
    #          <p>To grant permission to another account, specify the account ID as the <code>Principal</code>. For AWS
    #       services, the principal is a domain-style identifier defined by the service, like <code>s3.amazonaws.com</code> or
    #         <code>sns.amazonaws.com</code>. For AWS services, you can also specify the ARN of the associated resource as the
    #         <code>SourceArn</code>. If you grant permission to a service principal without specifying the source, other
    #       accounts could potentially configure resources in their account to invoke your Lambda function.</p>
    #
    #          <p>This action adds a statement to a resource-based permissions policy for the function. For more information
    #       about function policies, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">Lambda Function Policies</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::AddPermissionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :statement_id
    #   <p>A statement identifier that differentiates the statement from others in the same policy.</p>
    #
    # @option params [String] :action
    #   <p>The action that the principal can use on the function. For example, <code>lambda:InvokeFunction</code> or
    #           <code>lambda:GetFunction</code>.</p>
    #
    # @option params [String] :principal
    #   <p>The AWS service or account that invokes the function. If you specify a service, use <code>SourceArn</code> or
    #           <code>SourceAccount</code> to limit who can invoke the function through that service.</p>
    #
    # @option params [String] :source_arn
    #   <p>For AWS services, the ARN of the AWS resource that invokes the function. For example, an Amazon S3 bucket or
    #         Amazon SNS topic.</p>
    #
    # @option params [String] :source_account
    #   <p>For Amazon S3, the ID of the account that owns the resource. Use this together with <code>SourceArn</code> to
    #         ensure that the resource is owned by the specified account. It is possible for an Amazon S3 bucket to be deleted
    #         by its owner and recreated by another account.</p>
    #
    # @option params [String] :event_source_token
    #   <p>For Alexa Smart Home functions, a token that must be supplied by the invoker.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to add permissions to a published version of the function.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    # @return [Types::AddPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_permission(
    #     function_name: 'FunctionName', # required
    #     statement_id: 'StatementId', # required
    #     action: 'Action', # required
    #     principal: 'Principal', # required
    #     source_arn: 'SourceArn',
    #     source_account: 'SourceAccount',
    #     event_source_token: 'EventSourceToken',
    #     qualifier: 'Qualifier',
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::AddPermissionOutput
    #   resp.statement #=> String
    #
    def add_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddPermissionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddPermissionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddPermission,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::PolicyLengthExceededException, Errors::ResourceConflictException]),
        data_parser: Parsers::AddPermission
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::AddPermission,
        params_class: Params::AddPermissionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :add_permission
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a> for a
    #       Lambda function version. Use aliases to provide clients with a function identifier that you can update to invoke a
    #       different version.</p>
    #          <p>You can also map an alias to split invocation requests between two versions. Use the
    #         <code>RoutingConfig</code> parameter to specify a second version and the percentage of invocation requests that
    #       it receives.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAliasInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :member_name
    #   <p>The name of the alias.</p>
    #
    # @option params [String] :function_version
    #   <p>The function version that the alias invokes.</p>
    #
    # @option params [String] :description
    #   <p>A description of the alias.</p>
    #
    # @option params [AliasRoutingConfiguration] :routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing
    #           configuration</a> of the alias.</p>
    #
    # @return [Types::CreateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias(
    #     function_name: 'FunctionName', # required
    #     member_name: 'Name', # required
    #     function_version: 'FunctionVersion', # required
    #     description: 'Description',
    #     routing_config: {
    #       additional_version_weights: {
    #         'key' => 1.0
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateAliasOutput
    #   resp.alias_arn #=> String
    #   resp.member_name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config #=> Types::AliasRoutingConfiguration
    #   resp.routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.routing_config.additional_version_weights['key'] #=> Float
    #   resp.revision_id #=> String
    #
    def create_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAliasInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAliasInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlias,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::CreateAlias
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateAlias,
        params_class: Params::CreateAliasOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_alias
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a code signing configuration. A <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html">code signing configuration</a> defines a list of
    #       allowed signing profiles and defines the code-signing validation policy (action to be taken if deployment
    #       validation checks fail). </p>
    #
    # @param [Hash] params
    #   See {Types::CreateCodeSigningConfigInput}.
    #
    # @option params [String] :description
    #   <p>Descriptive name for this code signing configuration.</p>
    #
    # @option params [AllowedPublishers] :allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    #
    # @option params [CodeSigningPolicies] :code_signing_policies
    #   <p>The code signing policies define the actions to take if the validation checks fail. </p>
    #
    # @return [Types::CreateCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_code_signing_config(
    #     description: 'Description',
    #     allowed_publishers: {
    #       signing_profile_version_arns: [
    #         'member'
    #       ] # required
    #     }, # required
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: 'Warn' # accepts Warn, Enforce
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateCodeSigningConfigOutput
    #   resp.code_signing_config #=> Types::CodeSigningConfig
    #   resp.code_signing_config.code_signing_config_id #=> String
    #   resp.code_signing_config.code_signing_config_arn #=> String
    #   resp.code_signing_config.description #=> String
    #   resp.code_signing_config.allowed_publishers #=> Types::AllowedPublishers
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_config.code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of Warn, Enforce
    #   resp.code_signing_config.last_modified #=> String
    #
    def create_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::CreateCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateCodeSigningConfig,
        params_class: Params::CreateCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a mapping between an event source and an AWS Lambda function. Lambda reads items from the event source
    #       and triggers the function.</p>
    #          <p>For details about each event source type, see the following topics.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html">Using AWS Lambda with Amazon
    #           DynamoDB</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html">Using AWS Lambda with Amazon
    #           Kinesis</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html">Using AWS Lambda with Amazon
    #           SQS</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html">Using AWS Lambda with Amazon
    #           MQ</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html">Using AWS Lambda with Amazon MSK</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html">Using AWS Lambda with Self-Managed Apache Kafka</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>The following error handling options are only available for stream sources (DynamoDB and Kinesis):</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BisectBatchOnFunctionError</code> - If the function returns an error, split the batch in two and retry.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DestinationConfig</code> - Send discarded records to an Amazon SQS queue or Amazon SNS topic.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRecordAgeInSeconds</code> - Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRetryAttempts</code> - Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ParallelizationFactor</code> - Process multiple batches from each shard concurrently.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateEventSourceMappingInput}.
    #
    # @option params [String] :event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - The ARN of the data stream or a stream consumer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - The ARN of the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - The ARN of the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - The ARN of the cluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>
    #
    # @option params [Integer] :batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>
    #
    # @option params [Integer] :parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently.</p>
    #
    # @option params [String] :starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon DynamoDB, and Amazon MSK Streams
    #         sources. <code>AT_TIMESTAMP</code> is only supported for Amazon Kinesis streams.</p>
    #
    # @option params [Time] :starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>
    #
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry.</p>
    #
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>
    #
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    # @option params [Array<String>] :topics
    #   <p>The name of the Kafka topic.</p>
    #
    # @option params [Array<String>] :queues
    #   <p>
    #         (MQ) The name of the Amazon MQ broker destination queue to consume.
    #       </p>
    #
    # @option params [Array<SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    # @option params [SelfManagedEventSource] :self_managed_event_source
    #   <p>The Self-Managed Apache Kafka cluster to send records.</p>
    #
    # @option params [Array<String>] :function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    # @return [Types::CreateEventSourceMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_event_source_mapping(
    #     event_source_arn: 'EventSourceArn',
    #     function_name: 'FunctionName', # required
    #     enabled: false,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     starting_position: 'TRIM_HORIZON', # accepts TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #     starting_position_timestamp: Time.now,
    #     destination_config: {
    #       on_success: {
    #         destination: 'Destination'
    #       },
    #       on_failure: {
    #         destination: 'Destination'
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     tumbling_window_in_seconds: 1,
    #     topics: [
    #       'member'
    #     ],
    #     queues: [
    #       'member'
    #     ],
    #     source_access_configurations: [
    #       {
    #         type: 'BASIC_AUTH', # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #         uri: 'URI'
    #       }
    #     ],
    #     self_managed_event_source: {
    #       endpoints: {
    #         'key' => [
    #           'member'
    #         ]
    #       }
    #     },
    #     function_response_types: [
    #       'ReportBatchItemFailures' # accepts ReportBatchItemFailures
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateEventSourceMappingOutput
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array<String>
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array<String>
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.source_access_configurations[0].type #=> String, one of BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array<String>
    #   resp.function_response_types[0] #=> String, one of ReportBatchItemFailures
    #
    def create_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventSourceMappingInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventSourceMappingInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventSourceMapping,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::CreateEventSourceMapping
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateEventSourceMapping,
        params_class: Params::CreateEventSourceMappingOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a Lambda function. To create a function, you need a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html">deployment package</a> and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role">execution role</a>. The
    #       deployment package is a .zip file  archive or container image that contains your function code. The execution role grants the function permission to use AWS
    #       services, such as Amazon CloudWatch Logs for log streaming and AWS X-Ray for request tracing.</p>
    #
    #          <p>When you create a function, Lambda provisions an instance of the function and its supporting resources. If
    #       your function connects to a VPC, this process can take a minute or so. During this time, you can't invoke or
    #       modify the function. The <code>State</code>, <code>StateReason</code>, and <code>StateReasonCode</code> fields in
    #       the response from <a>GetFunctionConfiguration</a> indicate when the function is ready to invoke. For
    #       more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Function
    #         States</a>.</p>
    #
    #          <p>A function has an unpublished version, and can have published versions and aliases. The unpublished version
    #       changes when you update your function's code and configuration. A published version is a snapshot of your function
    #       code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be
    #       changed to map to a different version. Use the <code>Publish</code> parameter to create version <code>1</code> of
    #       your function from its initial configuration.</p>
    #
    #          <p>The other parameters let you configure version-specific and function-level settings. You can modify
    #       version-specific settings later with <a>UpdateFunctionConfiguration</a>. Function-level settings apply
    #       to both the unpublished and published versions of the function, and include tags (<a>TagResource</a>)
    #       and per-function concurrency limits (<a>PutFunctionConcurrency</a>).</p>
    #
    #          <p>You can use code signing if your deployment package is a .zip file archive. To enable code signing for this function,
    #       specify the ARN of a code-signing configuration. When a user
    #       attempts to deploy a code package with <a>UpdateFunctionCode</a>, Lambda checks that the code
    #       package has a valid signature from a trusted publisher. The code-signing configuration
    #       includes set set of signing profiles, which define the trusted publishers for this function.</p>
    #
    #          <p>If another account or an AWS service invokes your function, use <a>AddPermission</a> to grant
    #       permission by creating a resource-based IAM policy. You can grant permissions at the function level, on a version,
    #       or on an alias.</p>
    #
    #          <p>To invoke your function directly, use <a>Invoke</a>. To invoke your function in response to events
    #       in other AWS services, create an event source mapping (<a>CreateEventSourceMapping</a>), or configure a
    #       function trigger in the other service. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html">Invoking Functions</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFunctionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>.</p>
    #
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #
    # @option params [String] :handler
    #   <p>The name of the method within your code that Lambda calls to execute your function. The format includes the
    #         file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
    #         see <a href="https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html">Programming Model</a>.</p>
    #
    # @option params [FunctionCode] :code
    #   <p>The code for the function.</p>
    #
    # @option params [String] :description
    #   <p>A description of the function.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The
    #         maximum allowed value is 900 seconds.</p>
    #
    # @option params [Integer] :memory_size
    #   <p>The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU
    #         allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #
    # @option params [Boolean] :publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
    #         When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more
    #         information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    #
    # @option params [String] :package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set <code>Zip</code> for ZIP archive.</p>
    #
    # @option params [DeadLetterConfig] :dead_letter_config
    #   <p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
    #         when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq">Dead Letter Queues</a>.</p>
    #
    # @option params [Environment] :environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment
    #         variables. If it's not provided, AWS Lambda uses a default service key.</p>
    #
    # @option params [TracingConfig] :tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS
    #         X-Ray.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> to apply to the
    #         function.</p>
    #
    # @option params [Array<String>] :layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a>
    #         to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    #
    # @option params [Array<FileSystemConfig>] :file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    # @option params [ImageConfig] :image_config
    #   <p>
    #               <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html">Container image configuration
    #         values</a> that override the values in the container image Dockerfile.</p>
    #
    # @option params [String] :code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration
    #   includes a set of signing profiles, which define the trusted publishers for this function.</p>
    #
    # @return [Types::CreateFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function(
    #     function_name: 'FunctionName', # required
    #     runtime: 'nodejs', # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #     role: 'Role', # required
    #     handler: 'Handler',
    #     code: {
    #       zip_file: 'ZipFile',
    #       s3_bucket: 'S3Bucket',
    #       s3_key: 'S3Key',
    #       s3_object_version: 'S3ObjectVersion',
    #       image_uri: 'ImageUri'
    #     }, # required
    #     description: 'Description',
    #     timeout: 1,
    #     memory_size: 1,
    #     publish: false,
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     package_type: 'Zip', # accepts Zip, Image
    #     dead_letter_config: {
    #       target_arn: 'TargetArn'
    #     },
    #     environment: {
    #       variables: {
    #         'key' => 'value'
    #       }
    #     },
    #     kms_key_arn: 'KMSKeyArn',
    #     tracing_config: {
    #       mode: 'Active' # accepts Active, PassThrough
    #     },
    #     tags: {
    #       'key' => 'value'
    #     },
    #     layers: [
    #       'member'
    #     ],
    #     file_system_configs: [
    #       {
    #         arn: 'Arn', # required
    #         local_mount_path: 'LocalMountPath' # required
    #       }
    #     ],
    #     image_config: {
    #       entry_point: [
    #         'member'
    #       ],
    #       working_directory: 'WorkingDirectory'
    #     },
    #     code_signing_config_arn: 'CodeSigningConfigArn'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::CreateFunctionOutput
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> String
    #   resp.code_sha256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config #=> Types::VpcConfigResponse
    #   resp.vpc_config.subnet_ids #=> Array<String>
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array<String>
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment #=> Types::EnvironmentResponse
    #   resp.environment.variables #=> Hash<String, String>
    #   resp.environment.variables['key'] #=> String
    #   resp.environment.error #=> Types::EnvironmentError
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config #=> Types::TracingConfigResponse
    #   resp.tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array<Layer>
    #   resp.layers[0] #=> Types::Layer
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.file_system_configs #=> Array<FileSystemConfig>
    #   resp.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of Zip, Image
    #   resp.image_config_response #=> Types::ImageConfigResponse
    #   resp.image_config_response.image_config #=> Types::ImageConfig
    #   resp.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array<String>
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error #=> Types::ImageConfigError
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #
    def create_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFunctionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFunction,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::CodeVerificationFailedException, Errors::ServiceException, Errors::InvalidCodeSignatureException, Errors::CodeSigningConfigNotFoundException, Errors::CodeStorageExceededException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::CreateFunction
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::CreateFunction,
        params_class: Params::CreateFunctionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :create_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAliasInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :member_name
    #   <p>The name of the alias.</p>
    #
    # @return [Types::DeleteAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias(
    #     function_name: 'FunctionName', # required
    #     member_name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteAliasOutput
    #
    def delete_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAliasInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAliasInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlias,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::DeleteAlias
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteAlias,
        params_class: Params::DeleteAliasOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_alias
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes the code signing configuration. You can delete the code signing configuration only if no function is
    #       using it. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCodeSigningConfigInput}.
    #
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    # @return [Types::DeleteCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_code_signing_config(
    #     code_signing_config_arn: 'CodeSigningConfigArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteCodeSigningConfigOutput
    #
    def delete_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::DeleteCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteCodeSigningConfig,
        params_class: Params::DeleteCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html">event source
    #       mapping</a>. You can get the identifier of a mapping from the output of <a>ListEventSourceMappings</a>.</p>
    #          <p>When you delete an event source mapping, it enters a <code>Deleting</code> state and might not be completely deleted for several seconds.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEventSourceMappingInput}.
    #
    # @option params [String] :uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    # @return [Types::DeleteEventSourceMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_event_source_mapping(
    #     uuid: 'UUID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteEventSourceMappingOutput
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array<String>
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array<String>
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.source_access_configurations[0].type #=> String, one of BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array<String>
    #   resp.function_response_types[0] #=> String, one of ReportBatchItemFailures
    #
    def delete_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventSourceMappingInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventSourceMappingInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventSourceMapping,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ResourceInUseException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteEventSourceMapping
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteEventSourceMapping,
        params_class: Params::DeleteEventSourceMappingOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a Lambda function. To delete a specific function version, use the <code>Qualifier</code> parameter.
    #       Otherwise, all versions and aliases are deleted.</p>
    #
    #          <p>To delete Lambda event source mappings that invoke a function, use <a>DeleteEventSourceMapping</a>.
    #       For AWS services and resources that invoke your function directly, delete the trigger in the service where you
    #       originally configured it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function or version.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version to delete. You can't delete a version that's referenced by an alias.</p>
    #
    # @return [Types::DeleteFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFunctionOutput
    #
    def delete_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunction,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::DeleteFunction
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFunction,
        params_class: Params::DeleteFunctionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Removes the code signing configuration from the function.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionCodeSigningConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @return [Types::DeleteFunctionCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_code_signing_config(
    #     function_name: 'FunctionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFunctionCodeSigningConfigOutput
    #
    def delete_function_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::CodeSigningConfigNotFoundException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::DeleteFunctionCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFunctionCodeSigningConfig,
        params_class: Params::DeleteFunctionCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_function_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Removes a concurrent execution limit from a function.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionConcurrencyInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @return [Types::DeleteFunctionConcurrencyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_concurrency(
    #     function_name: 'FunctionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFunctionConcurrencyOutput
    #
    def delete_function_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionConcurrencyInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionConcurrencyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionConcurrency,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::DeleteFunctionConcurrency
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFunctionConcurrency,
        params_class: Params::DeleteFunctionConcurrencyOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_function_concurrency
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes the configuration for asynchronous invocation for a function, version, or alias.</p>
    #          <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionEventInvokeConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    #
    # @return [Types::DeleteFunctionEventInvokeConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_event_invoke_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteFunctionEventInvokeConfigOutput
    #
    def delete_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionEventInvokeConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionEventInvokeConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionEventInvokeConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::DeleteFunctionEventInvokeConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteFunctionEventInvokeConfig,
        params_class: Params::DeleteFunctionEventInvokeConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>. Deleted versions can no longer be viewed or added to functions. To avoid
    #       breaking functions, a copy of the version remains in Lambda until no functions refer to it.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLayerVersionInput}.
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    #
    # @return [Types::DeleteLayerVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_layer_version(
    #     layer_name: 'LayerName', # required
    #     version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteLayerVersionOutput
    #
    def delete_layer_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLayerVersionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLayerVersionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLayerVersion,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::TooManyRequestsException, Errors::ServiceException]),
        data_parser: Parsers::DeleteLayerVersion
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteLayerVersion,
        params_class: Params::DeleteLayerVersionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_layer_version
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Deletes the provisioned concurrency configuration for a function.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProvisionedConcurrencyConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The version number or alias name.</p>
    #
    # @return [Types::DeleteProvisionedConcurrencyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_provisioned_concurrency_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::DeleteProvisionedConcurrencyConfigOutput
    #
    def delete_provisioned_concurrency_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProvisionedConcurrencyConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProvisionedConcurrencyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProvisionedConcurrencyConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::DeleteProvisionedConcurrencyConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::DeleteProvisionedConcurrencyConfig,
        params_class: Params::DeleteProvisionedConcurrencyConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :delete_provisioned_concurrency_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Retrieves details about your account's <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">limits</a> and usage in an AWS Region.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountSettingsInput}.
    #
    # @return [Types::GetAccountSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_settings()
    #
    # @example Response structure
    #
    #   resp #=> Types::GetAccountSettingsOutput
    #   resp.account_limit #=> Types::AccountLimit
    #   resp.account_limit.total_code_size #=> Integer
    #   resp.account_limit.code_size_unzipped #=> Integer
    #   resp.account_limit.code_size_zipped #=> Integer
    #   resp.account_limit.concurrent_executions #=> Integer
    #   resp.account_limit.unreserved_concurrent_executions #=> Integer
    #   resp.account_usage #=> Types::AccountUsage
    #   resp.account_usage.total_code_size #=> Integer
    #   resp.account_usage.function_count #=> Integer
    #
    def get_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountSettingsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountSettingsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountSettings,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ServiceException]),
        data_parser: Parsers::GetAccountSettings
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetAccountSettings,
        params_class: Params::GetAccountSettingsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_account_settings
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns details about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAliasInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :member_name
    #   <p>The name of the alias.</p>
    #
    # @return [Types::GetAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias(
    #     function_name: 'FunctionName', # required
    #     member_name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetAliasOutput
    #   resp.alias_arn #=> String
    #   resp.member_name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config #=> Types::AliasRoutingConfiguration
    #   resp.routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.routing_config.additional_version_weights['key'] #=> Float
    #   resp.revision_id #=> String
    #
    def get_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAliasInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAliasInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAlias,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetAlias
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetAlias,
        params_class: Params::GetAliasOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_alias
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns information about the specified code signing configuration.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCodeSigningConfigInput}.
    #
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration. </p>
    #
    # @return [Types::GetCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_code_signing_config(
    #     code_signing_config_arn: 'CodeSigningConfigArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetCodeSigningConfigOutput
    #   resp.code_signing_config #=> Types::CodeSigningConfig
    #   resp.code_signing_config.code_signing_config_id #=> String
    #   resp.code_signing_config.code_signing_config_arn #=> String
    #   resp.code_signing_config.description #=> String
    #   resp.code_signing_config.allowed_publishers #=> Types::AllowedPublishers
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_config.code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of Warn, Enforce
    #   resp.code_signing_config.last_modified #=> String
    #
    def get_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetCodeSigningConfig,
        params_class: Params::GetCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns details about an event source mapping. You can get the identifier of a mapping from the output of <a>ListEventSourceMappings</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetEventSourceMappingInput}.
    #
    # @option params [String] :uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    # @return [Types::GetEventSourceMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_event_source_mapping(
    #     uuid: 'UUID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetEventSourceMappingOutput
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array<String>
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array<String>
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.source_access_configurations[0].type #=> String, one of BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array<String>
    #   resp.function_response_types[0] #=> String, one of ReportBatchItemFailures
    #
    def get_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventSourceMappingInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventSourceMappingInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventSourceMapping,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetEventSourceMapping
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetEventSourceMapping,
        params_class: Params::GetEventSourceMappingOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns information about the function or function version, with a link to download the deployment package
    #       that's valid for 10 minutes. If you specify a function version, only details that are specific to that version are
    #       returned.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #
    # @return [Types::GetFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFunctionOutput
    #   resp.configuration #=> Types::FunctionConfiguration
    #   resp.configuration.function_name #=> String
    #   resp.configuration.function_arn #=> String
    #   resp.configuration.runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.configuration.role #=> String
    #   resp.configuration.handler #=> String
    #   resp.configuration.code_size #=> Integer
    #   resp.configuration.description #=> String
    #   resp.configuration.timeout #=> Integer
    #   resp.configuration.memory_size #=> Integer
    #   resp.configuration.last_modified #=> String
    #   resp.configuration.code_sha256 #=> String
    #   resp.configuration.version #=> String
    #   resp.configuration.vpc_config #=> Types::VpcConfigResponse
    #   resp.configuration.vpc_config.subnet_ids #=> Array<String>
    #   resp.configuration.vpc_config.subnet_ids[0] #=> String
    #   resp.configuration.vpc_config.security_group_ids #=> Array<String>
    #   resp.configuration.vpc_config.security_group_ids[0] #=> String
    #   resp.configuration.vpc_config.vpc_id #=> String
    #   resp.configuration.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.configuration.dead_letter_config.target_arn #=> String
    #   resp.configuration.environment #=> Types::EnvironmentResponse
    #   resp.configuration.environment.variables #=> Hash<String, String>
    #   resp.configuration.environment.variables['key'] #=> String
    #   resp.configuration.environment.error #=> Types::EnvironmentError
    #   resp.configuration.environment.error.error_code #=> String
    #   resp.configuration.environment.error.message #=> String
    #   resp.configuration.kms_key_arn #=> String
    #   resp.configuration.tracing_config #=> Types::TracingConfigResponse
    #   resp.configuration.tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.configuration.master_arn #=> String
    #   resp.configuration.revision_id #=> String
    #   resp.configuration.layers #=> Array<Layer>
    #   resp.configuration.layers[0] #=> Types::Layer
    #   resp.configuration.layers[0].arn #=> String
    #   resp.configuration.layers[0].code_size #=> Integer
    #   resp.configuration.layers[0].signing_profile_version_arn #=> String
    #   resp.configuration.layers[0].signing_job_arn #=> String
    #   resp.configuration.state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.configuration.state_reason #=> String
    #   resp.configuration.state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.configuration.last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.configuration.last_update_status_reason #=> String
    #   resp.configuration.last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.configuration.file_system_configs #=> Array<FileSystemConfig>
    #   resp.configuration.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.configuration.file_system_configs[0].arn #=> String
    #   resp.configuration.file_system_configs[0].local_mount_path #=> String
    #   resp.configuration.package_type #=> String, one of Zip, Image
    #   resp.configuration.image_config_response #=> Types::ImageConfigResponse
    #   resp.configuration.image_config_response.image_config #=> Types::ImageConfig
    #   resp.configuration.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.configuration.image_config_response.image_config.entry_point[0] #=> String
    #   resp.configuration.image_config_response.image_config.command #=> Array<String>
    #   resp.configuration.image_config_response.image_config.working_directory #=> String
    #   resp.configuration.image_config_response.error #=> Types::ImageConfigError
    #   resp.configuration.image_config_response.error.error_code #=> String
    #   resp.configuration.image_config_response.error.message #=> String
    #   resp.configuration.signing_profile_version_arn #=> String
    #   resp.configuration.signing_job_arn #=> String
    #   resp.code #=> Types::FunctionCodeLocation
    #   resp.code.repository_type #=> String
    #   resp.code.location #=> String
    #   resp.code.image_uri #=> String
    #   resp.code.resolved_image_uri #=> String
    #   resp.tags #=> Hash<String, String>
    #   resp.tags['key'] #=> String
    #   resp.concurrency #=> Types::Concurrency
    #   resp.concurrency.reserved_concurrent_executions #=> Integer
    #
    def get_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunction,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetFunction
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFunction,
        params_class: Params::GetFunctionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns the code signing configuration for the specified function.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionCodeSigningConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @return [Types::GetFunctionCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_code_signing_config(
    #     function_name: 'FunctionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFunctionCodeSigningConfigOutput
    #   resp.code_signing_config_arn #=> String
    #   resp.function_name #=> String
    #
    def get_function_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetFunctionCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFunctionCodeSigningConfig,
        params_class: Params::GetFunctionCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_function_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns details about the reserved concurrency configuration for a function. To set a concurrency limit for a
    #       function, use <a>PutFunctionConcurrency</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionConcurrencyInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @return [Types::GetFunctionConcurrencyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_concurrency(
    #     function_name: 'FunctionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFunctionConcurrencyOutput
    #   resp.reserved_concurrent_executions #=> Integer
    #
    def get_function_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionConcurrencyInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionConcurrencyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionConcurrency,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetFunctionConcurrency
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFunctionConcurrency,
        params_class: Params::GetFunctionConcurrencyOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_function_concurrency
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns the version-specific settings of a Lambda function or version. The output includes only options that
    #       can vary between versions of a function. To modify these settings, use <a>UpdateFunctionConfiguration</a>.</p>
    #          <p>To get all of a function's details, including function-level settings, use <a>GetFunction</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionConfigurationInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get details about a published version of the function.</p>
    #
    # @return [Types::GetFunctionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_configuration(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFunctionConfigurationOutput
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> String
    #   resp.code_sha256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config #=> Types::VpcConfigResponse
    #   resp.vpc_config.subnet_ids #=> Array<String>
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array<String>
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment #=> Types::EnvironmentResponse
    #   resp.environment.variables #=> Hash<String, String>
    #   resp.environment.variables['key'] #=> String
    #   resp.environment.error #=> Types::EnvironmentError
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config #=> Types::TracingConfigResponse
    #   resp.tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array<Layer>
    #   resp.layers[0] #=> Types::Layer
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.file_system_configs #=> Array<FileSystemConfig>
    #   resp.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of Zip, Image
    #   resp.image_config_response #=> Types::ImageConfigResponse
    #   resp.image_config_response.image_config #=> Types::ImageConfig
    #   resp.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array<String>
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error #=> Types::ImageConfigError
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #
    def get_function_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionConfigurationInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionConfigurationInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionConfiguration,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetFunctionConfiguration
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFunctionConfiguration,
        params_class: Params::GetFunctionConfigurationOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_function_configuration
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Retrieves the configuration for asynchronous invocation for a function, version, or alias.</p>
    #          <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionEventInvokeConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    #
    # @return [Types::GetFunctionEventInvokeConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_event_invoke_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetFunctionEventInvokeConfigOutput
    #   resp.last_modified #=> Time
    #   resp.function_arn #=> String
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.maximum_event_age_in_seconds #=> Integer
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #
    def get_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionEventInvokeConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionEventInvokeConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionEventInvokeConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetFunctionEventInvokeConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetFunctionEventInvokeConfig,
        params_class: Params::GetFunctionEventInvokeConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns information about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>, with a link to download the layer archive
    #         that's valid for 10 minutes.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLayerVersionInput}.
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    #
    # @return [Types::GetLayerVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version(
    #     layer_name: 'LayerName', # required
    #     version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetLayerVersionOutput
    #   resp.content #=> Types::LayerVersionContentOutput
    #   resp.content.location #=> String
    #   resp.content.code_sha256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.content.signing_profile_version_arn #=> String
    #   resp.content.signing_job_arn #=> String
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> String
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array<String>
    #   resp.compatible_runtimes[0] #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.license_info #=> String
    #
    def get_layer_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLayerVersionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLayerVersionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLayerVersion,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetLayerVersion
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetLayerVersion,
        params_class: Params::GetLayerVersionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_layer_version
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns information about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>, with a link to download the layer archive
    #         that's valid for 10 minutes.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLayerVersionByArnInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the layer version.</p>
    #
    # @return [Types::GetLayerVersionByArnOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version_by_arn(
    #     arn: 'Arn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetLayerVersionByArnOutput
    #   resp.content #=> Types::LayerVersionContentOutput
    #   resp.content.location #=> String
    #   resp.content.code_sha256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.content.signing_profile_version_arn #=> String
    #   resp.content.signing_job_arn #=> String
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> String
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array<String>
    #   resp.compatible_runtimes[0] #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.license_info #=> String
    #
    def get_layer_version_by_arn(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLayerVersionByArnInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLayerVersionByArnInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLayerVersionByArn,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetLayerVersionByArn
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetLayerVersionByArn,
        params_class: Params::GetLayerVersionByArnOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_layer_version_by_arn
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns the permission policy for a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>. For more information, see <a>AddLayerVersionPermission</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLayerVersionPolicyInput}.
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    #
    # @return [Types::GetLayerVersionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_layer_version_policy(
    #     layer_name: 'LayerName', # required
    #     version_number: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetLayerVersionPolicyOutput
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    def get_layer_version_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLayerVersionPolicyInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLayerVersionPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLayerVersionPolicy,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetLayerVersionPolicy
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetLayerVersionPolicy,
        params_class: Params::GetLayerVersionPolicyOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_layer_version_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns the <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">resource-based IAM policy</a> for a function, version, or alias.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to get the policy for that resource.</p>
    #
    # @return [Types::GetPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetPolicyOutput
    #   resp.policy #=> String
    #   resp.revision_id #=> String
    #
    def get_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicy,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetPolicy
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetPolicy,
        params_class: Params::GetPolicyOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_policy
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Retrieves the provisioned concurrency configuration for a function's alias or version.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProvisionedConcurrencyConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The version number or alias name.</p>
    #
    # @return [Types::GetProvisionedConcurrencyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_provisioned_concurrency_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::GetProvisionedConcurrencyConfigOutput
    #   resp.requested_provisioned_concurrent_executions #=> Integer
    #   resp.available_provisioned_concurrent_executions #=> Integer
    #   resp.allocated_provisioned_concurrent_executions #=> Integer
    #   resp.status #=> String, one of IN_PROGRESS, READY, FAILED
    #   resp.status_reason #=> String
    #   resp.last_modified #=> String
    #
    def get_provisioned_concurrency_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProvisionedConcurrencyConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProvisionedConcurrencyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProvisionedConcurrencyConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ProvisionedConcurrencyConfigNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::GetProvisionedConcurrencyConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::GetProvisionedConcurrencyConfig,
        params_class: Params::GetProvisionedConcurrencyConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :get_provisioned_concurrency_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or
    #       asynchronously. To invoke a function asynchronously, set <code>InvocationType</code> to <code>Event</code>.</p>
    #
    #          <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html">synchronous invocation</a>,
    #       details about the function response, including errors, are included in the response body and headers. For either
    #       invocation type, you can find more information in the <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html">execution log</a> and <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html">trace</a>.</p>
    #
    #          <p>When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type,
    #       client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an
    #       error, Lambda executes the function up to two more times. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/retries-on-errors.html">Retry Behavior</a>.</p>
    #
    #          <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous invocation</a>,
    #       Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity
    #       to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple
    #       times, even if no error occurs. To retain events that were not processed, configure your function with a <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq">dead-letter queue</a>.</p>
    #
    #          <p>The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that
    #       prevent your function from executing, such as permissions errors, <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">limit errors</a>, or issues with your function's code and configuration.
    #       For example, Lambda returns <code>TooManyRequestsException</code> if executing the function would cause you to
    #       exceed a concurrency limit at either the account level (<code>ConcurrentInvocationLimitExceeded</code>) or
    #       function level (<code>ReservedFunctionConcurrentInvocationLimitExceeded</code>).</p>
    #
    #          <p>For functions with a long timeout, your client might be disconnected during synchronous invocation while it
    #       waits for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long
    #       connections with timeout or keep-alive settings.</p>
    #
    #          <p>This operation requires permission for the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a> action.</p>
    #
    # @param [Hash] params
    #   See {Types::InvokeInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :invocation_type
    #   <p>Choose from the following options.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RequestResponse</code> (default) - Invoke the function synchronously. Keep the connection open until
    #             the function returns a response or times out. The API response includes the function response and additional
    #             data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Event</code> - Invoke the function asynchronously. Send events that fail multiple times to the
    #             function's dead-letter queue (if it's configured). The API response only includes a status code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DryRun</code> - Validate parameter values and verify that the user or role has permission to invoke
    #             the function.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response.</p>
    #
    # @option params [String] :client_context
    #   <p>Up to 3583 bytes of base64-encoded data about the invoking client to pass to the function in the context
    #         object.</p>
    #
    # @option params [String] :payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to invoke a published version of the function.</p>
    #
    # @return [Types::InvokeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke(
    #     function_name: 'FunctionName', # required
    #     invocation_type: 'Event', # accepts Event, RequestResponse, DryRun
    #     log_type: 'None', # accepts None, Tail
    #     client_context: 'ClientContext',
    #     payload: 'Payload',
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::InvokeOutput
    #   resp.status_code #=> Integer
    #   resp.function_error #=> String
    #   resp.log_result #=> String
    #   resp.payload #=> String
    #   resp.executed_version #=> String
    #
    def invoke(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Invoke,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::KMSNotFoundException, Errors::InvalidSubnetIDException, Errors::ServiceException, Errors::KMSDisabledException, Errors::EFSIOException, Errors::EFSMountConnectivityException, Errors::EFSMountFailureException, Errors::TooManyRequestsException, Errors::ResourceNotReadyException, Errors::InvalidZipFileException, Errors::InvalidParameterValueException, Errors::InvalidRequestContentException, Errors::EC2ThrottledException, Errors::SubnetIPAddressLimitReachedException, Errors::InvalidSecurityGroupIDException, Errors::RequestTooLargeException, Errors::UnsupportedMediaTypeException, Errors::EFSMountTimeoutException, Errors::ENILimitReachedException, Errors::EC2UnexpectedException, Errors::EC2AccessDeniedException, Errors::InvalidRuntimeException, Errors::KMSAccessDeniedException, Errors::KMSInvalidStateException, Errors::ResourceConflictException]),
        data_parser: Parsers::Invoke
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::Invoke,
        params_class: Params::InvokeOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :invoke
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <important>
    #             <p>For asynchronous function invocation, use <a>Invoke</a>.</p>
    #          </important>
    #          <p>Invokes a function asynchronously.</p>
    #
    # @deprecated
    #
    # @param [Hash] params
    #   See {Types::InvokeAsyncInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :invoke_args
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #
    # @return [Types::InvokeAsyncOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invoke_async(
    #     function_name: 'FunctionName', # required
    #     invoke_args: 'InvokeArgs' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::InvokeAsyncOutput
    #   resp.status #=> Integer
    #
    def invoke_async(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeAsyncInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeAsyncInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvokeAsync,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::InvalidRuntimeException, Errors::ServiceException, Errors::InvalidRequestContentException, Errors::ResourceConflictException]),
        data_parser: Parsers::InvokeAsync
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::InvokeAsync,
        params_class: Params::InvokeAsyncOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :invoke_async
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">aliases</a>
    #       for a Lambda function.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAliasesInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :function_version
    #   <p>Specify a function version to only list aliases that invoke that version.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Limit the number of aliases returned.</p>
    #
    # @return [Types::ListAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases(
    #     function_name: 'FunctionName', # required
    #     function_version: 'FunctionVersion',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListAliasesOutput
    #   resp.next_marker #=> String
    #   resp.aliases #=> Array<AliasConfiguration>
    #   resp.aliases[0] #=> Types::AliasConfiguration
    #   resp.aliases[0].alias_arn #=> String
    #   resp.aliases[0].member_name #=> String
    #   resp.aliases[0].function_version #=> String
    #   resp.aliases[0].description #=> String
    #   resp.aliases[0].routing_config #=> Types::AliasRoutingConfiguration
    #   resp.aliases[0].routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.aliases[0].routing_config.additional_version_weights['key'] #=> Float
    #   resp.aliases[0].revision_id #=> String
    #
    def list_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAliasesInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAliasesInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAliases,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListAliases
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListAliases,
        params_class: Params::ListAliasesOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_aliases
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html">code
    #         signing configurations</a>. A request returns up to 10,000 configurations per
    #       call. You can use the <code>MaxItems</code> parameter to return fewer configurations per call. </p>
    #
    # @param [Hash] params
    #   See {Types::ListCodeSigningConfigsInput}.
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Maximum number of items to return.</p>
    #
    # @return [Types::ListCodeSigningConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_code_signing_configs(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListCodeSigningConfigsOutput
    #   resp.next_marker #=> String
    #   resp.code_signing_configs #=> Array<CodeSigningConfig>
    #   resp.code_signing_configs[0] #=> Types::CodeSigningConfig
    #   resp.code_signing_configs[0].code_signing_config_id #=> String
    #   resp.code_signing_configs[0].code_signing_config_arn #=> String
    #   resp.code_signing_configs[0].description #=> String
    #   resp.code_signing_configs[0].allowed_publishers #=> Types::AllowedPublishers
    #   resp.code_signing_configs[0].allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.code_signing_configs[0].allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_configs[0].code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.code_signing_configs[0].code_signing_policies.untrusted_artifact_on_deployment #=> String, one of Warn, Enforce
    #   resp.code_signing_configs[0].last_modified #=> String
    #
    def list_code_signing_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCodeSigningConfigsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCodeSigningConfigsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCodeSigningConfigs,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListCodeSigningConfigs
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListCodeSigningConfigs,
        params_class: Params::ListCodeSigningConfigsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_code_signing_configs
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Lists event source mappings. Specify an <code>EventSourceArn</code> to only show event source mappings for a
    #       single event source.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEventSourceMappingsInput}.
    #
    # @option params [String] :event_source_arn
    #   <p>The Amazon Resource Name (ARN) of the event source.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - The ARN of the data stream or a stream consumer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - The ARN of the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - The ARN of the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - The ARN of the cluster.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of event source mappings to return.</p>
    #
    # @return [Types::ListEventSourceMappingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_event_source_mappings(
    #     event_source_arn: 'EventSourceArn',
    #     function_name: 'FunctionName',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListEventSourceMappingsOutput
    #   resp.next_marker #=> String
    #   resp.event_source_mappings #=> Array<EventSourceMappingConfiguration>
    #   resp.event_source_mappings[0] #=> Types::EventSourceMappingConfiguration
    #   resp.event_source_mappings[0].uuid #=> String
    #   resp.event_source_mappings[0].starting_position #=> String, one of TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #   resp.event_source_mappings[0].starting_position_timestamp #=> Time
    #   resp.event_source_mappings[0].batch_size #=> Integer
    #   resp.event_source_mappings[0].maximum_batching_window_in_seconds #=> Integer
    #   resp.event_source_mappings[0].parallelization_factor #=> Integer
    #   resp.event_source_mappings[0].event_source_arn #=> String
    #   resp.event_source_mappings[0].function_arn #=> String
    #   resp.event_source_mappings[0].last_modified #=> Time
    #   resp.event_source_mappings[0].last_processing_result #=> String
    #   resp.event_source_mappings[0].state #=> String
    #   resp.event_source_mappings[0].state_transition_reason #=> String
    #   resp.event_source_mappings[0].destination_config #=> Types::DestinationConfig
    #   resp.event_source_mappings[0].destination_config.on_success #=> Types::OnSuccess
    #   resp.event_source_mappings[0].destination_config.on_success.destination #=> String
    #   resp.event_source_mappings[0].destination_config.on_failure #=> Types::OnFailure
    #   resp.event_source_mappings[0].destination_config.on_failure.destination #=> String
    #   resp.event_source_mappings[0].topics #=> Array<String>
    #   resp.event_source_mappings[0].topics[0] #=> String
    #   resp.event_source_mappings[0].queues #=> Array<String>
    #   resp.event_source_mappings[0].queues[0] #=> String
    #   resp.event_source_mappings[0].source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.event_source_mappings[0].source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.event_source_mappings[0].source_access_configurations[0].type #=> String, one of BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #   resp.event_source_mappings[0].source_access_configurations[0].uri #=> String
    #   resp.event_source_mappings[0].self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.event_source_mappings[0].self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.event_source_mappings[0].self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.event_source_mappings[0].self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.event_source_mappings[0].maximum_record_age_in_seconds #=> Integer
    #   resp.event_source_mappings[0].bisect_batch_on_function_error #=> Boolean
    #   resp.event_source_mappings[0].maximum_retry_attempts #=> Integer
    #   resp.event_source_mappings[0].tumbling_window_in_seconds #=> Integer
    #   resp.event_source_mappings[0].function_response_types #=> Array<String>
    #   resp.event_source_mappings[0].function_response_types[0] #=> String, one of ReportBatchItemFailures
    #
    def list_event_source_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventSourceMappingsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventSourceMappingsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventSourceMappings,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListEventSourceMappings
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListEventSourceMappings,
        params_class: Params::ListEventSourceMappingsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_event_source_mappings
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Retrieves a list of configurations for asynchronous invocation for a function.</p>
    #          <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionEventInvokeConfigsInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of configurations to return.</p>
    #
    # @return [Types::ListFunctionEventInvokeConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_event_invoke_configs(
    #     function_name: 'FunctionName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListFunctionEventInvokeConfigsOutput
    #   resp.function_event_invoke_configs #=> Array<FunctionEventInvokeConfig>
    #   resp.function_event_invoke_configs[0] #=> Types::FunctionEventInvokeConfig
    #   resp.function_event_invoke_configs[0].last_modified #=> Time
    #   resp.function_event_invoke_configs[0].function_arn #=> String
    #   resp.function_event_invoke_configs[0].maximum_retry_attempts #=> Integer
    #   resp.function_event_invoke_configs[0].maximum_event_age_in_seconds #=> Integer
    #   resp.function_event_invoke_configs[0].destination_config #=> Types::DestinationConfig
    #   resp.function_event_invoke_configs[0].destination_config.on_success #=> Types::OnSuccess
    #   resp.function_event_invoke_configs[0].destination_config.on_success.destination #=> String
    #   resp.function_event_invoke_configs[0].destination_config.on_failure #=> Types::OnFailure
    #   resp.function_event_invoke_configs[0].destination_config.on_failure.destination #=> String
    #   resp.next_marker #=> String
    #
    def list_function_event_invoke_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionEventInvokeConfigsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionEventInvokeConfigsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionEventInvokeConfigs,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListFunctionEventInvokeConfigs
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListFunctionEventInvokeConfigs,
        params_class: Params::ListFunctionEventInvokeConfigsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_function_event_invoke_configs
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50
    #       functions per call.</p>
    #          <p>Set <code>FunctionVersion</code> to <code>ALL</code> to include all published versions of each function in
    #       addition to the unpublished version. </p>
    #          <note>
    #             <p>The <code>ListFunctions</code> action returns a subset of the <a>FunctionConfiguration</a> fields.
    #       To get the additional fields (State, StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode)
    #       for a function or version, use <a>GetFunction</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionsInput}.
    #
    # @option params [String] :master_region
    #   <p>For Lambda@Edge functions, the AWS Region of the master function. For example, <code>us-east-1</code> filters
    #         the list of functions to only include Lambda@Edge functions replicated from a master function in US East (N.
    #         Virginia). If specified, you must set <code>FunctionVersion</code> to <code>ALL</code>.</p>
    #
    # @option params [String] :function_version
    #   <p>Set to <code>ALL</code> to include entries for all published versions of each function.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of functions to return in the response. Note that <code>ListFunctions</code> returns a maximum of 50 items in each response,
    #         even if you set the number higher.</p>
    #
    # @return [Types::ListFunctionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions(
    #     master_region: 'MasterRegion',
    #     function_version: 'ALL', # accepts ALL
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListFunctionsOutput
    #   resp.next_marker #=> String
    #   resp.functions #=> Array<FunctionConfiguration>
    #   resp.functions[0] #=> Types::FunctionConfiguration
    #   resp.functions[0].function_name #=> String
    #   resp.functions[0].function_arn #=> String
    #   resp.functions[0].runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.functions[0].role #=> String
    #   resp.functions[0].handler #=> String
    #   resp.functions[0].code_size #=> Integer
    #   resp.functions[0].description #=> String
    #   resp.functions[0].timeout #=> Integer
    #   resp.functions[0].memory_size #=> Integer
    #   resp.functions[0].last_modified #=> String
    #   resp.functions[0].code_sha256 #=> String
    #   resp.functions[0].version #=> String
    #   resp.functions[0].vpc_config #=> Types::VpcConfigResponse
    #   resp.functions[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.functions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.functions[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.functions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.functions[0].vpc_config.vpc_id #=> String
    #   resp.functions[0].dead_letter_config #=> Types::DeadLetterConfig
    #   resp.functions[0].dead_letter_config.target_arn #=> String
    #   resp.functions[0].environment #=> Types::EnvironmentResponse
    #   resp.functions[0].environment.variables #=> Hash<String, String>
    #   resp.functions[0].environment.variables['key'] #=> String
    #   resp.functions[0].environment.error #=> Types::EnvironmentError
    #   resp.functions[0].environment.error.error_code #=> String
    #   resp.functions[0].environment.error.message #=> String
    #   resp.functions[0].kms_key_arn #=> String
    #   resp.functions[0].tracing_config #=> Types::TracingConfigResponse
    #   resp.functions[0].tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.functions[0].master_arn #=> String
    #   resp.functions[0].revision_id #=> String
    #   resp.functions[0].layers #=> Array<Layer>
    #   resp.functions[0].layers[0] #=> Types::Layer
    #   resp.functions[0].layers[0].arn #=> String
    #   resp.functions[0].layers[0].code_size #=> Integer
    #   resp.functions[0].layers[0].signing_profile_version_arn #=> String
    #   resp.functions[0].layers[0].signing_job_arn #=> String
    #   resp.functions[0].state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.functions[0].state_reason #=> String
    #   resp.functions[0].state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.functions[0].last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.functions[0].last_update_status_reason #=> String
    #   resp.functions[0].last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.functions[0].file_system_configs #=> Array<FileSystemConfig>
    #   resp.functions[0].file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.functions[0].file_system_configs[0].arn #=> String
    #   resp.functions[0].file_system_configs[0].local_mount_path #=> String
    #   resp.functions[0].package_type #=> String, one of Zip, Image
    #   resp.functions[0].image_config_response #=> Types::ImageConfigResponse
    #   resp.functions[0].image_config_response.image_config #=> Types::ImageConfig
    #   resp.functions[0].image_config_response.image_config.entry_point #=> Array<String>
    #   resp.functions[0].image_config_response.image_config.entry_point[0] #=> String
    #   resp.functions[0].image_config_response.image_config.command #=> Array<String>
    #   resp.functions[0].image_config_response.image_config.working_directory #=> String
    #   resp.functions[0].image_config_response.error #=> Types::ImageConfigError
    #   resp.functions[0].image_config_response.error.error_code #=> String
    #   resp.functions[0].image_config_response.error.message #=> String
    #   resp.functions[0].signing_profile_version_arn #=> String
    #   resp.functions[0].signing_job_arn #=> String
    #
    def list_functions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctions,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListFunctions
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListFunctions,
        params_class: Params::ListFunctionsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_functions
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>List the functions that use the specified code signing configuration. You can use this method prior to deleting a
    #       code signing configuration, to verify that no functions are using it.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionsByCodeSigningConfigInput}.
    #
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Maximum number of items to return.</p>
    #
    # @return [Types::ListFunctionsByCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_functions_by_code_signing_config(
    #     code_signing_config_arn: 'CodeSigningConfigArn', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListFunctionsByCodeSigningConfigOutput
    #   resp.next_marker #=> String
    #   resp.function_arns #=> Array<String>
    #   resp.function_arns[0] #=> String
    #
    def list_functions_by_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionsByCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionsByCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionsByCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListFunctionsByCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListFunctionsByCodeSigningConfig,
        params_class: Params::ListFunctionsByCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_functions_by_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Lists the versions of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>. Versions that have been deleted aren't listed. Specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime identifier</a> to list only
    #       versions that indicate that they're compatible with that runtime.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLayerVersionsInput}.
    #
    # @option params [String] :compatible_runtime
    #   <p>A runtime identifier. For example, <code>go1.x</code>.</p>
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of versions to return.</p>
    #
    # @return [Types::ListLayerVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layer_versions(
    #     compatible_runtime: 'nodejs', # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #     layer_name: 'LayerName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListLayerVersionsOutput
    #   resp.next_marker #=> String
    #   resp.layer_versions #=> Array<LayerVersionsListItem>
    #   resp.layer_versions[0] #=> Types::LayerVersionsListItem
    #   resp.layer_versions[0].layer_version_arn #=> String
    #   resp.layer_versions[0].version #=> Integer
    #   resp.layer_versions[0].description #=> String
    #   resp.layer_versions[0].created_date #=> String
    #   resp.layer_versions[0].compatible_runtimes #=> Array<String>
    #   resp.layer_versions[0].compatible_runtimes[0] #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.layer_versions[0].license_info #=> String
    #
    def list_layer_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLayerVersionsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLayerVersionsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLayerVersions,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListLayerVersions
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListLayerVersions,
        params_class: Params::ListLayerVersionsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_layer_versions
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Lists <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layers</a> and shows information about the latest version of each. Specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime identifier</a> to list only layers
    #       that indicate that they're compatible with that runtime.</p>
    #
    # @param [Hash] params
    #   See {Types::ListLayersInput}.
    #
    # @option params [String] :compatible_runtime
    #   <p>A runtime identifier. For example, <code>go1.x</code>.</p>
    #
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of layers to return.</p>
    #
    # @return [Types::ListLayersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layers(
    #     compatible_runtime: 'nodejs', # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListLayersOutput
    #   resp.next_marker #=> String
    #   resp.layers #=> Array<LayersListItem>
    #   resp.layers[0] #=> Types::LayersListItem
    #   resp.layers[0].layer_name #=> String
    #   resp.layers[0].layer_arn #=> String
    #   resp.layers[0].latest_matching_version #=> Types::LayerVersionsListItem
    #   resp.layers[0].latest_matching_version.layer_version_arn #=> String
    #   resp.layers[0].latest_matching_version.version #=> Integer
    #   resp.layers[0].latest_matching_version.description #=> String
    #   resp.layers[0].latest_matching_version.created_date #=> String
    #   resp.layers[0].latest_matching_version.compatible_runtimes #=> Array<String>
    #   resp.layers[0].latest_matching_version.compatible_runtimes[0] #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.layers[0].latest_matching_version.license_info #=> String
    #
    def list_layers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLayersInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLayersInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLayers,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListLayers
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListLayers,
        params_class: Params::ListLayersOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_layers
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Retrieves a list of provisioned concurrency configurations for a function.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProvisionedConcurrencyConfigsInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Specify a number to limit the number of configurations returned.</p>
    #
    # @return [Types::ListProvisionedConcurrencyConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_provisioned_concurrency_configs(
    #     function_name: 'FunctionName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListProvisionedConcurrencyConfigsOutput
    #   resp.provisioned_concurrency_configs #=> Array<ProvisionedConcurrencyConfigListItem>
    #   resp.provisioned_concurrency_configs[0] #=> Types::ProvisionedConcurrencyConfigListItem
    #   resp.provisioned_concurrency_configs[0].function_arn #=> String
    #   resp.provisioned_concurrency_configs[0].requested_provisioned_concurrent_executions #=> Integer
    #   resp.provisioned_concurrency_configs[0].available_provisioned_concurrent_executions #=> Integer
    #   resp.provisioned_concurrency_configs[0].allocated_provisioned_concurrent_executions #=> Integer
    #   resp.provisioned_concurrency_configs[0].status #=> String, one of IN_PROGRESS, READY, FAILED
    #   resp.provisioned_concurrency_configs[0].status_reason #=> String
    #   resp.provisioned_concurrency_configs[0].last_modified #=> String
    #   resp.next_marker #=> String
    #
    def list_provisioned_concurrency_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisionedConcurrencyConfigsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisionedConcurrencyConfigsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisionedConcurrencyConfigs,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListProvisionedConcurrencyConfigs
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListProvisionedConcurrencyConfigs,
        params_class: Params::ListProvisionedConcurrencyConfigsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_provisioned_concurrency_configs
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>. You can
    #       also view tags with <a>GetFunction</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    # @return [Types::ListTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags(
    #     resource: 'Resource' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListTagsOutput
    #   resp.tags #=> Hash<String, String>
    #   resp.tags['key'] #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListTags
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListTags,
        params_class: Params::ListTagsOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">versions</a>,
    #       with the version-specific configuration of each. Lambda returns up to 50 versions per call.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVersionsByFunctionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of versions to return.</p>
    #
    # @return [Types::ListVersionsByFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_versions_by_function(
    #     function_name: 'FunctionName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::ListVersionsByFunctionOutput
    #   resp.next_marker #=> String
    #   resp.versions #=> Array<FunctionConfiguration>
    #   resp.versions[0] #=> Types::FunctionConfiguration
    #   resp.versions[0].function_name #=> String
    #   resp.versions[0].function_arn #=> String
    #   resp.versions[0].runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.versions[0].role #=> String
    #   resp.versions[0].handler #=> String
    #   resp.versions[0].code_size #=> Integer
    #   resp.versions[0].description #=> String
    #   resp.versions[0].timeout #=> Integer
    #   resp.versions[0].memory_size #=> Integer
    #   resp.versions[0].last_modified #=> String
    #   resp.versions[0].code_sha256 #=> String
    #   resp.versions[0].version #=> String
    #   resp.versions[0].vpc_config #=> Types::VpcConfigResponse
    #   resp.versions[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.versions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.versions[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.versions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.versions[0].vpc_config.vpc_id #=> String
    #   resp.versions[0].dead_letter_config #=> Types::DeadLetterConfig
    #   resp.versions[0].dead_letter_config.target_arn #=> String
    #   resp.versions[0].environment #=> Types::EnvironmentResponse
    #   resp.versions[0].environment.variables #=> Hash<String, String>
    #   resp.versions[0].environment.variables['key'] #=> String
    #   resp.versions[0].environment.error #=> Types::EnvironmentError
    #   resp.versions[0].environment.error.error_code #=> String
    #   resp.versions[0].environment.error.message #=> String
    #   resp.versions[0].kms_key_arn #=> String
    #   resp.versions[0].tracing_config #=> Types::TracingConfigResponse
    #   resp.versions[0].tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.versions[0].master_arn #=> String
    #   resp.versions[0].revision_id #=> String
    #   resp.versions[0].layers #=> Array<Layer>
    #   resp.versions[0].layers[0] #=> Types::Layer
    #   resp.versions[0].layers[0].arn #=> String
    #   resp.versions[0].layers[0].code_size #=> Integer
    #   resp.versions[0].layers[0].signing_profile_version_arn #=> String
    #   resp.versions[0].layers[0].signing_job_arn #=> String
    #   resp.versions[0].state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.versions[0].state_reason #=> String
    #   resp.versions[0].state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.versions[0].last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.versions[0].last_update_status_reason #=> String
    #   resp.versions[0].last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.versions[0].file_system_configs #=> Array<FileSystemConfig>
    #   resp.versions[0].file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.versions[0].file_system_configs[0].arn #=> String
    #   resp.versions[0].file_system_configs[0].local_mount_path #=> String
    #   resp.versions[0].package_type #=> String, one of Zip, Image
    #   resp.versions[0].image_config_response #=> Types::ImageConfigResponse
    #   resp.versions[0].image_config_response.image_config #=> Types::ImageConfig
    #   resp.versions[0].image_config_response.image_config.entry_point #=> Array<String>
    #   resp.versions[0].image_config_response.image_config.entry_point[0] #=> String
    #   resp.versions[0].image_config_response.image_config.command #=> Array<String>
    #   resp.versions[0].image_config_response.image_config.working_directory #=> String
    #   resp.versions[0].image_config_response.error #=> Types::ImageConfigError
    #   resp.versions[0].image_config_response.error.error_code #=> String
    #   resp.versions[0].image_config_response.error.message #=> String
    #   resp.versions[0].signing_profile_version_arn #=> String
    #   resp.versions[0].signing_job_arn #=> String
    #
    def list_versions_by_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVersionsByFunctionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVersionsByFunctionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVersionsByFunction,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::ListVersionsByFunction
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::ListVersionsByFunction,
        params_class: Params::ListVersionsByFunctionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :list_versions_by_function
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a> from a ZIP archive. Each time you call <code>PublishLayerVersion</code> with the same
    #       layer name, a new version is created.</p>
    #          <p>Add layers to your function with <a>CreateFunction</a> or <a>UpdateFunctionConfiguration</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishLayerVersionInput}.
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [String] :description
    #   <p>The description of the version.</p>
    #
    # @option params [LayerVersionContentInput] :content
    #   <p>The function layer archive.</p>
    #
    # @option params [Array<String>] :compatible_runtimes
    #   <p>A list of compatible <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">function
    #           runtimes</a>. Used for filtering with <a>ListLayers</a> and <a>ListLayerVersions</a>.</p>
    #
    # @option params [String] :license_info
    #   <p>The layer's software license. It can be any of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>An <a href="https://spdx.org/licenses/">SPDX license identifier</a>. For example,
    #             <code>MIT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The URL of a license hosted on the internet. For example,
    #             <code>https://opensource.org/licenses/MIT</code>.</p>
    #               </li>
    #               <li>
    #                  <p>The full text of the license.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PublishLayerVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_layer_version(
    #     layer_name: 'LayerName', # required
    #     description: 'Description',
    #     content: {
    #       s3_bucket: 'S3Bucket',
    #       s3_key: 'S3Key',
    #       s3_object_version: 'S3ObjectVersion',
    #       zip_file: 'ZipFile'
    #     }, # required
    #     compatible_runtimes: [
    #       'nodejs' # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #     ],
    #     license_info: 'LicenseInfo'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PublishLayerVersionOutput
    #   resp.content #=> Types::LayerVersionContentOutput
    #   resp.content.location #=> String
    #   resp.content.code_sha256 #=> String
    #   resp.content.code_size #=> Integer
    #   resp.content.signing_profile_version_arn #=> String
    #   resp.content.signing_job_arn #=> String
    #   resp.layer_arn #=> String
    #   resp.layer_version_arn #=> String
    #   resp.description #=> String
    #   resp.created_date #=> String
    #   resp.version #=> Integer
    #   resp.compatible_runtimes #=> Array<String>
    #   resp.compatible_runtimes[0] #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.license_info #=> String
    #
    def publish_layer_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishLayerVersionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishLayerVersionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishLayerVersion,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::CodeStorageExceededException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::PublishLayerVersion
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PublishLayerVersion,
        params_class: Params::PublishLayerVersionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :publish_layer_version
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Creates a <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">version</a> from the
    #       current code and configuration of a function. Use versions to create a snapshot of your function code and
    #       configuration that doesn't change.</p>
    #
    #          <p>AWS Lambda doesn't publish a version if the function's configuration and code haven't changed since the last
    #       version. Use <a>UpdateFunctionCode</a> or <a>UpdateFunctionConfiguration</a> to update the
    #       function before publishing a version.</p>
    #
    #          <p>Clients can invoke versions directly or with an alias. To create an alias, use <a>CreateAlias</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PublishVersionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :code_sha256
    #   <p>Only publish a version if the hash value matches the value that's specified. Use this option to avoid
    #         publishing a version if the function code has changed since you last updated it. You can get the hash for the
    #         version that you uploaded from the output of <a>UpdateFunctionCode</a>.</p>
    #
    # @option params [String] :description
    #   <p>A description for the version to override the description in the function configuration.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid
    #         publishing a version if the function configuration has changed since you last updated it.</p>
    #
    # @return [Types::PublishVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.publish_version(
    #     function_name: 'FunctionName', # required
    #     code_sha256: 'CodeSha256',
    #     description: 'Description',
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PublishVersionOutput
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> String
    #   resp.code_sha256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config #=> Types::VpcConfigResponse
    #   resp.vpc_config.subnet_ids #=> Array<String>
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array<String>
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment #=> Types::EnvironmentResponse
    #   resp.environment.variables #=> Hash<String, String>
    #   resp.environment.variables['key'] #=> String
    #   resp.environment.error #=> Types::EnvironmentError
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config #=> Types::TracingConfigResponse
    #   resp.tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array<Layer>
    #   resp.layers[0] #=> Types::Layer
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.file_system_configs #=> Array<FileSystemConfig>
    #   resp.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of Zip, Image
    #   resp.image_config_response #=> Types::ImageConfigResponse
    #   resp.image_config_response.image_config #=> Types::ImageConfig
    #   resp.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array<String>
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error #=> Types::ImageConfigError
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #
    def publish_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishVersionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishVersionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishVersion,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 201, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::CodeStorageExceededException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::PublishVersion
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PublishVersion,
        params_class: Params::PublishVersionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :publish_version
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update the code signing configuration for the function. Changes to the code signing configuration take effect the
    #       next time a user tries to deploy a code package to the function. </p>
    #
    # @param [Hash] params
    #   See {Types::PutFunctionCodeSigningConfigInput}.
    #
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @return [Types::PutFunctionCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_code_signing_config(
    #     code_signing_config_arn: 'CodeSigningConfigArn', # required
    #     function_name: 'FunctionName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PutFunctionCodeSigningConfigOutput
    #   resp.code_signing_config_arn #=> String
    #   resp.function_name #=> String
    #
    def put_function_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFunctionCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFunctionCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFunctionCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::CodeSigningConfigNotFoundException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::PutFunctionCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PutFunctionCodeSigningConfig,
        params_class: Params::PutFunctionCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :put_function_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency
    #       level.</p>
    #          <p>Concurrency settings apply to the function as a whole, including all published versions and the unpublished
    #       version. Reserving concurrency both ensures that your function has capacity to process the specified number of
    #       events simultaneously, and prevents it from scaling beyond that level. Use <a>GetFunction</a> to see
    #       the current setting for a function.</p>
    #          <p>Use <a>GetAccountSettings</a> to see your Regional concurrency limit. You can reserve concurrency
    #       for as many functions as you like, as long as you leave at least 100 simultaneous executions unreserved for
    #       functions that aren't configured with a per-function limit. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html">Managing Concurrency</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutFunctionConcurrencyInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [Integer] :reserved_concurrent_executions
    #   <p>The number of simultaneous executions to reserve for the function.</p>
    #
    # @return [Types::PutFunctionConcurrencyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_concurrency(
    #     function_name: 'FunctionName', # required
    #     reserved_concurrent_executions: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PutFunctionConcurrencyOutput
    #   resp.reserved_concurrent_executions #=> Integer
    #
    def put_function_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFunctionConcurrencyInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFunctionConcurrencyInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFunctionConcurrency,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::PutFunctionConcurrency
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PutFunctionConcurrency,
        params_class: Params::PutFunctionConcurrencyOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :put_function_concurrency
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Configures options for <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous
    #         invocation</a> on a function, version, or alias. If a configuration already exists for a function, version,
    #       or alias, this operation overwrites it. If you exclude any settings, they are removed. To set one option without
    #       affecting existing settings for other options, use <a>UpdateFunctionEventInvokeConfig</a>.</p>
    #          <p>By default, Lambda retries an asynchronous invocation twice if the function returns an error. It retains
    #       events in a queue for up to six hours. When an event fails all processing attempts or stays in the asynchronous
    #       invocation queue for too long, Lambda discards it. To retain discarded events, configure a dead-letter queue with
    #         <a>UpdateFunctionConfiguration</a>.</p>
    #          <p>To send an invocation record to a queue, topic, function, or event bus, specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations">destination</a>. You can configure separate destinations for successful invocations (on-success) and events
    #       that fail all processing attempts (on-failure). You can configure destinations in addition to or instead of a
    #       dead-letter queue.</p>
    #
    # @param [Hash] params
    #   See {Types::PutFunctionEventInvokeConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    #
    # @option params [Integer] :maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    # @option params [Integer] :maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutFunctionEventInvokeConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_function_event_invoke_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier',
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: 'Destination'
    #       },
    #       on_failure: {
    #         destination: 'Destination'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PutFunctionEventInvokeConfigOutput
    #   resp.last_modified #=> Time
    #   resp.function_arn #=> String
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.maximum_event_age_in_seconds #=> Integer
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #
    def put_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFunctionEventInvokeConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFunctionEventInvokeConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFunctionEventInvokeConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::PutFunctionEventInvokeConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PutFunctionEventInvokeConfig,
        params_class: Params::PutFunctionEventInvokeConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :put_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Adds a provisioned concurrency configuration to a function's alias or version.</p>
    #
    # @param [Hash] params
    #   See {Types::PutProvisionedConcurrencyConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The version number or alias name.</p>
    #
    # @option params [Integer] :provisioned_concurrent_executions
    #   <p>The amount of provisioned concurrency to allocate for the version or alias.</p>
    #
    # @return [Types::PutProvisionedConcurrencyConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_provisioned_concurrency_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier', # required
    #     provisioned_concurrent_executions: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::PutProvisionedConcurrencyConfigOutput
    #   resp.requested_provisioned_concurrent_executions #=> Integer
    #   resp.available_provisioned_concurrent_executions #=> Integer
    #   resp.allocated_provisioned_concurrent_executions #=> Integer
    #   resp.status #=> String, one of IN_PROGRESS, READY, FAILED
    #   resp.status_reason #=> String
    #   resp.last_modified #=> String
    #
    def put_provisioned_concurrency_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutProvisionedConcurrencyConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutProvisionedConcurrencyConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutProvisionedConcurrencyConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::PutProvisionedConcurrencyConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::PutProvisionedConcurrencyConfig,
        params_class: Params::PutProvisionedConcurrencyConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :put_provisioned_concurrency_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Removes a statement from the permissions policy for a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">AWS Lambda
    #         layer</a>. For more information, see
    #         <a>AddLayerVersionPermission</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveLayerVersionPermissionInput}.
    #
    # @option params [String] :layer_name
    #   <p>The name or Amazon Resource Name (ARN) of the layer.</p>
    #
    # @option params [Integer] :version_number
    #   <p>The version number.</p>
    #
    # @option params [String] :statement_id
    #   <p>The identifier that was specified when the statement was added.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the policy if the revision ID matches the ID specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    # @return [Types::RemoveLayerVersionPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_layer_version_permission(
    #     layer_name: 'LayerName', # required
    #     version_number: 1, # required
    #     statement_id: 'StatementId', # required
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::RemoveLayerVersionPermissionOutput
    #
    def remove_layer_version_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveLayerVersionPermissionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveLayerVersionPermissionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveLayerVersionPermission,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::RemoveLayerVersionPermission
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::RemoveLayerVersionPermission,
        params_class: Params::RemoveLayerVersionPermissionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :remove_layer_version_permission
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Revokes function-use permission from an AWS service or another account. You can get the ID of the statement
    #       from the output of <a>GetPolicy</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RemovePermissionInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :statement_id
    #   <p>Statement ID of the permission to remove.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to remove permissions from a published version of the function.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the policy if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    # @return [Types::RemovePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_permission(
    #     function_name: 'FunctionName', # required
    #     statement_id: 'StatementId', # required
    #     qualifier: 'Qualifier',
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::RemovePermissionOutput
    #
    def remove_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemovePermissionInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemovePermissionInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemovePermission,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::RemovePermission
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::RemovePermission,
        params_class: Params::RemovePermissionOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :remove_permission
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Adds <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> to a function.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>A list of tags to apply to the function.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource: 'Resource', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::TagResource,
        params_class: Params::TagResourceOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Removes <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a> from a function.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource
    #   <p>The function's Amazon Resource Name (ARN).</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of tag keys to remove from the function.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource: 'Resource', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 204, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UntagResource,
        params_class: Params::UntagResourceOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates the configuration of a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">alias</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAliasInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :member_name
    #   <p>The name of the alias.</p>
    #
    # @option params [String] :function_version
    #   <p>The function version that the alias invokes.</p>
    #
    # @option params [String] :description
    #   <p>A description of the alias.</p>
    #
    # @option params [AliasRoutingConfiguration] :routing_config
    #   <p>The <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html#configuring-alias-routing">routing
    #           configuration</a> of the alias.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the alias if the revision ID matches the ID that's specified. Use this option to avoid modifying
    #         an alias that has changed since you last read it.</p>
    #
    # @return [Types::UpdateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_alias(
    #     function_name: 'FunctionName', # required
    #     member_name: 'Name', # required
    #     function_version: 'FunctionVersion',
    #     description: 'Description',
    #     routing_config: {
    #       additional_version_weights: {
    #         'key' => 1.0
    #       }
    #     },
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateAliasOutput
    #   resp.alias_arn #=> String
    #   resp.member_name #=> String
    #   resp.function_version #=> String
    #   resp.description #=> String
    #   resp.routing_config #=> Types::AliasRoutingConfiguration
    #   resp.routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.routing_config.additional_version_weights['key'] #=> Float
    #   resp.revision_id #=> String
    #
    def update_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAliasInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAliasInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAlias,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::UpdateAlias
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateAlias,
        params_class: Params::UpdateAliasOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_alias
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Update the code signing configuration. Changes to the code signing configuration take effect the next time a
    #       user tries to deploy a code package to the function. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCodeSigningConfigInput}.
    #
    # @option params [String] :code_signing_config_arn
    #   <p>The The Amazon Resource Name (ARN) of the code signing configuration.</p>
    #
    # @option params [String] :description
    #   <p>Descriptive name for this code signing configuration.</p>
    #
    # @option params [AllowedPublishers] :allowed_publishers
    #   <p>Signing profiles for this code signing configuration.</p>
    #
    # @option params [CodeSigningPolicies] :code_signing_policies
    #   <p>The code signing policy.</p>
    #
    # @return [Types::UpdateCodeSigningConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_code_signing_config(
    #     code_signing_config_arn: 'CodeSigningConfigArn', # required
    #     description: 'Description',
    #     allowed_publishers: {
    #       signing_profile_version_arns: [
    #         'member'
    #       ] # required
    #     },
    #     code_signing_policies: {
    #       untrusted_artifact_on_deployment: 'Warn' # accepts Warn, Enforce
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateCodeSigningConfigOutput
    #   resp.code_signing_config #=> Types::CodeSigningConfig
    #   resp.code_signing_config.code_signing_config_id #=> String
    #   resp.code_signing_config.code_signing_config_arn #=> String
    #   resp.code_signing_config.description #=> String
    #   resp.code_signing_config.allowed_publishers #=> Types::AllowedPublishers
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.code_signing_config.code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of Warn, Enforce
    #   resp.code_signing_config.last_modified #=> String
    #
    def update_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCodeSigningConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCodeSigningConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCodeSigningConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::UpdateCodeSigningConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateCodeSigningConfig,
        params_class: Params::UpdateCodeSigningConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates an event source mapping. You can change the function that AWS Lambda invokes, or pause invocation and resume later from the same location.</p>
    #          <p>The following error handling options are only available for stream sources (DynamoDB and Kinesis):</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BisectBatchOnFunctionError</code> - If the function returns an error, split the batch in two and retry.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DestinationConfig</code> - Send discarded records to an Amazon SQS queue or Amazon SNS topic.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRecordAgeInSeconds</code> - Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRetryAttempts</code> - Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ParallelizationFactor</code> - Process multiple batches from each shard concurrently.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::UpdateEventSourceMappingInput}.
    #
    # @option params [String] :uuid
    #   <p>The identifier of the event source mapping.</p>
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>If true, the event source mapping is active. Set to false to pause polling and invocation.</p>
    #
    # @option params [Integer] :batch_size
    #   <p>The maximum number of items to retrieve in a single batch.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> - Default 100. Max 1,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> - Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Self-Managed Apache Kafka</b> - Default 100. Max 10,000.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>(Streams and SQS standard queues) The maximum amount of time to gather records before invoking the function, in seconds.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>(Streams) An Amazon SQS queue or Amazon SNS topic destination for discarded records.</p>
    #
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Streams) Discard records older than the specified age. The default value is infinite (-1).</p>
    #
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Streams) If the function returns an error, split the batch in two and retry.</p>
    #
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Streams) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records will be retried until the record expires.</p>
    #
    # @option params [Integer] :parallelization_factor
    #   <p>(Streams) The number of batches to process from each shard concurrently.</p>
    #
    # @option params [Array<SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of the authentication protocol, or the VPC components to secure your event source.</p>
    #
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Streams) The duration in seconds of a processing window. The range is between 1 second up to 900 seconds.</p>
    #
    # @option params [Array<String>] :function_response_types
    #   <p>(Streams) A list of current response type enums applied to the event source mapping.</p>
    #
    # @return [Types::UpdateEventSourceMappingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_event_source_mapping(
    #     uuid: 'UUID', # required
    #     function_name: 'FunctionName',
    #     enabled: false,
    #     batch_size: 1,
    #     maximum_batching_window_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: 'Destination'
    #       },
    #       on_failure: {
    #         destination: 'Destination'
    #       }
    #     },
    #     maximum_record_age_in_seconds: 1,
    #     bisect_batch_on_function_error: false,
    #     maximum_retry_attempts: 1,
    #     parallelization_factor: 1,
    #     source_access_configurations: [
    #       {
    #         type: 'BASIC_AUTH', # accepts BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #         uri: 'URI'
    #       }
    #     ],
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: [
    #       'ReportBatchItemFailures' # accepts ReportBatchItemFailures
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateEventSourceMappingOutput
    #   resp.uuid #=> String
    #   resp.starting_position #=> String, one of TRIM_HORIZON, LATEST, AT_TIMESTAMP
    #   resp.starting_position_timestamp #=> Time
    #   resp.batch_size #=> Integer
    #   resp.maximum_batching_window_in_seconds #=> Integer
    #   resp.parallelization_factor #=> Integer
    #   resp.event_source_arn #=> String
    #   resp.function_arn #=> String
    #   resp.last_modified #=> Time
    #   resp.last_processing_result #=> String
    #   resp.state #=> String
    #   resp.state_transition_reason #=> String
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #   resp.topics #=> Array<String>
    #   resp.topics[0] #=> String
    #   resp.queues #=> Array<String>
    #   resp.queues[0] #=> String
    #   resp.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.source_access_configurations[0].type #=> String, one of BASIC_AUTH, VPC_SUBNET, VPC_SECURITY_GROUP, SASL_SCRAM_512_AUTH, SASL_SCRAM_256_AUTH
    #   resp.source_access_configurations[0].uri #=> String
    #   resp.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.maximum_record_age_in_seconds #=> Integer
    #   resp.bisect_batch_on_function_error #=> Boolean
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.tumbling_window_in_seconds #=> Integer
    #   resp.function_response_types #=> Array<String>
    #   resp.function_response_types[0] #=> String, one of ReportBatchItemFailures
    #
    def update_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventSourceMappingInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventSourceMappingInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventSourceMapping,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 202, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ResourceInUseException, Errors::ServiceException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::UpdateEventSourceMapping
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateEventSourceMapping,
        params_class: Params::UpdateEventSourceMappingOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates a Lambda function's code. If code signing is enabled for the function, the code package must be signed
    #       by a trusted publisher. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-trustedcode.html">Configuring code signing</a>.</p>
    #
    #          <p>The function's code is locked when you publish a version. You can't modify the code of a published version,
    #       only the unpublished version.</p>
    #          <note>
    #             <p>For a function defined as a container image, Lambda resolves the image tag to an image digest. In Amazon ECR, if
    #         you update the image tag to a new image, Lambda does not automatically update the function.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionCodeInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :zip_file
    #   <p>The base64-encoded contents of the deployment package. AWS SDK and AWS CLI clients handle the encoding for
    #         you.</p>
    #
    # @option params [String] :s3_bucket
    #   <p>An Amazon S3 bucket in the same AWS Region as your function. The bucket can be in a different AWS account.</p>
    #
    # @option params [String] :s3_key
    #   <p>The Amazon S3 key of the deployment package.</p>
    #
    # @option params [String] :s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #
    # @option params [String] :image_uri
    #   <p>URI of a container image in the Amazon ECR registry.</p>
    #
    # @option params [Boolean] :publish
    #   <p>Set to true to publish a new version of the function after updating the code. This has the same effect as
    #         calling <a>PublishVersion</a> separately.</p>
    #
    # @option params [Boolean] :dry_run
    #   <p>Set to true to validate the request parameters and access permissions without modifying the function
    #         code.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         function that has changed since you last read it.</p>
    #
    # @return [Types::UpdateFunctionCodeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_code(
    #     function_name: 'FunctionName', # required
    #     zip_file: 'ZipFile',
    #     s3_bucket: 'S3Bucket',
    #     s3_key: 'S3Key',
    #     s3_object_version: 'S3ObjectVersion',
    #     image_uri: 'ImageUri',
    #     publish: false,
    #     dry_run: false,
    #     revision_id: 'RevisionId'
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateFunctionCodeOutput
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> String
    #   resp.code_sha256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config #=> Types::VpcConfigResponse
    #   resp.vpc_config.subnet_ids #=> Array<String>
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array<String>
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment #=> Types::EnvironmentResponse
    #   resp.environment.variables #=> Hash<String, String>
    #   resp.environment.variables['key'] #=> String
    #   resp.environment.error #=> Types::EnvironmentError
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config #=> Types::TracingConfigResponse
    #   resp.tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array<Layer>
    #   resp.layers[0] #=> Types::Layer
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.file_system_configs #=> Array<FileSystemConfig>
    #   resp.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of Zip, Image
    #   resp.image_config_response #=> Types::ImageConfigResponse
    #   resp.image_config_response.image_config #=> Types::ImageConfig
    #   resp.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array<String>
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error #=> Types::ImageConfigError
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #
    def update_function_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionCodeInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionCodeInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionCode,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::CodeVerificationFailedException, Errors::ServiceException, Errors::InvalidCodeSignatureException, Errors::CodeSigningConfigNotFoundException, Errors::CodeStorageExceededException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::UpdateFunctionCode
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateFunctionCode,
        params_class: Params::UpdateFunctionCodeOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_function_code
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Modify the version-specific settings of a Lambda function.</p>
    #
    #          <p>When you update a function, Lambda provisions an instance of the function and its supporting resources. If
    #       your function connects to a VPC, this process can take a minute. During this time, you can't modify the function,
    #       but you can still invoke it. The <code>LastUpdateStatus</code>, <code>LastUpdateStatusReason</code>, and
    #         <code>LastUpdateStatusReasonCode</code> fields in the response from <a>GetFunctionConfiguration</a>
    #       indicate when the update is complete and the function is processing events with the new configuration. For more
    #       information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Function
    #       States</a>.</p>
    #
    #          <p>These settings can vary between versions of a function and are locked when you publish a version. You can't
    #       modify the configuration of a published version, only the unpublished version.</p>
    #
    #          <p>To configure function concurrency, use <a>PutFunctionConcurrency</a>. To grant invoke permissions
    #       to an account or AWS service, use <a>AddPermission</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionConfigurationInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #
    # @option params [String] :handler
    #   <p>The name of the method within your code that Lambda calls to execute your function. The format includes the
    #         file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
    #         see <a href="https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html">Programming Model</a>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the function.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The amount of time that Lambda allows a function to run before stopping it. The default is 3 seconds. The
    #         maximum allowed value is 900 seconds.</p>
    #
    # @option params [Integer] :memory_size
    #   <p>The amount of memory available to the function at runtime. Increasing the function's memory also increases its CPU
    #         allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>For network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC.
    #         When you connect a function to a VPC, it can only access resources and the internet through that VPC. For more
    #         information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">VPC Settings</a>.</p>
    #
    # @option params [Environment] :environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #
    # @option params [String] :runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>.</p>
    #
    # @option params [DeadLetterConfig] :dead_letter_config
    #   <p>A dead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
    #         when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq">Dead Letter Queues</a>.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the AWS Key Management Service (AWS KMS) key that's used to encrypt your function's environment
    #         variables. If it's not provided, AWS Lambda uses a default service key.</p>
    #
    # @option params [TracingConfig] :tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with AWS
    #         X-Ray.</p>
    #
    # @option params [String] :revision_id
    #   <p>Only update the function if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         function that has changed since you last read it.</p>
    #
    # @option params [Array<String>] :layers
    #   <p>A list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">function layers</a>
    #         to add to the function's execution environment. Specify each layer by its ARN, including the version.</p>
    #
    # @option params [Array<FileSystemConfig>] :file_system_configs
    #   <p>Connection settings for an Amazon EFS file system.</p>
    #
    # @option params [ImageConfig] :image_config
    #   <p>
    #               <a href="https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html">Container image configuration
    #           values</a> that override the values in the container image Dockerfile.</p>
    #
    # @return [Types::UpdateFunctionConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_configuration(
    #     function_name: 'FunctionName', # required
    #     role: 'Role',
    #     handler: 'Handler',
    #     description: 'Description',
    #     timeout: 1,
    #     memory_size: 1,
    #     vpc_config: {
    #       subnet_ids: [
    #         'member'
    #       ],
    #       security_group_ids: [
    #         'member'
    #       ]
    #     },
    #     environment: {
    #       variables: {
    #         'key' => 'value'
    #       }
    #     },
    #     runtime: 'nodejs', # accepts nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #     dead_letter_config: {
    #       target_arn: 'TargetArn'
    #     },
    #     kms_key_arn: 'KMSKeyArn',
    #     tracing_config: {
    #       mode: 'Active' # accepts Active, PassThrough
    #     },
    #     revision_id: 'RevisionId',
    #     layers: [
    #       'member'
    #     ],
    #     file_system_configs: [
    #       {
    #         arn: 'Arn', # required
    #         local_mount_path: 'LocalMountPath' # required
    #       }
    #     ],
    #     image_config: {
    #       entry_point: [
    #         'member'
    #       ],
    #       working_directory: 'WorkingDirectory'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateFunctionConfigurationOutput
    #   resp.function_name #=> String
    #   resp.function_arn #=> String
    #   resp.runtime #=> String, one of nodejs, nodejs4.3, nodejs6.10, nodejs8.10, nodejs10.x, nodejs12.x, nodejs14.x, java8, java8.al2, java11, python2.7, python3.6, python3.7, python3.8, dotnetcore1.0, dotnetcore2.0, dotnetcore2.1, dotnetcore3.1, nodejs4.3-edge, go1.x, ruby2.5, ruby2.7, provided, provided.al2
    #   resp.role #=> String
    #   resp.handler #=> String
    #   resp.code_size #=> Integer
    #   resp.description #=> String
    #   resp.timeout #=> Integer
    #   resp.memory_size #=> Integer
    #   resp.last_modified #=> String
    #   resp.code_sha256 #=> String
    #   resp.version #=> String
    #   resp.vpc_config #=> Types::VpcConfigResponse
    #   resp.vpc_config.subnet_ids #=> Array<String>
    #   resp.vpc_config.subnet_ids[0] #=> String
    #   resp.vpc_config.security_group_ids #=> Array<String>
    #   resp.vpc_config.security_group_ids[0] #=> String
    #   resp.vpc_config.vpc_id #=> String
    #   resp.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.dead_letter_config.target_arn #=> String
    #   resp.environment #=> Types::EnvironmentResponse
    #   resp.environment.variables #=> Hash<String, String>
    #   resp.environment.variables['key'] #=> String
    #   resp.environment.error #=> Types::EnvironmentError
    #   resp.environment.error.error_code #=> String
    #   resp.environment.error.message #=> String
    #   resp.kms_key_arn #=> String
    #   resp.tracing_config #=> Types::TracingConfigResponse
    #   resp.tracing_config.mode #=> String, one of Active, PassThrough
    #   resp.master_arn #=> String
    #   resp.revision_id #=> String
    #   resp.layers #=> Array<Layer>
    #   resp.layers[0] #=> Types::Layer
    #   resp.layers[0].arn #=> String
    #   resp.layers[0].code_size #=> Integer
    #   resp.layers[0].signing_profile_version_arn #=> String
    #   resp.layers[0].signing_job_arn #=> String
    #   resp.state #=> String, one of Pending, Active, Inactive, Failed
    #   resp.state_reason #=> String
    #   resp.state_reason_code #=> String, one of Idle, Creating, Restoring, EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.last_update_status #=> String, one of Successful, Failed, InProgress
    #   resp.last_update_status_reason #=> String
    #   resp.last_update_status_reason_code #=> String, one of EniLimitExceeded, InsufficientRolePermissions, InvalidConfiguration, InternalError, SubnetOutOfIPAddresses, InvalidSubnet, InvalidSecurityGroup, ImageDeleted, ImageAccessDenied, InvalidImage
    #   resp.file_system_configs #=> Array<FileSystemConfig>
    #   resp.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.file_system_configs[0].arn #=> String
    #   resp.file_system_configs[0].local_mount_path #=> String
    #   resp.package_type #=> String, one of Zip, Image
    #   resp.image_config_response #=> Types::ImageConfigResponse
    #   resp.image_config_response.image_config #=> Types::ImageConfig
    #   resp.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.image_config_response.image_config.entry_point[0] #=> String
    #   resp.image_config_response.image_config.command #=> Array<String>
    #   resp.image_config_response.image_config.working_directory #=> String
    #   resp.image_config_response.error #=> Types::ImageConfigError
    #   resp.image_config_response.error.error_code #=> String
    #   resp.image_config_response.error.message #=> String
    #   resp.signing_profile_version_arn #=> String
    #   resp.signing_job_arn #=> String
    #
    def update_function_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionConfigurationInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionConfigurationInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionConfiguration,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::PreconditionFailedException, Errors::TooManyRequestsException, Errors::CodeVerificationFailedException, Errors::ServiceException, Errors::InvalidCodeSignatureException, Errors::CodeSigningConfigNotFoundException, Errors::InvalidParameterValueException, Errors::ResourceConflictException]),
        data_parser: Parsers::UpdateFunctionConfiguration
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateFunctionConfiguration,
        params_class: Params::UpdateFunctionConfigurationOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_function_configuration
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    # <p>Updates the configuration for asynchronous invocation for a function, version, or alias.</p>
    #          <p>To configure options for asynchronous invocation, use <a>PutFunctionEventInvokeConfig</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionEventInvokeConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function, version, or alias.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> - <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> - <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> - <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>A version number or alias name.</p>
    #
    # @option params [Integer] :maximum_retry_attempts
    #   <p>The maximum number of times to retry when the function returns an error.</p>
    #
    # @option params [Integer] :maximum_event_age_in_seconds
    #   <p>The maximum age of a request that Lambda sends to a function for processing.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>A destination for events after they have been sent to a function for processing.</p>
    #            <p class="title">
    #               <b>Destinations</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function</b> - The Amazon Resource Name (ARN) of a Lambda function.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Queue</b> - The ARN of an SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of an SNS topic.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Event Bus</b> - The ARN of an Amazon EventBridge event bus.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateFunctionEventInvokeConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_event_invoke_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier',
    #     maximum_retry_attempts: 1,
    #     maximum_event_age_in_seconds: 1,
    #     destination_config: {
    #       on_success: {
    #         destination: 'Destination'
    #       },
    #       on_failure: {
    #         destination: 'Destination'
    #       }
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp #=> Types::UpdateFunctionEventInvokeConfigOutput
    #   resp.last_modified #=> Time
    #   resp.function_arn #=> String
    #   resp.maximum_retry_attempts #=> Integer
    #   resp.maximum_event_age_in_seconds #=> Integer
    #   resp.destination_config #=> Types::DestinationConfig
    #   resp.destination_config.on_success #=> Types::OnSuccess
    #   resp.destination_config.on_success.destination #=> String
    #   resp.destination_config.on_failure #=> Types::OnFailure
    #   resp.destination_config.on_failure.destination #=> String
    #
    def update_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionEventInvokeConfigInput.build(params)
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionEventInvokeConfigInput,
        validate_input: options.fetch(:validate_input, @validate_input)
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionEventInvokeConfig,
        disable_host_prefix: options.fetch(:disable_host_prefix, @disable_host_prefix)
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, error_code_fn: Errors.method(:error_code), success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::TooManyRequestsException, Errors::ServiceException, Errors::InvalidParameterValueException]),
        data_parser: Parsers::UpdateFunctionEventInvokeConfig
      )
      stack.use(Hearth::Middleware::Send,
        stub_responses: options.fetch(:stub_responses, @stub_responses),
        client: Hearth::HTTP::Client.new(logger: @logger, http_wire_trace: options.fetch(:http_wire_trace, @http_wire_trace)),
        stub_class: Stubs::UpdateFunctionEventInvokeConfig,
        params_class: Params::UpdateFunctionEventInvokeConfigOutput,
        stubs: options.fetch(:stubs, @stubs)
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @endpoint)),
          response: Hearth::HTTP::Response.new(body: output_stream(options, &block)),
          params: params,
          logger: @logger,
          operation_name: :update_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp.data
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end

    def output_stream(options = {}, &block)
      return options[:output_stream] if options[:output_stream]
      return Hearth::BlockIO.new(block) if block

      StringIO.new
    end
  end
end
