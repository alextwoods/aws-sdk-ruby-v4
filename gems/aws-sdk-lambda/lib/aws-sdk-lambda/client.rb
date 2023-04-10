# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Lambda
  # An API client for AWSGirApiService
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Lambda</fullname>
  #          <p>
  #             <b>Overview</b>
  #          </p>
  #          <p>Lambda is a compute service that lets you run code without provisioning or managing servers.
  #         Lambda runs your code on a high-availability compute infrastructure and performs all of the
  #       administration of the compute resources, including server and operating system maintenance, capacity provisioning
  #       and automatic scaling, code monitoring and logging. With Lambda, you can run code for virtually any
  #       type of application or backend service. For more information about the Lambda service, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/welcome.html">What is Lambda</a> in the <b>Lambda Developer Guide</b>.</p>
  #          <p>The <i>Lambda API Reference</i> provides information about
  #       each of the API methods, including details about the parameters in each API request and
  #       response. </p>
  #          <p></p>
  #          <p>You can use Software Development Kits (SDKs), Integrated Development Environment (IDE) Toolkits, and command
  #       line tools to access the API. For installation instructions, see <a href="http://aws.amazon.com/tools/">Tools for
  #         Amazon Web Services</a>. </p>
  #          <p>For a list of Region-specific endpoints that Lambda supports,
  #       see <a href="https://docs.aws.amazon.com/general/latest/gr/lambda-service.html/">Lambda
  #         endpoints and quotas </a> in the <i>Amazon Web Services General Reference.</i>. </p>
  #          <p>When making the API calls, you will need to
  #       authenticate your request by providing a signature. Lambda supports signature version 4. For more information,
  #       see <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4 signing process</a> in the
  #       <i>Amazon Web Services General Reference.</i>. </p>
  #          <p>
  #             <b>CA certificates</b>
  #          </p>
  #          <p>Because Amazon Web Services SDKs use the CA certificates from your computer, changes to the certificates on the Amazon Web Services servers
  #         can cause connection failures when you attempt to use an SDK. You can prevent these failures by keeping your
  #         computer's CA certificates and operating system up-to-date. If you encounter this issue in a corporate
  #         environment and do not manage your own computer, you might need to ask an administrator to assist with the
  #         update process. The following list shows minimum operating system and Java versions:</p>
  #          <ul>
  #             <li>
  #                <p>Microsoft Windows versions that have updates from January 2005 or later installed contain at least one
  #             of the required CAs in their trust list. </p>
  #             </li>
  #             <li>
  #                <p>Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007), Mac OS X 10.5 (October 2007), and
  #             later versions contain at least one of the required CAs in their trust list. </p>
  #             </li>
  #             <li>
  #                <p>Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6, and 7 all contain at least one of the
  #             required CAs in their default trusted CA list. </p>
  #             </li>
  #             <li>
  #                <p>Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later versions, including Java 6 (December
  #             2006), 7, and 8, contain at least one of the required CAs in their default trusted CA list. </p>
  #             </li>
  #          </ul>
  #          <p>When accessing the Lambda management console or Lambda API endpoints, whether through browsers or
  #         programmatically, you will need to ensure your client machines support any of the following CAs: </p>
  #          <ul>
  #             <li>
  #                <p>Amazon Root CA 1</p>
  #             </li>
  #             <li>
  #                <p>Starfield Services Root Certificate Authority - G2</p>
  #             </li>
  #             <li>
  #                <p>Starfield Class 2 Certification Authority</p>
  #             </li>
  #          </ul>
  #          <p>Root certificates from the first two authorities are available from <a href="https://www.amazontrust.com/repository/">Amazon trust services</a>, but keeping your computer
  #         up-to-date is the more straightforward solution. To learn more about ACM-provided certificates, see <a href="http://aws.amazon.com/certificate-manager/faqs/#certificates">Amazon Web Services Certificate Manager FAQs.</a>
  #          </p>
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
    def initialize(config = AWS::SDK::Lambda::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds permissions to the resource-based policy of a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
    #         layer</a>. Use this action to grant layer
    #       usage permission to other accounts. You can grant permission to a single account, all accounts in an organization,
    #       or all Amazon Web Services accounts.  </p>
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
    #   <p>An account ID, or <code>*</code> to grant layer usage permission to all
    #         accounts in an organization, or all Amazon Web Services accounts (if <code>organizationId</code> is not specified).
    #         For the last case, make sure that you really do want all Amazon Web Services accounts to have usage permission to this layer.
    #       </p>
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
    #   resp.data #=> Types::AddLayerVersionPermissionOutput
    #   resp.data.statement #=> String
    #   resp.data.revision_id #=> String
    #
    def add_layer_version_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddLayerVersionPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddLayerVersionPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddLayerVersionPermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::PolicyLengthExceededException, Errors::PreconditionFailedException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddLayerVersionPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddLayerVersionPermission,
        stubs: @stubs,
        params_class: Params::AddLayerVersionPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_layer_version_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Grants an Amazon Web Service, Amazon Web Services account, or Amazon Web Services organization
    #       permission to use a function. You can apply the policy at the function level, or specify a qualifier to restrict
    #       access to a single version or alias. If you use a qualifier, the invoker must use the full Amazon Resource Name
    #       (ARN) of that version or alias to invoke the function. Note: Lambda does not support adding policies
    #       to version $LATEST.</p>
    #          <p>To grant permission to another account, specify the account ID as the <code>Principal</code>. To grant
    #       permission to an organization defined in Organizations, specify the organization ID as the
    #         <code>PrincipalOrgID</code>. For Amazon Web Services, the principal is a domain-style identifier that
    #       the service defines, such as <code>s3.amazonaws.com</code> or <code>sns.amazonaws.com</code>. For Amazon Web Services, you can also specify the ARN of the associated resource as the <code>SourceArn</code>. If
    #       you grant permission to a service principal without specifying the source, other accounts could potentially
    #       configure resources in their account to invoke your Lambda function.</p>
    #          <p>This operation adds a statement to a resource-based permissions policy for the function. For more information
    #       about function policies, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html">Using resource-based policies for Lambda</a>.</p>
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   <p>The Amazon Web Service or Amazon Web Services account that invokes the function. If you specify a
    #         service, use <code>SourceArn</code> or <code>SourceAccount</code> to limit who can invoke the function through
    #         that service.</p>
    #
    # @option params [String] :source_arn
    #   <p>For Amazon Web Services, the ARN of the Amazon Web Services resource that invokes the function. For
    #         example, an Amazon S3 bucket or Amazon SNS topic.</p>
    #            <p>Note that Lambda configures the comparison using the <code>StringLike</code> operator.</p>
    #
    # @option params [String] :source_account
    #   <p>For Amazon Web Service, the ID of the Amazon Web Services account that owns the resource. Use this
    #         together with <code>SourceArn</code> to ensure that the specified account owns the resource. It is possible for an
    #           Amazon S3 bucket to be deleted by its owner and recreated by another account.</p>
    #
    # @option params [String] :event_source_token
    #   <p>For Alexa Smart Home functions, a token that the invoker must supply.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version or alias to add permissions to a published version of the function.</p>
    #
    # @option params [String] :revision_id
    #   <p>Update the policy only if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         policy that has changed since you last read it.</p>
    #
    # @option params [String] :principal_org_id
    #   <p>The identifier for your organization in Organizations. Use this to grant permissions to all the
    #           Amazon Web Services accounts under this organization.</p>
    #
    # @option params [String] :function_url_auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated
    #     users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information,
    #     see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
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
    #     revision_id: 'RevisionId',
    #     principal_org_id: 'PrincipalOrgID',
    #     function_url_auth_type: 'NONE' # accepts ["NONE", "AWS_IAM"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddPermissionOutput
    #   resp.data.statement #=> String
    #
    def add_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddPermission
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::PolicyLengthExceededException, Errors::PreconditionFailedException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AddPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddPermission,
        stubs: @stubs,
        params_class: Params::AddPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a> for a
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
    # @option params [String] :name
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
    #     name: 'Name', # required
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
    #   resp.data #=> Types::CreateAliasOutput
    #   resp.data.alias_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.function_version #=> String
    #   resp.data.description #=> String
    #   resp.data.routing_config #=> Types::AliasRoutingConfiguration
    #   resp.data.routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.data.routing_config.additional_version_weights['key'] #=> Float
    #   resp.data.revision_id #=> String
    #
    def create_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAlias,
        stubs: @stubs,
        params_class: Params::CreateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a code signing configuration. A <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">code signing configuration</a> defines a list of
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
    #       untrusted_artifact_on_deployment: 'Warn' # accepts ["Warn", "Enforce"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCodeSigningConfigOutput
    #   resp.data.code_signing_config #=> Types::CodeSigningConfig
    #   resp.data.code_signing_config.code_signing_config_id #=> String
    #   resp.data.code_signing_config.code_signing_config_arn #=> String
    #   resp.data.code_signing_config.description #=> String
    #   resp.data.code_signing_config.allowed_publishers #=> Types::AllowedPublishers
    #   resp.data.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.data.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.data.code_signing_config.code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.data.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of ["Warn", "Enforce"]
    #   resp.data.code_signing_config.last_modified #=> String
    #
    def create_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCodeSigningConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::ServiceException]),
        data_parser: Parsers::CreateCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::CreateCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a mapping between an event source and an Lambda function. Lambda reads items from the event source and invokes the function.</p>
    #          <p>For details about how to configure different event sources, see the following topics. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping">
    #             Amazon DynamoDB Streams</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping">
    #             Amazon Kinesis</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource">
    #             Amazon SQS</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping">
    #             Amazon MQ and RabbitMQ</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html">
    #             Amazon MSK</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html">
    #             Apache Kafka</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html">
    #             Amazon DocumentDB</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>The following error handling options are available only for stream sources (DynamoDB and Kinesis):</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BisectBatchOnFunctionError</code> – If the function returns an error, split the batch in two and retry.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DestinationConfig</code> – Send discarded records to an Amazon SQS queue or Amazon SNS topic.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRecordAgeInSeconds</code> – Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRetryAttempts</code> – Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ParallelizationFactor</code> – Process multiple batches from each shard concurrently.</p>
    #             </li>
    #          </ul>
    #          <p>For information about which configuration parameters apply to each event source, see the following topics.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params">
    #           Amazon DynamoDB Streams</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params">
    #           Amazon Kinesis</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params">
    #           Amazon SQS</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params">
    #           Amazon MQ and RabbitMQ</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms">
    #           Amazon MSK</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms">
    #           Apache Kafka</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration">
    #           Amazon DocumentDB</a>
    #                </p>
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
    #                     <b>Amazon Kinesis</b> – The ARN of the data stream or a stream consumer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> – The ARN of the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> – The ARN of the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> – The ARN of the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon MQ</b> – The ARN of the broker.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DocumentDB</b> – The ARN of the DocumentDB change stream.</p>
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
    #                     <b>Function name</b> – <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>When true, the event source mapping is active. When false, Lambda pauses polling and invocation.</p>
    #            <p>Default: True</p>
    #
    # @option params [Integer] :batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation
    #     (6 MB).</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> – Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Self-managed Apache Kafka</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon MQ (ActiveMQ and RabbitMQ)</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DocumentDB</b> – Default 100. Max 10,000.</p>
    #               </li>
    #            </ul>
    #
    # @option params [FilterCriteria] :filter_criteria
    #   <p>An object that defines the filter criteria that
    #       determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p>
    #
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function.
    #     You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p>
    #            <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default
    #     batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it.
    #     To restore the default batching window, you must create a new event source mapping.</p>
    #            <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #
    # @option params [Integer] :parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    #
    # @option params [String] :starting_position
    #   <p>The position in a stream from which to start reading. Required for Amazon Kinesis, Amazon
    #         DynamoDB, and Amazon MSK Streams sources. <code>AT_TIMESTAMP</code> is supported only for
    #         Amazon Kinesis streams and Amazon DocumentDB.</p>
    #
    # @option params [Time] :starting_position_timestamp
    #   <p>With <code>StartingPosition</code> set to <code>AT_TIMESTAMP</code>, the time from which to start
    #         reading.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>(Kinesis and DynamoDB Streams only) A standard Amazon SQS queue or standard Amazon SNS topic destination for discarded records.</p>
    #
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is infinite (-1).</p>
    #
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry.</p>
    #
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #
    # @option params [Array<String>] :topics
    #   <p>The name of the Kafka topic.</p>
    #
    # @option params [Array<String>] :queues
    #   <p> (MQ) The name of the Amazon MQ broker destination queue to consume. </p>
    #
    # @option params [Array<SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    #
    # @option params [SelfManagedEventSource] :self_managed_event_source
    #   <p>The self-managed Apache Kafka cluster to receive records from.</p>
    #
    # @option params [Array<String>] :function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #
    # @option params [AmazonManagedKafkaEventSourceConfig] :amazon_managed_kafka_event_source_config
    #   <p>Specific configuration settings for an Amazon Managed Streaming for Apache Kafka (Amazon MSK) event source.</p>
    #
    # @option params [SelfManagedKafkaEventSourceConfig] :self_managed_kafka_event_source_config
    #   <p>Specific configuration settings for a self-managed Apache Kafka event source.</p>
    #
    # @option params [ScalingConfig] :scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #
    # @option params [DocumentDBEventSourceConfig] :document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
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
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: 'Pattern'
    #         }
    #       ]
    #     },
    #     maximum_batching_window_in_seconds: 1,
    #     parallelization_factor: 1,
    #     starting_position: 'TRIM_HORIZON', # accepts ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
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
    #         type: 'BASIC_AUTH', # accepts ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
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
    #       'ReportBatchItemFailures' # accepts ["ReportBatchItemFailures"]
    #     ],
    #     amazon_managed_kafka_event_source_config: {
    #       consumer_group_id: 'ConsumerGroupId'
    #     },
    #     self_managed_kafka_event_source_config: {
    #       consumer_group_id: 'ConsumerGroupId'
    #     },
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: 'DatabaseName',
    #       collection_name: 'CollectionName',
    #       full_document: 'UpdateLookup' # accepts ["UpdateLookup", "Default"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateEventSourceMappingOutput
    #   resp.data.uuid #=> String
    #   resp.data.starting_position #=> String, one of ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #   resp.data.starting_position_timestamp #=> Time
    #   resp.data.batch_size #=> Integer
    #   resp.data.maximum_batching_window_in_seconds #=> Integer
    #   resp.data.parallelization_factor #=> Integer
    #   resp.data.event_source_arn #=> String
    #   resp.data.filter_criteria #=> Types::FilterCriteria
    #   resp.data.filter_criteria.filters #=> Array<Filter>
    #   resp.data.filter_criteria.filters[0] #=> Types::Filter
    #   resp.data.filter_criteria.filters[0].pattern #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.last_processing_result #=> String
    #   resp.data.state #=> String
    #   resp.data.state_transition_reason #=> String
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #   resp.data.topics #=> Array<String>
    #   resp.data.topics[0] #=> String
    #   resp.data.queues #=> Array<String>
    #   resp.data.queues[0] #=> String
    #   resp.data.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.data.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.data.source_access_configurations[0].type #=> String, one of ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
    #   resp.data.source_access_configurations[0].uri #=> String
    #   resp.data.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.data.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.data.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.data.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.data.maximum_record_age_in_seconds #=> Integer
    #   resp.data.bisect_batch_on_function_error #=> Boolean
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.tumbling_window_in_seconds #=> Integer
    #   resp.data.function_response_types #=> Array<String>
    #   resp.data.function_response_types[0] #=> String, one of ["ReportBatchItemFailures"]
    #   resp.data.amazon_managed_kafka_event_source_config #=> Types::AmazonManagedKafkaEventSourceConfig
    #   resp.data.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.self_managed_kafka_event_source_config #=> Types::SelfManagedKafkaEventSourceConfig
    #   resp.data.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.scaling_config #=> Types::ScalingConfig
    #   resp.data.scaling_config.maximum_concurrency #=> Integer
    #   resp.data.document_db_event_source_config #=> Types::DocumentDBEventSourceConfig
    #   resp.data.document_db_event_source_config.database_name #=> String
    #   resp.data.document_db_event_source_config.collection_name #=> String
    #   resp.data.document_db_event_source_config.full_document #=> String, one of ["UpdateLookup", "Default"]
    #
    def create_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateEventSourceMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateEventSourceMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateEventSourceMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateEventSourceMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateEventSourceMapping,
        stubs: @stubs,
        params_class: Params::CreateEventSourceMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Lambda function. To create a function, you need a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html">deployment package</a> and an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role">execution role</a>. The
    #       deployment package is a .zip file archive or container image that contains your function code. The execution role
    #       grants the function permission to use Amazon Web Services, such as Amazon CloudWatch Logs for log
    #       streaming and X-Ray for request tracing.</p>
    #          <p>If the deployment package is a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container
    #         image</a>, then you set the package type to <code>Image</code>. For a container image, the code property
    #       must include the URI of a container image in the Amazon ECR registry. You do not need to specify the
    #       handler and runtime properties.</p>
    #          <p>If the deployment package is a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip">.zip file archive</a>, then
    #       you set the package type to <code>Zip</code>. For a .zip file archive, the code property specifies the location of
    #       the .zip file. You must also specify the handler and runtime properties. The code in the deployment package must
    #       be compatible with the target instruction set architecture of the function (<code>x86-64</code> or
    #         <code>arm64</code>). If you do not specify the architecture, then the default value is
    #       <code>x86-64</code>.</p>
    #          <p>When you create a function, Lambda provisions an instance of the function and its supporting
    #       resources. If your function connects to a VPC, this process can take a minute or so. During this time, you can't
    #       invoke or modify the function. The <code>State</code>, <code>StateReason</code>, and <code>StateReasonCode</code>
    #       fields in the response from <a>GetFunctionConfiguration</a> indicate when the function is ready to
    #       invoke. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Lambda function states</a>.</p>
    #          <p>A function has an unpublished version, and can have published versions and aliases. The unpublished version
    #       changes when you update your function's code and configuration. A published version is a snapshot of your function
    #       code and configuration that can't be changed. An alias is a named resource that maps to a version, and can be
    #       changed to map to a different version. Use the <code>Publish</code> parameter to create version <code>1</code> of
    #       your function from its initial configuration.</p>
    #          <p>The other parameters let you configure version-specific and function-level settings. You can modify
    #       version-specific settings later with <a>UpdateFunctionConfiguration</a>. Function-level settings apply
    #       to both the unpublished and published versions of the function, and include tags (<a>TagResource</a>)
    #       and per-function concurrency limits (<a>PutFunctionConcurrency</a>).</p>
    #          <p>You can use code signing if your deployment package is a .zip file archive. To enable code signing for this
    #       function, specify the ARN of a code-signing configuration. When a user attempts to deploy a code package with
    #         <a>UpdateFunctionCode</a>, Lambda checks that the code package has a valid signature from
    #       a trusted publisher. The code-signing configuration includes set of signing profiles, which define the trusted
    #       publishers for this function.</p>
    #          <p>If another Amazon Web Services account or an Amazon Web Service invokes your function, use <a>AddPermission</a> to grant permission by creating a resource-based Identity and Access Management (IAM) policy. You can grant permissions at the function level, on a version, or on an alias.</p>
    #          <p>To invoke your function directly, use <a>Invoke</a>. To invoke your function in response to events
    #       in other Amazon Web Services, create an event source mapping (<a>CreateEventSourceMapping</a>),
    #       or configure a function trigger in the other service. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html">Invoking Lambda
    #       functions</a>.</p>
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>. Runtime is required if the deployment package is a .zip file archive.</p>
    #            <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime deprecation policy</a>.</p>
    #
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #
    # @option params [String] :handler
    #   <p>The name of the method within your code that Lambda calls to run your function.
    #   Handler is required if the deployment package is a .zip file archive. The format includes the
    #         file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
    #         see <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda programming model</a>.</p>
    #
    # @option params [FunctionCode] :code
    #   <p>The code for the function.</p>
    #
    # @option params [String] :description
    #   <p>A description of the function.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The
    #         maximum allowed value is 900 seconds. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    #
    # @option params [Integer] :memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime.
    #         Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #
    # @option params [Boolean] :publish
    #   <p>Set to true to publish the first version of the function during creation.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>For network connectivity to Amazon Web Services resources in a VPC, specify a list of security groups and subnets in the VPC.
    #         When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more
    #         information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    #
    # @option params [String] :package_type
    #   <p>The type of deployment package. Set to <code>Image</code> for container image and set to <code>Zip</code> for .zip file archive.</p>
    #
    # @option params [DeadLetterConfig] :dead_letter_config
    #   <p>A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
    #         when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter queues</a>.</p>
    #
    # @option params [Environment] :environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>. When <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> is activated, this key is also used to encrypt your function's snapshot. If you don't provide a customer managed key, Lambda uses a default service key.</p>
    #
    # @option params [TracingConfig] :tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with
    #   <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p>
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
    #   <p>Container image <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-images.html#configuration-images-settings">configuration
    #         values</a> that override the values in the container image Dockerfile.</p>
    #
    # @option params [String] :code_signing_config_arn
    #   <p>To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration
    #   includes a set of signing profiles, which define the trusted publishers for this function.</p>
    #
    # @option params [Array<String>] :architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64).
    #        The default value is <code>x86_64</code>.</p>
    #
    # @option params [EphemeralStorage] :ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole
    #         number between 512 and 10,240 MB.</p>
    #
    # @option params [SnapStart] :snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
    #
    # @return [Types::CreateFunctionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function(
    #     function_name: 'FunctionName', # required
    #     runtime: 'nodejs', # accepts ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
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
    #     package_type: 'Zip', # accepts ["Zip", "Image"]
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
    #       mode: 'Active' # accepts ["Active", "PassThrough"]
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
    #     code_signing_config_arn: 'CodeSigningConfigArn',
    #     architectures: [
    #       'x86_64' # accepts ["x86_64", "arm64"]
    #     ],
    #     ephemeral_storage: {
    #       size: 1 # required
    #     },
    #     snap_start: {
    #       apply_on: 'PublishedVersions' # accepts ["PublishedVersions", "None"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFunctionOutput
    #   resp.data.function_name #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.role #=> String
    #   resp.data.handler #=> String
    #   resp.data.code_size #=> Integer
    #   resp.data.description #=> String
    #   resp.data.timeout #=> Integer
    #   resp.data.memory_size #=> Integer
    #   resp.data.last_modified #=> String
    #   resp.data.code_sha256 #=> String
    #   resp.data.version #=> String
    #   resp.data.vpc_config #=> Types::VpcConfigResponse
    #   resp.data.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.vpc_config.subnet_ids[0] #=> String
    #   resp.data.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.vpc_config.security_group_ids[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.dead_letter_config.target_arn #=> String
    #   resp.data.environment #=> Types::EnvironmentResponse
    #   resp.data.environment.variables #=> Hash<String, String>
    #   resp.data.environment.variables['key'] #=> String
    #   resp.data.environment.error #=> Types::EnvironmentError
    #   resp.data.environment.error.error_code #=> String
    #   resp.data.environment.error.message #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.tracing_config #=> Types::TracingConfigResponse
    #   resp.data.tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.master_arn #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].arn #=> String
    #   resp.data.layers[0].code_size #=> Integer
    #   resp.data.layers[0].signing_profile_version_arn #=> String
    #   resp.data.layers[0].signing_job_arn #=> String
    #   resp.data.state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.state_reason #=> String
    #   resp.data.state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.last_update_status_reason #=> String
    #   resp.data.last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.file_system_configs[0].arn #=> String
    #   resp.data.file_system_configs[0].local_mount_path #=> String
    #   resp.data.package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.image_config_response #=> Types::ImageConfigResponse
    #   resp.data.image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.image_config_response.image_config.command #=> Array<String>
    #   resp.data.image_config_response.image_config.working_directory #=> String
    #   resp.data.image_config_response.error #=> Types::ImageConfigError
    #   resp.data.image_config_response.error.error_code #=> String
    #   resp.data.image_config_response.error.message #=> String
    #   resp.data.signing_profile_version_arn #=> String
    #   resp.data.signing_job_arn #=> String
    #   resp.data.architectures #=> Array<String>
    #   resp.data.architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.ephemeral_storage.size #=> Integer
    #   resp.data.snap_start #=> Types::SnapStartResponse
    #   resp.data.snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.runtime_version_config.runtime_version_arn #=> String
    #   resp.data.runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.runtime_version_config.error.error_code #=> String
    #   resp.data.runtime_version_config.error.message #=> String
    #
    def create_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFunction
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::CodeSigningConfigNotFoundException, Errors::CodeStorageExceededException, Errors::CodeVerificationFailedException, Errors::InvalidCodeSignatureException, Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFunction,
        stubs: @stubs,
        params_class: Params::CreateFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a Lambda function URL with the specified configuration parameters. A function URL is
    #       a dedicated HTTP(S) endpoint that you can use to invoke your function.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFunctionUrlConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    #
    # @option params [String] :auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated
    #     users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information,
    #     see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    #
    # @option params [Cors] :cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings
    #     for your function URL.</p>
    #
    # @option params [String] :invoke_mode
    #   <p>Use one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results
    #           are available when the payload is complete. The maximum payload size is 6 MB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using
    #           the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 20 MB, however, you can <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html">request a quota increase</a>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateFunctionUrlConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_function_url_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier',
    #     auth_type: 'NONE', # required - accepts ["NONE", "AWS_IAM"]
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: [
    #         'member'
    #       ],
    #       allow_methods: [
    #         'member'
    #       ],
    #       allow_origins: [
    #         'member'
    #       ],
    #       max_age: 1
    #     },
    #     invoke_mode: 'BUFFERED' # accepts ["BUFFERED", "RESPONSE_STREAM"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFunctionUrlConfigOutput
    #   resp.data.function_url #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.auth_type #=> String, one of ["NONE", "AWS_IAM"]
    #   resp.data.cors #=> Types::Cors
    #   resp.data.cors.allow_credentials #=> Boolean
    #   resp.data.cors.allow_headers #=> Array<String>
    #   resp.data.cors.allow_headers[0] #=> String
    #   resp.data.cors.allow_methods #=> Array<String>
    #   resp.data.cors.allow_methods[0] #=> String
    #   resp.data.cors.allow_origins #=> Array<String>
    #   resp.data.cors.allow_origins[0] #=> String
    #   resp.data.cors.expose_headers #=> Array<String>
    #   resp.data.cors.max_age #=> Integer
    #   resp.data.creation_time #=> String
    #   resp.data.invoke_mode #=> String, one of ["BUFFERED", "RESPONSE_STREAM"]
    #
    def create_function_url_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFunctionUrlConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFunctionUrlConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFunctionUrlConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateFunctionUrlConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFunctionUrlConfig,
        stubs: @stubs,
        params_class: Params::CreateFunctionUrlConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_function_url_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
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
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    #
    # @return [Types::DeleteAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias(
    #     function_name: 'FunctionName', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAliasOutput
    #
    def delete_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlias,
        stubs: @stubs,
        params_class: Params::DeleteAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alias
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::DeleteCodeSigningConfigOutput
    #
    def delete_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCodeSigningConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException]),
        data_parser: Parsers::DeleteCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::DeleteCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an <a href="https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html">event source
    #         mapping</a>. You can get the identifier of a mapping from the output of <a>ListEventSourceMappings</a>.</p>
    #          <p>When you delete an event source mapping, it enters a <code>Deleting</code> state and might not be completely
    #       deleted for several seconds.</p>
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
    #   resp.data #=> Types::DeleteEventSourceMappingOutput
    #   resp.data.uuid #=> String
    #   resp.data.starting_position #=> String, one of ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #   resp.data.starting_position_timestamp #=> Time
    #   resp.data.batch_size #=> Integer
    #   resp.data.maximum_batching_window_in_seconds #=> Integer
    #   resp.data.parallelization_factor #=> Integer
    #   resp.data.event_source_arn #=> String
    #   resp.data.filter_criteria #=> Types::FilterCriteria
    #   resp.data.filter_criteria.filters #=> Array<Filter>
    #   resp.data.filter_criteria.filters[0] #=> Types::Filter
    #   resp.data.filter_criteria.filters[0].pattern #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.last_processing_result #=> String
    #   resp.data.state #=> String
    #   resp.data.state_transition_reason #=> String
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #   resp.data.topics #=> Array<String>
    #   resp.data.topics[0] #=> String
    #   resp.data.queues #=> Array<String>
    #   resp.data.queues[0] #=> String
    #   resp.data.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.data.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.data.source_access_configurations[0].type #=> String, one of ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
    #   resp.data.source_access_configurations[0].uri #=> String
    #   resp.data.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.data.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.data.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.data.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.data.maximum_record_age_in_seconds #=> Integer
    #   resp.data.bisect_batch_on_function_error #=> Boolean
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.tumbling_window_in_seconds #=> Integer
    #   resp.data.function_response_types #=> Array<String>
    #   resp.data.function_response_types[0] #=> String, one of ["ReportBatchItemFailures"]
    #   resp.data.amazon_managed_kafka_event_source_config #=> Types::AmazonManagedKafkaEventSourceConfig
    #   resp.data.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.self_managed_kafka_event_source_config #=> Types::SelfManagedKafkaEventSourceConfig
    #   resp.data.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.scaling_config #=> Types::ScalingConfig
    #   resp.data.scaling_config.maximum_concurrency #=> Integer
    #   resp.data.document_db_event_source_config #=> Types::DocumentDBEventSourceConfig
    #   resp.data.document_db_event_source_config.database_name #=> String
    #   resp.data.document_db_event_source_config.collection_name #=> String
    #   resp.data.document_db_event_source_config.full_document #=> String, one of ["UpdateLookup", "Default"]
    #
    def delete_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEventSourceMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEventSourceMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEventSourceMapping
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidParameterValueException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteEventSourceMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEventSourceMapping,
        stubs: @stubs,
        params_class: Params::DeleteEventSourceMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Lambda function. To delete a specific function version, use the <code>Qualifier</code> parameter.
    #       Otherwise, all versions and aliases are deleted.</p>
    #          <p>To delete Lambda event source mappings that invoke a function, use <a>DeleteEventSourceMapping</a>. For Amazon Web Services and resources that invoke your function
    #       directly, delete the trigger in the service where you originally configured it.</p>
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:1</code> (with version).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>You can append a version number or alias to any of the formats. The length constraint applies only to the full ARN.
    #         If you specify only the function name, it is limited to 64 characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version to delete. You can't delete a version that an alias references.</p>
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
    #   resp.data #=> Types::DeleteFunctionOutput
    #
    def delete_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunction,
        stubs: @stubs,
        params_class: Params::DeleteFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::DeleteFunctionCodeSigningConfigOutput
    #
    def delete_function_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionCodeSigningConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::CodeSigningConfigNotFoundException, Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteFunctionCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunctionCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::DeleteFunctionCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::DeleteFunctionConcurrencyOutput
    #
    def delete_function_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionConcurrencyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionConcurrencyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionConcurrency
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteFunctionConcurrency
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunctionConcurrency,
        stubs: @stubs,
        params_class: Params::DeleteFunctionConcurrencyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function_concurrency
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::DeleteFunctionEventInvokeConfigOutput
    #
    def delete_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionEventInvokeConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionEventInvokeConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionEventInvokeConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteFunctionEventInvokeConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunctionEventInvokeConfig,
        stubs: @stubs,
        params_class: Params::DeleteFunctionEventInvokeConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a Lambda function URL. When you delete a function URL, you
    #       can't recover it. Creating a new function URL results in a different URL address.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFunctionUrlConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    #
    # @return [Types::DeleteFunctionUrlConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_function_url_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFunctionUrlConfigOutput
    #
    def delete_function_url_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFunctionUrlConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFunctionUrlConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFunctionUrlConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteFunctionUrlConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFunctionUrlConfig,
        stubs: @stubs,
        params_class: Params::DeleteFunctionUrlConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_function_url_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
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
    #   resp.data #=> Types::DeleteLayerVersionOutput
    #
    def delete_layer_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLayerVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLayerVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLayerVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteLayerVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLayerVersion,
        stubs: @stubs,
        params_class: Params::DeleteLayerVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_layer_version
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::DeleteProvisionedConcurrencyConfigOutput
    #
    def delete_provisioned_concurrency_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProvisionedConcurrencyConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProvisionedConcurrencyConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProvisionedConcurrencyConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteProvisionedConcurrencyConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProvisionedConcurrencyConfig,
        stubs: @stubs,
        params_class: Params::DeleteProvisionedConcurrencyConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_provisioned_concurrency_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about your account's <a href="https://docs.aws.amazon.com/lambda/latest/dg/limits.html">limits</a> and usage in an Amazon Web Services Region.</p>
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
    #   resp.data #=> Types::GetAccountSettingsOutput
    #   resp.data.account_limit #=> Types::AccountLimit
    #   resp.data.account_limit.total_code_size #=> Integer
    #   resp.data.account_limit.code_size_unzipped #=> Integer
    #   resp.data.account_limit.code_size_zipped #=> Integer
    #   resp.data.account_limit.concurrent_executions #=> Integer
    #   resp.data.account_limit.unreserved_concurrent_executions #=> Integer
    #   resp.data.account_usage #=> Types::AccountUsage
    #   resp.data.account_usage.total_code_size #=> Integer
    #   resp.data.account_usage.function_count #=> Integer
    #
    def get_account_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetAccountSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountSettings,
        stubs: @stubs,
        params_class: Params::GetAccountSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
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
    # @option params [String] :name
    #   <p>The name of the alias.</p>
    #
    # @return [Types::GetAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_alias(
    #     function_name: 'FunctionName', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAliasOutput
    #   resp.data.alias_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.function_version #=> String
    #   resp.data.description #=> String
    #   resp.data.routing_config #=> Types::AliasRoutingConfiguration
    #   resp.data.routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.data.routing_config.additional_version_weights['key'] #=> Float
    #   resp.data.revision_id #=> String
    #
    def get_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAlias,
        stubs: @stubs,
        params_class: Params::GetAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_alias
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::GetCodeSigningConfigOutput
    #   resp.data.code_signing_config #=> Types::CodeSigningConfig
    #   resp.data.code_signing_config.code_signing_config_id #=> String
    #   resp.data.code_signing_config.code_signing_config_arn #=> String
    #   resp.data.code_signing_config.description #=> String
    #   resp.data.code_signing_config.allowed_publishers #=> Types::AllowedPublishers
    #   resp.data.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.data.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.data.code_signing_config.code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.data.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of ["Warn", "Enforce"]
    #   resp.data.code_signing_config.last_modified #=> String
    #
    def get_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCodeSigningConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException]),
        data_parser: Parsers::GetCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::GetCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about an event source mapping. You can get the identifier of a mapping from the output of
    #         <a>ListEventSourceMappings</a>.</p>
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
    #   resp.data #=> Types::GetEventSourceMappingOutput
    #   resp.data.uuid #=> String
    #   resp.data.starting_position #=> String, one of ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #   resp.data.starting_position_timestamp #=> Time
    #   resp.data.batch_size #=> Integer
    #   resp.data.maximum_batching_window_in_seconds #=> Integer
    #   resp.data.parallelization_factor #=> Integer
    #   resp.data.event_source_arn #=> String
    #   resp.data.filter_criteria #=> Types::FilterCriteria
    #   resp.data.filter_criteria.filters #=> Array<Filter>
    #   resp.data.filter_criteria.filters[0] #=> Types::Filter
    #   resp.data.filter_criteria.filters[0].pattern #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.last_processing_result #=> String
    #   resp.data.state #=> String
    #   resp.data.state_transition_reason #=> String
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #   resp.data.topics #=> Array<String>
    #   resp.data.topics[0] #=> String
    #   resp.data.queues #=> Array<String>
    #   resp.data.queues[0] #=> String
    #   resp.data.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.data.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.data.source_access_configurations[0].type #=> String, one of ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
    #   resp.data.source_access_configurations[0].uri #=> String
    #   resp.data.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.data.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.data.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.data.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.data.maximum_record_age_in_seconds #=> Integer
    #   resp.data.bisect_batch_on_function_error #=> Boolean
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.tumbling_window_in_seconds #=> Integer
    #   resp.data.function_response_types #=> Array<String>
    #   resp.data.function_response_types[0] #=> String, one of ["ReportBatchItemFailures"]
    #   resp.data.amazon_managed_kafka_event_source_config #=> Types::AmazonManagedKafkaEventSourceConfig
    #   resp.data.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.self_managed_kafka_event_source_config #=> Types::SelfManagedKafkaEventSourceConfig
    #   resp.data.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.scaling_config #=> Types::ScalingConfig
    #   resp.data.scaling_config.maximum_concurrency #=> Integer
    #   resp.data.document_db_event_source_config #=> Types::DocumentDBEventSourceConfig
    #   resp.data.document_db_event_source_config.database_name #=> String
    #   resp.data.document_db_event_source_config.collection_name #=> String
    #   resp.data.document_db_event_source_config.full_document #=> String, one of ["UpdateLookup", "Default"]
    #
    def get_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetEventSourceMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetEventSourceMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetEventSourceMapping
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetEventSourceMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetEventSourceMapping,
        stubs: @stubs,
        params_class: Params::GetEventSourceMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::GetFunctionOutput
    #   resp.data.configuration #=> Types::FunctionConfiguration
    #   resp.data.configuration.function_name #=> String
    #   resp.data.configuration.function_arn #=> String
    #   resp.data.configuration.runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.configuration.role #=> String
    #   resp.data.configuration.handler #=> String
    #   resp.data.configuration.code_size #=> Integer
    #   resp.data.configuration.description #=> String
    #   resp.data.configuration.timeout #=> Integer
    #   resp.data.configuration.memory_size #=> Integer
    #   resp.data.configuration.last_modified #=> String
    #   resp.data.configuration.code_sha256 #=> String
    #   resp.data.configuration.version #=> String
    #   resp.data.configuration.vpc_config #=> Types::VpcConfigResponse
    #   resp.data.configuration.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.configuration.vpc_config.subnet_ids[0] #=> String
    #   resp.data.configuration.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.configuration.vpc_config.security_group_ids[0] #=> String
    #   resp.data.configuration.vpc_config.vpc_id #=> String
    #   resp.data.configuration.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.configuration.dead_letter_config.target_arn #=> String
    #   resp.data.configuration.environment #=> Types::EnvironmentResponse
    #   resp.data.configuration.environment.variables #=> Hash<String, String>
    #   resp.data.configuration.environment.variables['key'] #=> String
    #   resp.data.configuration.environment.error #=> Types::EnvironmentError
    #   resp.data.configuration.environment.error.error_code #=> String
    #   resp.data.configuration.environment.error.message #=> String
    #   resp.data.configuration.kms_key_arn #=> String
    #   resp.data.configuration.tracing_config #=> Types::TracingConfigResponse
    #   resp.data.configuration.tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.configuration.master_arn #=> String
    #   resp.data.configuration.revision_id #=> String
    #   resp.data.configuration.layers #=> Array<Layer>
    #   resp.data.configuration.layers[0] #=> Types::Layer
    #   resp.data.configuration.layers[0].arn #=> String
    #   resp.data.configuration.layers[0].code_size #=> Integer
    #   resp.data.configuration.layers[0].signing_profile_version_arn #=> String
    #   resp.data.configuration.layers[0].signing_job_arn #=> String
    #   resp.data.configuration.state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.configuration.state_reason #=> String
    #   resp.data.configuration.state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.configuration.last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.configuration.last_update_status_reason #=> String
    #   resp.data.configuration.last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.configuration.file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.configuration.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.configuration.file_system_configs[0].arn #=> String
    #   resp.data.configuration.file_system_configs[0].local_mount_path #=> String
    #   resp.data.configuration.package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.configuration.image_config_response #=> Types::ImageConfigResponse
    #   resp.data.configuration.image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.configuration.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.configuration.image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.configuration.image_config_response.image_config.command #=> Array<String>
    #   resp.data.configuration.image_config_response.image_config.working_directory #=> String
    #   resp.data.configuration.image_config_response.error #=> Types::ImageConfigError
    #   resp.data.configuration.image_config_response.error.error_code #=> String
    #   resp.data.configuration.image_config_response.error.message #=> String
    #   resp.data.configuration.signing_profile_version_arn #=> String
    #   resp.data.configuration.signing_job_arn #=> String
    #   resp.data.configuration.architectures #=> Array<String>
    #   resp.data.configuration.architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.configuration.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.configuration.ephemeral_storage.size #=> Integer
    #   resp.data.configuration.snap_start #=> Types::SnapStartResponse
    #   resp.data.configuration.snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.configuration.snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.configuration.runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.configuration.runtime_version_config.runtime_version_arn #=> String
    #   resp.data.configuration.runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.configuration.runtime_version_config.error.error_code #=> String
    #   resp.data.configuration.runtime_version_config.error.message #=> String
    #   resp.data.code #=> Types::FunctionCodeLocation
    #   resp.data.code.repository_type #=> String
    #   resp.data.code.location #=> String
    #   resp.data.code.image_uri #=> String
    #   resp.data.code.resolved_image_uri #=> String
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.concurrency #=> Types::Concurrency
    #   resp.data.concurrency.reserved_concurrent_executions #=> Integer
    #
    def get_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunction,
        stubs: @stubs,
        params_class: Params::GetFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::GetFunctionCodeSigningConfigOutput
    #   resp.data.code_signing_config_arn #=> String
    #   resp.data.function_name #=> String
    #
    def get_function_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionCodeSigningConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetFunctionCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::GetFunctionCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::GetFunctionConcurrencyOutput
    #   resp.data.reserved_concurrent_executions #=> Integer
    #
    def get_function_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionConcurrencyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionConcurrencyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionConcurrency
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetFunctionConcurrency
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionConcurrency,
        stubs: @stubs,
        params_class: Params::GetFunctionConcurrencyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_concurrency
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::GetFunctionConfigurationOutput
    #   resp.data.function_name #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.role #=> String
    #   resp.data.handler #=> String
    #   resp.data.code_size #=> Integer
    #   resp.data.description #=> String
    #   resp.data.timeout #=> Integer
    #   resp.data.memory_size #=> Integer
    #   resp.data.last_modified #=> String
    #   resp.data.code_sha256 #=> String
    #   resp.data.version #=> String
    #   resp.data.vpc_config #=> Types::VpcConfigResponse
    #   resp.data.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.vpc_config.subnet_ids[0] #=> String
    #   resp.data.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.vpc_config.security_group_ids[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.dead_letter_config.target_arn #=> String
    #   resp.data.environment #=> Types::EnvironmentResponse
    #   resp.data.environment.variables #=> Hash<String, String>
    #   resp.data.environment.variables['key'] #=> String
    #   resp.data.environment.error #=> Types::EnvironmentError
    #   resp.data.environment.error.error_code #=> String
    #   resp.data.environment.error.message #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.tracing_config #=> Types::TracingConfigResponse
    #   resp.data.tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.master_arn #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].arn #=> String
    #   resp.data.layers[0].code_size #=> Integer
    #   resp.data.layers[0].signing_profile_version_arn #=> String
    #   resp.data.layers[0].signing_job_arn #=> String
    #   resp.data.state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.state_reason #=> String
    #   resp.data.state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.last_update_status_reason #=> String
    #   resp.data.last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.file_system_configs[0].arn #=> String
    #   resp.data.file_system_configs[0].local_mount_path #=> String
    #   resp.data.package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.image_config_response #=> Types::ImageConfigResponse
    #   resp.data.image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.image_config_response.image_config.command #=> Array<String>
    #   resp.data.image_config_response.image_config.working_directory #=> String
    #   resp.data.image_config_response.error #=> Types::ImageConfigError
    #   resp.data.image_config_response.error.error_code #=> String
    #   resp.data.image_config_response.error.message #=> String
    #   resp.data.signing_profile_version_arn #=> String
    #   resp.data.signing_job_arn #=> String
    #   resp.data.architectures #=> Array<String>
    #   resp.data.architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.ephemeral_storage.size #=> Integer
    #   resp.data.snap_start #=> Types::SnapStartResponse
    #   resp.data.snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.runtime_version_config.runtime_version_arn #=> String
    #   resp.data.runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.runtime_version_config.error.error_code #=> String
    #   resp.data.runtime_version_config.error.message #=> String
    #
    def get_function_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetFunctionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionConfiguration,
        stubs: @stubs,
        params_class: Params::GetFunctionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_configuration
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::GetFunctionEventInvokeConfigOutput
    #   resp.data.last_modified #=> Time
    #   resp.data.function_arn #=> String
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.maximum_event_age_in_seconds #=> Integer
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #
    def get_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionEventInvokeConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionEventInvokeConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionEventInvokeConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetFunctionEventInvokeConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionEventInvokeConfig,
        stubs: @stubs,
        params_class: Params::GetFunctionEventInvokeConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns details about a Lambda function URL.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFunctionUrlConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    #
    # @return [Types::GetFunctionUrlConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_function_url_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFunctionUrlConfigOutput
    #   resp.data.function_url #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.auth_type #=> String, one of ["NONE", "AWS_IAM"]
    #   resp.data.cors #=> Types::Cors
    #   resp.data.cors.allow_credentials #=> Boolean
    #   resp.data.cors.allow_headers #=> Array<String>
    #   resp.data.cors.allow_headers[0] #=> String
    #   resp.data.cors.allow_methods #=> Array<String>
    #   resp.data.cors.allow_methods[0] #=> String
    #   resp.data.cors.allow_origins #=> Array<String>
    #   resp.data.cors.allow_origins[0] #=> String
    #   resp.data.cors.expose_headers #=> Array<String>
    #   resp.data.cors.max_age #=> Integer
    #   resp.data.creation_time #=> String
    #   resp.data.last_modified_time #=> String
    #   resp.data.invoke_mode #=> String, one of ["BUFFERED", "RESPONSE_STREAM"]
    #
    def get_function_url_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFunctionUrlConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFunctionUrlConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFunctionUrlConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetFunctionUrlConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFunctionUrlConfig,
        stubs: @stubs,
        params_class: Params::GetFunctionUrlConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_function_url_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
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
    #   resp.data #=> Types::GetLayerVersionOutput
    #   resp.data.content #=> Types::LayerVersionContentOutput
    #   resp.data.content.location #=> String
    #   resp.data.content.code_sha256 #=> String
    #   resp.data.content.code_size #=> Integer
    #   resp.data.content.signing_profile_version_arn #=> String
    #   resp.data.content.signing_job_arn #=> String
    #   resp.data.layer_arn #=> String
    #   resp.data.layer_version_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> String
    #   resp.data.version #=> Integer
    #   resp.data.compatible_runtimes #=> Array<String>
    #   resp.data.compatible_runtimes[0] #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.license_info #=> String
    #   resp.data.compatible_architectures #=> Array<String>
    #   resp.data.compatible_architectures[0] #=> String, one of ["x86_64", "arm64"]
    #
    def get_layer_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLayerVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLayerVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLayerVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetLayerVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLayerVersion,
        stubs: @stubs,
        params_class: Params::GetLayerVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_layer_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
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
    #   resp.data #=> Types::GetLayerVersionByArnOutput
    #   resp.data.content #=> Types::LayerVersionContentOutput
    #   resp.data.content.location #=> String
    #   resp.data.content.code_sha256 #=> String
    #   resp.data.content.code_size #=> Integer
    #   resp.data.content.signing_profile_version_arn #=> String
    #   resp.data.content.signing_job_arn #=> String
    #   resp.data.layer_arn #=> String
    #   resp.data.layer_version_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> String
    #   resp.data.version #=> Integer
    #   resp.data.compatible_runtimes #=> Array<String>
    #   resp.data.compatible_runtimes[0] #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.license_info #=> String
    #   resp.data.compatible_architectures #=> Array<String>
    #   resp.data.compatible_architectures[0] #=> String, one of ["x86_64", "arm64"]
    #
    def get_layer_version_by_arn(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLayerVersionByArnInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLayerVersionByArnInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLayerVersionByArn
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetLayerVersionByArn
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLayerVersionByArn,
        stubs: @stubs,
        params_class: Params::GetLayerVersionByArnOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_layer_version_by_arn
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the permission policy for a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
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
    #   resp.data #=> Types::GetLayerVersionPolicyOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
    #
    def get_layer_version_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLayerVersionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLayerVersionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLayerVersionPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetLayerVersionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLayerVersionPolicy,
        stubs: @stubs,
        params_class: Params::GetLayerVersionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_layer_version_policy
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::GetPolicyOutput
    #   resp.data.policy #=> String
    #   resp.data.revision_id #=> String
    #
    def get_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicy,
        stubs: @stubs,
        params_class: Params::GetPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::GetProvisionedConcurrencyConfigOutput
    #   resp.data.requested_provisioned_concurrent_executions #=> Integer
    #   resp.data.available_provisioned_concurrent_executions #=> Integer
    #   resp.data.allocated_provisioned_concurrent_executions #=> Integer
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "READY", "FAILED"]
    #   resp.data.status_reason #=> String
    #   resp.data.last_modified #=> String
    #
    def get_provisioned_concurrency_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProvisionedConcurrencyConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProvisionedConcurrencyConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProvisionedConcurrencyConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ProvisionedConcurrencyConfigNotFoundException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetProvisionedConcurrencyConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProvisionedConcurrencyConfig,
        stubs: @stubs,
        params_class: Params::GetProvisionedConcurrencyConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_provisioned_concurrency_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the runtime management configuration for a function's version. If the runtime update mode is <b>Manual</b>, this includes the ARN of the
    #       runtime version and the runtime update mode. If the runtime update mode is <b>Auto</b> or <b>Function update</b>,
    #       this includes the runtime update mode and <code>null</code> is returned for the ARN. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html">Runtime updates</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRuntimeManagementConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the
    #       <code>$LATEST</code> version is returned.</p>
    #
    # @return [Types::GetRuntimeManagementConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_runtime_management_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRuntimeManagementConfigOutput
    #   resp.data.update_runtime_on #=> String, one of ["Auto", "Manual", "FunctionUpdate"]
    #   resp.data.runtime_version_arn #=> String
    #   resp.data.function_arn #=> String
    #
    def get_runtime_management_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRuntimeManagementConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRuntimeManagementConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRuntimeManagementConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::GetRuntimeManagementConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRuntimeManagementConfig,
        stubs: @stubs,
        params_class: Params::GetRuntimeManagementConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_runtime_management_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Invokes a Lambda function. You can invoke a function synchronously (and wait for the response), or
    #       asynchronously. To invoke a function asynchronously, set <code>InvocationType</code> to <code>Event</code>.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html">synchronous invocation</a>,
    #       details about the function response, including errors, are included in the response body and headers. For either
    #       invocation type, you can find more information in the <a href="https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html">execution log</a> and <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html">trace</a>.</p>
    #          <p>When an error occurs, your function may be invoked multiple times. Retry behavior varies by error type,
    #       client, event source, and invocation type. For example, if you invoke a function asynchronously and it returns an
    #       error, Lambda executes the function up to two more times. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html">Error handling and automatic retries in
    #           Lambda</a>.</p>
    #          <p>For <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html">asynchronous invocation</a>,
    #       Lambda adds events to a queue before sending them to your function. If your function does not have enough capacity
    #       to keep up with the queue, events may be lost. Occasionally, your function may receive the same event multiple
    #       times, even if no error occurs. To retain events that were not processed, configure your function with a <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">dead-letter queue</a>.</p>
    #          <p>The status code in the API response doesn't reflect function errors. Error codes are reserved for errors that
    #       prevent your function from executing, such as permissions errors, <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">quota</a> errors, or issues with your function's code and
    #       configuration. For example, Lambda returns <code>TooManyRequestsException</code> if running the
    #       function would cause you to exceed a concurrency limit at either the account level
    #         (<code>ConcurrentInvocationLimitExceeded</code>) or function level
    #         (<code>ReservedFunctionConcurrentInvocationLimitExceeded</code>).</p>
    #          <p>For functions with a long timeout, your client might disconnect during synchronous invocation while it waits
    #       for a response. Configure your HTTP client, SDK, firewall, proxy, or operating system to allow for long
    #       connections with timeout or keep-alive settings.</p>
    #          <p>This operation requires permission for the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html">lambda:InvokeFunction</a> action. For details on how to set up
    #       permissions for cross-account invocations, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke">Granting function
    #       access to other accounts</a>.</p>
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #                     <code>RequestResponse</code> (default) – Invoke the function synchronously. Keep the connection open until
    #             the function returns a response or times out. The API response includes the function response and additional
    #             data.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Event</code> – Invoke the function asynchronously. Send events that fail multiple times to the
    #             function's dead-letter queue (if one is configured). The API response only includes a status code.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>DryRun</code> – Validate parameter values and verify that the user or role has permission to invoke
    #             the function.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :log_type
    #   <p>Set to <code>Tail</code> to include the execution log in the response. Applies to synchronously invoked functions only.</p>
    #
    # @option params [String] :client_context
    #   <p>Up to 3,583 bytes of base64-encoded data about the invoking client to pass to the function in the context
    #         object.</p>
    #
    # @option params [String] :payload
    #   <p>The JSON that you want to provide to your Lambda function as input.</p>
    #            <p>You can enter the JSON directly. For example, <code>--payload '{ "key": "value" }'</code>. You can also
    #         specify a file path. For example, <code>--payload file://payload.json</code>.</p>
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
    #     invocation_type: 'Event', # accepts ["Event", "RequestResponse", "DryRun"]
    #     log_type: 'None', # accepts ["None", "Tail"]
    #     client_context: 'ClientContext',
    #     payload: 'Payload',
    #     qualifier: 'Qualifier'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InvokeOutput
    #   resp.data.status_code #=> Integer
    #   resp.data.function_error #=> String
    #   resp.data.log_result #=> String
    #   resp.data.payload #=> String
    #   resp.data.executed_version #=> String
    #
    def invoke(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::Invoke
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EC2AccessDeniedException, Errors::EC2ThrottledException, Errors::EC2UnexpectedException, Errors::EFSIOException, Errors::EFSMountConnectivityException, Errors::EFSMountFailureException, Errors::EFSMountTimeoutException, Errors::ENILimitReachedException, Errors::InvalidParameterValueException, Errors::InvalidRequestContentException, Errors::InvalidRuntimeException, Errors::InvalidSecurityGroupIDException, Errors::InvalidSubnetIDException, Errors::InvalidZipFileException, Errors::KMSAccessDeniedException, Errors::KMSDisabledException, Errors::KMSInvalidStateException, Errors::KMSNotFoundException, Errors::RequestTooLargeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ResourceNotReadyException, Errors::ServiceException, Errors::SnapStartException, Errors::SnapStartNotReadyException, Errors::SnapStartTimeoutException, Errors::SubnetIPAddressLimitReachedException, Errors::TooManyRequestsException, Errors::UnsupportedMediaTypeException]),
        data_parser: Parsers::Invoke
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::Invoke,
        stubs: @stubs,
        params_class: Params::InvokeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invoke
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::InvokeAsyncOutput
    #   resp.data.status #=> Integer
    #
    def invoke_async(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InvokeAsyncInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InvokeAsyncInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InvokeAsync
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidRequestContentException, Errors::InvalidRuntimeException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException]),
        data_parser: Parsers::InvokeAsync
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InvokeAsync,
        stubs: @stubs,
        params_class: Params::InvokeAsyncOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invoke_async
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">aliases</a>
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
    #   resp.data #=> Types::ListAliasesOutput
    #   resp.data.next_marker #=> String
    #   resp.data.aliases #=> Array<AliasConfiguration>
    #   resp.data.aliases[0] #=> Types::AliasConfiguration
    #   resp.data.aliases[0].alias_arn #=> String
    #   resp.data.aliases[0].name #=> String
    #   resp.data.aliases[0].function_version #=> String
    #   resp.data.aliases[0].description #=> String
    #   resp.data.aliases[0].routing_config #=> Types::AliasRoutingConfiguration
    #   resp.data.aliases[0].routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.data.aliases[0].routing_config.additional_version_weights['key'] #=> Float
    #   resp.data.aliases[0].revision_id #=> String
    #
    def list_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAliases,
        stubs: @stubs,
        params_class: Params::ListAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aliases
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::ListCodeSigningConfigsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.code_signing_configs #=> Array<CodeSigningConfig>
    #   resp.data.code_signing_configs[0] #=> Types::CodeSigningConfig
    #   resp.data.code_signing_configs[0].code_signing_config_id #=> String
    #   resp.data.code_signing_configs[0].code_signing_config_arn #=> String
    #   resp.data.code_signing_configs[0].description #=> String
    #   resp.data.code_signing_configs[0].allowed_publishers #=> Types::AllowedPublishers
    #   resp.data.code_signing_configs[0].allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.data.code_signing_configs[0].allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.data.code_signing_configs[0].code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.data.code_signing_configs[0].code_signing_policies.untrusted_artifact_on_deployment #=> String, one of ["Warn", "Enforce"]
    #   resp.data.code_signing_configs[0].last_modified #=> String
    #
    def list_code_signing_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCodeSigningConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCodeSigningConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCodeSigningConfigs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceException]),
        data_parser: Parsers::ListCodeSigningConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCodeSigningConfigs,
        stubs: @stubs,
        params_class: Params::ListCodeSigningConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_code_signing_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists event source mappings. Specify an <code>EventSourceArn</code> to show only event source mappings for a
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
    #                     <b>Amazon Kinesis</b> – The ARN of the data stream or a stream consumer.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> – The ARN of the stream.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> – The ARN of the queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> – The ARN of the cluster.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon MQ</b> – The ARN of the broker.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DocumentDB</b> – The ARN of the DocumentDB change stream.</p>
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
    #                     <b>Function name</b> – <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :marker
    #   <p>A pagination token returned by a previous call.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of event source mappings to return. Note that ListEventSourceMappings returns a maximum of
    #         100 items in each response, even if you set the number higher.</p>
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
    #   resp.data #=> Types::ListEventSourceMappingsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.event_source_mappings #=> Array<EventSourceMappingConfiguration>
    #   resp.data.event_source_mappings[0] #=> Types::EventSourceMappingConfiguration
    #   resp.data.event_source_mappings[0].uuid #=> String
    #   resp.data.event_source_mappings[0].starting_position #=> String, one of ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #   resp.data.event_source_mappings[0].starting_position_timestamp #=> Time
    #   resp.data.event_source_mappings[0].batch_size #=> Integer
    #   resp.data.event_source_mappings[0].maximum_batching_window_in_seconds #=> Integer
    #   resp.data.event_source_mappings[0].parallelization_factor #=> Integer
    #   resp.data.event_source_mappings[0].event_source_arn #=> String
    #   resp.data.event_source_mappings[0].filter_criteria #=> Types::FilterCriteria
    #   resp.data.event_source_mappings[0].filter_criteria.filters #=> Array<Filter>
    #   resp.data.event_source_mappings[0].filter_criteria.filters[0] #=> Types::Filter
    #   resp.data.event_source_mappings[0].filter_criteria.filters[0].pattern #=> String
    #   resp.data.event_source_mappings[0].function_arn #=> String
    #   resp.data.event_source_mappings[0].last_modified #=> Time
    #   resp.data.event_source_mappings[0].last_processing_result #=> String
    #   resp.data.event_source_mappings[0].state #=> String
    #   resp.data.event_source_mappings[0].state_transition_reason #=> String
    #   resp.data.event_source_mappings[0].destination_config #=> Types::DestinationConfig
    #   resp.data.event_source_mappings[0].destination_config.on_success #=> Types::OnSuccess
    #   resp.data.event_source_mappings[0].destination_config.on_success.destination #=> String
    #   resp.data.event_source_mappings[0].destination_config.on_failure #=> Types::OnFailure
    #   resp.data.event_source_mappings[0].destination_config.on_failure.destination #=> String
    #   resp.data.event_source_mappings[0].topics #=> Array<String>
    #   resp.data.event_source_mappings[0].topics[0] #=> String
    #   resp.data.event_source_mappings[0].queues #=> Array<String>
    #   resp.data.event_source_mappings[0].queues[0] #=> String
    #   resp.data.event_source_mappings[0].source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.data.event_source_mappings[0].source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.data.event_source_mappings[0].source_access_configurations[0].type #=> String, one of ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
    #   resp.data.event_source_mappings[0].source_access_configurations[0].uri #=> String
    #   resp.data.event_source_mappings[0].self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.data.event_source_mappings[0].self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.data.event_source_mappings[0].self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.data.event_source_mappings[0].self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.data.event_source_mappings[0].maximum_record_age_in_seconds #=> Integer
    #   resp.data.event_source_mappings[0].bisect_batch_on_function_error #=> Boolean
    #   resp.data.event_source_mappings[0].maximum_retry_attempts #=> Integer
    #   resp.data.event_source_mappings[0].tumbling_window_in_seconds #=> Integer
    #   resp.data.event_source_mappings[0].function_response_types #=> Array<String>
    #   resp.data.event_source_mappings[0].function_response_types[0] #=> String, one of ["ReportBatchItemFailures"]
    #   resp.data.event_source_mappings[0].amazon_managed_kafka_event_source_config #=> Types::AmazonManagedKafkaEventSourceConfig
    #   resp.data.event_source_mappings[0].amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.event_source_mappings[0].self_managed_kafka_event_source_config #=> Types::SelfManagedKafkaEventSourceConfig
    #   resp.data.event_source_mappings[0].self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.event_source_mappings[0].scaling_config #=> Types::ScalingConfig
    #   resp.data.event_source_mappings[0].scaling_config.maximum_concurrency #=> Integer
    #   resp.data.event_source_mappings[0].document_db_event_source_config #=> Types::DocumentDBEventSourceConfig
    #   resp.data.event_source_mappings[0].document_db_event_source_config.database_name #=> String
    #   resp.data.event_source_mappings[0].document_db_event_source_config.collection_name #=> String
    #   resp.data.event_source_mappings[0].document_db_event_source_config.full_document #=> String, one of ["UpdateLookup", "Default"]
    #
    def list_event_source_mappings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEventSourceMappingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEventSourceMappingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEventSourceMappings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListEventSourceMappings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEventSourceMappings,
        stubs: @stubs,
        params_class: Params::ListEventSourceMappingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_event_source_mappings
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::ListFunctionEventInvokeConfigsOutput
    #   resp.data.function_event_invoke_configs #=> Array<FunctionEventInvokeConfig>
    #   resp.data.function_event_invoke_configs[0] #=> Types::FunctionEventInvokeConfig
    #   resp.data.function_event_invoke_configs[0].last_modified #=> Time
    #   resp.data.function_event_invoke_configs[0].function_arn #=> String
    #   resp.data.function_event_invoke_configs[0].maximum_retry_attempts #=> Integer
    #   resp.data.function_event_invoke_configs[0].maximum_event_age_in_seconds #=> Integer
    #   resp.data.function_event_invoke_configs[0].destination_config #=> Types::DestinationConfig
    #   resp.data.function_event_invoke_configs[0].destination_config.on_success #=> Types::OnSuccess
    #   resp.data.function_event_invoke_configs[0].destination_config.on_success.destination #=> String
    #   resp.data.function_event_invoke_configs[0].destination_config.on_failure #=> Types::OnFailure
    #   resp.data.function_event_invoke_configs[0].destination_config.on_failure.destination #=> String
    #   resp.data.next_marker #=> String
    #
    def list_function_event_invoke_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionEventInvokeConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionEventInvokeConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionEventInvokeConfigs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListFunctionEventInvokeConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctionEventInvokeConfigs,
        stubs: @stubs,
        params_class: Params::ListFunctionEventInvokeConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_function_event_invoke_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Lambda function URLs for the specified function.</p>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionUrlConfigsInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :marker
    #   <p>Specify the pagination token that's returned by a previous request to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_items
    #   <p>The maximum number of function URLs to return in the response. Note that <code>ListFunctionUrlConfigs</code>
    #         returns a maximum of 50 items in each response, even if you set the number higher.</p>
    #
    # @return [Types::ListFunctionUrlConfigsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_function_url_configs(
    #     function_name: 'FunctionName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFunctionUrlConfigsOutput
    #   resp.data.function_url_configs #=> Array<FunctionUrlConfig>
    #   resp.data.function_url_configs[0] #=> Types::FunctionUrlConfig
    #   resp.data.function_url_configs[0].function_url #=> String
    #   resp.data.function_url_configs[0].function_arn #=> String
    #   resp.data.function_url_configs[0].creation_time #=> String
    #   resp.data.function_url_configs[0].last_modified_time #=> String
    #   resp.data.function_url_configs[0].cors #=> Types::Cors
    #   resp.data.function_url_configs[0].cors.allow_credentials #=> Boolean
    #   resp.data.function_url_configs[0].cors.allow_headers #=> Array<String>
    #   resp.data.function_url_configs[0].cors.allow_headers[0] #=> String
    #   resp.data.function_url_configs[0].cors.allow_methods #=> Array<String>
    #   resp.data.function_url_configs[0].cors.allow_methods[0] #=> String
    #   resp.data.function_url_configs[0].cors.allow_origins #=> Array<String>
    #   resp.data.function_url_configs[0].cors.allow_origins[0] #=> String
    #   resp.data.function_url_configs[0].cors.expose_headers #=> Array<String>
    #   resp.data.function_url_configs[0].cors.max_age #=> Integer
    #   resp.data.function_url_configs[0].auth_type #=> String, one of ["NONE", "AWS_IAM"]
    #   resp.data.function_url_configs[0].invoke_mode #=> String, one of ["BUFFERED", "RESPONSE_STREAM"]
    #   resp.data.next_marker #=> String
    #
    def list_function_url_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionUrlConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionUrlConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionUrlConfigs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListFunctionUrlConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctionUrlConfigs,
        stubs: @stubs,
        params_class: Params::ListFunctionUrlConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_function_url_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of Lambda functions, with the version-specific configuration of each. Lambda returns up to 50
    #       functions per call.</p>
    #          <p>Set <code>FunctionVersion</code> to <code>ALL</code> to include all published versions of each function in
    #       addition to the unpublished version.</p>
    #          <note>
    #             <p>The <code>ListFunctions</code> operation returns a subset of the <a>FunctionConfiguration</a> fields.
    #         To get the additional fields (State, StateReasonCode, StateReason, LastUpdateStatus, LastUpdateStatusReason,
    #         LastUpdateStatusReasonCode,  RuntimeVersionConfig) for a function or version, use <a>GetFunction</a>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListFunctionsInput}.
    #
    # @option params [String] :master_region
    #   <p>For Lambda@Edge functions, the Amazon Web Services Region of the master function. For example,
    #           <code>us-east-1</code> filters the list of functions to include only Lambda@Edge functions replicated from a
    #         master function in US East (N. Virginia). If specified, you must set <code>FunctionVersion</code> to
    #           <code>ALL</code>.</p>
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
    #     function_version: 'ALL', # accepts ["ALL"]
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListFunctionsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.functions #=> Array<FunctionConfiguration>
    #   resp.data.functions[0] #=> Types::FunctionConfiguration
    #   resp.data.functions[0].function_name #=> String
    #   resp.data.functions[0].function_arn #=> String
    #   resp.data.functions[0].runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.functions[0].role #=> String
    #   resp.data.functions[0].handler #=> String
    #   resp.data.functions[0].code_size #=> Integer
    #   resp.data.functions[0].description #=> String
    #   resp.data.functions[0].timeout #=> Integer
    #   resp.data.functions[0].memory_size #=> Integer
    #   resp.data.functions[0].last_modified #=> String
    #   resp.data.functions[0].code_sha256 #=> String
    #   resp.data.functions[0].version #=> String
    #   resp.data.functions[0].vpc_config #=> Types::VpcConfigResponse
    #   resp.data.functions[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.data.functions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.data.functions[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.functions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.functions[0].vpc_config.vpc_id #=> String
    #   resp.data.functions[0].dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.functions[0].dead_letter_config.target_arn #=> String
    #   resp.data.functions[0].environment #=> Types::EnvironmentResponse
    #   resp.data.functions[0].environment.variables #=> Hash<String, String>
    #   resp.data.functions[0].environment.variables['key'] #=> String
    #   resp.data.functions[0].environment.error #=> Types::EnvironmentError
    #   resp.data.functions[0].environment.error.error_code #=> String
    #   resp.data.functions[0].environment.error.message #=> String
    #   resp.data.functions[0].kms_key_arn #=> String
    #   resp.data.functions[0].tracing_config #=> Types::TracingConfigResponse
    #   resp.data.functions[0].tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.functions[0].master_arn #=> String
    #   resp.data.functions[0].revision_id #=> String
    #   resp.data.functions[0].layers #=> Array<Layer>
    #   resp.data.functions[0].layers[0] #=> Types::Layer
    #   resp.data.functions[0].layers[0].arn #=> String
    #   resp.data.functions[0].layers[0].code_size #=> Integer
    #   resp.data.functions[0].layers[0].signing_profile_version_arn #=> String
    #   resp.data.functions[0].layers[0].signing_job_arn #=> String
    #   resp.data.functions[0].state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.functions[0].state_reason #=> String
    #   resp.data.functions[0].state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.functions[0].last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.functions[0].last_update_status_reason #=> String
    #   resp.data.functions[0].last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.functions[0].file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.functions[0].file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.functions[0].file_system_configs[0].arn #=> String
    #   resp.data.functions[0].file_system_configs[0].local_mount_path #=> String
    #   resp.data.functions[0].package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.functions[0].image_config_response #=> Types::ImageConfigResponse
    #   resp.data.functions[0].image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.functions[0].image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.functions[0].image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.functions[0].image_config_response.image_config.command #=> Array<String>
    #   resp.data.functions[0].image_config_response.image_config.working_directory #=> String
    #   resp.data.functions[0].image_config_response.error #=> Types::ImageConfigError
    #   resp.data.functions[0].image_config_response.error.error_code #=> String
    #   resp.data.functions[0].image_config_response.error.message #=> String
    #   resp.data.functions[0].signing_profile_version_arn #=> String
    #   resp.data.functions[0].signing_job_arn #=> String
    #   resp.data.functions[0].architectures #=> Array<String>
    #   resp.data.functions[0].architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.functions[0].ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.functions[0].ephemeral_storage.size #=> Integer
    #   resp.data.functions[0].snap_start #=> Types::SnapStartResponse
    #   resp.data.functions[0].snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.functions[0].snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.functions[0].runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.functions[0].runtime_version_config.runtime_version_arn #=> String
    #   resp.data.functions[0].runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.functions[0].runtime_version_config.error.error_code #=> String
    #   resp.data.functions[0].runtime_version_config.error.message #=> String
    #
    def list_functions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListFunctions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctions,
        stubs: @stubs,
        params_class: Params::ListFunctionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_functions
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::ListFunctionsByCodeSigningConfigOutput
    #   resp.data.next_marker #=> String
    #   resp.data.function_arns #=> Array<String>
    #   resp.data.function_arns[0] #=> String
    #
    def list_functions_by_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListFunctionsByCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListFunctionsByCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListFunctionsByCodeSigningConfig
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException]),
        data_parser: Parsers::ListFunctionsByCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListFunctionsByCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::ListFunctionsByCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_functions_by_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the versions of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
    #         layer</a>. Versions that have been deleted aren't listed. Specify a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime identifier</a> to list only
    #       versions that indicate that they're compatible with that runtime. Specify a compatible architecture to include only
    #       layer versions that are compatible with that architecture.</p>
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
    # @option params [String] :compatible_architecture
    #   <p>The compatible
    #   <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    #
    # @return [Types::ListLayerVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layer_versions(
    #     compatible_runtime: 'nodejs', # accepts ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #     layer_name: 'LayerName', # required
    #     marker: 'Marker',
    #     max_items: 1,
    #     compatible_architecture: 'x86_64' # accepts ["x86_64", "arm64"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLayerVersionsOutput
    #   resp.data.next_marker #=> String
    #   resp.data.layer_versions #=> Array<LayerVersionsListItem>
    #   resp.data.layer_versions[0] #=> Types::LayerVersionsListItem
    #   resp.data.layer_versions[0].layer_version_arn #=> String
    #   resp.data.layer_versions[0].version #=> Integer
    #   resp.data.layer_versions[0].description #=> String
    #   resp.data.layer_versions[0].created_date #=> String
    #   resp.data.layer_versions[0].compatible_runtimes #=> Array<String>
    #   resp.data.layer_versions[0].compatible_runtimes[0] #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.layer_versions[0].license_info #=> String
    #   resp.data.layer_versions[0].compatible_architectures #=> Array<String>
    #   resp.data.layer_versions[0].compatible_architectures[0] #=> String, one of ["x86_64", "arm64"]
    #
    def list_layer_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLayerVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLayerVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLayerVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListLayerVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLayerVersions,
        stubs: @stubs,
        params_class: Params::ListLayerVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_layer_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html">Lambda
    #         layers</a> and shows information about the latest version of each. Specify a
    #         <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime
    #         identifier</a> to list only layers that indicate that they're compatible with that
    #       runtime. Specify a compatible architecture to include only layers that are compatible with
    #       that  <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
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
    # @option params [String] :compatible_architecture
    #   <p>The compatible
    #   <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architecture</a>.</p>
    #
    # @return [Types::ListLayersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_layers(
    #     compatible_runtime: 'nodejs', # accepts ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #     marker: 'Marker',
    #     max_items: 1,
    #     compatible_architecture: 'x86_64' # accepts ["x86_64", "arm64"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListLayersOutput
    #   resp.data.next_marker #=> String
    #   resp.data.layers #=> Array<LayersListItem>
    #   resp.data.layers[0] #=> Types::LayersListItem
    #   resp.data.layers[0].layer_name #=> String
    #   resp.data.layers[0].layer_arn #=> String
    #   resp.data.layers[0].latest_matching_version #=> Types::LayerVersionsListItem
    #   resp.data.layers[0].latest_matching_version.layer_version_arn #=> String
    #   resp.data.layers[0].latest_matching_version.version #=> Integer
    #   resp.data.layers[0].latest_matching_version.description #=> String
    #   resp.data.layers[0].latest_matching_version.created_date #=> String
    #   resp.data.layers[0].latest_matching_version.compatible_runtimes #=> Array<String>
    #   resp.data.layers[0].latest_matching_version.compatible_runtimes[0] #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.layers[0].latest_matching_version.license_info #=> String
    #   resp.data.layers[0].latest_matching_version.compatible_architectures #=> Array<String>
    #   resp.data.layers[0].latest_matching_version.compatible_architectures[0] #=> String, one of ["x86_64", "arm64"]
    #
    def list_layers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListLayersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListLayersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListLayers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListLayers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListLayers,
        stubs: @stubs,
        params_class: Params::ListLayersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_layers
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::ListProvisionedConcurrencyConfigsOutput
    #   resp.data.provisioned_concurrency_configs #=> Array<ProvisionedConcurrencyConfigListItem>
    #   resp.data.provisioned_concurrency_configs[0] #=> Types::ProvisionedConcurrencyConfigListItem
    #   resp.data.provisioned_concurrency_configs[0].function_arn #=> String
    #   resp.data.provisioned_concurrency_configs[0].requested_provisioned_concurrent_executions #=> Integer
    #   resp.data.provisioned_concurrency_configs[0].available_provisioned_concurrent_executions #=> Integer
    #   resp.data.provisioned_concurrency_configs[0].allocated_provisioned_concurrent_executions #=> Integer
    #   resp.data.provisioned_concurrency_configs[0].status #=> String, one of ["IN_PROGRESS", "READY", "FAILED"]
    #   resp.data.provisioned_concurrency_configs[0].status_reason #=> String
    #   resp.data.provisioned_concurrency_configs[0].last_modified #=> String
    #   resp.data.next_marker #=> String
    #
    def list_provisioned_concurrency_configs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProvisionedConcurrencyConfigsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProvisionedConcurrencyConfigsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProvisionedConcurrencyConfigs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListProvisionedConcurrencyConfigs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProvisionedConcurrencyConfigs,
        stubs: @stubs,
        params_class: Params::ListProvisionedConcurrencyConfigsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_provisioned_concurrency_configs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/tagging.html">tags</a>. You can
    #       also view tags with <a>GetFunction</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsInput}.
    #
    # @option params [String] :resource
    #   <p>The function's Amazon Resource Name (ARN).
    #         Note: Lambda does not support adding tags to aliases or versions.</p>
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
    #   resp.data #=> Types::ListTagsOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #
    def list_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTags,
        stubs: @stubs,
        params_class: Params::ListTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags
        )
      )
      raise resp.error if resp.error
      resp
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
    #   <p>The maximum number of versions to return. Note that <code>ListVersionsByFunction</code> returns a maximum of 50 items in each response,
    #         even if you set the number higher.</p>
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
    #   resp.data #=> Types::ListVersionsByFunctionOutput
    #   resp.data.next_marker #=> String
    #   resp.data.versions #=> Array<FunctionConfiguration>
    #   resp.data.versions[0] #=> Types::FunctionConfiguration
    #   resp.data.versions[0].function_name #=> String
    #   resp.data.versions[0].function_arn #=> String
    #   resp.data.versions[0].runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.versions[0].role #=> String
    #   resp.data.versions[0].handler #=> String
    #   resp.data.versions[0].code_size #=> Integer
    #   resp.data.versions[0].description #=> String
    #   resp.data.versions[0].timeout #=> Integer
    #   resp.data.versions[0].memory_size #=> Integer
    #   resp.data.versions[0].last_modified #=> String
    #   resp.data.versions[0].code_sha256 #=> String
    #   resp.data.versions[0].version #=> String
    #   resp.data.versions[0].vpc_config #=> Types::VpcConfigResponse
    #   resp.data.versions[0].vpc_config.subnet_ids #=> Array<String>
    #   resp.data.versions[0].vpc_config.subnet_ids[0] #=> String
    #   resp.data.versions[0].vpc_config.security_group_ids #=> Array<String>
    #   resp.data.versions[0].vpc_config.security_group_ids[0] #=> String
    #   resp.data.versions[0].vpc_config.vpc_id #=> String
    #   resp.data.versions[0].dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.versions[0].dead_letter_config.target_arn #=> String
    #   resp.data.versions[0].environment #=> Types::EnvironmentResponse
    #   resp.data.versions[0].environment.variables #=> Hash<String, String>
    #   resp.data.versions[0].environment.variables['key'] #=> String
    #   resp.data.versions[0].environment.error #=> Types::EnvironmentError
    #   resp.data.versions[0].environment.error.error_code #=> String
    #   resp.data.versions[0].environment.error.message #=> String
    #   resp.data.versions[0].kms_key_arn #=> String
    #   resp.data.versions[0].tracing_config #=> Types::TracingConfigResponse
    #   resp.data.versions[0].tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.versions[0].master_arn #=> String
    #   resp.data.versions[0].revision_id #=> String
    #   resp.data.versions[0].layers #=> Array<Layer>
    #   resp.data.versions[0].layers[0] #=> Types::Layer
    #   resp.data.versions[0].layers[0].arn #=> String
    #   resp.data.versions[0].layers[0].code_size #=> Integer
    #   resp.data.versions[0].layers[0].signing_profile_version_arn #=> String
    #   resp.data.versions[0].layers[0].signing_job_arn #=> String
    #   resp.data.versions[0].state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.versions[0].state_reason #=> String
    #   resp.data.versions[0].state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.versions[0].last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.versions[0].last_update_status_reason #=> String
    #   resp.data.versions[0].last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.versions[0].file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.versions[0].file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.versions[0].file_system_configs[0].arn #=> String
    #   resp.data.versions[0].file_system_configs[0].local_mount_path #=> String
    #   resp.data.versions[0].package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.versions[0].image_config_response #=> Types::ImageConfigResponse
    #   resp.data.versions[0].image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.versions[0].image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.versions[0].image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.versions[0].image_config_response.image_config.command #=> Array<String>
    #   resp.data.versions[0].image_config_response.image_config.working_directory #=> String
    #   resp.data.versions[0].image_config_response.error #=> Types::ImageConfigError
    #   resp.data.versions[0].image_config_response.error.error_code #=> String
    #   resp.data.versions[0].image_config_response.error.message #=> String
    #   resp.data.versions[0].signing_profile_version_arn #=> String
    #   resp.data.versions[0].signing_job_arn #=> String
    #   resp.data.versions[0].architectures #=> Array<String>
    #   resp.data.versions[0].architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.versions[0].ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.versions[0].ephemeral_storage.size #=> Integer
    #   resp.data.versions[0].snap_start #=> Types::SnapStartResponse
    #   resp.data.versions[0].snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.versions[0].snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.versions[0].runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.versions[0].runtime_version_config.runtime_version_arn #=> String
    #   resp.data.versions[0].runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.versions[0].runtime_version_config.error.error_code #=> String
    #   resp.data.versions[0].runtime_version_config.error.message #=> String
    #
    def list_versions_by_function(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVersionsByFunctionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVersionsByFunctionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVersionsByFunction
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListVersionsByFunction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVersionsByFunction,
        stubs: @stubs,
        params_class: Params::ListVersionsByFunctionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_versions_by_function
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
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
    # @option params [Array<String>] :compatible_architectures
    #   <p>A list of compatible
    #   <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html">instruction set architectures</a>.</p>
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
    #       'nodejs' # accepts ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #     ],
    #     license_info: 'LicenseInfo',
    #     compatible_architectures: [
    #       'x86_64' # accepts ["x86_64", "arm64"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PublishLayerVersionOutput
    #   resp.data.content #=> Types::LayerVersionContentOutput
    #   resp.data.content.location #=> String
    #   resp.data.content.code_sha256 #=> String
    #   resp.data.content.code_size #=> Integer
    #   resp.data.content.signing_profile_version_arn #=> String
    #   resp.data.content.signing_job_arn #=> String
    #   resp.data.layer_arn #=> String
    #   resp.data.layer_version_arn #=> String
    #   resp.data.description #=> String
    #   resp.data.created_date #=> String
    #   resp.data.version #=> Integer
    #   resp.data.compatible_runtimes #=> Array<String>
    #   resp.data.compatible_runtimes[0] #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.license_info #=> String
    #   resp.data.compatible_architectures #=> Array<String>
    #   resp.data.compatible_architectures[0] #=> String, one of ["x86_64", "arm64"]
    #
    def publish_layer_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishLayerVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishLayerVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishLayerVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::CodeStorageExceededException, Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PublishLayerVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishLayerVersion,
        stubs: @stubs,
        params_class: Params::PublishLayerVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_layer_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a <a href="https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html">version</a> from the
    #       current code and configuration of a function. Use versions to create a snapshot of your function code and
    #       configuration that doesn't change.</p>
    #          <p>Lambda doesn't publish a version if the function's configuration and code haven't changed since the last
    #       version. Use <a>UpdateFunctionCode</a> or <a>UpdateFunctionConfiguration</a> to update the
    #       function before publishing a version.</p>
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
    #   resp.data #=> Types::PublishVersionOutput
    #   resp.data.function_name #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.role #=> String
    #   resp.data.handler #=> String
    #   resp.data.code_size #=> Integer
    #   resp.data.description #=> String
    #   resp.data.timeout #=> Integer
    #   resp.data.memory_size #=> Integer
    #   resp.data.last_modified #=> String
    #   resp.data.code_sha256 #=> String
    #   resp.data.version #=> String
    #   resp.data.vpc_config #=> Types::VpcConfigResponse
    #   resp.data.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.vpc_config.subnet_ids[0] #=> String
    #   resp.data.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.vpc_config.security_group_ids[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.dead_letter_config.target_arn #=> String
    #   resp.data.environment #=> Types::EnvironmentResponse
    #   resp.data.environment.variables #=> Hash<String, String>
    #   resp.data.environment.variables['key'] #=> String
    #   resp.data.environment.error #=> Types::EnvironmentError
    #   resp.data.environment.error.error_code #=> String
    #   resp.data.environment.error.message #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.tracing_config #=> Types::TracingConfigResponse
    #   resp.data.tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.master_arn #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].arn #=> String
    #   resp.data.layers[0].code_size #=> Integer
    #   resp.data.layers[0].signing_profile_version_arn #=> String
    #   resp.data.layers[0].signing_job_arn #=> String
    #   resp.data.state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.state_reason #=> String
    #   resp.data.state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.last_update_status_reason #=> String
    #   resp.data.last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.file_system_configs[0].arn #=> String
    #   resp.data.file_system_configs[0].local_mount_path #=> String
    #   resp.data.package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.image_config_response #=> Types::ImageConfigResponse
    #   resp.data.image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.image_config_response.image_config.command #=> Array<String>
    #   resp.data.image_config_response.image_config.working_directory #=> String
    #   resp.data.image_config_response.error #=> Types::ImageConfigError
    #   resp.data.image_config_response.error.error_code #=> String
    #   resp.data.image_config_response.error.message #=> String
    #   resp.data.signing_profile_version_arn #=> String
    #   resp.data.signing_job_arn #=> String
    #   resp.data.architectures #=> Array<String>
    #   resp.data.architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.ephemeral_storage.size #=> Integer
    #   resp.data.snap_start #=> Types::SnapStartResponse
    #   resp.data.snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.runtime_version_config.runtime_version_arn #=> String
    #   resp.data.runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.runtime_version_config.error.error_code #=> String
    #   resp.data.runtime_version_config.error.message #=> String
    #
    def publish_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PublishVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PublishVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PublishVersion
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::CodeStorageExceededException, Errors::InvalidParameterValueException, Errors::PreconditionFailedException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PublishVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PublishVersion,
        stubs: @stubs,
        params_class: Params::PublishVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :publish_version
        )
      )
      raise resp.error if resp.error
      resp
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
    #   resp.data #=> Types::PutFunctionCodeSigningConfigOutput
    #   resp.data.code_signing_config_arn #=> String
    #   resp.data.function_name #=> String
    #
    def put_function_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFunctionCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFunctionCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFunctionCodeSigningConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeSigningConfigNotFoundException, Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutFunctionCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFunctionCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::PutFunctionCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_function_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the maximum number of simultaneous executions for a function, and reserves capacity for that concurrency
    #       level.</p>
    #          <p>Concurrency settings apply to the function as a whole, including all published versions and the unpublished
    #       version. Reserving concurrency both ensures that your function has capacity to process the specified number of
    #       events simultaneously, and prevents it from scaling beyond that level. Use <a>GetFunction</a> to see
    #       the current setting for a function.</p>
    #          <p>Use <a>GetAccountSettings</a> to see your Regional concurrency limit. You can reserve concurrency
    #       for as many functions as you like, as long as you leave at least 100 simultaneous executions unreserved for
    #       functions that aren't configured with a per-function limit. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html">Lambda function scaling</a>.</p>
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::PutFunctionConcurrencyOutput
    #   resp.data.reserved_concurrent_executions #=> Integer
    #
    def put_function_concurrency(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFunctionConcurrencyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFunctionConcurrencyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFunctionConcurrency
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutFunctionConcurrency
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFunctionConcurrency,
        stubs: @stubs,
        params_class: Params::PutFunctionConcurrencyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_function_concurrency
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Queue</b> - The ARN of a standard SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of a standard SNS topic.</p>
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
    #   resp.data #=> Types::PutFunctionEventInvokeConfigOutput
    #   resp.data.last_modified #=> Time
    #   resp.data.function_arn #=> String
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.maximum_event_age_in_seconds #=> Integer
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #
    def put_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFunctionEventInvokeConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFunctionEventInvokeConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFunctionEventInvokeConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutFunctionEventInvokeConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFunctionEventInvokeConfig,
        stubs: @stubs,
        params_class: Params::PutFunctionEventInvokeConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   resp.data #=> Types::PutProvisionedConcurrencyConfigOutput
    #   resp.data.requested_provisioned_concurrent_executions #=> Integer
    #   resp.data.available_provisioned_concurrent_executions #=> Integer
    #   resp.data.allocated_provisioned_concurrent_executions #=> Integer
    #   resp.data.status #=> String, one of ["IN_PROGRESS", "READY", "FAILED"]
    #   resp.data.status_reason #=> String
    #   resp.data.last_modified #=> String
    #
    def put_provisioned_concurrency_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutProvisionedConcurrencyConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutProvisionedConcurrencyConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutProvisionedConcurrencyConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutProvisionedConcurrencyConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutProvisionedConcurrencyConfig,
        stubs: @stubs,
        params_class: Params::PutProvisionedConcurrencyConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_provisioned_concurrency_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the runtime management configuration for a function's version. For more information,
    #       see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html">Runtime updates</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRuntimeManagementConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>Specify a version of the function. This can be <code>$LATEST</code> or a published version number. If no value is specified, the configuration for the
    #         <code>$LATEST</code> version is returned.</p>
    #
    # @option params [String] :update_runtime_on
    #   <p>Specify the runtime update mode.</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Auto (default)</b> - Automatically update to the most recent and secure runtime version using a <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-two-phase">Two-phase runtime version rollout</a>. This is the best
    #           choice for most customers to ensure they always benefit from runtime updates.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function update</b> - Lambda updates the runtime of your function  to the most recent and secure runtime version when you update your
    #           function. This approach synchronizes runtime updates with function deployments, giving you control over when runtime updates are applied and allowing you to detect and
    #           mitigate rare runtime update incompatibilities early. When using this setting, you need to regularly update your functions to keep their runtime up-to-date.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Manual</b> - You specify a runtime version in your function configuration. The function will use this runtime version indefinitely.
    #           In the rare case where a new runtime version is incompatible with an existing function, this allows you to roll back your function to an earlier runtime version. For more information,
    #           see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html#runtime-management-rollback">Roll back a runtime version</a>.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :runtime_version_arn
    #   <p>The ARN of the runtime version you want the function to use.</p>
    #            <note>
    #               <p>This is only required if you're using the <b>Manual</b> runtime update mode.</p>
    #            </note>
    #
    # @return [Types::PutRuntimeManagementConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_runtime_management_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier',
    #     update_runtime_on: 'Auto', # required - accepts ["Auto", "Manual", "FunctionUpdate"]
    #     runtime_version_arn: 'RuntimeVersionArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRuntimeManagementConfigOutput
    #   resp.data.update_runtime_on #=> String, one of ["Auto", "Manual", "FunctionUpdate"]
    #   resp.data.function_arn #=> String
    #   resp.data.runtime_version_arn #=> String
    #
    def put_runtime_management_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRuntimeManagementConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRuntimeManagementConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRuntimeManagementConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::PutRuntimeManagementConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRuntimeManagementConfig,
        stubs: @stubs,
        params_class: Params::PutRuntimeManagementConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_runtime_management_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a statement from the permissions policy for a version of an <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html">Lambda
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
    #   resp.data #=> Types::RemoveLayerVersionPermissionOutput
    #
    def remove_layer_version_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveLayerVersionPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveLayerVersionPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveLayerVersionPermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::PreconditionFailedException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveLayerVersionPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveLayerVersionPermission,
        stubs: @stubs,
        params_class: Params::RemoveLayerVersionPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_layer_version_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Revokes function-use permission from an Amazon Web Service or another Amazon Web Services account. You
    #       can get the ID of the statement from the output of <a>GetPolicy</a>.</p>
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
    #                     <b>Function name</b> – <code>my-function</code> (name-only), <code>my-function:v1</code> (with alias).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
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
    #   <p>Update the policy only if the revision ID matches the ID that's specified. Use this option to avoid modifying a
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
    #   resp.data #=> Types::RemovePermissionOutput
    #
    def remove_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemovePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemovePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemovePermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::PreconditionFailedException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemovePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemovePermission,
        stubs: @stubs,
        params_class: Params::RemovePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_permission
        )
      )
      raise resp.error if resp.error
      resp
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
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

    # <p>Updates the configuration of a Lambda function <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html">alias</a>.</p>
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
    # @option params [String] :name
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
    #     name: 'Name', # required
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
    #   resp.data #=> Types::UpdateAliasOutput
    #   resp.data.alias_arn #=> String
    #   resp.data.name #=> String
    #   resp.data.function_version #=> String
    #   resp.data.description #=> String
    #   resp.data.routing_config #=> Types::AliasRoutingConfiguration
    #   resp.data.routing_config.additional_version_weights #=> Hash<String, Float>
    #   resp.data.routing_config.additional_version_weights['key'] #=> Float
    #   resp.data.revision_id #=> String
    #
    def update_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAlias
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::PreconditionFailedException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAlias,
        stubs: @stubs,
        params_class: Params::UpdateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_alias
        )
      )
      raise resp.error if resp.error
      resp
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
    #       untrusted_artifact_on_deployment: 'Warn' # accepts ["Warn", "Enforce"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCodeSigningConfigOutput
    #   resp.data.code_signing_config #=> Types::CodeSigningConfig
    #   resp.data.code_signing_config.code_signing_config_id #=> String
    #   resp.data.code_signing_config.code_signing_config_arn #=> String
    #   resp.data.code_signing_config.description #=> String
    #   resp.data.code_signing_config.allowed_publishers #=> Types::AllowedPublishers
    #   resp.data.code_signing_config.allowed_publishers.signing_profile_version_arns #=> Array<String>
    #   resp.data.code_signing_config.allowed_publishers.signing_profile_version_arns[0] #=> String
    #   resp.data.code_signing_config.code_signing_policies #=> Types::CodeSigningPolicies
    #   resp.data.code_signing_config.code_signing_policies.untrusted_artifact_on_deployment #=> String, one of ["Warn", "Enforce"]
    #   resp.data.code_signing_config.last_modified #=> String
    #
    def update_code_signing_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCodeSigningConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCodeSigningConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateCodeSigningConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceNotFoundException, Errors::ServiceException]),
        data_parser: Parsers::UpdateCodeSigningConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateCodeSigningConfig,
        stubs: @stubs,
        params_class: Params::UpdateCodeSigningConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_code_signing_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an event source mapping. You can change the function that Lambda invokes, or pause
    #       invocation and resume later from the same location.</p>
    #          <p>For details about how to configure different event sources, see the following topics. </p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping">
    #             Amazon DynamoDB Streams</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping">
    #             Amazon Kinesis</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource">
    #             Amazon SQS</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping">
    #             Amazon MQ and RabbitMQ</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html">
    #             Amazon MSK</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html">
    #             Apache Kafka</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html">
    #             Amazon DocumentDB</a>
    #                </p>
    #             </li>
    #          </ul>
    #          <p>The following error handling options are available only for stream sources (DynamoDB and Kinesis):</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>BisectBatchOnFunctionError</code> – If the function returns an error, split the batch in two and retry.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DestinationConfig</code> – Send discarded records to an Amazon SQS queue or Amazon SNS topic.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRecordAgeInSeconds</code> – Discard records older than the specified age. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>MaximumRetryAttempts</code> – Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ParallelizationFactor</code> – Process multiple batches from each shard concurrently.</p>
    #             </li>
    #          </ul>
    #          <p>For information about which configuration parameters apply to each event source, see the following topics.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params">
    #           Amazon DynamoDB Streams</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params">
    #           Amazon Kinesis</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params">
    #           Amazon SQS</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params">
    #           Amazon MQ and RabbitMQ</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms">
    #           Amazon MSK</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms">
    #           Apache Kafka</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration">
    #           Amazon DocumentDB</a>
    #                </p>
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
    #                     <b>Function name</b> – <code>MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Version or Alias ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:MyFunction:PROD</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:MyFunction</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it's limited to 64
    #         characters in length.</p>
    #
    # @option params [Boolean] :enabled
    #   <p>When true, the event source mapping is active. When false, Lambda pauses polling and invocation.</p>
    #            <p>Default: True</p>
    #
    # @option params [Integer] :batch_size
    #   <p>The maximum number of records in each batch that Lambda pulls from your stream or queue and sends to your function. Lambda passes all of the records in the batch to the function in a single call, up to the payload limit for synchronous invocation
    #     (6 MB).</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Amazon Kinesis</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon DynamoDB Streams</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Simple Queue Service</b> – Default 10. For standard queues the max is 10,000. For FIFO queues the max is 10.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon Managed Streaming for Apache Kafka</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Self-managed Apache Kafka</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Amazon MQ (ActiveMQ and RabbitMQ)</b> – Default 100. Max 10,000.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>DocumentDB</b> – Default 100. Max 10,000.</p>
    #               </li>
    #            </ul>
    #
    # @option params [FilterCriteria] :filter_criteria
    #   <p>An object that defines the filter criteria that
    #       determine whether Lambda should process an event. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-eventfiltering.html">Lambda event filtering</a>.</p>
    #
    # @option params [Integer] :maximum_batching_window_in_seconds
    #   <p>The maximum amount of time, in seconds, that Lambda spends gathering records before invoking the function.
    #     You can configure <code>MaximumBatchingWindowInSeconds</code> to any value from 0 seconds to 300 seconds in increments of seconds.</p>
    #            <p>For streams and Amazon SQS event sources, the default batching window is 0 seconds. For Amazon MSK, Self-managed Apache Kafka, Amazon MQ, and DocumentDB event sources, the default
    #     batching window is 500 ms. Note that because you can only change <code>MaximumBatchingWindowInSeconds</code> in increments of seconds, you cannot revert back to the 500 ms default batching window after you have changed it.
    #     To restore the default batching window, you must create a new event source mapping.</p>
    #            <p>Related setting: For streams and Amazon SQS event sources, when you set <code>BatchSize</code> to a value greater than 10, you must set <code>MaximumBatchingWindowInSeconds</code> to at least 1.</p>
    #
    # @option params [DestinationConfig] :destination_config
    #   <p>(Kinesis and DynamoDB Streams only) A standard Amazon SQS queue or standard Amazon SNS topic destination for discarded records.</p>
    #
    # @option params [Integer] :maximum_record_age_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) Discard records older than the specified age. The default value is infinite (-1).</p>
    #
    # @option params [Boolean] :bisect_batch_on_function_error
    #   <p>(Kinesis and DynamoDB Streams only) If the function returns an error, split the batch in two and retry.</p>
    #
    # @option params [Integer] :maximum_retry_attempts
    #   <p>(Kinesis and DynamoDB Streams only) Discard records after the specified number of retries. The default value is infinite (-1). When set to infinite (-1), failed records are retried until the record expires.</p>
    #
    # @option params [Integer] :parallelization_factor
    #   <p>(Kinesis and DynamoDB Streams only) The number of batches to process from each shard concurrently.</p>
    #
    # @option params [Array<SourceAccessConfiguration>] :source_access_configurations
    #   <p>An array of authentication protocols or VPC components required to secure your event source.</p>
    #
    # @option params [Integer] :tumbling_window_in_seconds
    #   <p>(Kinesis and DynamoDB Streams only) The duration in seconds of a processing window for DynamoDB and Kinesis Streams event sources. A value of 0 seconds indicates no tumbling window.</p>
    #
    # @option params [Array<String>] :function_response_types
    #   <p>(Kinesis, DynamoDB Streams, and Amazon SQS) A list of current response type enums applied to the event source mapping.</p>
    #
    # @option params [ScalingConfig] :scaling_config
    #   <p>(Amazon SQS only) The scaling configuration for the event source. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-max-concurrency">Configuring maximum concurrency for Amazon SQS event sources</a>.</p>
    #
    # @option params [DocumentDBEventSourceConfig] :document_db_event_source_config
    #   <p>Specific configuration settings for a DocumentDB event source.</p>
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
    #     filter_criteria: {
    #       filters: [
    #         {
    #           pattern: 'Pattern'
    #         }
    #       ]
    #     },
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
    #         type: 'BASIC_AUTH', # accepts ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
    #         uri: 'URI'
    #       }
    #     ],
    #     tumbling_window_in_seconds: 1,
    #     function_response_types: [
    #       'ReportBatchItemFailures' # accepts ["ReportBatchItemFailures"]
    #     ],
    #     scaling_config: {
    #       maximum_concurrency: 1
    #     },
    #     document_db_event_source_config: {
    #       database_name: 'DatabaseName',
    #       collection_name: 'CollectionName',
    #       full_document: 'UpdateLookup' # accepts ["UpdateLookup", "Default"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateEventSourceMappingOutput
    #   resp.data.uuid #=> String
    #   resp.data.starting_position #=> String, one of ["TRIM_HORIZON", "LATEST", "AT_TIMESTAMP"]
    #   resp.data.starting_position_timestamp #=> Time
    #   resp.data.batch_size #=> Integer
    #   resp.data.maximum_batching_window_in_seconds #=> Integer
    #   resp.data.parallelization_factor #=> Integer
    #   resp.data.event_source_arn #=> String
    #   resp.data.filter_criteria #=> Types::FilterCriteria
    #   resp.data.filter_criteria.filters #=> Array<Filter>
    #   resp.data.filter_criteria.filters[0] #=> Types::Filter
    #   resp.data.filter_criteria.filters[0].pattern #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.last_modified #=> Time
    #   resp.data.last_processing_result #=> String
    #   resp.data.state #=> String
    #   resp.data.state_transition_reason #=> String
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #   resp.data.topics #=> Array<String>
    #   resp.data.topics[0] #=> String
    #   resp.data.queues #=> Array<String>
    #   resp.data.queues[0] #=> String
    #   resp.data.source_access_configurations #=> Array<SourceAccessConfiguration>
    #   resp.data.source_access_configurations[0] #=> Types::SourceAccessConfiguration
    #   resp.data.source_access_configurations[0].type #=> String, one of ["BASIC_AUTH", "VPC_SUBNET", "VPC_SECURITY_GROUP", "SASL_SCRAM_512_AUTH", "SASL_SCRAM_256_AUTH", "VIRTUAL_HOST", "CLIENT_CERTIFICATE_TLS_AUTH", "SERVER_ROOT_CA_CERTIFICATE"]
    #   resp.data.source_access_configurations[0].uri #=> String
    #   resp.data.self_managed_event_source #=> Types::SelfManagedEventSource
    #   resp.data.self_managed_event_source.endpoints #=> Hash<String, Array<String>>
    #   resp.data.self_managed_event_source.endpoints['key'] #=> Array<String>
    #   resp.data.self_managed_event_source.endpoints['key'][0] #=> String
    #   resp.data.maximum_record_age_in_seconds #=> Integer
    #   resp.data.bisect_batch_on_function_error #=> Boolean
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.tumbling_window_in_seconds #=> Integer
    #   resp.data.function_response_types #=> Array<String>
    #   resp.data.function_response_types[0] #=> String, one of ["ReportBatchItemFailures"]
    #   resp.data.amazon_managed_kafka_event_source_config #=> Types::AmazonManagedKafkaEventSourceConfig
    #   resp.data.amazon_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.self_managed_kafka_event_source_config #=> Types::SelfManagedKafkaEventSourceConfig
    #   resp.data.self_managed_kafka_event_source_config.consumer_group_id #=> String
    #   resp.data.scaling_config #=> Types::ScalingConfig
    #   resp.data.scaling_config.maximum_concurrency #=> Integer
    #   resp.data.document_db_event_source_config #=> Types::DocumentDBEventSourceConfig
    #   resp.data.document_db_event_source_config.database_name #=> String
    #   resp.data.document_db_event_source_config.collection_name #=> String
    #   resp.data.document_db_event_source_config.full_document #=> String, one of ["UpdateLookup", "Default"]
    #
    def update_event_source_mapping(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateEventSourceMappingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateEventSourceMappingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateEventSourceMapping
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 202, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceInUseException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateEventSourceMapping
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateEventSourceMapping,
        stubs: @stubs,
        params_class: Params::UpdateEventSourceMappingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_event_source_mapping
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a Lambda function's code. If code signing is enabled for the function, the code package
    #       must be signed by a trusted publisher. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html">Configuring code signing for Lambda</a>.</p>
    #          <p>If the function's package type is <code>Image</code>, then you must specify the code package in
    #         <code>ImageUri</code> as the URI of a <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html">container image</a> in the Amazon ECR registry.</p>
    #          <p>If the function's package type is <code>Zip</code>, then you must specify the deployment package as a <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip">.zip file
    #         archive</a>. Enter the Amazon S3 bucket and key of the code .zip file location. You can also provide
    #       the function code inline using the <code>ZipFile</code> field.</p>
    #          <p>The code in the deployment package must be compatible with the target instruction set architecture of the
    #       function (<code>x86-64</code> or <code>arm64</code>).</p>
    #          <p>The function's code is locked when you publish a version. You can't modify the code of a published version,
    #       only the unpublished version.</p>
    #          <note>
    #             <p>For a function defined as a container image, Lambda resolves the image tag to an image digest. In
    #           Amazon ECR, if you update the image tag to a new image, Lambda does not automatically
    #         update the function.</p>
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :zip_file
    #   <p>The base64-encoded contents of the deployment package. Amazon Web Services SDK and CLI clients
    #   handle the encoding for you. Use only with a function defined with a .zip file archive deployment package.</p>
    #
    # @option params [String] :s3_bucket
    #   <p>An Amazon S3 bucket in the same Amazon Web Services Region as your function. The bucket can be in a different
    #   Amazon Web Services account. Use only with a function defined with a .zip file archive deployment package.</p>
    #
    # @option params [String] :s3_key
    #   <p>The Amazon S3 key of the deployment package. Use only with a function defined with a .zip file archive deployment package.</p>
    #
    # @option params [String] :s3_object_version
    #   <p>For versioned objects, the version of the deployment package object to use.</p>
    #
    # @option params [String] :image_uri
    #   <p>URI of a container image in the Amazon ECR registry. Do not use for a function defined with a .zip
    #         file archive.</p>
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
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a
    #         function that has changed since you last read it.</p>
    #
    # @option params [Array<String>] :architectures
    #   <p>The instruction set architecture that the function supports. Enter a string array with one of the valid values (arm64 or x86_64).
    #        The default value is <code>x86_64</code>.</p>
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
    #     revision_id: 'RevisionId',
    #     architectures: [
    #       'x86_64' # accepts ["x86_64", "arm64"]
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFunctionCodeOutput
    #   resp.data.function_name #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.role #=> String
    #   resp.data.handler #=> String
    #   resp.data.code_size #=> Integer
    #   resp.data.description #=> String
    #   resp.data.timeout #=> Integer
    #   resp.data.memory_size #=> Integer
    #   resp.data.last_modified #=> String
    #   resp.data.code_sha256 #=> String
    #   resp.data.version #=> String
    #   resp.data.vpc_config #=> Types::VpcConfigResponse
    #   resp.data.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.vpc_config.subnet_ids[0] #=> String
    #   resp.data.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.vpc_config.security_group_ids[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.dead_letter_config.target_arn #=> String
    #   resp.data.environment #=> Types::EnvironmentResponse
    #   resp.data.environment.variables #=> Hash<String, String>
    #   resp.data.environment.variables['key'] #=> String
    #   resp.data.environment.error #=> Types::EnvironmentError
    #   resp.data.environment.error.error_code #=> String
    #   resp.data.environment.error.message #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.tracing_config #=> Types::TracingConfigResponse
    #   resp.data.tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.master_arn #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].arn #=> String
    #   resp.data.layers[0].code_size #=> Integer
    #   resp.data.layers[0].signing_profile_version_arn #=> String
    #   resp.data.layers[0].signing_job_arn #=> String
    #   resp.data.state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.state_reason #=> String
    #   resp.data.state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.last_update_status_reason #=> String
    #   resp.data.last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.file_system_configs[0].arn #=> String
    #   resp.data.file_system_configs[0].local_mount_path #=> String
    #   resp.data.package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.image_config_response #=> Types::ImageConfigResponse
    #   resp.data.image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.image_config_response.image_config.command #=> Array<String>
    #   resp.data.image_config_response.image_config.working_directory #=> String
    #   resp.data.image_config_response.error #=> Types::ImageConfigError
    #   resp.data.image_config_response.error.error_code #=> String
    #   resp.data.image_config_response.error.message #=> String
    #   resp.data.signing_profile_version_arn #=> String
    #   resp.data.signing_job_arn #=> String
    #   resp.data.architectures #=> Array<String>
    #   resp.data.architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.ephemeral_storage.size #=> Integer
    #   resp.data.snap_start #=> Types::SnapStartResponse
    #   resp.data.snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.runtime_version_config.runtime_version_arn #=> String
    #   resp.data.runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.runtime_version_config.error.error_code #=> String
    #   resp.data.runtime_version_config.error.message #=> String
    #
    def update_function_code(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionCodeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionCodeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionCode
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeSigningConfigNotFoundException, Errors::CodeStorageExceededException, Errors::CodeVerificationFailedException, Errors::InvalidCodeSignatureException, Errors::InvalidParameterValueException, Errors::PreconditionFailedException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFunctionCode
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFunctionCode,
        stubs: @stubs,
        params_class: Params::UpdateFunctionCodeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_function_code
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Modify the version-specific settings of a Lambda function.</p>
    #          <p>When you update a function, Lambda provisions an instance of the function and its supporting
    #       resources. If your function connects to a VPC, this process can take a minute. During this time, you can't modify
    #       the function, but you can still invoke it. The <code>LastUpdateStatus</code>, <code>LastUpdateStatusReason</code>,
    #       and <code>LastUpdateStatusReasonCode</code> fields in the response from <a>GetFunctionConfiguration</a>
    #       indicate when the update is complete and the function is processing events with the new configuration. For more
    #       information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">Lambda
    #         function states</a>.</p>
    #          <p>These settings can vary between versions of a function and are locked when you publish a version. You can't
    #       modify the configuration of a published version, only the unpublished version.</p>
    #          <p>To configure function concurrency, use <a>PutFunctionConcurrency</a>. To grant invoke permissions
    #       to an Amazon Web Services account or Amazon Web Service, use <a>AddPermission</a>.</p>
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
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :role
    #   <p>The Amazon Resource Name (ARN) of the function's execution role.</p>
    #
    # @option params [String] :handler
    #   <p>The name of the method within your code that Lambda calls to run your function.
    #   Handler is required if the deployment package is a .zip file archive. The format includes the
    #         file name. It can also include namespaces and other qualifiers, depending on the runtime. For more information,
    #         see <a href="https://docs.aws.amazon.com/lambda/latest/dg/foundation-progmodel.html">Lambda programming model</a>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the function.</p>
    #
    # @option params [Integer] :timeout
    #   <p>The amount of time (in seconds) that Lambda allows a function to run before stopping it. The default is 3 seconds. The
    #         maximum allowed value is 900 seconds. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/runtimes-context.html">Lambda execution environment</a>.</p>
    #
    # @option params [Integer] :memory_size
    #   <p>The amount of <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-function-common.html#configuration-memory-console">memory available to the function</a> at runtime.
    #         Increasing the function memory also increases its CPU allocation. The default value is 128 MB. The value can be any multiple of 1 MB.</p>
    #
    # @option params [VpcConfig] :vpc_config
    #   <p>For network connectivity to Amazon Web Services resources in a VPC, specify a list of security groups and subnets in the VPC.
    #         When you connect a function to a VPC, it can access resources and the internet only through that VPC. For more
    #         information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html">Configuring a Lambda function to access resources in a VPC</a>.</p>
    #
    # @option params [Environment] :environment
    #   <p>Environment variables that are accessible from function code during execution.</p>
    #
    # @option params [String] :runtime
    #   <p>The identifier of the function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html">runtime</a>. Runtime is required if the deployment package is a .zip file archive.</p>
    #            <p>The following list includes deprecated runtimes. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html#runtime-support-policy">Runtime deprecation policy</a>.</p>
    #
    # @option params [DeadLetterConfig] :dead_letter_config
    #   <p>A dead-letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events
    #         when they fail processing. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq">Dead-letter queues</a>.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The ARN of the Key Management Service (KMS) customer managed key that's used to encrypt your function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/configuration-envvars.html#configuration-envvars-encryption">environment variables</a>. When <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-security.html">Lambda SnapStart</a> is activated, this key is also used to encrypt your function's snapshot. If you don't provide a customer managed key, Lambda uses a default service key.</p>
    #
    # @option params [TracingConfig] :tracing_config
    #   <p>Set <code>Mode</code> to <code>Active</code> to sample and trace a subset of incoming requests with
    #   <a href="https://docs.aws.amazon.com/lambda/latest/dg/services-xray.html">X-Ray</a>.</p>
    #
    # @option params [String] :revision_id
    #   <p>Update the function only if the revision ID matches the ID that's specified. Use this option to avoid modifying a
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
    #           values</a> that override the values in the container image Docker file.</p>
    #
    # @option params [EphemeralStorage] :ephemeral_storage
    #   <p>The size of the function's <code>/tmp</code> directory in MB. The default value is 512, but can be any whole
    #         number between 512 and 10,240 MB.</p>
    #
    # @option params [SnapStart] :snap_start
    #   <p>The function's <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart.html">SnapStart</a> setting.</p>
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
    #     runtime: 'nodejs', # accepts ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #     dead_letter_config: {
    #       target_arn: 'TargetArn'
    #     },
    #     kms_key_arn: 'KMSKeyArn',
    #     tracing_config: {
    #       mode: 'Active' # accepts ["Active", "PassThrough"]
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
    #     },
    #     ephemeral_storage: {
    #       size: 1 # required
    #     },
    #     snap_start: {
    #       apply_on: 'PublishedVersions' # accepts ["PublishedVersions", "None"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFunctionConfigurationOutput
    #   resp.data.function_name #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.runtime #=> String, one of ["nodejs", "nodejs4.3", "nodejs6.10", "nodejs8.10", "nodejs10.x", "nodejs12.x", "nodejs14.x", "nodejs16.x", "java8", "java8.al2", "java11", "python2.7", "python3.6", "python3.7", "python3.8", "python3.9", "dotnetcore1.0", "dotnetcore2.0", "dotnetcore2.1", "dotnetcore3.1", "dotnet6", "nodejs4.3-edge", "go1.x", "ruby2.5", "ruby2.7", "provided", "provided.al2", "nodejs18.x"]
    #   resp.data.role #=> String
    #   resp.data.handler #=> String
    #   resp.data.code_size #=> Integer
    #   resp.data.description #=> String
    #   resp.data.timeout #=> Integer
    #   resp.data.memory_size #=> Integer
    #   resp.data.last_modified #=> String
    #   resp.data.code_sha256 #=> String
    #   resp.data.version #=> String
    #   resp.data.vpc_config #=> Types::VpcConfigResponse
    #   resp.data.vpc_config.subnet_ids #=> Array<String>
    #   resp.data.vpc_config.subnet_ids[0] #=> String
    #   resp.data.vpc_config.security_group_ids #=> Array<String>
    #   resp.data.vpc_config.security_group_ids[0] #=> String
    #   resp.data.vpc_config.vpc_id #=> String
    #   resp.data.dead_letter_config #=> Types::DeadLetterConfig
    #   resp.data.dead_letter_config.target_arn #=> String
    #   resp.data.environment #=> Types::EnvironmentResponse
    #   resp.data.environment.variables #=> Hash<String, String>
    #   resp.data.environment.variables['key'] #=> String
    #   resp.data.environment.error #=> Types::EnvironmentError
    #   resp.data.environment.error.error_code #=> String
    #   resp.data.environment.error.message #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.tracing_config #=> Types::TracingConfigResponse
    #   resp.data.tracing_config.mode #=> String, one of ["Active", "PassThrough"]
    #   resp.data.master_arn #=> String
    #   resp.data.revision_id #=> String
    #   resp.data.layers #=> Array<Layer>
    #   resp.data.layers[0] #=> Types::Layer
    #   resp.data.layers[0].arn #=> String
    #   resp.data.layers[0].code_size #=> Integer
    #   resp.data.layers[0].signing_profile_version_arn #=> String
    #   resp.data.layers[0].signing_job_arn #=> String
    #   resp.data.state #=> String, one of ["Pending", "Active", "Inactive", "Failed"]
    #   resp.data.state_reason #=> String
    #   resp.data.state_reason_code #=> String, one of ["Idle", "Creating", "Restoring", "EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.last_update_status #=> String, one of ["Successful", "Failed", "InProgress"]
    #   resp.data.last_update_status_reason #=> String
    #   resp.data.last_update_status_reason_code #=> String, one of ["EniLimitExceeded", "InsufficientRolePermissions", "InvalidConfiguration", "InternalError", "SubnetOutOfIPAddresses", "InvalidSubnet", "InvalidSecurityGroup", "ImageDeleted", "ImageAccessDenied", "InvalidImage", "KMSKeyAccessDenied", "KMSKeyNotFound", "InvalidStateKMSKey", "DisabledKMSKey", "EFSIOError", "EFSMountConnectivityError", "EFSMountFailure", "EFSMountTimeout", "InvalidRuntime", "InvalidZipFileException", "FunctionError"]
    #   resp.data.file_system_configs #=> Array<FileSystemConfig>
    #   resp.data.file_system_configs[0] #=> Types::FileSystemConfig
    #   resp.data.file_system_configs[0].arn #=> String
    #   resp.data.file_system_configs[0].local_mount_path #=> String
    #   resp.data.package_type #=> String, one of ["Zip", "Image"]
    #   resp.data.image_config_response #=> Types::ImageConfigResponse
    #   resp.data.image_config_response.image_config #=> Types::ImageConfig
    #   resp.data.image_config_response.image_config.entry_point #=> Array<String>
    #   resp.data.image_config_response.image_config.entry_point[0] #=> String
    #   resp.data.image_config_response.image_config.command #=> Array<String>
    #   resp.data.image_config_response.image_config.working_directory #=> String
    #   resp.data.image_config_response.error #=> Types::ImageConfigError
    #   resp.data.image_config_response.error.error_code #=> String
    #   resp.data.image_config_response.error.message #=> String
    #   resp.data.signing_profile_version_arn #=> String
    #   resp.data.signing_job_arn #=> String
    #   resp.data.architectures #=> Array<String>
    #   resp.data.architectures[0] #=> String, one of ["x86_64", "arm64"]
    #   resp.data.ephemeral_storage #=> Types::EphemeralStorage
    #   resp.data.ephemeral_storage.size #=> Integer
    #   resp.data.snap_start #=> Types::SnapStartResponse
    #   resp.data.snap_start.apply_on #=> String, one of ["PublishedVersions", "None"]
    #   resp.data.snap_start.optimization_status #=> String, one of ["On", "Off"]
    #   resp.data.runtime_version_config #=> Types::RuntimeVersionConfig
    #   resp.data.runtime_version_config.runtime_version_arn #=> String
    #   resp.data.runtime_version_config.error #=> Types::RuntimeVersionError
    #   resp.data.runtime_version_config.error.error_code #=> String
    #   resp.data.runtime_version_config.error.message #=> String
    #
    def update_function_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionConfiguration
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CodeSigningConfigNotFoundException, Errors::CodeVerificationFailedException, Errors::InvalidCodeSignatureException, Errors::InvalidParameterValueException, Errors::PreconditionFailedException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFunctionConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFunctionConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateFunctionConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_function_configuration
        )
      )
      raise resp.error if resp.error
      resp
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
    #                     <b>Queue</b> - The ARN of a standard SQS queue.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Topic</b> - The ARN of a standard SNS topic.</p>
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
    #   resp.data #=> Types::UpdateFunctionEventInvokeConfigOutput
    #   resp.data.last_modified #=> Time
    #   resp.data.function_arn #=> String
    #   resp.data.maximum_retry_attempts #=> Integer
    #   resp.data.maximum_event_age_in_seconds #=> Integer
    #   resp.data.destination_config #=> Types::DestinationConfig
    #   resp.data.destination_config.on_success #=> Types::OnSuccess
    #   resp.data.destination_config.on_success.destination #=> String
    #   resp.data.destination_config.on_failure #=> Types::OnFailure
    #   resp.data.destination_config.on_failure.destination #=> String
    #
    def update_function_event_invoke_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionEventInvokeConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionEventInvokeConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionEventInvokeConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFunctionEventInvokeConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFunctionEventInvokeConfig,
        stubs: @stubs,
        params_class: Params::UpdateFunctionEventInvokeConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_function_event_invoke_config
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the configuration for a Lambda function URL.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFunctionUrlConfigInput}.
    #
    # @option params [String] :function_name
    #   <p>The name of the Lambda function.</p>
    #            <p class="title">
    #               <b>Name formats</b>
    #            </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Function name</b> – <code>my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Function ARN</b> – <code>arn:aws:lambda:us-west-2:123456789012:function:my-function</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Partial ARN</b> – <code>123456789012:function:my-function</code>.</p>
    #               </li>
    #            </ul>
    #            <p>The length constraint applies only to the full ARN. If you specify only the function name, it is limited to 64
    #         characters in length.</p>
    #
    # @option params [String] :qualifier
    #   <p>The alias name.</p>
    #
    # @option params [String] :auth_type
    #   <p>The type of authentication that your function URL uses. Set to <code>AWS_IAM</code> if you want to restrict access to authenticated
    #     users only. Set to <code>NONE</code> if you want to bypass IAM authentication to create a public endpoint. For more information,
    #     see <a href="https://docs.aws.amazon.com/lambda/latest/dg/urls-auth.html">Security and auth model for Lambda function URLs</a>.</p>
    #
    # @option params [Cors] :cors
    #   <p>The <a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS">cross-origin resource sharing (CORS)</a> settings
    #     for your function URL.</p>
    #
    # @option params [String] :invoke_mode
    #   <p>Use one of the following options:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>BUFFERED</code> – This is the default option. Lambda invokes your function using the <code>Invoke</code> API operation. Invocation results
    #           are available when the payload is complete. The maximum payload size is 6 MB.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RESPONSE_STREAM</code> – Your function streams payload results as they become available. Lambda invokes your function using
    #           the <code>InvokeWithResponseStream</code> API operation. The maximum response payload size is 20 MB, however, you can <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/request-quota-increase.html">request a quota increase</a>.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateFunctionUrlConfigOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_function_url_config(
    #     function_name: 'FunctionName', # required
    #     qualifier: 'Qualifier',
    #     auth_type: 'NONE', # accepts ["NONE", "AWS_IAM"]
    #     cors: {
    #       allow_credentials: false,
    #       allow_headers: [
    #         'member'
    #       ],
    #       allow_methods: [
    #         'member'
    #       ],
    #       allow_origins: [
    #         'member'
    #       ],
    #       max_age: 1
    #     },
    #     invoke_mode: 'BUFFERED' # accepts ["BUFFERED", "RESPONSE_STREAM"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFunctionUrlConfigOutput
    #   resp.data.function_url #=> String
    #   resp.data.function_arn #=> String
    #   resp.data.auth_type #=> String, one of ["NONE", "AWS_IAM"]
    #   resp.data.cors #=> Types::Cors
    #   resp.data.cors.allow_credentials #=> Boolean
    #   resp.data.cors.allow_headers #=> Array<String>
    #   resp.data.cors.allow_headers[0] #=> String
    #   resp.data.cors.allow_methods #=> Array<String>
    #   resp.data.cors.allow_methods[0] #=> String
    #   resp.data.cors.allow_origins #=> Array<String>
    #   resp.data.cors.allow_origins[0] #=> String
    #   resp.data.cors.expose_headers #=> Array<String>
    #   resp.data.cors.max_age #=> Integer
    #   resp.data.creation_time #=> String
    #   resp.data.last_modified_time #=> String
    #   resp.data.invoke_mode #=> String, one of ["BUFFERED", "RESPONSE_STREAM"]
    #
    def update_function_url_config(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFunctionUrlConfigInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFunctionUrlConfigInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFunctionUrlConfig
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterValueException, Errors::ResourceConflictException, Errors::ResourceNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateFunctionUrlConfig
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFunctionUrlConfig,
        stubs: @stubs,
        params_class: Params::UpdateFunctionUrlConfigOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_function_url_config
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
